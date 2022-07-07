resource "observe_monitor" "public_access_granted" {
  count     = local.enable_monitors ? 1 : 0
  disabled  = true
  workspace = var.workspace.oid
  name      = format("(TEMPLATE) %s", format(var.name_format, "Public Access granted to Google Cloud Storage object"))
  inputs = {
    "Google/GCP/Storage Logs" = observe_dataset.storage_logs.oid
  }
  description = <<-EOF
    Some object received the 'ADD' action for member 'allUsers' or 'allAuthenticatedUsers'
  EOF

  notification_spec {
    importance = "informational"
    merge      = "separate"
  }

  rule {
    promote {
      description_field = "message"
      kind_field        = "bucket_name"
      primary_key       = ["message"]
    }
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

resource "observe_monitor" "high_request_errors" {
  count     = local.enable_metrics && local.enable_monitors ? 1 : 0
  disabled  = true
  workspace = var.workspace.oid
  name      = format("(TEMPLATE) %s", format(var.name_format, "High Error Count for Google Cloud Storage requests"))
  inputs = {
    "Google/GCP/Storage Metrics" = observe_dataset.storage_metrics[0].oid
  }
  description = <<-EOF
    Many Google Cloud Storage requests are returning a non-OK response
  EOF

  notification_spec {
    importance = "informational"
    merge      = "separate"
  }
  rule {
    source_column = "value"

    group_by_group {
      columns = ["metric"]
    }
    group_by_group {
      columns = ["bucket_name"]
    }

    threshold {
      compare_function = "greater_or_equal"
      compare_values   = [10]
      lookback_time    = "5m0s"
    }
  }
  stage {
    pipeline = <<-EOT
      filter metric = "api_request_count"
      make_col response_code:string(metric_labels.response_code)
      filter is_null(response_code) or (response_code != "OK")
    EOT
  }
}

