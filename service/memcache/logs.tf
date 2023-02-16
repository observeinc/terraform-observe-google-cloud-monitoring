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
      filter resourceType = "memcache_instance"
    EOF
  }
}
