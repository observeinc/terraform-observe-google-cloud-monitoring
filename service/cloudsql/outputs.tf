output "cloudsql" {
  value = observe_dataset.cloudsql
}

output "cloudsql_logs" {
  value = observe_dataset.sql_logs
}

output "cloudsql_metrics" {
  value = local.enable_metrics ? observe_dataset.cloudsql_metrics[0] : null
}
