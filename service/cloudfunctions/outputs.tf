output "function" {
  value = observe_dataset.function
}

output "function_logs" {
  value = observe_dataset.function_logs
}

output "function_metrics" {
  value = local.enable_metrics ? observe_dataset.function_metrics[0] : null
}
