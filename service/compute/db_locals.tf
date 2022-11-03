locals {
  workspace           = var.workspace.oid
  dashboard_name      = format(var.name_format, "Monitoring")
  compute_instance    = observe_dataset.compute_instance.id
  compute_metrics     = one(observe_dataset.compute_metrics[*].id)
  disk_dashboard_name = format(var.name_format, "Disk Monitoring")
  compute_disk        = resource.observe_dataset.compute_disk.id
}
