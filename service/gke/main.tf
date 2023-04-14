locals {
  # enable_metrics = lookup(var.feature_flags, "metrics", true)
  # tflint-ignore: terraform_unused_declarations
  # enable_monitors = lookup(var.feature_flags, "monitors", true)
  enable_preferred_paths            = lookup(var.feature_flags, "preferred_paths", true)
  use_name_format_in_preferred_path = lookup(var.feature_flags, "use_name_format_in_preferred_path", false)

  freshness = merge({}, var.freshness_overrides)

  workspace                            = var.workspace.oid
  gke_monitoring_dashboard_enable      = 1
  gke_monitoring_dashboard_description = "GKE Monitoring Dashboard"
  gke_monitoring_dashboard_name        = format(var.name_format, "Monitoring")
  gke_cluster                          = resource.observe_dataset.gke_clusters.id
  compute_instance                     = var.google.compute_instance.id
  compute_metrics                      = var.google.compute_metrics.id


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

