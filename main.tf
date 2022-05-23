locals {
  base_module = {
    datastream                         = var.datastream
    pubsub_events                      = observe_dataset.base_pubsub_events
    asset_inventory_records            = observe_dataset.base_asset_inventory_records
    resource_asset_inventory_records   = observe_dataset.resource_asset_inventory_records
    iam_policy_asset_inventory_records = observe_dataset.iam_policy_asset_inventory_records
    logs                               = observe_dataset.logs
    audit_logs                         = observe_dataset.audit_logs
    metrics                            = observe_dataset.metrics
  }
}
resource "observe_dataset" "base_pubsub_events" {
  workspace = var.workspace.oid
  name      = format(var.name_format, "PubSub Events")
  freshness = var.freshness_default

  inputs = {
    "observation" = var.datastream.dataset
  }

  # https://cloud.google.com/pubsub/docs/reference/rpc/google.pubsub.v1#pubsubmessage
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
  name      = format(var.name_format, "Asset Inventory Records")
  freshness = var.freshness_default

  inputs = {
    "events" = observe_dataset.base_pubsub_events.oid
  }

  # https://cloud.google.com/asset-inventory/docs/reference/rpc/google.cloud.asset.v1#temporalasset
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

  # https://cloud.google.com/asset-inventory/docs/reference/rpc/google.cloud.asset.v1#asset
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
    pipeline = <<-EOF
      union @feed_events
    EOF
  }
}

resource "observe_dataset" "resource_asset_inventory_records" {
  workspace = var.workspace.oid
  name      = format(var.name_format, "Resource Asset Inventory Records")
  freshness = var.freshness_default

  inputs = {
    "events" = observe_dataset.base_asset_inventory_records.oid
  }

  # https://cloud.google.com/asset-inventory/docs/reference/rpc/google.cloud.asset.v1#google.cloud.asset.v1.Resource
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
  name      = format(var.name_format, "IAM Policy Asset Inventory Records")
  freshness = var.freshness_default

  inputs = {
    "events" = observe_dataset.base_asset_inventory_records.oid
  }

  # https://cloud.google.com/asset-inventory/docs/reference/rpc/google.iam.v1#google.iam.v1.Policy
  stage {
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
  name      = format(var.name_format, "Logs")
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
  name      = format(var.name_format, "Audit Logs")
  freshness = var.freshness_default

  inputs = {
    "events" = observe_dataset.logs.oid
  }

  # https://cloud.google.com/logging/docs/reference/audit/auditlog/rest/Shared.Types/AuditLog
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

resource "observe_dataset" "metric_points" {
  workspace = var.workspace.oid
  name      = format(var.name_format, "Metric Points")
  freshness = var.freshness_default

  inputs = {
    "observation" = var.datastream.dataset
  }


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
    EOF
  }
}

resource "observe_dataset" "metrics" {
  workspace = var.workspace.oid
  name      = format(var.name_format, "Metrics")
  freshness = var.freshness_default

  inputs = {
    "points" = observe_dataset.metric_points.oid
  }

  stage {
    pipeline = <<-EOF
      // Note that value is null for String metrics
      make_col value:coalesce(
          float64(value.Value.Int64Value),
          float64(value.Value.DoubleValue),
          float64(if(bool(value.Value.BoolValue), 1, 0)),
          float64(value.Value.DistributionValue.mean))
    EOF
  }

  stage {
    pipeline = <<-EOF
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

resource "observe_dataset" "string_metrics" {
  workspace = var.workspace.oid
  name      = format(var.name_format, "String Metric Points")
  freshness = var.freshness_default

  inputs = {
    "points" = observe_dataset.metric_points.oid
  }

  stage {
    pipeline = <<-EOF
      filter value_type = 4
      make_col value:string(value.Value.StringValue)
      pick_col
        start_time,
        end_time,
        metric_type,
        metric_kind,
        metric_labels,
        resource_type,
        resource_labels,
        value
    EOF
  }
}

resource "observe_dataset" "distribution_metrics" {
  workspace = var.workspace.oid
  name      = format(var.name_format, "Distribution Metric Points")
  freshness = var.freshness_default

  inputs = {
    "points" = observe_dataset.metric_points.oid
  }

  # https://cloud.google.com/monitoring/api/ref_v3/rest/v3/TypedValue#Distribution
  stage {
    pipeline = <<-EOF
      filter value_type = 5
      make_col value:object(value.Value.DistributionValue)
      pick_col
        start_time,
        end_time,
        metric_type,
        metric_kind,
        metric_labels,
        resource_type,
        resource_labels,
        count:int64(value.count),
        mean:float64(value.mean),
        range:object(value.range),
        sum_of_squared_deviation:float64(value.sum_of_squared_deviation),
        bucket_options:object(value.bucket_options),
        bucket_counts:array(value.bucket_counts),
        exemplars:object(value.exemplars)
    EOF
  }
}
