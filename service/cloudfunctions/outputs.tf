output "function" {
  value = observe_dataset.cloud_functions_instances
}

output "function_logs" {
  value = observe_dataset.cloud_functions_function_logs
}

output "function_metrics" {
  value = local.enable_metrics ? observe_dataset.cloud_functions_metrics[0] : null
}
