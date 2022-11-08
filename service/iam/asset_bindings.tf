resource "observe_dataset" "asset_bindings" {
  workspace   = var.workspace.oid
  name        = format(var.name_format, "Asset Bindings")
  freshness   = lookup(var.freshness_overrides, "service_accounts", var.freshness_duration_default)
  description = "This dataset is used to create the Compute Instance Groups Resource Instances"

  inputs = {
    "events"   = var.google.iam_policy_asset_inventory_records.oid
    "projects" = var.google.projects.oid
  }
  stage {
    input    = "events"
    pipeline = <<-EOF
        flatten_single bindings
        make_col members:_c_bindings_value.members,
            role:string(_c_bindings_value.role)

        extract_regex name, /(?P<short_name>[^\/]+$)/

        make_col ttl: case(deleted, 1ns, true, ${var.max_expiry})

        set_valid_from options(max_time_diff:${var.max_time_diff}), time

        leftjoin projectNumber=@projects.projectNumber, project_id: @projects.project_id
  EOF
  }

  stage {
    pipeline = <<-EOF

        make_resource
            projectNumber, 
            project_id,
            asset_type, 
            short_name,
            assetInventoryName: name,
            primary_key(name,role,members),
            valid_for(ttl)

        set_label name
        add_key assetInventoryName

      EOF
  }
}

