output "bigquery_dataset" {
  value = observe_dataset.bigquery_dataset
}

# output "bigquery_logs" {
#   value = observe_dataset.bigquery_logs
# }

# output "bigquery_metrics" {
#   value = local.enable_metrics ? observe_dataset.bigquery_metrics[0] : null
# }
