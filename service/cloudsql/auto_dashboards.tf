resource "observe_dashboard" "monitoring" {
  workspace = data.observe_workspace.ws.oid
  name      = "Cloud SQL Instance Monitoring Output"
  stages = templatefile("/Users/arthur/content_eng/terraform-observe-google/service/cloudsql/dashboards/stages_v1.json", {
    dataset_gcp-101_cloudSQLInstance = "41079440"
    dataset_gcp-101_cloudSQLMetrics  = "41079433"
    dataset_gcp-101_cloudSQLLogs     = "41079429"
  })
  layout = templatefile("/Users/arthur/content_eng/terraform-observe-google/service/cloudsql/dashboards/layout_v1.json", {
    dataset_gcp-101_cloudSQLInstance = "41079440"
    dataset_gcp-101_cloudSQLMetrics  = "41079433"
    dataset_gcp-101_cloudSQLLogs     = "41079429"
  })
  parameters = templatefile("/Users/arthur/content_eng/terraform-observe-google/service/cloudsql/dashboards/parameters_v1.json", {
    dataset_gcp-101_cloudSQLInstance = "41079440"
    dataset_gcp-101_cloudSQLMetrics  = "41079433"
    dataset_gcp-101_cloudSQLLogs     = "41079429"
  })
  # parameter_values = templatefile("${path.module}//Users/arthur/content_eng/terraform-observe-google/service/cloudsql/dashboards/parameterValues_v1.json", {
  #
  #})
}

# output "tfd_db" {
# 	value = observe_dashboard.monitoring
# }
