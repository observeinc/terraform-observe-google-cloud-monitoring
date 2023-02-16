locals {
  freshness = merge({}, var.freshness_overrides)

  enable_metrics  = lookup(var.feature_flags, "metrics", true)
  enable_monitors = lookup(var.feature_flags, "monitors", true)
  enable_both     = local.enable_monitors && local.enable_metrics

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

    memcache_metrics = {
      workspace   = local.workspace
      name        = format(var.name_format, "Metrics")
      freshness   = lookup(local.freshness, "memcache_metrics", var.freshness_default_duration)
      description = "This dataset contains memcache metrics"
    }
  }

  base_module = var.google
}

resource "observe_dataset" "memcache_instance" {
  workspace   = local.datasets.memcache_instance.workspace
  name        = local.datasets.memcache_instance.name
  freshness   = local.datasets.memcache_instance.freshness
  description = local.datasets.memcache_instance.description

  inputs = {
    "gcp" = local.base_module.resource_asset_inventory_records.oid
  }

  # https://cloud.google.com/pubsub/docs/reference/rpc/google.pubsub.v1#pubsubmessage
  stage {

    pipeline = <<-EOF
      filter asset_namespace = "memcache.googleapis.com"

    EOF
  }
  stage {
    # alias = "GCP"
    pipeline = <<-EOF
      make_col instance_pkey:string(data.name),
        authorizedNetwork:string(data.authorizedNetwork),
          createTime:string(data.createTime),
          discoveryEndpoint:string(data.discoveryEndpoint),
          displayName:string(data.displayName),
          labels:data.labels,
          memcacheFullVersion:string(data.memcacheFullVersion),
          memcacheNodes:data.memcacheNodes,
          memcacheVersion:string(data.memcacheVersion),
          cpuCount:int64(data.nodeConfig.cpuCount),
          memorySizeMb:int64(data.nodeConfig.memorySizeMb),
          nodeCount:int64(data.nodeCount),
          parameters:data.parameters,
          state:string(data.state),
          updateTime:string(data.updateTime),
          zones:data.zones
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
          createTime,
          discoveryEndpoint,
          memcacheNodes,
          cpuCount,
          memorySizeMb,
          nodeCount,
          parameters,
          state,
          updateTime,
          zones,
          location,
          memcacheFullVersion,
          memcacheVersion,
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
          createTime,
          discoveryEndpoint,
          memcacheNodes,
          cpuCount,
          memorySizeMb,
          nodeCount,
          parameters,
          state,
          updateTime,
          zones,
          location,
          memcacheFullVersion,
          memcacheVersion,
          ttl,
          primary_key(instance_pkey)

      EOF
  }
}
