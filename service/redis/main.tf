locals {
  freshness = merge({}, var.freshness_overrides)

  enable_metrics = lookup(var.feature_flags, "metrics", true)
  # tflint-ignore: terraform_unused_declarations
  enable_monitors = lookup(var.feature_flags, "monitors", true)

  workspace = var.workspace.oid


  datasets = {
    redis_instance = {
      workspace   = local.workspace
      name        = format(var.name_format, "Instance")
      freshness   = lookup(local.freshness, "redis_instance", var.freshness_default_duration)
      description = "This dataset contains redis instances"
    }
    memcache_instance = {
      workspace   = local.workspace
      name        = format(var.name_format, "Memcache Instance")
      freshness   = lookup(local.freshness, "memcache_instance", var.freshness_default_duration)
      description = "This dataset contains memcache instances"
    }

    logs = {
      workspace   = local.workspace
      name        = format(var.name_format, "Logs")
      freshness   = lookup(local.freshness, "logs", var.freshness_default_duration)
      description = "This dataset contains redis logs"
    }

    redis_metrics = {
      workspace   = local.workspace
      name        = format(var.name_format, "Metrics")
      freshness   = lookup(local.freshness, "redis_metrics", var.freshness_default_duration)
      description = "This dataset contains redis metrics"
    }
  }

  base_module = var.google
}

resource "observe_dataset" "redis_instance" {
  workspace   = local.datasets.redis_instance.workspace
  name        = local.datasets.redis_instance.name
  freshness   = local.datasets.redis_instance.freshness
  description = local.datasets.redis_instance.description

  inputs = {
    "gcp" = local.base_module.resource_asset_inventory_records.oid
  }

  # https://cloud.google.com/pubsub/docs/reference/rpc/google.pubsub.v1#pubsubmessage
  stage {

    pipeline = <<-EOF
      filter asset_namespace = "redis.googleapis.com"

    EOF
  }
  stage {
    # alias = "GCP"
    pipeline = <<-EOF
      make_col instance_pkey:name,
        authorizedNetwork:string(data.authorizedNetwork), //b
        connectMode:string(data.connectMode), //r
        createTime:string(data.createTime), //b
        currentLocationId:string(data.currentLocationId), //r
        displayName:string(data.displayName), //b
        host:string(data.host), //b
        labels:data.labels, //b
        locationId:string(data.locationId),
        memorySizeGb:int64(data.memorySizeGb), //b
        name:string(data.name), //b
        nodes:data.nodes, //b
        persistenceMode:string(data.persistenceConfig.persistenceMode), //r
        persistenceConfig:data.persistenceConfig, //r
        persistenceIamIdentity:string(data.persistenceIamIdentity), //r
        port:int64(data.port), //b
        readReplicasMode:string(data.readReplicasMode), //r
        redisVersion:string(data.redisVersion), //b
        replicaCount:int64(data.replicaCount), //r
        reservedIpRange:string(data.reservedIpRange), //r
        state:string(data.state), //b
        tier:string(data.tier), //r
        transitEncryptionMode:string(data.transitEncryptionMode) //r
        //datacenter: string("GCP") //b
    EOF
  }

  stage {

    pipeline = <<-EOF
pick_col
	  time,
 	  project_id,
    instance_pkey,
  	name,
    displayName,
   	authorizedNetwork,
    connectMode,
    createTime,
    currentLocationId,
    host,
    locationId,
    nodes,
    port,
    readReplicasMode,
    redisVersion,
    replicaCount,
    reservedIpRange,
    state,
    tier,
    memorySizeGb,
    persistenceMode,
    persistenceConfig,
    persistenceIamIdentity,
    transitEncryptionMode,
    location,
    version,
    ttl

    EOF
  }
  stage {

    pipeline = <<-EOF
      make_resource options(expiry:${var.max_expiry_duration}),
        time,
        project_id,
        name,
        displayName,
        authorizedNetwork,
        connectMode,
        createTime,
        currentLocationId,
        host,
        locationId,
        nodes,
        persistenceMode,
        port,
        readReplicasMode,
        redisVersion,
        replicaCount,
        reservedIpRange,
        state,
        tier,
        transitEncryptionMode,
        location,
        version,
        ttl,
        primary_key(instance_pkey)

      EOF
  }
}
