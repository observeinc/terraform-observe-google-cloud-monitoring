
locals {
  enable_metrics = lookup(var.feature_flags, "metrics", true)
  # tflint-ignore: terraform_unused_declarations
  enable_monitors = lookup(var.feature_flags, "monitors", true)

  enable_both = lookup(var.feature_flags, "monitors", true) && lookup(var.feature_flags, "metrics", true)

  freshness = merge({
    compute = "5m",
    metrics = "1m",
    logging = "1m",
  }, var.freshness_overrides)
}

resource "observe_dataset" "compute_instance" {
  workspace   = var.workspace.oid
  name        = format(var.name_format, "Instance")
  freshness   = lookup(local.freshness, "compute", var.freshness_duration_default)
  description = "This dataset is used to create Compute Resources"
  inputs = {
    "events"          = var.google.resource_asset_inventory_records.oid
    "instance_groups" = observe_dataset.instance_group.oid
    "pubsub_events"   = var.google.pubsub_events.oid
  }

  # Upstream data: See https://github.com/observeinc/google-cloud-functions/pull/2
  stage {
    input    = "pubsub_events"
    pipeline = <<-EOF
      filter attributes.observe_gcp_kind = "https://cloud.google.com/asset-inventory/docs/supported-asset-types#INSTANCE_TO_INSTANCEGROUP"
      make_col data_value:parse_json(data)

      make_col instance:string(data_value.instanceUrl),
        instanceGroupId:string(data_value.instanceGroupId),
        projectId:string(data_value.projectId),
        zone:string(data_value.zoneName),
        ttl: 15m
    EOF
  }

  stage {
    # alias    = "instance_group_base"
    pipeline = <<-EOF
        extract_regex instance, /instances\/(?P<instanceName>.*)/

        make_col computeInstanceAssetKey: string_concat("//compute.googleapis.com/projects/",projectId,"/zones/",zone,"/instances/",instanceName)
        // ex - //compute.googleapis.com/projects/content-testpproj-stage-1/zones/us-central1-b/instances/test-stg-instance-ubuntu-20-04-lts-57

        set_valid_from options(max_time_diff:4h), BUNDLE_TIMESTAMP
      
    EOF
  }

  stage {
    # input    = "instance_group_base"
    alias    = "instance_group_instances"
    pipeline = <<-EOF
      make_resource
        instanceGroupId,
        primary_key(computeInstanceAssetKey),
        valid_for(ttl)
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
        computeInstanceAssetKey:string(name), // ex - //compute.googleapis.com/projects/content-testpproj-stage-1/zones/us-central1-b/instances/test-stg-instance-ubuntu-20-04-lts-57
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

    EOF
  }

  stage {
    pipeline = <<-EOF

      leftjoin computeInstanceAssetKey=@instance_group_instances.computeInstanceAssetKey, instanceGroupId: @instance_group_instances.instanceGroupId

    EOF
  }

  stage {
    pipeline = <<-EOF

      leftjoin instanceGroupId=@instance_groups.instanceGroupAssetKey_id, instanceGroupAssetKey:@instance_groups.instanceGroupAssetKey, gkeClusterAssetKey: @instance_groups.gkeClusterAssetKey

    EOF
  }

  stage {
    pipeline = <<-EOF
      make_resource options(expiry:${var.max_expiry}),
        instance_name,
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
        instanceGroupId,
        instanceGroupAssetKey,
        gkeClusterAssetKey,
        deletionProtection,
        ttl,
        deleted,
        primary_key(computeInstanceAssetKey),
        valid_for(ttl)

      add_key computeInstanceAssetKey
      add_key instance_name, zone, project_id
      set_label instance_name

      // TODO(luke): remove when reversed preferred paths work
      add_key project_id
      add_key instanceGroupAssetKey
      add_key gkeClusterAssetKey
    EOF
  }
}
