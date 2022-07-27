resource "observe_dashboard" "monitoring" {
  count     = local.enable_metrics ? 1 : 0
  workspace = var.workspace.oid
  name      = "Cloud SQL Instance Monitoring Output"
  stages = templatefile("${path.module}/dashboards/stages_v1.json", {
    CLOUDSQL_DATASET         = observe_dataset.cloudsql.id
    CLOUDSQL_METRICS_DATASET = local.enable_metrics == true ? observe_dataset.cloudsql_metrics[0].id : null
    CLOUDSQL_LOGS_DATASET    = observe_dataset.sql_logs.id
  })
  layout = templatefile("${path.module}/dashboards/layout_v1.json", {
    CLOUDSQL_DATASET         = observe_dataset.cloudsql.id
    CLOUDSQL_METRICS_DATASET = local.enable_metrics == true ? observe_dataset.cloudsql_metrics[0].id : null
    CLOUDSQL_LOGS_DATASET    = observe_dataset.sql_logs.id
  })
  parameters = templatefile("${path.module}/dashboards/parameters_v1.json", {
    CLOUDSQL_DATASET         = observe_dataset.cloudsql.id
    CLOUDSQL_METRICS_DATASET = local.enable_metrics == true ? observe_dataset.cloudsql_metrics[0].id : null
    CLOUDSQL_LOGS_DATASET    = observe_dataset.sql_logs.id
  })

  # parameter_values = templatefile("${path.module}//Users/arthur/content_eng/terraform-observe-google/service/cloudsql/dashboards/parameterValues_v1.json", {
  #
  #})
}

