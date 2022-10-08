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

resource "observe_link" "pubsub_metrics" {
  for_each = length(observe_dataset.pubsub_topic_metrics) > 0 ? {
    "Topics" = {
      target = observe_dataset.pubsub_topics.oid
      fields = ["topic_primary_key"]
      source = observe_dataset.pubsub_topic_metrics[0].oid
    }
    "Subscriptions" = {
      target = observe_dataset.pubsub_subscriptions.oid
      fields = ["subscription_key"]
      source = observe_dataset.pubsub_subscription_metrics[0].oid
    }
  } : {}

  workspace = var.workspace.oid
  source    = each.value.source
  target    = each.value.target
  fields    = each.value.fields
  label     = each.key
}

