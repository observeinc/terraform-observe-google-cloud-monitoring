locals {
  enable_metrics = lookup(var.feature_flags, "metrics", true)
  freshness = merge({
    bigquery = "5m",
    metrics  = "1m",
    logging  = "1m",
  }, var.freshness_overrides)

  bigquery_dataset = resource.observe_dataset.bigquery_dataset.id
  bigquery_dataset_dashboard_name = format(var.name_format, "Dataset Monitoring")

  project_dashboard_name              = format(var.name_format, "Project Monitoring")
  projects_collection_enabled = var.google.projects.id

  workspace         = var.workspace.oid
  singleton_dashboard_name    = format(var.name_format, "Project Overview Monitoring")
  bigquery_metrics  = resource.observe_dataset.bigquery_metrics[0].id
  bigquery_job_logs = resource.observe_dataset.bigquery_job_logs.id
}