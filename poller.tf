
resource "observe_poller" "pubsub_poller" {
  for_each  = { for c in var.collection : c.project => c }
  workspace = var.workspace.oid
  name      = format(var.name_format, "${each.value.project} Pubsub Poller")

  datastream = var.datastream.oid

  pubsub {
    project_id      = each.value.project
    subscription_id = each.value.subscription.name
    json_key        = base64decode(each.value.service_account_key.private_key)
  }
}

resource "observe_poller" "gcp_metrics" {
  for_each = { for c in var.collection : c.project => c }

  workspace = var.workspace.oid
  name      = format(var.name_format, "${each.value.project} Metrics Poller")
  interval  = var.metrics_poller_interval

  datastream = var.datastream.oid

  gcp_monitoring {
    project_id = each.value.project
    json_key   = base64decode(each.value.service_account_key.private_key)

    include_metric_type_prefixes = var.metrics_poller_include_metric_type_prefixes
    exclude_metric_type_prefixes = var.metrics_poller_exclude_metric_type_prefixes
  }
}
