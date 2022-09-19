
resource "observe_dataset" "load_balancing_logs" {
  workspace   = var.workspace.oid
  name        = format(var.name_format, "Access Logs")
  freshness   = lookup(var.freshness_overrides, "load_balancing_logs", var.freshness_default)
  description = "This dataset contains access logs generated for load balancers"

  inputs = {
    "logs" = var.google.logs.oid
  }

  stage {
    pipeline = <<-EOF
      filter ends_with(resourceType, "_lb_rule") or ends_with(resourceType, "_load_balancer")

      make_col 
        project_id:string(resourceLabels.project_id),
        statusCode:int64(httpRequest.status),
        statusDetails:string(jsonPayload.statusDetails),
        latency:string(httpRequest.latency),
        requestSize:string(httpRequest.requestSize),
        responseSize:string(httpRequest.responseSize),
        remoteIp:string(httpRequest.remoteIp),
        serverIp:string(httpRequest.serverIp),
        requestMethod:string(httpRequest.requestMethod),
        requestUrl:string(httpRequest.requestUrl),
        requestProtocol:string(coalesce(string(httpRequest.protocol), upper(split_part(string(httpRequest.requestUrl), ":", 1)))),
        userAgent:string(httpRequest.userAgent),
        referer:string(httpRequest.referer),
        cacheLookup:bool(httpRequest.cacheLookup),
        backend_service_name:string(coalesce(resourceLabels.backend_service_name, resourceLabels.backend_target_name)),
        forwarding_rule_name:string(resourceLabels.forwarding_rule_name),
        target_proxy_name:string(resourceLabels.target_proxy_name),
        url_map_name:string(resourceLabels.url_map_name),
        logType:string(jsonPayload."@type"),
        region:string(coalesce(resourceLabels.region, resourceLabels.zone))
      make_col
        load_balancer:string(coalesce(url_map_name, backend_service_name))
    EOF
  }

  stage {
    pipeline = <<-EOF
      pick_col 
        timestamp,
        severity,
        project_id,
        load_balancer,
        statusCode,
        statusDetails,
        latency,
        requestSize,
        responseSize,
        remoteIp,
        serverIp,
        requestMethod,
        requestUrl,
        requestProtocol,
        userAgent,
        referer,
        cacheLookup,
        trace,
        backend_service_name,
        forwarding_rule_name,
        target_proxy_name,
        url_map_name,
        resourceLabels,
        region,
        resourceType,
        logName,
        logType
    EOF
  }
}

resource "observe_dataset" "health_check_logs" {
  workspace   = var.workspace.oid
  name        = format(var.name_format, "Health Check Logs")
  freshness   = lookup(var.freshness_overrides, "health_check_logs", var.freshness_default)
  description = "This dataset contains health check logs generated for load balancers"

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

resource "observe_dataset" "load_balancing_config_audit_logs" {
  workspace   = var.workspace.oid
  name        = format(var.name_format, "Config Audit Logs")
  freshness   = lookup(var.freshness_overrides, "audit_logs", var.freshness_default)
  description = "This dataset contains audit logs generated for modifications to load balancing components"

  inputs = {
    "logs" = var.google.logs.oid
  }

  stage {
    input    = "logs"
    alias    = "component_config_audit_logs"
    pipeline = <<-EOF
      filter ends_with(logName, "cloudaudit.googleapis.com%2Factivity")
      make_col resourceName:string(coalesce(jsonPayload.resourceName, protoPayload.resourceName))
      make_col 
        resourceKind:split_part(resourceName, "/", -2),
        resourceName:split_part(resourceName, "/", -1)
      filter in(resourceKind, 
        "urlMaps",
        "regionUrlMap",
        "forwardingRules",
        "globalForwardingRules",
        "targetHttpProxies",
        "targetHttpsProxies",
        "targetSslProxies",
        "targetTcpProxies",
        "targetGrpcProxies",
        "backendServices",
        "regionBackendServices",
        "backendBuckets",
        "healthChecks")
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
      target = observe_dataset.load_balancing_load_balancers.oid
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
