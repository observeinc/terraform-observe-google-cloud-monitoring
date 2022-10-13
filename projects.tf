resource "observe_dataset" "projects_collection_enabled" {
  workspace   = var.workspace.oid
  name        = format(var.name_format, "Projects Collection Enabled")
  freshness   = lookup(var.freshness_overrides, "projects", var.freshness_default)
  description = "This dataset is used to create project resources"

  inputs = {
    "observation" = var.datastream.dataset
  }

  stage {

    pipeline = <<-EOF
        filter OBSERVATION_KIND = "gcpprojects"
        make_col data:FIELDS.project

        make_col 
          time:BUNDLE_TIMESTAMP,
          update_time:timestamp_s(int64(data.update_time.seconds)) + if_null(duration(int64(data.update_time.nanos)), 0s),
          createTime:timestamp_s(int64(data.create_time.seconds)) + if_null(duration(int64(data.create_time.nanos)), 0s),
            updateTime:timestamp_s(int64(data.update_time.seconds)) + if_null(duration(int64(data.update_time.nanos)), 0s),
            lifecycleState: case (int64(data.state)=0, "LIFECYCLE_STATE_UNSPECIFIED", int64(data.state)=1,"ACTIVE",int64(data.state)=2,"DELETE_REQUESTED", int64(data.state)=3,"DELETE_IN_PROGRESS", true, 'UNKNOWN') ,
            project_id:string(data.project_id),
            parent_id: string(data.parent),
            display_name:string(data.display_name),
            etag:string(data.etag)

        set_valid_from options(max_time_diff:${var.max_time_diff}), time

        extract_regex  string(data.name), /^[^\/]+\/(?P<projectNumber>.*)/

        make_col deleted: bool(if(lifecycleState != "ACTIVE", true, false))

        make_col ttl: case(deleted, 1ns, true, 4h)


    EOF
  }

  stage {
    pipeline = <<-EOF
    make_resource 
      time,
      update_time,
      createTime,
      lifecycleState,
      project_id,
      parent_id,
      display_name,
      etag,
      deleted,
      primary_key(projectNumber),
      valid_for(ttl)

    add_key project_id

    set_label project_id

    EOF
  }
}

# set default dashboard
resource "observe_default_dashboard" "default_project_dash" {
  dataset   = observe_dataset.projects_collection_enabled.oid
  dashboard = resource.observe_dashboard.project_input.oid
}

# resource "observe_link" "project" {
#   for_each = length(observe_dataset.projects_collection_enabled) > 0 ? {
#     "AssetInventory" = {
#       target = observe_dataset.resource_asset_inventory_records.oid
#       fields = ["project_id"]
#     }
#   } : {}

#   workspace = var.workspace.oid
#   source    = observe_dataset.projects_collection_enabled.oid
#   target    = each.value.target
#   fields    = each.value.fields
#   label     = each.key
# }
# resource "observe_dataset" "projects_all" {
#   workspace   = var.workspace.oid
#   name        = format(var.name_format, "Projects All")
#   freshness   = lookup(var.freshness_overrides, "projects", var.freshness_default)
#   description = "This dataset is used to create project resources"
#   inputs = {
#     "events" = observe_dataset.base_pubsub_events.oid
#   }

#   stage {
#     input    = "events"
#     alias    = "projects"
#     pipeline = <<-EOF
#         filter (string(attributes.data_type) = "cloudresourcemanager.Project")
#         make_col data:parse_json(data)
#         make_col collecting: string(attributes.collecting) 

#         make_col createTime:string(data.createTime),
#             lifecycleState:string(data.lifecycleState),
#             name:string(data.name),
#             project_id:string(data.projectId),
#             projectNumber:string(data.projectNumber),
#             parent_id:string(data.parent.id),
#             parent_type:string(data.parent.type)

#         make_col deleted: bool(if(lifecycleState != "ACTIVE", true, false))

#         make_col ttl: case(deleted, 1ns, true, 4h)

#     EOF
#   }

#   stage {
#     pipeline = <<-EOF
#       make_resource 
#         createTime,
#         lifecycleState,
#         name,
#         project_id,
#         parent_id,
#         parent_type,
#         primary_key(projectNumber)
#       add_key project_id
#       set_label project_id
#     EOF
#   }
# }
