locals {
  enable_metrics = lookup(var.feature_flags, "metrics", true)
  freshness = merge({
    bigquery = "5m",
    metrics  = "1m",
    logging  = "1m",
  }, var.freshness_overrides)

  bigquery_dataset                = observe_dataset.bigquery_dataset.id
  bigquery_dataset_dashboard_name = format(var.name_format, "Dataset Monitoring")

  project_dashboard_name      = format(var.name_format, "Project Monitoring")
  projects_collection_enabled = var.google.projects.id

  bigquery_table           = observe_dataset.bigquery_table.id
  table_dashboard_name     = format(var.name_format, "Table Monitoring")
  workspace                = var.workspace.oid
  singleton_dashboard_name = format(var.name_format, "Project Overview Monitoring")
  bigquery_metrics         = observe_dataset.bigquery_metrics[0].id
  bigquery_job_logs        = observe_dataset.bigquery_job_logs.id

  /*

  workspace = local.datasets.REPLACE_WITH_DATASET_NAME.workspace
  name        = local.datasets.REPLACE_WITH_DATASET_NAME.name
  freshness   = local.datasets.REPLACE_WITH_DATASET_NAME.freshness
  description = local.datasets.REPLACE_WITH_DATASET_NAME.description

*/

  datasets = {
    bigquery_dataset = {
      workspace   = local.workspace
      name        = format(var.name_format, "Dataset")
      freshness   = lookup(local.freshness, "bigquery_dataset", var.freshness_default_duration)
      description = "Information about Big Query datasets"
    }

    bigquery_table = {
      workspace   = local.workspace
      name        = format(var.name_format, "Table")
      freshness   = lookup(local.freshness, "bigquery_table", var.freshness_default_duration)
      description = "Resource dataset for Big Query tables"
    }

    bigquery_metrics = {
      workspace   = local.workspace
      name        = format(var.name_format, "Metrics")
      freshness   = lookup(local.freshness, "bigquery_metrics", var.freshness_default_duration)
      description = "Metrics for Big Query"
    }

    bigquery_audit_logs = {
      workspace   = local.workspace
      name        = format(var.name_format, "Audit Logs")
      freshness   = lookup(local.freshness, "bigquery_audit_logs", var.freshness_default_duration)
      description = "Audit logs containing information such as which tables were read from and written to by a given query job."
    }

    bigquery_job_logs = {
      workspace   = local.workspace
      name        = format(var.name_format, "Job Logs")
      freshness   = lookup(local.freshness, "bigquery_job_logs", var.freshness_default_duration)
      description = "Event dataset for Big Query job logs"
    }

  }
}