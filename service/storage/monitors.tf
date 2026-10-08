resource "observe_monitor_v2" "public_access_granted" {
  count                    = local.enable_monitors ? 1 : 0
  disabled                 = true
  workspace                = var.workspace.oid
  name                     = format("(TEMPLATE) %s", format(var.name_format, "Public Access granted to Google Cloud Storage object"))
  rule_kind                = "promote"
  lookback_time            = "0s"
  data_stabilization_delay = lookup(var.freshness_overrides, "storage_logs", var.freshness_default_duration)
  inputs = {
    "Google/GCP/Storage Logs" = observe_dataset.storage_logs.oid
  }
  description = <<-EOF
    Some object received the 'ADD' action for member 'allUsers' or 'allAuthenticatedUsers'
  EOF

  groupings {
    column_path {
      name = "message"
    }
  }

  rules {
    level = "informational"

    promote {}
  }

  stage {
    pipeline = <<-EOT
      make_col 
        resourceName:string(protoPayload.resourceName),
        bindingDeltas:protoPayload.serviceData.policyDelta.bindingDeltas
      flatten_single bindingDeltas
      make_col 
        action:string(@."_c_bindingDeltas_value".action),
        member:string(@."_c_bindingDeltas_value".member),
        role:string(@."_c_bindingDeltas_value".role)
      
      filter action = "ADD"
      filter member = "allAuthenticatedUsers" or member = "allUsers"
      
      make_col message:strcat("action ", action, " ", member, " was taken on resource ", resourceName)
      
      pick_col 
        timestamp,
        bucket_name,
        resourceName,
        action,
        member,
        role,
        message
    EOT
  }
}

resource "observe_monitor_v2" "high_request_errors" {
  count                    = local.enable_metrics && local.enable_monitors ? 1 : 0
  disabled                 = true
  workspace                = var.workspace.oid
  name                     = format("(TEMPLATE) %s", format(var.name_format, "High Error Count for Google Cloud Storage requests"))
  rule_kind                = "threshold"
  lookback_time            = "5m0s"
  data_stabilization_delay = lookup(var.freshness_overrides, "storage_metrics", var.freshness_default_duration)
  inputs = {
    "Google/GCP/Storage Metrics" = observe_dataset.storage_metrics[0].oid
  }
  description = <<-EOF
    Many Google Cloud Storage requests are returning a non-OK response
  EOF

  groupings {
    column_path {
      name = "metric"
    }
  }
  groupings {
    column_path {
      name = "bucket_name"
    }
  }

  rules {
    level = "informational"

    threshold {
      aggregation       = "max"
      value_column_name = "error_request_count"

      compare_values {
        compare_fn = "greater_or_equal"
        value_float64 = [
          10,
        ]
      }
    }
  }
  stage {
    pipeline = <<-EOT
      filter is_null(metric_labels.response_code) or string(metric_labels.response_code) != "OK"
      align 1m, frame(back: 1m), error_request_count:avg(m("api_request_count"))
      aggregate error_request_count:sum(error_request_count), group_by(metric:"api_request_count", bucket_name)
    EOT
  }
}

