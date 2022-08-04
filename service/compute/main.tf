
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
      filter asset_namespace = "compute.googleapis.com"  and asset_sub_type = "Instance"

      extract_regex name, /projects\/(?P<project_id>[^\/+]+)\/zones\/(?P<zone>[^\/+]+)\/instances\/(?P<instance_name>[^\/+]+)/
      
      extract_regex zone, /(?P<region>[a-z]+[-]+[a-z,0-9]+)/

      extract_regex string(data.machineType), /machineTypes\/(?P<machineType>[^\/+]+)/

      make_col
        assetInventoryName:string(name),
        instance_id:string(data.id),
        instance_key: strcat(project_id,":",name),
        status:if(deleted=true, "DELETED",string(data.status))


    EOF
  }

  stage {
    pipeline = <<-EOF
      make_resource options(expiry:${var.max_expiry}),
        instance_name,
        instance_id,
        status,
        cpuPlatform: string(data.cpuPlatform),
        machineType,
        project_id, 
        region, 
        zone,
        ttl,
        deleted,
        primary_key(instance_key),
        valid_for(ttl)

      add_key instance_name
      set_label instance_name

      add_key project_id, region, zone
    EOF
  }
}
