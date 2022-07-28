resource "observe_dashboard" "monitoring" {
  count     = local.enable_metrics ? 1 : 0
  workspace = var.workspace.oid
  name      = "Cloud SQL Instance Monitoring"
  stages = templatefile("${path.module}/dashboards/stages_v1.json", {
    CLOUDSQL_DATASET              = observe_dataset.cloudsql.id
    CLOUDSQL_METRICS_DATASET      = local.enable_metrics == true ? observe_dataset.cloudsql_metrics[0].id : null
    CLOUDSQL_COMBOMETRICS_DATASET = local.enable_metrics == true ? observe_dataset.cloudsql_metrics_combo[0].id : null
    CLOUDSQL_LOGS_DATASET         = observe_dataset.sql_logs.id
    CLOUDSQL_ERRORLOGS_DATASET    = observe_dataset.combined_error_logs.id
  })
  layout = templatefile("${path.module}/dashboards/layout_v1.json", {
    CLOUDSQL_DATASET              = observe_dataset.cloudsql.id
    CLOUDSQL_METRICS_DATASET      = local.enable_metrics == true ? observe_dataset.cloudsql_metrics[0].id : null
    CLOUDSQL_COMBOMETRICS_DATASET = local.enable_metrics == true ? observe_dataset.cloudsql_metrics_combo[0].id : null
    CLOUDSQL_LOGS_DATASET         = observe_dataset.sql_logs.id
    CLOUDSQL_ERRORLOGS_DATASET    = observe_dataset.combined_error_logs.id
  })
  parameters = templatefile("${path.module}/dashboards/parameters_v1.json", {
    CLOUDSQL_DATASET              = observe_dataset.cloudsql.id
    CLOUDSQL_METRICS_DATASET      = local.enable_metrics == true ? observe_dataset.cloudsql_metrics[0].id : null
    CLOUDSQL_COMBOMETRICS_DATASET = local.enable_metrics == true ? observe_dataset.cloudsql_metrics_combo[0].id : null
    CLOUDSQL_LOGS_DATASET         = observe_dataset.sql_logs.id
    CLOUDSQL_ERRORLOGS_DATASET    = observe_dataset.combined_error_logs.id
  })

  # parameter_values = templatefile("${path.module}//Users/arthur/content_eng/terraform-observe-google/service/cloudsql/dashboards/parameterValues_v1.json", {
  #
  #})
}

