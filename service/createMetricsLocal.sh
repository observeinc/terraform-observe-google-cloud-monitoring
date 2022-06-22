#!/usr/bin/env bash

# Directions to use:
# Go to https://cloud.google.com/monitoring/api/ref_v3/rest/v3/projects.metricDescriptors/list
# Use Try this method dialog
# Enter parameters for the API you want - list of metrics is here - https://cloud.google.com/monitoring/api/metrics_gcp
# copy application/json response into descriptors.json

# For cloudsql metrics
# name = projects/terraflood-345116
# filter = metric.type = starts_with("cloudsql.googleapis.com/database/")

# For compute metrics
# name = projects/terraflood-345116
# filter = metric.type = starts_with("compute.googleapis.com/")
# filter = metric.type = starts_with("agent.googleapis.com/")

# to call script - ./createMetricsLocal.sh --input_file cloudsqldescriptors.json --output_file cloudsqlmetricslocal.tf
# to call script - ./createMetricsLocal.sh --input_file compute/computedescriptors.json --output_file compute/computemetricslocal.tf
# to call script - ./createMetricsLocal.sh --input_file compute/agentmetrics.json --output_file compute/agentmetricslocal.tf --local_var_name agent_metrics_definitions

# Defaults
input_file=descriptors.json
output_file=metricslocal.tf
local_var_name=metrics_definitions

# Process input flags
    while [ $# -gt 0 ]; do
    echo "required inputs $1 $2 $# "
      case "$1" in
        --input_file)
          input_file="$2"
          ;;
        --output_file)
          output_file="$2"
          ;;
        --local_var_name)
          local_var_name="$2"
          ;;
        *)
          
      esac
      shift
      shift
    done

# Files used
echo "Input file = $input_file"
echo "Output file = $output_file"

# create terraform file
# super handy reference - https://stedolan.github.io/jq/manual/

# jq creates object for every metric in terraform local variable but sets active to false for any metric that is not GA which is used as a filter when defining metrics

echo "locals {" > "$output_file";
echo " $local_var_name = {" >> "$output_file";

# in jq def is used to create a function that is then called in line

jq -r 'def activeFunc: if . =="GA" then "true" else "false" end; # returns true if metric is GA
        def metricCaseFunc: . |= ascii_downcase; # returns lowercase version of string
        def metricTypeFunc: if . == "cumulative" then "cumulativeCounter" else . end; # transforms result if cumulitive otherwise return value passed to function
        def sampleFunc: if . | has("samplePeriod") then " Sampled every " + .samplePeriod + " and may take up to " + .ingestDelay + " to display." else "" end; # if has property then return concatenated string otherwise nothing
        def dataBaseParseFunc: if . | contains("mysql") or contains("postgresql") or contains("sqlserver") then "dataBase = \"" + . + "\"" else "dataBase = \"ALL\"" end;
        def dataBaseFunc: if . | contains("cloudsql.googleapis.com/database") then (. | capture("database/(?<keepafterdatabase>[^/]+)") | .keepafterdatabase | dataBaseParseFunc) else null end;    
        def intervalFunc: if . | has("samplePeriod") then "interval = \"" + (.samplePeriod) + "\"\n" else null end; # if has property then return interval else nothing
        def computeFunc: if . | contains("compute.googleapis.com/") or contains("agent.googleapis.com/") then (. | capture("googleapis.com/(?<keepafterapis>[^/]+)") | "metricBin = \"" + .keepafterapis + "\"") else null end; 
    .metricDescriptors[] | 
    "\"" + (.name | capture("metricDescriptors/(?<keepaftermetricDescriptors>.*)") | .keepaftermetricDescriptors) + "\" = { 
        type = \"" + (.metricKind | metricCaseFunc | metricTypeFunc) + "\" 
        description = <<-EOF
          " + (.description ) + (.metadata | sampleFunc ) + "
      EOF
        launchStage = \"" + (.launchStage) + "\"
        rollup      = \"avg\"
        aggregate   = \"sum\"
        active      = " + (.launchStage | activeFunc) + "

        " + (.metadata | intervalFunc ) 
        + (.name | dataBaseFunc )
        + (.name | computeFunc ) + "
        
        },"
    ' "$input_file" >> "$output_file";

echo "}" >> "$output_file";

echo "}" >> "$output_file";

# certain characters make terraform explode
# This tends to be super painful to debug export TF_LOG=DEBUG; terraform apply might help
sed -i'' -e 's/>/greater than/g; s/(//g; s/)//g; s/&/and/g;' "$output_file"

# fmt file
terraform fmt "$output_file"

# terraform might be able to read the json itself - terraform-observe-promethius