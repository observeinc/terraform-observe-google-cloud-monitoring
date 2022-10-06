locals {
  cloud_functions_instances = resource.observe_dataset.cloud_functions_instances.id
  cloud_functions_metrics   = resource.observe_dataset.cloud_functions_metrics[0].id
  cloud_functions_logs      = resource.observe_dataset.cloud_functions_function_logs.id
}