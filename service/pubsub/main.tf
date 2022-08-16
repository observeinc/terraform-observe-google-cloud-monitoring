
locals {
  # enable_metrics = lookup(var.feature_flags, "metrics", true)
  # # tflint-ignore: terraform_unused_declarations
  # enable_monitors = lookup(var.feature_flags, "monitors", true)

  # enable_both = lookup(var.feature_flags, "monitors", true) && lookup(var.feature_flags, "metrics", true)

  freshness = merge({
    cloudsql = "5m",
    metrics  = "1m",
    logging  = "1m",
  }, var.freshness_overrides)
}

resource "observe_dataset" "pubsub_topics" {
  workspace = var.workspace.oid
  name      = format(var.name_format, "Topics")
  freshness = lookup(local.freshness, "pubsub", var.freshness_default)

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
        primary_key(name),
        valid_for(ttl)

      add_key topic_name
      set_label topic_name

      add_key project_id
      add_key topic_subscription_name
    EOF
  }
}


resource "observe_dataset" "pubsub_subscriptions" {
  workspace = var.workspace.oid
  name      = format(var.name_format, "Subscriptions")
  freshness = lookup(local.freshness, "pubsub", var.freshness_default)

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
            messageRetentionDuration:string(data.messageRetentionDuration)
            
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
        primary_key(name),
        valid_for(ttl)

      add_key subscription_name
      set_label subscription_name

      add_key project_id
      add_key topic
    EOF
  }
}





resource "observe_link" "project" {
  for_each = {
    "Projects" = {
      target = var.google.projects.oid
      fields = ["project_id"]
      source = observe_dataset.pubsub_topics.oid
    }

    "Projects_Subs" = {
      target = var.google.projects.oid
      fields = ["project_id"]
      source = observe_dataset.pubsub_subscriptions.oid
    }

    "Topic_Subs" = {
      target = observe_dataset.pubsub_topics.oid
      fields = ["topic:topic_subscription_name"]
      source = observe_dataset.pubsub_subscriptions.oid
    }

  }

  workspace = var.workspace.oid
  source    = each.value.source
  target    = each.value.target
  fields    = each.value.fields
  label     = each.key
}


# resource "observe_dataset" "compute_group" {
#   workspace = var.workspace.oid
#   name      = format(var.name_format, "Instance Group")
#   freshness = var.freshness_default

#   inputs = {
#     "events" = var.google.resource_asset_inventory_records.oid
#   }

#   # https://cloud.google.com/compute/docs
#   stage {
#     input    = "events"
#     pipeline = <<-EOF
#       filter asset_namespace = "compute.googleapis.com"  and asset_sub_type = "InstanceGroup"

#     EOF
#   }
# }
