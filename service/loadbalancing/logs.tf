
resource "observe_dataset" "load_balancing_logs" {
  workspace = var.workspace.oid
  name      = format(var.name_format, "Logs")
  freshness = lookup(var.freshness_overrides, "load_balancing_logs", var.freshness_default)

  inputs = {
    "logs" = var.google.logs.oid
  }

  stage {
    pipeline = <<-EOF
      filter ends_with(resourceType, "_lb_rule") or ends_with(resourceType, "_load_balancer")

      make_col 
        statusDetails:string(jsonPayload.statusDetails),
        logType:string(jsonPayload."@type"),
        backend_service_name:string(coalesce(resourceLabels.backend_service_name, resourceLabels.backend_target_name)),
        forwarding_rule_name:string(resourceLabels.forwarding_rule_name),
        project_id:string(resourceLabels.project_id),
        target_proxy_name:string(resourceLabels.target_proxy_name),
        url_map_name:string(resourceLabels.url_map_name),
        region:string(coalesce(resourceLabels.region, resourceLabels.zone)),
        response_code:int64(httpRequest.status)
    EOF
  }

  stage {
    pipeline = <<-EOF
      pick_col 
        timestamp,
        receiveTimestamp,
        logName,
        severity,
        project_id,
        region,
        resourceType,
        logType,
        resourceLabels,
        backend_service_name,
        forwarding_rule_name,
        target_proxy_name,
        url_map_name,
        httpRequest,
        response_code,
        trace
    EOF
  }
}

resource "observe_dataset" "health_check_logs" {
  workspace = var.workspace.oid
  name      = format(var.name_format, "Health Check Logs")
  freshness = lookup(var.freshness_overrides, "health_check_logs", var.freshness_default)

  inputs = {
    "logs" = var.google.logs.oid
  }

  stage {
    pipeline = <<-EOF
      filter ends_with(logName, "/logs/compute.googleapis.com%2Fhealthchecks")
      make_col 
        healthState:string(jsonPayload.healthCheckProbeResult.healthState),
        instance_group_name:string(resourceLabels.instance_group_name)
    EOF
  }

  stage {
    pipeline = <<-EOF
      pick_col 
        timestamp,
        receiveTimestamp,
        severity,
        healthState,
        instance_group_name,
        resourceType,
        jsonPayload,
        labels,
        resourceLabels,
        insertId,
        messageId
    EOF
  }
}

resource "observe_link" "load_balancing_logs" {
  workspace = var.workspace.oid
  source    = observe_dataset.load_balancing_logs.oid
  target    = each.value.target
  fields    = each.value.fields
  label     = each.key

  for_each = {
    "Load Balancer" = {
      target = observe_dataset.load_balancers.oid
      fields = ["url_map_name:name"]
    },
    "Backend Service" = {
      target = observe_dataset.backend_services.oid
      fields = ["backend_service_name:name"]
    },
    "Forwarding Rule" = {
      target = observe_dataset.forwarding_rules.oid
      fields = ["forwarding_rule_name:frontend_name"]
    },
    "Target Proxy" = {
      target = observe_dataset.target_proxies.oid
      fields = ["target_proxy_name:name"]
    }
  }
}

resource "observe_link" "healthcheck_logs_to_instance_groups" {
  workspace = var.workspace.oid
  source    = observe_dataset.health_check_logs.oid
  target    = observe_dataset.instance_groups.oid
  fields    = ["instance_group_name:name"]
  label     = "Instance Group"
}
