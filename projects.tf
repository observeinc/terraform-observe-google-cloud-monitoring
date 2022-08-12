resource "observe_dataset" "projects" {
  workspace = var.workspace.oid
  name      = format(var.name_format, "Projects")
  freshness = lookup(var.freshness_overrides, "projects", var.freshness_default)

  inputs = {
    "events" = observe_dataset.resource_asset_inventory_records.oid
  }

  stage {
    pipeline = <<-EOF
        filter discovery_name = "Project"

        filter asset_type = "cloudresourcemanager.googleapis.com/Project"

        make_col 
            createTime:string(data.createTime),
            lifecycleState:string(data.lifecycleState),
            name:string(data.name),
            parent:data.parent,
            parentId:string(data.parent.id),
            parentType:string(data.parent.type),
            project_id:string(data.projectId),
            projectNumber:string(data.projectNumber)
    EOF
  }

  stage {
    pipeline = <<-EOF
      make_resource 
        createTime,
        lifecycleState,
        name,
        parent,
        parentId,
        parentType,
        project_id,
        primary_key(projectNumber)
      add_key project_id
    EOF
  }
}

resource "observe_link" "project" {
  for_each = length(observe_dataset.projects) > 0 ? {
    "Compute" = {
      target = observe_dataset.resource_asset_inventory_records.oid
      fields = ["project_id"]
    }
  } : {}

  workspace = var.workspace.oid
  source    = observe_dataset.projects.oid
  target    = each.value.target
  fields    = each.value.fields
  label     = each.key
}
