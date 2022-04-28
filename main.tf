resource "observe_dataset" "base_pubsub_events" {
  workspace = var.workspace.oid
  name      = format(var.name_format, "base/PubSub Events")
  freshness = var.freshness_default

  inputs = {
    "observation" = var.datastream.dataset
  }

  // https://cloud.google.com/pubsub/docs/reference/rpc/google.pubsub.v1#pubsubmessage
  stage {
    input    = "observation"
    pipeline = <<-EOF
      filter OBSERVATION_KIND = "pubsub"
      pick_col BUNDLE_TIMESTAMP,
        id:string(FIELDS.message.ID),
        attributes:object(FIELDS.message.Attributes),
        publishTime:parse_isotime(string(FIELDS.message.PublishTime)),
        orderingKey:string(FIELDS.message.OrderingKey),
        deliveryAttempt:int64(FIELDS.message.DeliveryAttempt),
        data:decode_base64(string(FIELDS.message.Data)),
        subscription:string(FIELDS.subscription)
    EOF
  }
}

resource "observe_dataset" "base_asset_inventory_records" {
  workspace = var.workspace.oid
  name      = format(var.name_format, "base/Asset Inventory Records")
  freshness = var.freshness_default

  inputs = {
    "events" = observe_dataset.base_pubsub_events.oid
  }

  // https://cloud.google.com/asset-inventory/docs/reference/rpc/google.cloud.asset.v1#temporalasset
  stage {
    input    = "events"
    alias    = "feed_events"
    pipeline = <<-EOF
      filter is_null(attributes["logging.googleapis.com/timestamp"])
      make_col data:parse_json(data)
      filter not is_null(data.window) and not is_null(data.asset)

      make_col time:parse_isotime(string(data.window.startTime))
      set_valid_from options(max_time_diff:${var.max_time_diff}), time

      pick_col
        time,
        deleted:bool(data.deleted),
        update_time:parse_isotime(string(data.asset.updateTime)),
        ancestors:array(data.asset.ancestors),
        asset_type:string(data.asset.assetType),
        name:string(data.asset.name),
        resource:object(data.asset.resource),
        iam_policy:object(data.asset.iamPolicy),
        org_policy:array(data.asset.orgPolicy),
        access_policy:object(data.asset.accessPolicy)
    EOF
  }

  // https://cloud.google.com/asset-inventory/docs/reference/rpc/google.cloud.asset.v1#asset
  stage {
    input    = "events"
    alias    = "export_events"
    pipeline = <<-EOF
      filter is_null(attributes["logging.googleapis.com/timestamp"])
      make_col data:parse_json(data)
      filter not is_null(data.asset_type) and not is_null(data.name)

      make_col time:timestamp_ns(int64(attributes.snapshotTime))
      set_valid_from options(max_time_diff:${var.max_time_diff}), time

      pick_col 
        time,
        update_time:parse_isotime(string(data.update_time)),
        ancestors:array(data.ancestors),
        asset_type:string(data.asset_type),
        name:string(data.name),
        resource:object(data.resource),
        iam_policy:object(data.iam_policy),
        org_policy:array(data.org_policy),
        access_policy:object(data.access_policy)
    EOF
  }

  stage {
    input    = "export_events"
    pipeline = <<-EOF
      union @feed_events
    EOF
  }
}

resource "observe_dataset" "resource_asset_inventory_records" {
  workspace = var.workspace.oid
  name      = format(var.name_format, "base/Resource Asset Inventory Records")
  freshness = var.freshness_default

  inputs = {
    "events" = observe_dataset.base_asset_inventory_records.oid
  }

  // https://cloud.google.com/asset-inventory/docs/reference/rpc/google.cloud.asset.v1#google.cloud.asset.v1.Resource
  stage {
    input    = "events"
    pipeline = <<-EOF
      filter not is_null(resource)
      pick_col 
        time,
        deleted,
        asset_type,
        name,
        data:object(resource.data),
        discovery_document_uri:string(resource.discovery_document_uri),
        discovery_name:string(resource.discovery_name),
        location:string(resource.location),
        parent:string(resource.parent),
        version:string(resource.version)
    EOF
  }
}

resource "observe_dataset" "iam_policy_asset_inventory_records" {
  workspace = var.workspace.oid
  name      = format(var.name_format, "base/IAM Policy Asset Inventory Records")
  freshness = var.freshness_default

  inputs = {
    "events" = observe_dataset.base_asset_inventory_records.oid
  }

  // https://cloud.google.com/asset-inventory/docs/reference/rpc/google.iam.v1#google.iam.v1.Policy
  stage {
    input    = "events"
    pipeline = <<-EOF
      filter not is_null(iam_policy)
      pick_col
        time,
        name,
        asset_type,
        bindings:object(iam_policy.bindings),
        etag:string(iam_policy.etag)
    EOF
  }
}

resource "observe_dataset" "logs" {
  workspace = var.workspace.oid
  name      = format(var.name_format, "base/Logs")
  freshness = var.freshness_default

  inputs = {
    "events" = observe_dataset.base_pubsub_events.oid
  }

  stage {
    input    = "events"
    pipeline = <<-EOF
      filter not is_null(attributes["logging.googleapis.com/timestamp"])
      make_col data:parse_json(data)

      make_col timestamp:parse_isotime(string(data.timestamp))
      set_valid_from options(max_time_diff:${var.max_time_diff}), timestamp

      pick_col timestamp,
          receiveTimestamp:parse_isotime(string(data.receiveTimestamp)),
          logName:string(data.logName),
          severity:string(data.severity),
          textPayload:string(data.textPayload),
          protoPayload:object(data.protoPayload),
          jsonPayload:object(data.jsonPayload),
          labels:object(data.labels),
          resourceLabels:object(data.resource.labels),
          resourceType:string(data.resource.type),
          httpRequest:object(data.httpRequest),
          insertId:string(data.insertId),
          trace:string(data.trace),
          messageId:id
    EOF
  }
}

resource "observe_dataset" "audit_logs" {
  workspace = var.workspace.oid
  name      = format(var.name_format, "base/Audit Logs")
  freshness = var.freshness_default

  inputs = {
    "events" = observe_dataset.logs.oid
  }

  // https://cloud.google.com/logging/docs/reference/audit/auditlog/rest/Shared.Types/AuditLog
  stage {
    input    = "events"
    pipeline = <<-EOF
    filter contains(logName, "/logs/cloudaudit.googleapis.com")
    pick_col 
      timestamp,
      logName,
      severity,
      type:string(protoPayload['@type']),
      serviceName:string(protoPayload.serviceName),
      methodName:string(protoPayload.methodName),
      resourceName:string(protoPayload.resourceName),
      status:object(protoPayload.status),
      authenticationInfo:object(protoPayload.authenticationInfo),
      authorizationInfo:object(protoPayload.authorizationInfo),
      requestMetadata:object(protoPayload.requestMetadata),
      request:object(protoPayload.request),
      response:object(protoPayload.response),
      serviceData:object(protoPayload.serviceData)
    EOF
  }
}

resource "observe_dataset" "metrics" {
  workspace = var.workspace.oid
  name      = format(var.name_format, "base/Metrics")
  freshness = var.freshness_default

  inputs = {
    "observation" = var.datastream.dataset
  }

  // https://cloud.google.com/monitoring/api/ref_v3/rest/v3/TimeSeries
  stage {
    pipeline = <<-EOF
      filter OBSERVATION_KIND = "gcpmetrics"

      make_col metric:object(FIELDS.timeseries.metric),
        metric_kind:int64(FIELDS.timeseries.metric_kind),
        resource_type:string(FIELDS.timeseries.resource.type),
        resource_labels:object(FIELDS.timeseries.resource.labels),
        value_type:int64(FIELDS.timeseries.value_type),
        points:array(FIELDS.timeseries.points)
          
      make_col 
        metric_type:string(metric.type),
        metric_labels:object(metric.labels)
      flatten_single points
      make_col start_time:timestamp_s(int64(@."_c_points_value".interval.start_time.seconds)) + duration(if_null(int64(@."_c_points_value".interval.start_time.nanos), 0)),
        end_time:timestamp_s(int64(@."_c_points_value".interval.end_time.seconds)) + duration(if_null(int64(@."_c_points_value".interval.end_time.nanos), 0)),
        value:@."_c_points_value".value
      set_valid_from options(max_time_diff:${var.max_time_diff}), start_time
      
      // Note that value is null for Distribution and String metrics
      make_col value:coalesce(
          float64(value.Value.Int64Value),
          float64(value.Value.DoubleValue),
          float64(case(value.Value.BoolValue = true, 1, value.Value.BoolValue = false, 0)))

      pick_col
        start_time,
        end_time,
        metric_type,
        metric_kind,
        metric_labels,
        resource_type,
        resource_labels,
        value,
        value_type
    EOF
  }
}

resource "observe_dataset" "cloud_function" {
  workspace = var.workspace.oid
  name      = format(var.name_format, "Cloud Function")
  freshness = var.freshness_default

  inputs = {
    "events" = observe_dataset.resource_asset_inventory_records.oid
  }

  // https://cloud.google.com/functions/docs/reference/rest/v1/projects.locations.functions#CloudFunction
  stage {
    input    = "events"
    pipeline = <<-EOF
      filter asset_type = "cloudfunctions.googleapis.com/CloudFunction"
      make_col
        assetInventoryName:name,
        name:string(data.name)
      make_resource options(expiry:${var.max_expiry}),
        name,
        availableMemoryMb:int64(data.availableMemoryMb),
        buildId:string(data.buildId),
        buildName:string(data.buildName),
        description:string(data.description),
        dockerRegistry:string(data.dockerRegistry),
        entryPoint:string(data.entryPoint),
        environmentVariables:object(data.environmentVariables),
        eventTrigger:object(data.eventTrigger),
        httpsTrigger:object(data.httpsTrigger),
        ingressSettings:string(data.ingressSettings),
        maxInstances:int64(data.maxInstances),
        runtime:string(data.runtime),
        serviceAccountEmail:string(data.serviceAccountEmail),
        sourceArchiveUrl:string(data.sourceArchiveUrl),
        status:string(data.status),
        timeout:string(data.timeout),
        updateTime:parse_isotime(string(data.updateTime)),
        versionId:string(data.versionId),
        primary_key(assetInventoryName),
        valid_for(if(deleted, 1ns, ${var.max_expiry}))

      add_key name
      set_label name
      extract_regex name, /projects\/(?P<projectId>[^\/+]+)\/locations\/(?P<region>[^\/+]+)\/functions\/(?P<functionName>[^\/+]+)/
      add_key projectId, region, functionName
    EOF
  }
}

resource "observe_dataset" "cloud_function_logs" {
  workspace = var.workspace.oid
  name      = format(var.name_format, "Cloud Function Logs")
  freshness = var.freshness_default

  inputs = {
    "logs" = observe_dataset.logs.oid
  }

  stage {
    pipeline = <<-EOF
      filter resourceType = "cloud_function"

      make_col 
        functionName:string(resourceLabels.function_name),
        projectId:string(resourceLabels.project_id),
        region:string(resourceLabels.region)

      pick_col 
        timestamp,
        receiveTimestamp,
        logName,
        severity,
        textPayload,
        projectId,
        region,
        functionName
    EOF
  }
}

resource "observe_link" "cloud_function_logs" {
  workspace = var.workspace.oid
  source    = observe_dataset.cloud_function_logs.oid
  target    = each.value.target
  fields    = each.value.fields
  label     = each.key

  for_each = {
    "Cloud Function" = {
      target = observe_dataset.cloud_function.oid
      fields = ["projectId", "region", "functionName"]
    }
  }
}


locals {
  cloud_function_metrics = {
    "cloudfunctions.googleapis.com/function/active_instances" = {
      type        = "gauge"
      description = <<-EOF
        The number of active function instances. Sampled every 60 seconds. After sampling, data is not visible for up to 240 seconds.
      EOF
      rollup      = "avg"
      aggregate   = "sum"
    },
    "cloudfunctions.googleapis.com/function/execution_count" = {
      type        = "delta"
      description = <<-EOF
        Count of function executions broken down by status. Sampled every 60 seconds. After sampling, data is not visible for up to 240 seconds.
      EOF
      rollup      = "rate"
      aggregate   = "sum"
    },
    "cloudfunctions.googleapis.com/function/execution_times" = {
      type        = "gauge"
      description = <<-EOF
        The number of active function instances. Sampled every 60 seconds. After sampling, data is not visible for up to 240 seconds.
      EOF
      rollup      = "avg"
      aggregate   = "sum"
    },
    "cloudfunctions.googleapis.com/function/instance_count" = {
      type        = "gauge"
      description = <<-EOF
        The number of active function instances. Sampled every 60 seconds. After sampling, data is not visible for up to 240 seconds.
      EOF
      rollup      = "avg"
      aggregate   = "sum"
    },
    "cloudfunctions.googleapis.com/function/network_egress" = {
      type        = "delta"
      description = <<-EOF
        Outgoing network traffic of function, in bytes. Sampled every 60 seconds. After sampling, data is not visible for up to 240 seconds.
      EOF
      rollup      = "rate"
      aggregate   = "sum"
    },
    "cloudfunctions.googleapis.com/function/user_memory_bytes" = {
      type        = "delta"
      description = <<-EOF
        Distribution of maximum function's memory usage during execution, in bytes. Sampled every 60 seconds. After sampling, data is not visible for up to 180 seconds.
      EOF
      rollup      = "avg"
      aggregate   = "sum"
    },
  }
}

resource "observe_dataset" "cloud_function_metrics" {
  workspace = var.workspace.oid
  name      = format(var.name_format, "Cloud Function Metrics")
  freshness = var.freshness_default

  inputs = {
    "metrics" = observe_dataset.metrics.oid
  }

  stage {
    pipeline = <<-EOF
      filter resource_type = "cloud_function"

      make_col 
        function_name:string(resource_labels.function_name),
        project_id:string(resource_labels.project_id),
        region:string(resource_labels.region)

      pick_col
        start_time,
        end_time,
        metric_type,
        metric_kind,
        metric_labels,
        value,
        value_type,
        project_id,
        region,
        function_name

      interface "metric", metric:metric_type, value:value
      ${join("\n\n", [for metric, options in local.cloud_function_metrics : indent(2, format("set_metric options(\n%s\n), %q", join(",\n", [for k, v in options : k == "interval" ? format("%s: %s", k, v) : format("%s: %q", k, v)]), metric))])}
    EOF
  }
}

resource "observe_link" "cloud_function_metrics" {
  workspace = var.workspace.oid
  source    = observe_dataset.cloud_function_metrics.oid
  target    = each.value.target
  fields    = each.value.fields
  label     = each.key

  for_each = {
    "Cloud Function" = {
      target = observe_dataset.cloud_function.oid
      fields = ["project_id:projectId", "region", "function_name:functionName"]
    }
  }
}
