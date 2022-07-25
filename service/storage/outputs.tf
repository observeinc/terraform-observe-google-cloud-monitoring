output "storage" {
  value = observe_dataset.storage
}

output "storage_logs" {
  value = observe_dataset.storage_logs
}

output "storage_metrics" {
  value = local.enable_metrics ? observe_dataset.storage_metrics[0] : null
}
