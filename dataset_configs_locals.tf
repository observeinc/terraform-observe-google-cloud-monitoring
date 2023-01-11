/*

  workspace = local.datasets.REPLACE_WITH_DATASET_NAME.workspace
  name        = local.datasets.REPLACE_WITH_DATASET_NAME.name
  freshness   = local.datasets.REPLACE_WITH_DATASET_NAME.freshness
  description = local.datasets.REPLACE_WITH_DATASET_NAME.description

*/
locals {
  freshness = merge({}, var.freshness_overrides)

  datasets = {
    base_pubsub_events = {
      workspace   = local.workspace
      name        = format(var.name_format, "PubSub Events")
      freshness   = lookup(local.freshness, "base_pubsub_events", var.freshness_default_duration)
      description = "This dataset contains all events from collection pubsub topic and is used as an input to other datasets"
    }

    base_asset_inventory_records = {
      workspace   = local.workspace
      name        = format(var.name_format, "Asset Inventory Records")
      freshness   = lookup(local.freshness, "base_asset_inventory_records", var.freshness_default_duration)
      description = "Raw data from asset exports"
    }

    resource_asset_inventory_records = {
      workspace   = local.workspace
      name        = format(var.name_format, "Resource Asset Inventory Records")
      freshness   = lookup(local.freshness, "resource_asset_inventory_records", var.freshness_default_duration)
      description = "All cloud assets in GCP"
    }

    resources_asset_inventory = {
      workspace   = local.workspace
      name        = format(var.name_format, "Resource Asset Inventory")
      freshness   = lookup(local.freshness, "resources_asset_inventory", var.freshness_default_duration)
      description = "All cloud assets in GCP"
    }

    iam_policy_asset_inventory_records = {
      workspace   = local.workspace
      name        = format(var.name_format, "IAM Policy Asset Inventory Records")
      freshness   = lookup(local.freshness, "iam_policy_asset_inventory_records", var.freshness_default_duration)
      description = "This dataset contains IAM Policy bindings for other assets"
    }

    projects_collection_enabled = {
      workspace   = local.workspace
      name        = format(var.name_format, "Projects Collection Enabled")
      freshness   = lookup(local.freshness, "projects_collection_enabled", var.freshness_default_duration)
      description = "This dataset is used to create project resources"
    }

    metric_points = {
      workspace   = local.workspace
      name        = format(var.name_format, "Metric Points")
      freshness   = lookup(local.freshness, "metric_points", var.freshness_default_duration)
      description = "This dataset contains metrics for all GCP resources and is used by other metrics datasets as an input"
    }

    metrics = {
      workspace   = local.workspace
      name        = format(var.name_format, "Metric")
      freshness   = lookup(local.freshness, "metrics", var.freshness_default_duration)
      description = "Metrics dataset for GCP resources"
    }

    string_metrics = {
      workspace   = local.workspace
      name        = format(var.name_format, "String Metric Points")
      freshness   = lookup(local.freshness, "string_metrics", var.freshness_default_duration)
      description = "This dataset contains string metrics for resources that provide them."
    }

    distribution_metrics = {
      workspace   = local.workspace
      name        = format(var.name_format, "Distribution Metric Points")
      freshness   = lookup(local.freshness, "distribution_metrics", var.freshness_default_duration)
      description = "This dataset contains distribution metrics for GCP resources that provide them and is used by other metrics datasets as an input"
    }

    process_distribution_metrics = {
      workspace   = local.workspace
      name        = format(var.name_format, "Distribution Metric")
      freshness   = lookup(local.freshness, "process_distribution_metrics", var.freshness_default_duration)
      description = "This dataset contains distributio metrics for GCP resources that provide them"
    }

    logs = {
      workspace   = local.workspace
      name        = format(var.name_format, "Logs")
      freshness   = lookup(local.freshness, "logs", var.freshness_default_duration)
      description = "This dataset contains all logging data collected from GCP and is used as an input to other datasets"
    }

    audit_logs = {
      workspace   = local.workspace
      name        = format(var.name_format, "Audit Logs")
      freshness   = lookup(local.freshness, "audit_logs", var.freshness_default_duration)
      description = "This dataset contains audit logs which are enabled per service within GCP"
    }
  }
}