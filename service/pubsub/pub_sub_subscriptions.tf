resource "observe_dataset" "pubsub_subscriptions" {
  workspace   = var.workspace.oid
  name        = format(var.name_format, "Subscriptions")
  freshness   = lookup(local.freshness, "pubsub", var.freshness_default_duration)
  description = "Dataset for PubSub Subscription resources"
  inputs = {
    "events" = var.google.resource_asset_inventory_records.oid
  }

  stage {
    input    = "events"
    pipeline = <<-EOF

        filter asset_type = "pubsub.googleapis.com/Subscription"

        extract_regex name, /projects\/(?P<project_id>[^\/+]+)/

        extract_regex name, /subscriptions\/(?P<subscription_name>[^\/+]+)/

        make_col topic:string(data.topic),
            retryPolicy:data.retryPolicy,
            ackDeadlineSeconds:int64(data.ackDeadlineSeconds),
            messageRetentionDuration:string(data.messageRetentionDuration),
            subscription_key: name
            
        add_key topic
    
    EOF
  }

  # https://cloud.google.com/compute/docs

  stage {
    pipeline = <<-EOF
      make_resource options(expiry:${var.max_expiry}),
        topic,
        project_id, 
        subscription_name,
        retryPolicy,
        ackDeadlineSeconds,
        messageRetentionDuration,
        ttl,
        deleted,
        primary_key(subscription_key),
        valid_for(ttl)

      add_key subscription_name
      set_label subscription_name

      add_key project_id
      add_key topic
    EOF
  }
}
