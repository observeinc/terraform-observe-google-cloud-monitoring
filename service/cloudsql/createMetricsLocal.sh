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

# to call script - ./createMetricsLocal.sh --input_file cloudsqldescriptors.json --output_file cloudsqlmetricslocal.tf
# to call script - ./createMetricsLocal.sh --input_file computedescriptors.json --output_file computemetricslocal.tf

# Defaults
input_file=descriptors.json
output_file=metricslocal.tf

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
echo " cloudsql_metrics = {" >> "$output_file";

jq -r 'def activeFunc: if . =="GA" then "true" else "false" end; 
        def metricCaseFunc: . |= ascii_downcase; 
        def metricTypeFunc: if . == "cumulative" then "cumulativeCounter" else . end; 
        def sampleFunc: if . | has("samplePeriod") then " Sampled every " + .samplePeriod + " and may take up to " + .ingestDelay + " to display." else "" end;
    .metricDescriptors[] | 
    "\"" + (.name | capture("projects/terraflood-345116/metricDescriptors/(?<idontwanthis>.*)") | .idontwanthis) + "\" = { 
        type = \"" + (.metricKind | metricCaseFunc | metricTypeFunc) + "\" 
        description = <<-EOF
          " + (.description ) + (.metadata | sampleFunc ) + "
      EOF
        launchStage = \"" + (.launchStage) + "\"
        rollup      = \"avg\"
        aggregate   = \"sum\"
        active      = " + (.launchStage | activeFunc) +
        "
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