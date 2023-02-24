module "observe_gcp_collection" {
  # source = "../../../terraform-google-collection"
  source = "observeinc/collection/google"
  name   = format(var.name_format, "env")

  resource        = "projects/${var.project_id}"
  enable_function = true
}

data "observe_workspace" "default" {
  name = "Default"
}

data "observe_datastream" "GCP" {
  name      = "GCP"
  workspace = local.workspace.oid
}

locals {
  workspace  = data.observe_workspace.default
  datastream = data.observe_datastream.GCP
}

module "monitoring_poller" {
  source                           = "git@github.com:observeinc/terraform-observe-google.git//sources/monitoring"
  workspace                        = local.workspace
  datastream                       = local.datastream
  name                             = format(var.name_format, "metrics")
  description                      = "terraform only poller"
  project                          = var.project_id
  service_account_private_key_json = base64decode(module.observe_gcp_collection.service_account_key.private_key)


  include_metric_type_prefixes = var.metric_prefixes

}

module "pubsub_poller" {
  source                           = "git@github.com:observeinc/terraform-observe-google.git//sources/pubsub"
  workspace                        = local.workspace
  datastream                       = local.datastream
  name                             = format(var.name_format, "assets-logs")
  description                      = "terraform only poller"
  project                          = var.project_id
  service_account_private_key_json = base64decode(module.observe_gcp_collection.service_account_key.private_key)
  subscription                     = module.observe_gcp_collection.subscription.name

}
