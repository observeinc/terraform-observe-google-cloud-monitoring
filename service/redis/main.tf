locals {
  freshness = merge({}, var.freshness_overrides)

  enable_metrics  = lookup(var.feature_flags, "metrics", true)
  enable_monitors = lookup(var.feature_flags, "monitors", true)
  enable_both     = local.enable_monitors && local.enable_metrics

  workspace = var.workspace.oid


  datasets = {
    redis_cluster = {
      workspace   = local.workspace
      name        = format(var.name_format, "Instance")
      freshness   = lookup(local.freshness, "redis_cluster", var.freshness_default_duration)
      description = "This dataset contains redis instances"
    }

    logs = {
      workspace   = local.workspace
      name        = format(var.name_format, "Logs")
      freshness   = lookup(local.freshness, "logs", var.freshness_default_duration)
      description = "This dataset contains redis logs"
    }

    metrics = {
      workspace   = local.workspace
      name        = format(var.name_format, "Metrics")
      freshness   = lookup(local.freshness, "metrics", var.freshness_default_duration)
      description = "This dataset contains redis metrics"
    }
  }

  base_module = var.google
  # base_module = {
  #   # datastream                         = data.observe_dataset.gcp_datastream.oid
  #   # pubsub_events                      = observe_dataset.base_pubsub_events
  #   # asset_inventory_records            = observe_dataset.base_asset_inventory_records
  #   gcp_resource_asset_inventory_records = var.gcp_app.resource_asset_inventory_records
  #   # iam_policy_asset_inventory_records = observe_dataset.iam_policy_asset_inventory_records
  #   gcp_logs = var.gcp_app.logs
  #   # audit_logs                         = observe_dataset.audit_logs
  #   gcp_metrics = var.gcp_app.metrics
  #   # string_metrics                     = observe_dataset.string_metrics
  #   # projects                           = observe_dataset.projects_collection_enabled
  #   # distribution_metrics               = observe_dataset.process_distribution_metrics
  # }
}

resource "observe_dataset" "redis_cluster" {
  workspace   = local.datasets.redis_cluster.workspace
  name        = local.datasets.redis_cluster.name
  freshness   = local.datasets.redis_cluster.freshness
  description = local.datasets.redis_cluster.description

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
        authorizedNetwork:string(data.authorizedNetwork),
        connectMode:string(data.connectMode),
        createTime:string(data.createTime),
        currentLocationId:string(data.currentLocationId),
        displayName:string(data.displayName),
        host:string(data.host),
        labels:data.labels,
        locationId:string(data.locationId),
        memorySizeGb:int64(data.memorySizeGb),
        name:string(data.name),
        nodes:data.nodes,
        persistenceMode:string(data.persistenceConfig.persistenceMode),
        persistenceConfig:data.persistenceConfig,
        persistenceIamIdentity:string(data.persistenceIamIdentity),
        port:int64(data.port),
        readReplicasMode:string(data.readReplicasMode),
        redisVersion:string(data.redisVersion),
        replicaCount:int64(data.replicaCount),
        reservedIpRange:string(data.reservedIpRange),
        state:string(data.state),
        tier:string(data.tier),
        transitEncryptionMode:string(data.transitEncryptionMode),
        datacenter: string("GCP")
    EOF
  }

  stage {

    pipeline = <<-EOF
pick_col
	  time,
 	  project_id,
    instance_pkey,
  	name,
    datacenter,
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
    ttl

    EOF
  }
  stage {

    pipeline = <<-EOF
      make_resource options(expiry:${var.max_expiry_duration}),
        time,
        project_id,
        name,
        authorizedNetwork,
        connectMode,
        createTime,
        currentLocationId,
        host,
        datacenter,
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
