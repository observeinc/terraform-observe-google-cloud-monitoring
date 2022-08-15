####################################################
#                    README
####################################################
# DESCRIPTION
####################################################
# Make file to auto generate dashboard terraform with variabilized json files
####################################################
# USAGE
####################################################
# Critical variables unique to where you are: TERRAFORM_DIRECTORY and SERVICE_DIRECTORY

# Assumes 

SHELL=/bin/bash


# Suffix for json files that will be created
FILE_VERSION:=_v1

############################################
# These variables are set for new dashboard
############################################
RESOURCE_DATASET_NAME=cloudsql
METRIC_DATASET_NAME=cloudsql_metrics
LOGS_DATASET_NAME=sql_logs
ERROR_LOGS_DATASET_NAME=combined_error_logs
DATASET_ID_OUTPUT_NAME=cloudsql_datasets_id
NAME_CLEANOUT=gcp-396/
############################################

# The directory where you are building google module - this should be a sample deployment of your service - https://github.com/observeinc/content-eng-gcp-example - main branch
TERRAFORM_DIRECTORY:=/Users/arthur/content_eng/content-eng-gcp-example/example
# The local directory with module code - your json and dashboard terraform will be placed here
SERVICE_DIRECTORY:=Users/arthur/content_eng/terraform-observe-google/service/cloudsql

TEMPLATE_DASHBOARD_DIRECTORY:=/Users/arthur/content_eng/terraform-observe-google/service/cloudsql/template_dashboard

# File created that will become a part of service definition
PARAMETER_OUTPUT_FILE:=/$(SERVICE_DIRECTORY)/dashboards/parameters$(FILE_VERSION).json
PARAMETER_OUTPUT_FILE_TF_PATH:=$${path.module}/dashboards/parameters$(FILE_VERSION).json

# File created that will become a part of service definition
PARAMETER_VALUES_OUTPUT_FILE:=/$(SERVICE_DIRECTORY)/dashboards/parameterValues$(FILE_VERSION).json
PARAMETER_VALUES_OUTPUT_FILE_TF_PATH:=$${path.module}/dashboards/parameterValues$(FILE_VERSION).json

# File created that will become a part of service definition
STAGES_OUTPUT_FILE:=/$(SERVICE_DIRECTORY)/dashboards/stages$(FILE_VERSION).json
STAGES_OUTPUT_FILE_TF_PATH:=$${path.module}/dashboards/stages$(FILE_VERSION).json

# File created that will become a part of service definition
LAYOUT_OUTPUT_FILE:=/$(SERVICE_DIRECTORY)/dashboards/layout$(FILE_VERSION).json
LAYOUT_OUTPUT_FILE_TF_PATH:=$${path.module}/dashboards/layout$(FILE_VERSION).json

# Terraform file that will be created
DASHBOARD_FILE:=/$(SERVICE_DIRECTORY)/auto_dashboards.tf
# Directorcy it will be created in
DASHBOARD_DIR:=$(SERVICE_DIRECTORY)/dashboards

# Variables used in functions below
CLOUDSQL_DATASET_ID:=UNSET
CLOUDSQL_LOGS_DATASET_ID:=UNSET
CLOUDSQL_METRICS_DATASET_ID:=UNSET
CLOUDSQL_ERRORLOGS_DATASET_ID:=UNSET
CLOUDSQL_COMBOMETRICS_DATASET_ID:=UNSET

all: datasets ids name_clean finish check_dataset_id

datasets: get_template_dashboard parameters stages layout 

ids: replace_resource_id replace_log_id replace_errorlog_id replace_metric_id replace_metriccombo_id replace_metricwide_id

name_clean: replace_name

finish: resource_def build_dashboard

# Run this step by itself if you have no json files or outputs
create_data_state:
	rm -f $(DASHBOARD_FILE);
	cd $(TERRAFORM_DIRECTORY) \
	terraform apply -auto-approve; 

get_template_dashboard:
	rm -f $(DASHBOARD_FILE);

	cd $(TEMPLATE_DASHBOARD_DIRECTORY); \
	terraform apply -auto-approve; 

check_dataset_id:
	cd /$(SERVICE_DIRECTORY); \
	grep -nr "datasetId" .
# Create json file based on output value
parameters:
	cd $(TEMPLATE_DASHBOARD_DIRECTORY); \
	terraform output -json parameters | jq -r '.' > $(PARAMETER_OUTPUT_FILE)_TEMP;
	cat $(PARAMETER_OUTPUT_FILE)_TEMP | jq -r '.' > $(PARAMETER_OUTPUT_FILE);
	rm $(PARAMETER_OUTPUT_FILE)_TEMP;

# Create json file based on output value
stages:
	cd $(TEMPLATE_DASHBOARD_DIRECTORY); \
	terraform output -json stages | jq -r '.' > $(STAGES_OUTPUT_FILE)_TEMP;
	cat $(STAGES_OUTPUT_FILE)_TEMP | jq -r '.' > $(STAGES_OUTPUT_FILE)
	rm $(STAGES_OUTPUT_FILE)_TEMP 

# Create json file based on output value
layout:
	cd $(TEMPLATE_DASHBOARD_DIRECTORY); \
	terraform output -json layout | jq -r '.' > $(LAYOUT_OUTPUT_FILE)_TEMP;
	cat $(LAYOUT_OUTPUT_FILE)_TEMP | jq -r '.' > $(LAYOUT_OUTPUT_FILE)
	rm $(LAYOUT_OUTPUT_FILE)_TEMP 



define RESOURCE_DEF_VAR
	resource "observe_dashboard" "monitoring" {
		  	count = local.enable_metrics ? 1 : 0
			workspace = var.workspace.oid
			name      = format(var.name_format, "Monitoring")
			stages           = templatefile("$(STAGES_OUTPUT_FILE_TF_PATH)", {
				RESOURCE_DATASET = observe_dataset.$(RESOURCE_DATASET_NAME).id
				METRICS_DATASET = local.enable_metrics == true ? observe_dataset.$(METRIC_DATASET_NAME)[0].id : null
				COMBOMETRICS_DATASET = local.enable_metrics == true ? observe_dataset.$(METRIC_DATASET_NAME)_combo[0].id : null
				WIDEMETRICS_DATASET = local.enable_metrics == true ? observe_dataset.$(METRIC_DATASET_NAME)_wide[0].id : null
				LOGS_DATASET = observe_dataset.$(LOGS_DATASET_NAME).id
				ERRORLOGS_DATASET = observe_dataset.$(ERROR_LOGS_DATASET_NAME).id
			})
			layout           = templatefile("$(LAYOUT_OUTPUT_FILE_TF_PATH)", {
				RESOURCE_DATASET = observe_dataset.$(RESOURCE_DATASET_NAME).id
				METRICS_DATASET = local.enable_metrics == true ? observe_dataset.$(METRIC_DATASET_NAME)[0].id : null
				COMBOMETRICS_DATASET = local.enable_metrics == true ? observe_dataset.$(METRIC_DATASET_NAME)_combo[0].id : null
				WIDEMETRICS_DATASET = local.enable_metrics == true ? observe_dataset.$(METRIC_DATASET_NAME)_wide[0].id : null
				LOGS_DATASET = observe_dataset.$(LOGS_DATASET_NAME).id
				ERRORLOGS_DATASET = observe_dataset.$(ERROR_LOGS_DATASET_NAME).id
			})
			parameters       = templatefile("$(PARAMETER_OUTPUT_FILE_TF_PATH)", {
				RESOURCE_DATASET = observe_dataset.$(RESOURCE_DATASET_NAME).id
				METRICS_DATASET = local.enable_metrics == true ? observe_dataset.$(METRIC_DATASET_NAME)[0].id : null
				COMBOMETRICS_DATASET = local.enable_metrics == true ? observe_dataset.$(METRIC_DATASET_NAME)_combo[0].id : null
				WIDEMETRICS_DATASET = local.enable_metrics == true ? observe_dataset.$(METRIC_DATASET_NAME)_wide[0].id : null
				LOGS_DATASET = observe_dataset.$(LOGS_DATASET_NAME).id
				ERRORLOGS_DATASET = observe_dataset.$(ERROR_LOGS_DATASET_NAME).id
			})

			# parameter_values = templatefile("$${path.module}/$(PARAMETER_VALUES_OUTPUT_FILE)", {
			#
			#})
		}

	# resource "observe_default_dashboard" "cloudsql" {
		# count = local.enable_metrics ? 1 : 0
	# 	dataset = observe_dataset.$(RESOURCE_DATASET_NAME).oid
	# 	dashboard = resource.observe_dashboard.monitoring[0].oid
	# }

endef

export RESOURCE_DEF_VAR 

# Create terraform file for dashboard
resource_def:
	@echo "$$RESOURCE_DEF_VAR" > $(DASHBOARD_FILE)
	cd /$(SERVICE_DIRECTORY); \
	terraform fmt;

# Apply terraform 
build_dashboard:
	cd $(TERRAFORM_DIRECTORY); \
	terraform apply -auto-approve;

replace_resource_id:
	$(eval RESOURCE_DATASET_ID=$(shell cd $(TERRAFORM_DIRECTORY); terraform output -json $(DATASET_ID_OUTPUT_NAME) | jq -r '.resource_dataset_id')) 
	echo RESOURCE_DATASET_ID is $(RESOURCE_DATASET_ID);
	sed -i '' "s:$(RESOURCE_DATASET_ID):"\$${RESOURCE_DATASET}":g" /$(DASHBOARD_DIR)/*; 

replace_log_id:
	$(eval LOGS_DATASET_ID=$(shell cd $(TERRAFORM_DIRECTORY); terraform output -json $(DATASET_ID_OUTPUT_NAME) | jq -r '.logs_dataset_id')) 
	echo LOGS_DATASET_ID is $(LOGS_DATASET_ID);
	sed -i '' "s:$(LOGS_DATASET_ID):"\$${LOGS_DATASET}":g" /$(DASHBOARD_DIR)/*; 

replace_errorlog_id:
	$(eval ERRORLOGS_DATASET_ID=$(shell cd $(TERRAFORM_DIRECTORY); terraform output -json $(DATASET_ID_OUTPUT_NAME) | jq -r '.error_logs_dataset_id')) 
	echo ERRORLOGS_DATASET_ID is $(ERRORLOGS_DATASET_ID);
	sed -i '' "s:$(ERRORLOGS_DATASET_ID):"\$${ERRORLOGS_DATASET}":g" /$(DASHBOARD_DIR)/*; 

replace_metric_id:
	$(eval METRICS_DATASET_ID=$(shell cd $(TERRAFORM_DIRECTORY); terraform output -json $(DATASET_ID_OUTPUT_NAME) | jq -r '.metrics_dataset_id'))
	echo METRICS_DATASET_ID is $(METRICS_DATASET_ID);
	sed -i '' "s:$(METRICS_DATASET_ID):"\$${METRICS_DATASET}":g" /$(DASHBOARD_DIR)/*; 

replace_metriccombo_id:
	$(eval COMBOMETRICS_DATASET_ID=$(shell cd $(TERRAFORM_DIRECTORY); terraform output -json $(DATASET_ID_OUTPUT_NAME) | jq -r '.combo_metrics_dataset_id'))
	echo COMBOMETRICS_DATASET_ID is $(COMBOMETRICS_DATASET_ID);
	sed -i '' "s:$(COMBOMETRICS_DATASET_ID):"\$${COMBOMETRICS_DATASET}":g" /$(DASHBOARD_DIR)/*; 

replace_metricwide_id:
	$(eval WIDEMETRICS_DATASET_ID=$(shell cd $(TERRAFORM_DIRECTORY); terraform output -json $(DATASET_ID_OUTPUT_NAME) | jq -r '.wide_metrics_dataset_id'))
	echo WIDEMETRICS_DATASET_ID is $(WIDEMETRICS_DATASET_ID);
	sed -i '' "s:$(WIDEMETRICS_DATASET_ID):"\$${WIDEMETRICS_DATASET}":g" /$(DASHBOARD_DIR)/*; 
	

replace_name:
	sed -i '' "s:$(NAME_CLEANOUT):"":g" /$(DASHBOARD_DIR)/*; 

replace_metric_id_manual:
	sed -i '' "s:41101933:"\$${WIDEMETRICS_DATASET}":g" /$(DASHBOARD_DIR)/*; 
