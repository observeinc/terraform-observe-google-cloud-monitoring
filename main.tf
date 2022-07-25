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
    string_metrics                     = observe_dataset.string_metrics
    projects                           = observe_dataset.projects
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

      make_col ttl: case(deleted, 1ns, true, ${var.max_expiry})

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
        version:string(resource.version),
        ttl
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

resource "observe_dataset" "projects" {
  workspace = var.workspace.oid
  name      = format(var.name_format, "Projects")
  freshness = lookup(var.freshness_overrides, "projects", var.freshness_default)

  inputs = {
    "events" = observe_dataset.base_asset_inventory_records.oid
  }

  stage {
    pipeline = <<-EOF
      make_col project:coalesce(string(resource.data.project),string(resource.data.projectId))
      filter not is_null(project)
      extract_regex string(ancestors), /\[(.*)"projects\/(?P<projectNumber>\d+)"(.*)/

      pick_col 
        time,
        projectNumber,
        project
    EOF
  }

  stage {
    pipeline = <<-EOF
      make_resource 
        project,
        primary_key(projectNumber)
      add_key project
    EOF
  }
}
