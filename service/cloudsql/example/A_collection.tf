resource "random_integer" "this" {
  min = 100
  max = 999
  keepers = {
    # Generate a new integer each time we switch
    listener_arn = "fred"
  }
}

locals {
  # project_id      = "terraflood-345116"
  name_format     = "${local.resource_prefix}/%s"
  region          = "us-west2"
  resource_prefix = "${var.resource_prefix}-${random_integer.this.result}"
}


##########################################
# Use this if you want to use content team collection - RECOMMENDED
##########################################

data "terraform_remote_state" "gcp" {
  backend = "s3"
  config = {
    bucket = "sockshop-terraform-state"
    region = "us-west-2"
    key    = "content-eng-tools/gcp-google-collection"
  }
}

locals {
  gcp_service_account_key = data.terraform_remote_state.gcp.outputs.observe_gcp_collection.service_account_key
  # cloud_resource_prefix   = data.terraform_remote_state.gcp.outputs.resource_prefix
  cloud_project_id = data.terraform_remote_state.gcp.outputs.project_id
}

##########################################
# Use this if you want to create a collection
##########################################

# module "observe_gcp_collection" {
#   source                    = "/Users/arthur/content_eng/terraform-google-collection"
#   name                      = local.resource_prefix
#   storage_retention_in_days = 1
# }

# locals {
#   gcp_service_account_key = module.observe_gcp_collection.service_account_key
# }
