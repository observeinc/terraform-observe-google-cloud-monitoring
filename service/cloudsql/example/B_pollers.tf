##########################################
# poller for GCP pubsub
##########################################
resource "observe_poller" "gcp_pubsub_poller" {
  workspace = data.observe_workspace.default.oid
  name      = "${local.resource_prefix}-pubsub"

  datastream = observe_datastream.gcp.oid

  pubsub {
    project_id      = local.cloud_project_id
    subscription_id = local.cloud_resource_prefix
    # json_key        = base64decode(google_service_account_key.mykey.private_key)
    json_key = base64decode(local.gcp_service_account_key.private_key)
  }
}

##########################################
# Poller for metrics
# https://cloud.google.com/monitoring/api/metrics
##########################################

resource "observe_poller" "gcp_metrics" {
  workspace = data.observe_workspace.default.oid
  name      = "${local.resource_prefix}-metrics"
  interval  = "1m0s"

  datastream = observe_datastream.gcp.oid

  gcp_monitoring {
    project_id = local.cloud_project_id
    # json_key        = base64decode(google_service_account_key.mykey.private_key)
    json_key = base64decode(local.gcp_service_account_key.private_key)

    include_metric_type_prefixes = [
      "cloudfunctions.googleapis.com/",
      "logging.googleapis.com/",
      "iam.googleapis.com/",
      "monitoring.googleapis.com/",
      "pubsub.googleapis.com/",
      "storage.googleapis.com/",
      "cloudsql.googleapis.com/",
      "compute.googleapis.com/",
      "agent.googleapis.com/",
    ]
    exclude_metric_type_prefixes = ["aws.googleapis.com/"]
  }
}
