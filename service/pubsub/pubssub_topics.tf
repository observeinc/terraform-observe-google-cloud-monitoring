resource "observe_dataset" "pubsub_topics" {
  workspace   = local.datasets.pubsub_topics.workspace
  name        = local.datasets.pubsub_topics.name
  freshness   = local.datasets.pubsub_topics.freshness
  description = local.datasets.pubsub_topics.description

  inputs = {
    "events" = var.google.resource_asset_inventory_records.oid
  }

  stage {
    input    = "events"
    pipeline = <<-EOF

        filter asset_type = "pubsub.googleapis.com/Topic"

        extract_regex name, /projects\/(?P<project_id>[^\/+]+)/

        extract_regex name, /topics\/(?P<topic_name>[^\/+]+)/

        extract_regex name, /pubsub.googleapis.com\/(?P<topic_subscription_name>.*)/

        make_col topic_primary_key: name
    
    EOF
  }

  # https://cloud.google.com/compute/docs

  stage {
    pipeline = <<-EOF
      make_resource options(expiry:${var.max_expiry}),
        topic_name,
        topic_subscription_name,
        project_id, 
        ttl,
        deleted,
        primary_key(topic_primary_key),
        valid_for(ttl)

      add_key topic_name
      set_label topic_name

      add_key project_id
      add_key topic_subscription_name
    EOF
  }
}
