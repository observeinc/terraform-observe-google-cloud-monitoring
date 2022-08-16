####################################################
#                    README
####################################################
# DESCRIPTION
####################################################
# Make file to auto generate dashboard terraform with variabilized json files
####################################################
# USAGE
####################################################
SHELL=/bin/bash

# If you have your project set up then run make all iteratively

# When setting up run in this order
# make template_def
# make datasets
# make get_unique_dataset_id - use filter generated against usage to sanity check inputs
# make ids
# make check_for_unsubstituted_values


all: template_def datasets ids name_clean finish remove_template_def check_for_unsubstituted_values

no_refresh: ids finish

datasets: get_template_dashboard parameters stages layout # parameter_values - if it is ever valid

ids: replace_ids replace_params

name_clean: replace_name

finish: resource_def build_dashboard 

# Suffix for json files that will be created
FILE_VERSION:=_v1

############################################
# These variables are set for new dashboard 
############################################
# This output exists in content-eng-gcp-example/example and contains dataset ids
DATASET_ID_OUTPUT_NAME=project_datasets_id
# this will sanitize input names on stages to remove working package
NAME_CLEANOUT=gcp-396/
# This is dashboard id that you are doing development on taht will be used to create terraformed dashboard
INPUT_DASHBOARD_ID=41124888

# Variables used in functions below and set with script
RESOURCE_DATASET_ID:=UNSET
RESOURCE_ASSET_INVENTORY_DATASET_ID:=UNSET
COMPUTE_DATASET_ID:=UNSET
STORAGE_DATASET_ID:=UNSET
CLOUD_SQL_DATASET_ID:=UNSET
FUNCTION_DATASET_ID:=UNSET

# The directory where you are building google module - this should be a sample deployment of your service - https://github.com/observeinc/content-eng-gcp-example - main branch
TERRAFORM_DIRECTORY:=/Users/arthur/content_eng/content-eng-gcp-example/example
# The local directory with module code - your json and dashboard terraform will be placed here
SERVICE_DIRECTORY:=Users/arthur/content_eng/terraform-observe-google
# where temporary terraform lives
TEMPLATE_DASHBOARD_DIRECTORY:=/Users/arthur/content_eng/terraform-observe-google/dashboard_template

# This gets injected into auto generated dashboard terraform definition
define subVars 
	RESOURCE_DATASET = observe_dataset.projects.id
	RESOURCE_ASSET_INVENTORY_DATASET = observe_dataset.resource_asset_inventory_records.id
	COMPUTE_DATASET = module.compute[0] == null ? null : module.compute[0].compute.id
	STORAGE_DATASET = module.storage[0] == null ? null : module.storage[0].storage.id
	CLOUD_SQL_DATASET = module.cloudsql[0] == null ? null : module.cloudsql[0].cloudsql.id
	FUNCTION_DATASET = module.cloudfunctions[0] == null ? null : module.cloudfunctions[0].function.id
endef

export subVars 

# remove null params property that comes form terraform for no particular reason
replace_params:
	sed -i '' "s:\"params\"\: null,:"":g" /$(DASHBOARD_DIR)/*; 

# replace dataset ids with terraform template variables 
replace_ids:
	# pull ids for terraform outputs in content-eng-gcp-example/example
	$(eval RESOURCE_DATASET_ID=$(shell cd $(TERRAFORM_DIRECTORY); \
	terraform output -json $(DATASET_ID_OUTPUT_NAME) | jq -r '.resource_dataset_id'))

	$(eval RESOURCE_ASSET_INVENTORY_DATASET_ID=$(shell cd $(TERRAFORM_DIRECTORY); \
	terraform output -json $(DATASET_ID_OUTPUT_NAME) | jq -r '.resource_asset_inventory_dataset_id'))

	$(eval COMPUTE_DATASET_ID=$(shell cd $(TERRAFORM_DIRECTORY); \
	terraform output -json $(DATASET_ID_OUTPUT_NAME) | jq -r '.compute_dataset_id'))

	$(eval STORAGE_DATASET_ID=$(shell cd $(TERRAFORM_DIRECTORY); \
	terraform output -json $(DATASET_ID_OUTPUT_NAME) | jq -r '.storage_dataset_id'))

	$(eval CLOUD_SQL_DATASET_ID=$(shell cd $(TERRAFORM_DIRECTORY); \
	terraform output -json $(DATASET_ID_OUTPUT_NAME) | jq -r '.cloud_sql_dataset_id'))

	$(eval FUNCTION_DATASET_ID=$(shell cd $(TERRAFORM_DIRECTORY); \
	terraform output -json $(DATASET_ID_OUTPUT_NAME) | jq -r '.function_dataset_id'))

	# echo values for sanity check
	echo RESOURCE_DATASET_ID is $(RESOURCE_DATASET_ID);
	echo RESOURCE_ASSET_INVENTORY_DATASET_ID is $(RESOURCE_ASSET_INVENTORY_DATASET_ID);
	echo COMPUTE_DATASET_ID is $(COMPUTE_DATASET_ID);
	echo STORAGE_DATASET_ID is $(STORAGE_DATASET_ID);
	echo CLOUD_SQL_DATASET_ID is $(CLOUD_SQL_DATASET_ID);
	echo FUNCTION_DATASET_ID is $(FUNCTION_DATASET_ID);

	# replace static ids with variables
	sed -i '' "s:$(RESOURCE_DATASET_ID):"\$${RESOURCE_DATASET}":g" /$(DASHBOARD_DIR)/*; 
	sed -i '' "s:$(RESOURCE_ASSET_INVENTORY_DATASET_ID):"\$${RESOURCE_ASSET_INVENTORY_DATASET}":g" /$(DASHBOARD_DIR)/*; 
	sed -i '' "s:$(COMPUTE_DATASET_ID):"\$${COMPUTE_DATASET}":g" /$(DASHBOARD_DIR)/*; 
	sed -i '' "s:$(STORAGE_DATASET_ID):"\$${STORAGE_DATASET}":g" /$(DASHBOARD_DIR)/*; 
	sed -i '' "s:$(CLOUD_SQL_DATASET_ID):"\$${CLOUD_SQL_DATASET}":g" /$(DASHBOARD_DIR)/*; 
	sed -i '' "s:$(FUNCTION_DATASET_ID):"\$${FUNCTION_DATASET}":g" /$(DASHBOARD_DIR)/*; 

replace_name:
	sed -i '' "s:$(NAME_CLEANOUT):"":g" /$(DASHBOARD_DIR)/*; 

# if you hose it this can fix it
manual_replace:
	sed -i '' "s:41109129:"\$${RESOURCE_DATASET}":g" /$(DASHBOARD_DIR)/*; 
	sed -i '' "s:41109130:"\$${RESOURCE_ASSET_INVENTORY_DATASET}":g" /$(DASHBOARD_DIR)/*; 
	sed -i '' "s:41109752:"\$${COMPUTE_DATASET}":g" /$(DASHBOARD_DIR)/*; 
	sed -i '' "s:41109835:"\$${STORAGE_DATASET}":g" /$(DASHBOARD_DIR)/*; 
	sed -i '' "s:41109178:"\$${CLOUD_SQL_DATASET}":g" /$(DASHBOARD_DIR)/*; 
	sed -i '' "s:41109187:"\$${FUNCTION_DATASET}":g" /$(DASHBOARD_DIR)/*; 
############################################

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
DASHBOARD_FILE:=/$(SERVICE_DIRECTORY)/auto_project_dashboards.tf
# Directorcy it will be created in
DASHBOARD_DIR:=$(SERVICE_DIRECTORY)/dashboards

# Terraform resource template variable
define RESOURCE_DEF_VAR
	resource "observe_dashboard" "monitoring" {
			workspace = var.workspace.oid
			name      = format(var.name_format, "Projects Monitoring")
			stages           = templatefile("$(STAGES_OUTPUT_FILE_TF_PATH)", {
				$(subVars)
			})
			layout           = templatefile("$(LAYOUT_OUTPUT_FILE_TF_PATH)", {
				$(subVars)
			})
			parameters       = templatefile("$(PARAMETER_OUTPUT_FILE_TF_PATH)", {
				$(subVars)
			})

			parameter_values = null
		}

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

# look for ids that were not substituted
check_for_unsubstituted_values:
	cd /$(SERVICE_DIRECTORY)/dashboards; \
	grep -nr "datasetId" .

# create a filter clause for Observe Dataset worksheet with unique dataset ids in your imported json before substitution
get_unique_dataset_id:
	cd /$(SERVICE_DIRECTORY)/dashboards; \
	echo '#####################'; \
	echo 'Unique datasets filter for usage/Observe Dataset Worksheet'; \
	echo '#####################'; \
	jq -n '[inputs[] | .. | .datasetId? | strings ] | unique' *.json | jq -r '. | "filter in(dataset_id, " + join (",") + ")"'; \
	echo '#####################';


    
# Run this step by itself if you have no json files or outputs
create_data_state:
	rm -f $(DASHBOARD_FILE);
	cd $(TERRAFORM_DIRECTORY) \
	terraform apply -auto-approve; 

get_template_dashboard:
	rm -f $(DASHBOARD_FILE);

	cd $(TEMPLATE_DASHBOARD_DIRECTORY); \
	terraform apply -auto-approve; 

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

# Create json file based on output value
parameter_values:
	cd $(TEMPLATE_DASHBOARD_DIRECTORY); \
	terraform output -json parameter_values | jq -r '.' > $(PARAMETER_VALUES_OUTPUT_FILE)_TEMP;
	cat $(PARAMETER_VALUES_OUTPUT_FILE)_TEMP | jq -r '.' > $(PARAMETER_VALUES_OUTPUT_FILE)
	rm $(PARAMETER_VALUES_OUTPUT_FILE)_TEMP 


# this creates template terraform 
# assumes presence of autovars file to set variables
define TEMPLATE_VAR

variable "observe_domain" {
  type        = string
  default     = "observe-staging.com"
  description = "the observe domain"
}

variable "observe_customer_id" {
  type        = string
  description = "the observe customer id"
}

variable "user_email" {
  type        = string
  description = "email used to login to observe"
}

variable "template_dashboard_id" {
  type        = string
  default     = "$(INPUT_DASHBOARD_ID)"
  description = "dashboard id used to create tf definition"
}

# Dashboard used to create terraform definition
data "observe_dashboard" "db" {
  workspace = data.observe_workspace.ws.oid
  id        = var.template_dashboard_id
}
data "observe_workspace" "ws" {
  name = "Default"
}
resource "observe_dashboard" "inbetween" {
  workspace        = data.observe_workspace.ws.oid
  name             = "Project Bridge[DELETE ME]"
  stages           = data.observe_dashboard.db.stages
  layout           = data.observe_dashboard.db.layout
  parameters       = data.observe_dashboard.db.parameters
  parameter_values = data.observe_dashboard.db.parameter_values
}


output "stages" {
  value = observe_dashboard.inbetween.stages
}

output "layout" {
  value = observe_dashboard.inbetween.layout
}

output "parameters" {
  value = observe_dashboard.inbetween.parameters
}

output "parameter_values" {
  value = observe_dashboard.inbetween.parameter_values
}

terraform {
  backend "local" {}
  required_providers {
    observe = {
      source  = "terraform.observeinc.com/observeinc/observe"
      version = ">= 0.10.0"
    }
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.11"
    }
  }
  required_version = ">= 0.13"
}

provider "aws" {
  alias   = "sockshop"
  region  = "us-west-2"
  profile = "sockshop"
}

provider "observe" {
  customer      = var.observe_customer_id
  domain        = var.observe_domain
  user_email    = var.user_email
  user_password = data.aws_secretsmanager_secret_version.secret.secret_string
}

data "aws_secretsmanager_secret" "secret" {
  provider = aws.sockshop
  name     = format("tf-password-%s-%s", var.observe_domain, var.observe_customer_id)
}

data "aws_secretsmanager_secret_version" "secret" {
  provider  = aws.sockshop
  secret_id = data.aws_secretsmanager_secret.secret.id
}

endef

export TEMPLATE_VAR 

template_def:
	@echo "$$TEMPLATE_VAR" > $(TEMPLATE_DASHBOARD_DIRECTORY)/template_main.tf; \
	terraform fmt;

remove_template_def:
	cd $(TEMPLATE_DASHBOARD_DIRECTORY); \
	terraform destroy -auto-approve; 

	rm -f $(TEMPLATE_DASHBOARD_DIRECTORY)/template_main.tf