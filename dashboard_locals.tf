locals {
  workspace                   = var.workspace.oid
  workspace_id                = var.workspace.id
  datastream_dataset_id       = regex("[^:]+$", var.datastream.dataset)
  datastream_name             = regex("[^//]+$", var.datastream.name)
  asset_inventory             = observe_dataset.base_asset_inventory_records.id
  logs                        = observe_dataset.logs.id
  dashboard_name_home         = format(var.name_format, "App Home")
  dashboard_name_resources    = format(var.name_format, "Resource Monitoring")
  dashboard_name_projects     = format(var.name_format, "Project Monitoring")
  resources_asset_inventory   = observe_dataset.resources_asset_inventory.id
  metrics                     = observe_dataset.metrics.id
  projects_collection_enabled = resource.observe_dataset.projects_collection_enabled.id
}
