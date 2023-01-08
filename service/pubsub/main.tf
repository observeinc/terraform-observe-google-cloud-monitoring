
locals {
  # tflint-ignore: terraform_unused_declarations
  enable_metrics = lookup(var.feature_flags, "metrics", true)
  # tflint-ignore: terraform_unused_declarations
  enable_monitors = lookup(var.feature_flags, "monitors", true)
  # tflint-ignore: terraform_unused_declarations
  enable_both = lookup(var.feature_flags, "monitors", true) && lookup(var.feature_flags, "metrics", true)

  freshness = merge({}, var.freshness_overrides)

  /*

  workspace = local.datasets.REPLACE_WITH_DATASET_NAME.workspace
  name        = local.datasets.REPLACE_WITH_DATASET_NAME.name
  freshness   = local.datasets.REPLACE_WITH_DATASET_NAME.freshness
  description = local.datasets.REPLACE_WITH_DATASET_NAME.description

*/

  datasets = {
    pubsub_service = {
      workspace   = local.workspace
      name        = format(var.name_format, "Service")
      freshness   = lookup(local.freshness, "pubsub_service", var.freshness_default_duration)
      description = "Dataset showing consumed APIs"
    }

    pubsub_service_api_metrics = {
      workspace   = local.workspace
      name        = format(var.name_format, "Service API Metrics")
      freshness   = lookup(local.freshness, "pubsub_service_api_metrics", var.freshness_default_duration)
      description = "Metrics for Service APIs"
    }

    pubsub_service_quota_metrics = {
      workspace   = local.workspace
      name        = format(var.name_format, "Service Quota Metrics")
      freshness   = lookup(local.freshness, "pubsub_service_quota_metrics", var.freshness_default_duration)
      description = "Dataset showing service quota metrics"
    }

    pubsub_topics = {
      workspace   = local.workspace
      name        = format(var.name_format, "Topics")
      freshness   = lookup(local.freshness, "pubsub_topics", var.freshness_default_duration)
      description = "Dataset for PubSub Topic resources"
    }

    pubsub_subscriptions = {
      workspace   = local.workspace
      name        = format(var.name_format, "Subscriptions")
      freshness   = lookup(local.freshness, "pubsub_subscriptions", var.freshness_default_duration)
      description = "Dataset for PubSub Subscription resources"
    }

    pubsub_topic_metrics = {
      workspace   = local.workspace
      name        = format(var.name_format, "Topic Metrics")
      freshness   = lookup(local.freshness, "pubsub_topic_metrics", var.freshness_default_duration)
      description = "Metrics dataset for PubSub Topics"
    }
  }
}

