output "load_balancers" {
  value = observe_dataset.url_maps
}

/*
output "storage_logs" {
  value = observe_dataset.storage_logs
}
*/

output "load_balancing_metrics" {
  value = local.enable_metrics ? observe_dataset.load_balancing_metrics[0] : null
}
