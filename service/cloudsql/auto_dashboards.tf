resource "observe_dashboard" "monitoring" {
  workspace = var.workspace.oid
  name      = "Cloud SQL Instance Monitoring Output"
  stages = templatefile("${path.module}/dashboards/stages_v1.json", {
    dataset_gcp-172_cloudSQLInstance = observe_dataset.cloudsql.id
    dataset_gcp-172_cloudSQLMetrics  = observe_dataset.cloudsql_metrics[0].id
    dataset_gcp-172_cloudSQLLogs     = observe_dataset.sql_logs.id
  })
  layout = templatefile("${path.module}/dashboards/layout_v1.json", {
    dataset_gcp-172_cloudSQLInstance = observe_dataset.cloudsql.id
    dataset_gcp-172_cloudSQLMetrics  = observe_dataset.cloudsql_metrics[0].id
    dataset_gcp-172_cloudSQLLogs     = observe_dataset.sql_logs.id
  })
  parameters = templatefile("${path.module}/dashboards/parameters_v1.json", {
    dataset_gcp-172_cloudSQLInstance = observe_dataset.cloudsql.id
    dataset_gcp-172_cloudSQLMetrics  = observe_dataset.cloudsql_metrics[0].id
    dataset_gcp-172_cloudSQLLogs     = observe_dataset.sql_logs.id
  })
  # parameter_values = templatefile("${path.module}//Users/arthur/content_eng/terraform-observe-google/service/cloudsql/dashboards/parameterValues_v1.json", {
  #
  #})
}

# output "tfd_db" {
# 	value = observe_dashboard.monitoring
# }
