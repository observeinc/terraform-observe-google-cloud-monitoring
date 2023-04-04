locals {
  cloud_run_service_dashboard_name             = format(var.name_format, "Service Instance")
  cloud_run_revision_dashboard_name = format(var.name_format, "Revision Instance")
  cloud_run_service_instances  = resource.observe_dataset.cloud_run_service_instances.id
  cloud_run_revision_instances = resource.observe_dataset.cloud_run_revision_instances.id
  cloud_run_metrics            = resource.observe_dataset.cloud_run_metrics.id  
  cloud_run_logs                 = resource.observe_dataset.cloud_run_service_logs.id
}


