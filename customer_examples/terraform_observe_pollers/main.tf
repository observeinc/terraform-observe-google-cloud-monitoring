# creates the pubsub topic and subscription
# creates the collection cloud function
# creates the log sink
# create the service acount and key used by Observe pollers
module "observe_gcp_collection" {
  source = "observeinc/collection/google"
  name   = format(var.name_format, "env")

  resource                     = "projects/${local.project_id}"
  enable_function              = true
  function_available_memory_mb = 512
}

# Fetches the Observe workspace for environment identified by customer ID
data "observe_workspace" "default" {
  name = "Default"
}

# locals
locals {
  workspace       = data.observe_workspace.default
  datastream      = data.observe_datastream.gcp
  json_key        = base64decode(module.observe_gcp_collection.service_account_key.private_key)
  subscription_id = module.observe_gcp_collection.subscription.name
  project_id      = var.project_id
}

# Fetches the Observe datastream for GCP in the environment identified by customer ID
data "observe_datastream" "gcp" {
  name      = var.datastream_name
  workspace = local.workspace.oid
}

# creates the Observe poller for GCP metrics
# polls on interval defined by interval_duration
resource "observe_poller" "gcp_monitoring" {
  workspace = local.workspace.oid
  name      = format(var.name_format, "monitoring_poller")
  interval  = var.interval_duration

  datastream = local.datastream.oid

  gcp_monitoring {
    project_id = local.project
    json_key   = local.json_key

    include_metric_type_prefixes = var.include_metric_type_prefixes
    exclude_metric_type_prefixes = var.exclude_metric_type_prefixes
  }
}


# creates the Observe poller for GCP pubsub subscription
# poller is notified when the subscription has new data
resource "observe_poller" "pubsub_poller" {
  workspace = local.workspace.oid
  name      = format(var.name_format, "pubsub_poller")

  datastream = local.datastream

  pubsub {
    project_id      = local.project
    subscription_id = local.subscription_id
    json_key        = local.json_key
  }
}

