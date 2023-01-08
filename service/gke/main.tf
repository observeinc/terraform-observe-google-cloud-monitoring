locals {
  # enable_metrics = lookup(var.feature_flags, "metrics", true)
  # tflint-ignore: terraform_unused_declarations
  # enable_monitors = lookup(var.feature_flags, "monitors", true)

  freshness = merge({}, var.freshness_overrides)
  /*

  workspace = local.datasets.REPLACE_WITH_DATASET_NAME.workspace
  name        = local.datasets.REPLACE_WITH_DATASET_NAME.name
  freshness   = local.datasets.REPLACE_WITH_DATASET_NAME.freshness
  description = local.datasets.REPLACE_WITH_DATASET_NAME.description

*/

  datasets = {
    gke_logs = {
      workspace   = local.workspace
      name        = format(var.name_format, "Logs")
      freshness   = lookup(local.freshness, "gke_logs", var.freshness_default_duration)
      description = "This dataset contains raw logging data for GKE instances"
    }

    gke_events = {
      workspace   = local.workspace
      name        = format(var.name_format, "Cluster Events")
      freshness   = lookup(local.freshness, "gke_events", var.freshness_default_duration)
      description = "This dataset contains events for GKE Cluster Resources"
    }

    gke_clusters = {
      workspace   = local.workspace
      name        = format(var.name_format, "Cluster")
      freshness   = lookup(local.freshness, "gke_clusters", var.freshness_default_duration)
      description = "This dataset is used to create GKE Cluster Resources"
    }
  }
}

