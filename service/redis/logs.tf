resource "observe_dataset" "logs" {
  workspace   = local.datasets.logs.workspace
  name        = local.datasets.logs.name
  freshness   = local.datasets.logs.freshness
  description = local.datasets.logs.description

  inputs = {
    "gcp" = local.base_module.logs.oid
  }

  # https://cloud.google.com/pubsub/docs/reference/rpc/google.pubsub.v1#pubsubmessage
  stage {

    pipeline = <<-EOF
      filter resourceType = "redis_instance"
      
      // example value = //redis.googleapis.com/projects/content-eng-arthur/locations/us-west1/instances/ha-memory-cache
  
      make_col instance_id:string(resourceLabels.instance_id),
          node_id:string(resourceLabels.node_id),
          project_id:string(resourceLabels.project_id),
          region:string(resourceLabels.region)

      make_col instance_pkey: string_concat("//redis.googleapis.com/projects/",project_id,"/locations/",region,"/instances/",instance_id)

      add_key instance_pkey
    EOF
  }
}

resource "observe_link" "instance_to_log" {
  workspace = local.datasets.logs.workspace
  source    = observe_dataset.logs.oid
  target    = observe_dataset.redis_instance.oid
  fields    = ["instance_pkey"]
  label     = "Redis Instance"
}