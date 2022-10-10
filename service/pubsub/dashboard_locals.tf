locals {
  workspace                    = var.workspace.oid
  dashboard_name_topic         = format(var.name_format, "Topic Monitoring")
  pubsub_topics                = observe_dataset.pubsub_topics.id
  pubsub_topic_metrics         = one(observe_dataset.pubsub_topic_metrics[*].id)
  dashboard_name_subscription  = format(var.name_format, "Subscription Monitoring")
  pubsub_subscriptions         = observe_dataset.pubsub_subscriptions.id
  pubsub_subscription_metrics  = one(observe_dataset.pubsub_subscription_metrics[*].id)
  dashboard_name_service       = format(var.name_format, "Service Monitoring")
  pubsub_service               = observe_dataset.pubsub_service.id
  pubsub_service_api_metrics   = observe_dataset.pubsub_service_api_metrics.id
  pubsub_service_quota_metrics = observe_dataset.pubsub_service_quota_metrics.id
}
