resource "observe_dataset" "projects" {
  workspace   = var.workspace.oid
  name        = format(var.name_format, "Projects Collection Enabled")
  freshness   = lookup(var.freshness_overrides, "projects", var.freshness_default)
  description = "This dataset is used to create project resources"
  inputs = {
    "events"      = observe_dataset.base_pubsub_events.oid
    "base_assets" = observe_dataset.base_asset_inventory_records.oid
  }

  stage {
    input    = "events"
    alias    = "projects"
    pipeline = <<-EOF
        filter (string(attributes.data_type) = "cloudresourcemanager.Project")
        make_col data:parse_json(data)
        make_col collecting: string(attributes.collecting) 

        make_col createTime:string(data.createTime),
            lifecycleState:string(data.lifecycleState),
            name:string(data.name),
            project_id:string(data.projectId),
            projectNumber:string(data.projectNumber),
            parent_id:string(data.parent.id),
            parent_type:string(data.parent.type)

        make_col deleted: bool(if(lifecycleState != "ACTIVE", true, false))

        make_col ttl: case(deleted, 1ns, true, 4h)

        filter collecting = "true"
    EOF
  }

  stage {
    pipeline = <<-EOF
      make_resource 
        createTime,
        lifecycleState,
        name,
        project_id,
        parent_id,
        parent_type,
        primary_key(projectNumber)
      add_key project_id
      set_label project_id
    EOF
  }
}

# resource "observe_link" "project" {
#   for_each = length(observe_dataset.projects) > 0 ? {
#     "AssetInventory" = {
#       target = observe_dataset.resource_asset_inventory_records.oid
#       fields = ["project_id"]
#     }
#   } : {}

#   workspace = var.workspace.oid
#   source    = observe_dataset.projects.oid
#   target    = each.value.target
#   fields    = each.value.fields
#   label     = each.key
# }
resource "observe_dataset" "projects_all" {
  workspace   = var.workspace.oid
  name        = format(var.name_format, "Projects All")
  freshness   = lookup(var.freshness_overrides, "projects", var.freshness_default)
  description = "This dataset is used to create project resources"
  inputs = {
    "events"      = observe_dataset.base_pubsub_events.oid
    "base_assets" = observe_dataset.base_asset_inventory_records.oid
  }

  stage {
    input    = "events"
    alias    = "projects"
    pipeline = <<-EOF
        filter (string(attributes.data_type) = "cloudresourcemanager.Project")
        make_col data:parse_json(data)
        make_col collecting: string(attributes.collecting) 

        make_col createTime:string(data.createTime),
            lifecycleState:string(data.lifecycleState),
            name:string(data.name),
            project_id:string(data.projectId),
            projectNumber:string(data.projectNumber),
            parent_id:string(data.parent.id),
            parent_type:string(data.parent.type)

        make_col deleted: bool(if(lifecycleState != "ACTIVE", true, false))

        make_col ttl: case(deleted, 1ns, true, 4h)

    EOF
  }

  stage {
    pipeline = <<-EOF
      make_resource 
        createTime,
        lifecycleState,
        name,
        project_id,
        parent_id,
        parent_type,
        primary_key(projectNumber)
      add_key project_id
      set_label project_id
    EOF
  }
}
