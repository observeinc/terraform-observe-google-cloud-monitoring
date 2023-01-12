resource "observe_dataset" "instance_group_events" {
  workspace   = var.workspace.oid
  name        = format(var.name_format, "Instance Group Events")
  freshness   = lookup(var.freshness_overrides, "target_proxy", var.freshness_duration_default)
  description = "This dataset contains Compute Instance Groups Events"

  inputs = {
    "events" = var.google.resource_asset_inventory_records.oid
    # "asset_events" = var.google.asset_inventory_records.oid
  }

  stage {
    input    = "events"
    pipeline = <<-EOF
      filter asset_type = "compute.googleapis.com/InstanceGroup" or asset_type = "compute.googleapis.com/InstanceGroupManager"
    EOF
  }
}

resource "observe_dataset" "instance_group" {
  workspace   = var.workspace.oid
  name        = format(var.name_format, "Instance Group")
  freshness   = lookup(var.freshness_overrides, "target_proxy", var.freshness_duration_default)
  description = "This dataset is used to create the Compute Instance Groups Resource"

  inputs = {
    "events"       = observe_dataset.instance_group_events.oid
    "asset_events" = var.google.asset_inventory_records.oid
  }

  stage {
    input    = "asset_events"
    alias    = "cluster_instance_group_manager"
    pipeline = <<-EOF
      filter asset_type = "container.googleapis.com/Cluster"

      pick_col 
        time,
        assetInventoryName: name,
        instanceGroupUrls: resource.data.instanceGroupUrls
        
      flatten_single instanceGroupUrls

      extract_regex string(_c_instanceGroupUrls_value), /projects\/(?P<instanceGroupAssetKey_base>.*)/

      make_col instanceGroupManagerAssetKey: string_concat("//compute.googleapis.com/projects/",instanceGroupAssetKey_base)
      // ex - //compute.googleapis.com/projects/content-testpproj-stage-1/zones/us-west1-a/instanceGroups/gke-test-stg-gke-test-stg-gke-node-po-5cf533ca-grp

      make_resource 
          time,
          gkeClusterAssetKey: assetInventoryName,
          primary_key(instanceGroupManagerAssetKey)
    EOF
  }

  stage {
    input = "events"
    # alias    = "instanceGroupAssetKey_manager_base"
    pipeline = <<-EOF
      filter asset_type = "compute.googleapis.com/InstanceGroupManager"

      make_col instanceGroup:string(data.instanceGroup),
          baseInstanceName:string(data.baseInstanceName),
          creationTimestamp:string(data.creationTimestamp),
          currentActions:data.currentActions,
          status:data.status,
          targetSize:int64(data.targetSize),
          updatePolicy:data.updatePolicy,
          versions:data.versions

      make_col 
          type:string(updatePolicy.type),
          replacementMethod:string(updatePolicy.replacementMethod),
          minimalAction:string(updatePolicy.minimalAction),
          maxSurge:updatePolicy.maxSurge,
          maxUnavailable:updatePolicy.maxUnavailable

      extract_regex instanceGroup, /projects\/(?P<instanceGroupAssetKey_base>.*)/

      make_col instanceGroupManagerAssetKey: name
      
      make_col instanceGroupAssetKey: string_concat("//compute.googleapis.com/projects/",instanceGroupAssetKey_base)
      // ex - //compute.googleapis.com/projects/content-testpproj-stage-1/zones/us-west1-a/instanceGroups/gke-test-stg-gke-test-stg-gke-node-po-5cf533ca-grp
    EOF
  }

  stage {
    # input    = "instanceGroupAssetKey_manager_base"
    alias    = "instanceGroupAssetKey_manager"
    pipeline = <<-EOF
      make_resource 	
          project_id,
          instanceGroupAssetKey,
          baseInstanceName,
          creationTimestamp,
          currentActions,
          status,
          targetSize,
          updatePolicy,
          type,
          replacementMethod,
          minimalAction,
          maxSurge,
          maxUnavailable,
          versions,
          primary_key(instanceGroupManagerAssetKey)
    EOF
  }

  stage {
    input    = "events"
    pipeline = <<-EOF
      filter asset_type = "compute.googleapis.com/InstanceGroup"
      rename_col
        instanceGroupAssetKey:name // ex - //compute.googleapis.com/projects/content-testpproj-stage-1/zones/us-west1-a/instanceGroups/gke-test-stg-gke-test-stg-gke-node-po-5cf533ca-grp
      make_col
        name:string(data.name), 
        description:string(data.description),
        instanceGroupAssetKey_id:string(data.id),
        selfLink:string(data.selfLink),
        namedPorts:array(data.namedPorts),
        network:string(data.network),
        subnetwork:string(data.subnetwork),
        size:int64(data.size),
        region:string(data.region),
        zone:string(data.zone),
        creationTimestamp:string(data.creationTimestamp),
        project_id:string(split_part(split_part(string(data.selfLink), "projects/", 2), "/", 1))
      
    EOF
  }

  stage {
    pipeline = <<-EOF

      leftjoin instanceGroupAssetKey=@instanceGroupAssetKey_manager.instanceGroupAssetKey, 
          igm_baseInstanceName:@instanceGroupAssetKey_manager.baseInstanceName,
          igm_creationTimestamp:@instanceGroupAssetKey_manager.creationTimestamp,
          igm_currentActions:@instanceGroupAssetKey_manager.currentActions,
          igm_status:@instanceGroupAssetKey_manager.status,
          igm_targetSize:@instanceGroupAssetKey_manager.targetSize,
          igm_updatePolicy:@instanceGroupAssetKey_manager.updatePolicy,
          igm_type:@instanceGroupAssetKey_manager.type,
          igm_replacementMethod:@instanceGroupAssetKey_manager.replacementMethod,
          igm_minimalAction: @instanceGroupAssetKey_manager.minimalAction,
          igm_maxSurge:@instanceGroupAssetKey_manager.maxSurge,
          igm_maxUnavailable:@instanceGroupAssetKey_manager.maxUnavailable,
          igm_versions:@instanceGroupAssetKey_manager.versions,
          igm_instanceGroupManagerAssetKey: @instanceGroupAssetKey_manager.instanceGroupManagerAssetKey

       EOF
  }

  stage {
    pipeline = <<-EOF
      leftjoin igm_instanceGroupManagerAssetKey=@cluster_instance_group_manager.instanceGroupManagerAssetKey, gkeClusterAssetKey: @cluster_instance_group_manager.gkeClusterAssetKey
       EOF
  }

  stage {

    pipeline = <<-EOF
      make_resource 
        project_id,
        name,
        data,
        description,
        selfLink,
        namedPorts,
        network,
        subnetwork,
        size,
        location,
        version,
        instanceGroupAssetKey_id,
        gkeClusterAssetKey,
        igm_baseInstanceName,
        igm_creationTimestamp,
        igm_currentActions,
        igm_status,
        igm_targetSize,
        igm_updatePolicy,
        igm_type,
        igm_replacementMethod,
        igm_minimalAction,
        igm_maxSurge,
        igm_maxUnavailable,
        igm_versions,
        igm_instanceGroupManagerAssetKey,
        primary_key(instanceGroupAssetKey),
        valid_for(ttl)

      set_label name

      add_key selfLink

      add_key name, location, project_id
      add_key instanceGroupAssetKey_id

      // TODO(luke): remove when reversed preferred path works
      add_key gkeClusterAssetKey
      add_key igm_instanceGroupManagerAssetKey
    EOF
  }
}

