output "cloudsql" {
  value = observe_dataset.cloud_sql_instance
}

output "cloudsql_logs" {
  value = observe_dataset.sql_logs
}

output "cloudsql_metrics" {
  value = local.enable_metrics ? observe_dataset.cloud_sql_metrics[0] : null
}

output "cloudsql_metrics_combo" {
  value = local.enable_metrics ? observe_dataset.cloud_sql_metrics_combo[0] : null
}

output "cloudsql_metrics_wide" {
  value = local.enable_metrics ? observe_dataset.cloud_sql_metrics_wide[0] : null
}

output "combined_error_logs" {
  value = local.enable_metrics ? observe_dataset.cloud_sql_logs_error : null
}

output "activity_logs" {
  value = local.enable_metrics ? observe_dataset.activity_logs : null
}
