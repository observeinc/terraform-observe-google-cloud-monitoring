resource "observe_dashboard" "monitoring" {
  workspace = var.workspace.oid
  name      = "Cloud SQL Instance Monitoring Output"
  stages = templatefile("/Users/arthur/content_eng/terraform-observe-google/service/cloudsql/dashboards/stages_v1.json", {
    dataset_gcp-101_cloudSQLInstance = observe_dataset.cloudsql.id
    dataset_gcp-101_cloudSQLMetrics  = observe_dataset.cloudsql_metrics[0].id
    dataset_gcp-101_cloudSQLLogs     = observe_dataset.sql_logs.id
  })
  layout = templatefile("/Users/arthur/content_eng/terraform-observe-google/service/cloudsql/dashboards/layout_v1.json", {
    dataset_gcp-101_cloudSQLInstance = observe_dataset.cloudsql.id
    dataset_gcp-101_cloudSQLMetrics  = observe_dataset.cloudsql_metrics[0].id
    dataset_gcp-101_cloudSQLLogs     = observe_dataset.sql_logs.id
  })
  parameters = templatefile("/Users/arthur/content_eng/terraform-observe-google/service/cloudsql/dashboards/parameters_v1.json", {
    dataset_gcp-101_cloudSQLInstance = observe_dataset.cloudsql.id
    dataset_gcp-101_cloudSQLMetrics  = observe_dataset.cloudsql_metrics[0].id
    dataset_gcp-101_cloudSQLLogs     = observe_dataset.sql_logs.id
  })
  # parameter_values = templatefile("${path.module}//Users/arthur/content_eng/terraform-observe-google/service/cloudsql/dashboards/parameterValues_v1.json", {
  #
  #})
}

# output "tfd_db" {
# 	value = observe_dashboard.monitoring
# }
