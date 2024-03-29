resource "observe_dataset" "base_asset_inventory_records" {
  workspace   = local.datasets.base_asset_inventory_records.workspace
  name        = local.datasets.base_asset_inventory_records.name
  freshness   = local.datasets.base_asset_inventory_records.freshness
  description = local.datasets.base_asset_inventory_records.description

  inputs = {
    "events" = observe_dataset.base_pubsub_events.oid
  }

  # https://cloud.google.com/asset-inventory/docs/reference/rpc/google.cloud.asset.v1#temporalasset
  stage {
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
        access_policy:object(data.asset.accessPolicy),
        attributes
    EOF
  }

  # Upstream data: See https://github.com/observeinc/google-cloud-functions/pull/2
  stage {
    input    = "events"
    alias    = "list_assets_events"
    pipeline = <<-EOF
      filter attributes.observe_gcp_kind = "https://cloud.google.com/asset-inventory/docs/reference/rest/v1/assets"
      make_col data:parse_json(data)

      pick_col
        time:BUNDLE_TIMESTAMP,
        deleted:bool(data.deleted),
        update_time:parse_isotime(string(data.asset.updateTime)),
        ancestors:array(data.asset.ancestors),
        asset_type:string(data.asset.assetType),
        name:string(data.asset.name),
        resource:object(data.asset.resource),
        iam_policy:object(data.asset.iamPolicy),
        org_policy:array(data.asset.orgPolicy),
        access_policy:object(data.asset.accessPolicy),
        attributes
    EOF
  }

  stage {
    input    = "events"
    pipeline = <<-EOF
      filter attributes.observe_gcp_kind = "https://cloud.google.com/asset-inventory/docs/reference/rest/v1/TopLevel/exportAssets"
      make_col data:parse_json(data)

      pick_col
        time:BUNDLE_TIMESTAMP,
        deleted:bool(data.deleted),
        update_time:parse_isotime(string(data.update_time)),
        ancestors:array(data.ancestors),
        asset_type:string(data.asset_type),
        name:string(data.name),
        resource:object(data.resource),
        iam_policy:object(data.iam_policy),
        org_policy:array(data.org_policy),
        access_policy:object(data.access_policy),
        attributes
    EOF
  }


  stage {
    pipeline = <<-EOF
      union @feed_events
      union @list_assets_events
    EOF
  }
}

resource "observe_dataset" "resource_asset_inventory_records" {
  workspace   = local.datasets.resource_asset_inventory_records.workspace
  name        = local.datasets.resource_asset_inventory_records.name
  freshness   = local.datasets.resource_asset_inventory_records.freshness
  description = local.datasets.resource_asset_inventory_records.description

  inputs = {
    "events"   = observe_dataset.base_asset_inventory_records.oid
    "projects" = observe_dataset.projects_collection_enabled.oid
  }

  # https://cloud.google.com/asset-inventory/docs/reference/rpc/google.cloud.asset.v1#google.cloud.asset.v1.Resource
  stage {
    input    = "events"
    pipeline = <<-EOF
          filter (resource != object(parse_json("{}"))) and not is_null(resource)

          make_col 
            ttl: case(deleted, 1ns, true, 4h),
            parent:string(resource.parent),
            asset_namespace: split_part(asset_type,'/', 1),
            asset_sub_type: split_part(asset_type,'/', 2)
                            
          extract_regex name, /projects\/(?P<project_id_text>[^\/+]+)/
          extract_regex parent, /projects\/(?P<parent_project_id>[^\/+]+)/
          extract_regex parent, /projects\/(?P<project_id_number>[^\/+]+)/

          make_col project_id_unified: if_null(project_id_text,project_id_number)

          make_col 
            data:object(resource.data),
            discovery_document_uri:string(coalesce(resource.discovery_document_uri, resource.discoveryDocumentUri)),
            discovery_name:string(coalesce(resource.discovery_name, resource.discoveryName)),
            location:string(resource.location),
            version:string(resource.version)
    EOF
  }

  stage {
    pipeline = <<-EOF
          leftjoin project_id_unified=@projects.projectNumber, project_id_number_join: @projects.project_id
          leftjoin project_id_unified=@projects.project_id, project_id_text_join: @projects.project_id

          make_col project_id: if_null(project_id_number_join,project_id_text_join)
    EOF
  }



  stage {
    pipeline = <<-EOF
      pick_col 
        time,
        deleted,
        parent_project_id,
        project_id,
        asset_type,
        asset_namespace,
        asset_sub_type,
        name,
        data,
        discovery_document_uri,
        discovery_name,
        location,
        parent,
        version,
        ttl

      add_key project_id
    EOF
  }
}

resource "observe_dataset" "resources_asset_inventory" {
  workspace   = local.datasets.resources_asset_inventory.workspace
  name        = local.datasets.resources_asset_inventory.name
  freshness   = local.datasets.resources_asset_inventory.freshness
  description = local.datasets.resources_asset_inventory.description

  inputs = {
    "events" = observe_dataset.resource_asset_inventory_records.oid
  }

  stage {
    pipeline = <<-EOF
      make_resource options(expiry:${var.max_expiry}), 
        time,
        deleted,
        parent_project_id,
        project_id,
        asset_type,
        asset_namespace,
        asset_sub_type,
        asset_name: name,
        data,
        discovery_document_uri,
        discovery_name,
        location,
        parent,
        version,
        ttl,
        primary_key(name),
        valid_for(ttl)

      //add_key project_id
      //add_key asset_type
      //add_key asset_namespace
      //add_key asset_sub_type
    EOF
  }
}

resource "observe_dataset" "iam_policy_asset_inventory_records" {
  workspace   = local.datasets.iam_policy_asset_inventory_records.workspace
  name        = local.datasets.iam_policy_asset_inventory_records.name
  freshness   = local.datasets.iam_policy_asset_inventory_records.freshness
  description = local.datasets.iam_policy_asset_inventory_records.description

  inputs = {
    "events" = observe_dataset.base_asset_inventory_records.oid
  }

  # https://cloud.google.com/asset-inventory/docs/reference/rpc/google.iam.v1#google.iam.v1.Policy
  stage {
    pipeline = <<-EOF
      filter not is_null(iam_policy)
      extract_regex string(ancestors), /projects\/(?P<projectNumber>[^"]*)/
      pick_col
        time,
        name,
        asset_type,
        projectNumber,
        deleted,
        bindings:iam_policy.bindings,
        etag:string(iam_policy.etag)
    EOF
  }
}
