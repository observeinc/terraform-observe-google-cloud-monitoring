
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

  stage {
    input = "pubsub_events"
    # alias    = "instance_group_base"
    pipeline = <<-EOF
        filter attributes.OBSERVATION_KIND = "gcpInstanceGroup"

        make_col data2: parse_json(data)

        flatten_single data2

        make_col instance:string(_c_data2_value.instance),
            instance_group:string(_c_data2_value.instance_group),
            instance_group_id:string(_c_data2_value.instance_group_id),
            project_id:string(_c_data2_value.project_id),
            zone:string(_c_data2_value.zone),
            ttl: 15m
        
        extract_regex instance, /instances\/(?P<instance_name>.*)/

        make_col instanceGroupAssetKey: string_concat("//compute.googleapis.com/projects/",project_id,"/zones/",zone,"/instanceGroups/",instance_group)
        // ex - //compute.googleapis.com/projects/content-testpproj-stage-1/zones/us-west1-a/instanceGroups/gke-test-stg-gke-test-stg-gke-node-po-5cf533ca-grp
        make_col computeInstanceAssetKey: string_concat("//compute.googleapis.com/projects/",project_id,"/zones/",zone,"/instances/",instance_name)
        // ex - //compute.googleapis.com/projects/content-testpproj-stage-1/zones/us-central1-b/instances/test-stg-instance-ubuntu-20-04-lts-57
        

        set_valid_from options(max_time_diff:4h), BUNDLE_TIMESTAMP
      
    EOF
  }

  stage {
    # input    = "instance_group_base"
    alias    = "instance_group_instances"
    pipeline = <<-EOF

      make_resource 
        project_id,
        zone,
        instanceGroupAssetKey,
        instance_group_id,
        instance_group_name: instance_group,
        primary_key(computeInstanceAssetKey),
        valid_for(ttl)

      set_label instance_group_name
      add_key instanceGroupAssetKey
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

      leftjoin computeInstanceAssetKey=@instance_group_instances.computeInstanceAssetKey, instance_group_name: @instance_group_instances.instance_group_name, instanceGroupAssetKey: @instance_group_instances.instanceGroupAssetKey

    EOF
  }

  stage {
    pipeline = <<-EOF

      leftjoin instanceGroupAssetKey=@instance_groups.instanceGroupAssetKey, gkeClusterAssetKey: @instance_groups.gkeClusterAssetKey

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
        instance_group_name,
        instanceGroupAssetKey,
        gkeClusterAssetKey,
        deletionProtection,
        ttl,
        deleted,
        primary_key(computeInstanceAssetKey),
        valid_for(ttl)

      add_key instance_name
      set_label instance_name

      add_key project_id

      add_key instanceGroupAssetKey

      add_key gkeClusterAssetKey
    EOF
  }
}
