locals {
  observation_oid = (length(var.datastreams) == 0 ?
    data.observe_dataset.observation[0].oid : (length(var.datastreams) == 1 ?
  var.datastreams[0].dataset : observe_dataset.datastreams[0].oid))
}

data "observe_dataset" "observation" {
  count = length(var.datastreams) == 0 ? 1 : 0

  workspace = var.workspace.oid
  name      = var.observation_dataset
}

resource "observe_dataset" "datastreams" {
  count = length(var.datastreams) > 1 ? 1 : 0

  workspace   = var.workspace.oid
  name        = format(var.name_format, "Datastreams")
  description = "Union of input datastreams"
  freshness   = var.freshness_default

  inputs = {
    for i, datastream in var.datastreams : format("datastream%d", i) => datastream.dataset
  }

  stage {
    input    = "datastream0"
    pipeline = <<-EOF
    ${join("\n", [for i, _ in var.datastreams : indent(2, format("union @datastream%d", i)) if i > 0])}
    EOF
  }
}

resource "observe_dataset" "base_pubsub_events" {
  workspace = var.workspace.oid
  name      = format(var.name_format, "base/PubSub Events")

  inputs = {
    "observation" = local.observation_oid
  }

  stage {
    input    = "observation"
    alias    = "from_pull_subscription"
    pipeline = <<-EOF
      filter OBSERVATION_KIND = "http"
      pick_col BUNDLE_TIMESTAMP,
        id:string(FIELDS.message.messageId),
        publishTime:parse_isotime(string(FIELDS.message.publishTime)),
        attributes:object(FIELDS.message.attributes),
        data:decode_base64(string(FIELDS.message.data)),
        subscription:string(FIELDS.subscription)
    EOF
  }

  stage {
    input    = "observation"
    alias    = "from_push_subscription"
    pipeline = <<-EOF
      filter OBSERVATION_KIND = "pubsub"
      pick_col BUNDLE_TIMESTAMP,
        id:string(FIELDS.message.ID),
        attributes:object(FIELDS.message.Attributes),
        publishTime:parse_isotime(string(FIELDS.message.PublishTime)),
        orderingKey:string(FIELDS.message.OrderingKey),
        deliveryAttempt:FIELDS.message.DeliveryAttempt,
        data:decode_base64(string(FIELDS.message.Data)),
        subscription:string(FIELDS.subscription)
    EOF
  }

  stage {
    input    = "from_pull_subscription"
    pipeline = <<-EOF
      union @from_push_subscription
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

  stage {
    input    = "events"
    alias    = "feed_events"
    pipeline = <<-EOF
      filter is_null(attributes["logging.googleapis.com/timestamp"])
      filter not is_null(data.window) and not is_null(data.asset)
      make_col data:parse_json(data)
      
      make_col time:parse_isotime(string(startTime))
      set_valid_from time

      pick_col
        time,
        ancestors:array(data.asset.ancestors),
        asset_type:string(data.asset.asset_type),
        name:string(data.asset.name),
        resource:object(data.asset.resource),
        iam_policy:object(data.asset.iam_policy),
        org_policy:object(data.asset.org_policy),
        access_policy:object(data.asset.access_policy),
        update_time:string(data.asset.update_time)
    EOF
  }

  stage {
    input    = "events"
    alias    = "export_events"
    pipeline = <<-EOF
      filter is_null(attributes["logging.googleapis.com/timestamp"])
      make_col data:parse_json(data)
      filter not is_null(data.asset_type) and not is_null(data.name)

      make_col time:publishTime
      set_valid_from time

      pick_col 
        time,
        ancestors:array(data.ancestors),
        asset_type:string(data.asset_type),
        name:string(data.name),
        resource:object(data.resource),
        iam_policy:object(data.iam_policy),
        org_policy:object(data.org_policy),
        access_policy:object(data.access_policy),
        update_time:string(data.update_time)
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

  stage {
    input    = "events"
    pipeline = <<-EOF
      pick_col 
        time,
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

  stage {
    input    = "events"
    pipeline = <<-EOF
      filter not is_null(iam_policy)
      pick_col
        time,
        name,
        asset_type,
        bindings:iam_policy.bindings,
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
      pick_col BUNDLE_TIMESTAMP,
          timestamp:parse_isotime(string(data.timestamp)),
          receiveTimestamp:parse_isotime(string(data.receiveTimestamp)),
          logName:string(data.logName),
          severity:string(data.severity),
          textPayload:string(data.textPayload),
          protoPayload:object(data.protoPayload),
          jsonPayload:data.jsonPayload,
          labels:object(data.labels),
          resource:object(data.resource),
          httpRequest:object(data.httpRequest),
          insertId:string(data.insertId),
          trace:string(data.trace),
          messageId:id
          
      set_valid_from timestamp
      drop_col BUNDLE_TIMESTAMP
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

  stage {
    input    = "events"
    pipeline = <<-EOF
    filter logName = "projects/terraflood-345116/logs/cloudaudit.googleapis.com%2Factivity"
    pick_col 
      timestamp,
      logName,
      severity,
      "@type":string(protoPayload['@type']),
      serviceName:string(protoPayload.serviceName),
      methodName:string(protoPayload.methodName),
      resourceName:string(protoPayload.resourceName),
      authenticationInfo:protoPayload.authenticationInfo,
      authorizationInfo:protoPayload.authorizationInfo,
      requestMetadata:protoPayload.requestMetadata,
      request:protoPayload.request,
      response:protoPayload.response,
      serviceData:protoPayload.serviceData,
      status:protoPayload.status
    EOF
  }
}

resource "observe_dataset" "metrics" {
  workspace = var.workspace.oid
  name      = format(var.name_format, "base/Metrics")
  freshness = var.freshness_default

  inputs = {
    "observation" = local.observation_oid
  }

  stage {
    pipeline = <<-EOF
      filter OBSERVATION_KIND = "gcpmetrics"

      make_col metric:FIELDS.timeseries.metric,
        metric_kind:int64(FIELDS.timeseries.metric_kind),
        points:FIELDS.timeseries.points
          
      make_col 
        metric_type:string(metric.type),
        metric_labels:metric.labels
      flatten_single points
      make_col start_time:timestamp_s(int64(@."_c_points_value".interval.start_time.seconds)) + duration(if_null(int64(@."_c_points_value".interval.start_time.nanos), 0)),
        end_time:timestamp_s(int64(@."_c_points_value".interval.end_time.seconds)) + duration(if_null(int64(@."_c_points_value".interval.end_time.nanos), 0)),
        value:@."_c_points_value".value
      set_valid_from start_time

      pick_col
        start_time,
        end_time,
        metric_type,
        value,
        metric_labels
    EOF
  }
}

resource "observe_dataset" "cloud_function" {
  workspace = var.workspace.oid
  name      = format(var.name_format, "Cloud Function")
  inputs = {
    "events" = observe_dataset.resource_asset_inventory_records.oid
  }

  stage {
    input    = "events"
    pipeline = <<-EOF
      filter discovery_name = "CloudFunction"
      make_col
        assetInventoryName:name,
        name:string(data.name)
      make_resource
        assetInventoryName,
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
        primary_key(name)
    EOF
  }
}
