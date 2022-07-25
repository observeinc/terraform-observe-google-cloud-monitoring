
locals {
  enable_metrics = lookup(var.feature_flags, "metrics", true)
  # tflint-ignore: terraform_unused_declarations
  enable_monitors = lookup(var.feature_flags, "monitors", true)
}

resource "observe_dataset" "compute" {
  workspace = var.workspace.oid
  name      = format(var.name_format, "Instance")
  freshness = var.freshness_default

  inputs = {
    "events" = var.google.resource_asset_inventory_records.oid
  }

  # https://cloud.google.com/compute/docs
  stage {
    input    = "events"
    pipeline = <<-EOF
      filter  starts_with(asset_type, "compute.googleapis.com/Instance")

      extract_regex name, /projects\/(?P<project_id>[^\/+]+)\/zones\/(?P<zone>[^\/+]+)\/instances\/(?P<instanceName>[^\/+]+)/
      
      extract_regex zone, /(?P<region>[a-z]+[-]+[a-z,0-9]+)/

      make_col
        assetInventoryName:name,
        name:string(data.name),
        instance_id:string(data.id)


    EOF
  }

  stage {
    pipeline = <<-EOF
      make_resource options(expiry:${var.max_expiry}),
        name,
        cpuPlatform: string(data.cpuPlatform),
        machineType: string(data.machineType),
        project_id, 
        region, 
        instance_id,
        primary_key(assetInventoryName),
        valid_for(if(deleted, 1ns, ${var.max_expiry}))

      add_key name
      set_label name

      add_key project_id, region, instance_id
    EOF
  }
}
