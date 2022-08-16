
locals {
  enable_metrics = lookup(var.feature_flags, "metrics", true)
  # tflint-ignore: terraform_unused_declarations
  enable_monitors = lookup(var.feature_flags, "monitors", true)

  enable_both = lookup(var.feature_flags, "monitors", true) && lookup(var.feature_flags, "metrics", true)

  freshness = merge({
    cloudsql = "5m",
    metrics  = "1m",
    logging  = "1m",
  }, var.freshness_overrides)
}

resource "observe_dataset" "compute" {
  workspace = var.workspace.oid
  name      = format(var.name_format, "Instance")
  freshness = lookup(local.freshness, "cloudsql", var.freshness_default)

  inputs = {
    "events" = var.google.resource_asset_inventory_records.oid
  }

  stage {
    input    = "events"
    alias    = "instanceGroup"
    pipeline = <<-EOF

        filter asset_namespace = "compute.googleapis.com"  and asset_sub_type = "InstanceGroupManager"

        extract_regex name, /projects\/(?P<project_id>[^\/+]+)/

        extract_regex name, /zones\/(?P<zone>[^\/+]+)/

        extract_regex name, /instanceGroupManagers\/(?P<instance_group_name>[^\/+]+)/

        make_col instance_group_key: strcat(project_id,":",instance_group_name)

        make_col baseInstanceName: string(data.baseInstanceName)

        add_key baseInstanceName

    
    EOF
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
        instance_key: strcat(project_id,":",instance_name),
        status:if(deleted=true, "DELETED",string(data.status)),
        description: string(data.description),
        creationTime: format_time(parse_isotime(string(data.creationTimestamp)), 'MON DD, YYYY HH24:MI:SS'),
        deletionProtection: string(data.deletionProtection),
        networkInterfaces: string(data.networkInterfaces),
        labels: string(data.labels),
        tags: string(data.tags)


      extract_regex networkInterfaces, /("network":").+(networks\/)(?P<network>[^"]+)/

      extract_regex networkInterfaces, /("networkIP":")(?P<networkIP>[^"]+)/

      extract_regex networkInterfaces, /("subnetwork":")(?P<subnetwork>[^"]+)/

      extract_regex networkInterfaces, /(accessConfigs).+("external-nat").+("natIP":")(?P<publicIP>[^"]+)/

      make_col name_parts: split (instance_name, '-')

      make_col length_last_part: strlen(string(get_item(name_parts,array_length(name_parts)-1)))

      make_col baseInstanceNameGroup: left(instance_name, strlen(instance_name) - (length_last_part+1))

      add_key baseInstanceNameGroup

    EOF
  }

  stage {
    pipeline = <<-EOF

      leftjoin baseInstanceNameGroup=@instanceGroup.baseInstanceName, instance_group: @instanceGroup.instance_group_name

    EOF
  }

  stage {
    pipeline = <<-EOF
      make_resource options(expiry:${var.max_expiry}),
        instance_name,
        instance_id,
        status,
        creationTime,
        cpuPlatform: string(data.cpuPlatform),
        machineType,
        project_id, 
        region, 
        zone,
        network,
        subnetwork,
        networkIP,
        publicIP,
        labels,
        tags,
        instance_group,
        deletionProtection,
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
resource "observe_link" "project" {
  for_each = {
    "Projects" = {
      target = var.google.projects.oid
      fields = ["project_id"]
    }
  }

  workspace = var.workspace.oid
  source    = observe_dataset.compute.oid
  target    = each.value.target
  fields    = each.value.fields
  label     = each.key
}


# resource "observe_dataset" "compute_group" {
#   workspace = var.workspace.oid
#   name      = format(var.name_format, "Instance Group")
#   freshness = var.freshness_default

#   inputs = {
#     "events" = var.google.resource_asset_inventory_records.oid
#   }

#   # https://cloud.google.com/compute/docs
#   stage {
#     input    = "events"
#     pipeline = <<-EOF
#       filter asset_namespace = "compute.googleapis.com"  and asset_sub_type = "InstanceGroup"

#     EOF
#   }
# }
