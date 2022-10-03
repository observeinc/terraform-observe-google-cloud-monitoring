resource "observe_dataset" "base_asset_inventory_records" {
  workspace   = var.workspace.oid
  name        = format(var.name_format, "Asset Inventory Records")
  freshness   = var.freshness_default
  description = "Raw data from asset exports"
  inputs = {
    "observation" = var.datastream.dataset
    "events"      = observe_dataset.base_pubsub_events.oid
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
        access_policy:object(data.asset.accessPolicy),
        attributes
    EOF
  }

  # https://cloud.google.com/asset-inventory/docs/reference/rpc/google.cloud.asset.v1#asset
  stage {
    input    = "observation"
    alias    = "export_events"
    pipeline = <<-EOF
      filter OBSERVATION_KIND = "gcpassets"
      make_col data:FIELDS.asset
      filter not is_null(data.asset_type) and not is_null(data.name)

      pick_col 
        time:BUNDLE_TIMESTAMP,
        update_time:timestamp_s(int64(data.update_time.seconds)) + if_null(duration(int64(data.update_time.nanos)), 0s),
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
  workspace   = var.workspace.oid
  name        = format(var.name_format, "Resource Asset Inventory Records")
  freshness   = var.freshness_default
  description = "All cloud assets in GCP"
  inputs = {
    "events"   = observe_dataset.base_asset_inventory_records.oid
    "projects" = observe_dataset.projects_collection_enabled.oid
  }

  # https://cloud.google.com/asset-inventory/docs/reference/rpc/google.cloud.asset.v1#google.cloud.asset.v1.Resource
  stage {
    input    = "events"
    alias    = "base"
    pipeline = <<-EOF
          filter not is_null(resource)

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
            discovery_document_uri:string(resource.discovery_document_uri),
            discovery_name:string(resource.discovery_name),
            location:string(resource.location),
            version:string(resource.version)
    EOF
  }
  # stage {
  #   input = "pubsub_events"
  #   alias = "project"
  #   pipeline = <<-EOF
  #       filter (string(attributes.data_type) = "cloudresourcemanager.Project")
  #       make_col data:parse_json(data)

  #       make_col createTime:string(data.createTime),
  #           lifecycleState:string(data.lifecycleState),
  #           name:string(data.name),
  #           project_id:string(data.projectId),
  #           projectNumber:string(data.projectNumber),
  #           parent_id:string(data.parent.id),
  #           parent_type:string(data.parent.type)

  #       make_col deleted: bool(if(lifecycleState != "ACTIVE", true, false))

  #       make_col ttl: case(deleted, 1ns, true, 4h)

  #       add_key project_id
  #       add_key projectNumber
  #   EOF
  # }

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
  workspace   = var.workspace.oid
  name        = format(var.name_format, "Resources Asset Inventory")
  freshness   = var.freshness_default
  description = "All cloud resources in GCP"
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
  workspace   = var.workspace.oid
  name        = format(var.name_format, "IAM Policy Asset Inventory Records")
  freshness   = var.freshness_default
  description = "This dataset contains IAM Policy bindings for other assets"
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

resource "observe_link" "resource_asset_inventory_resource" {
  for_each = merge({
    "Projects" = {
      target = observe_dataset.projects_collection_enabled.oid
      fields = ["project_id"]
    }
    },
    var.enable_service_storage ? {
      "Storage" = {
        target = one(module.storage[*].storage.oid)
        fields = ["name:assetInventoryName"]
      }
    } : {},
    var.enable_service_compute ? {
      "Compute" = {
        target = one(module.compute[*].compute.oid)
        fields = ["name:assetInventoryName"]
      }
    } : {},
    var.enable_service_cloudsql ? {
      "CloudSQL" = {
        target = one(module.cloudsql[*].cloudsql.oid)
        fields = ["name:assetInventoryName"]
      }
    } : {},
    var.enable_service_cloudfunctions ? {
      "CloudFunction" = {
        target = one(module.cloudfunctions[*].function.oid)
        fields = ["name:assetInventoryName"]
      }
    } : {},
  )



  workspace = var.workspace.oid
  source    = observe_dataset.resources_asset_inventory.oid
  target    = each.value.target
  fields    = each.value.fields
  label     = each.key
}
