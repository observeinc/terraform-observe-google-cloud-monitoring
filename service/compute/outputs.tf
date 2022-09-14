output "compute" {
  value = observe_dataset.compute_instance
}

output "compute_logs" {
  value = observe_dataset.compute_logs
}

output "compute_metrics" {
  value = local.enable_metrics ? observe_dataset.compute_metrics[0] : null
}
