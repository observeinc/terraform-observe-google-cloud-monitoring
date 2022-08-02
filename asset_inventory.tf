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