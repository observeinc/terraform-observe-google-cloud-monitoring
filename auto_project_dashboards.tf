resource "observe_dashboard" "monitoring" {
  workspace = var.workspace.oid
  name      = format(var.name_format, "Projects Monitoring")
  stages = templatefile("${path.module}/dashboards/stages_v1.json", {
    RESOURCE_DATASET                 = observe_dataset.projects.id
    RESOURCE_ASSET_INVENTORY_DATASET = observe_dataset.resource_asset_inventory_records.id
    COMPUTE_DATASET                  = module.compute[0] == null ? null : module.compute[0].compute.id
    STORAGE_DATASET                  = module.storage[0] == null ? null : module.storage[0].storage.id
    CLOUD_SQL_DATASET                = module.cloudsql[0] == null ? null : module.cloudsql[0].cloudsql.id
    FUNCTION_DATASET                 = module.cloudfunctions[0] == null ? null : module.cloudfunctions[0].function.id
  })
  layout = templatefile("${path.module}/dashboards/layout_v1.json", {
    RESOURCE_DATASET                 = observe_dataset.projects.id
    RESOURCE_ASSET_INVENTORY_DATASET = observe_dataset.resource_asset_inventory_records.id
    COMPUTE_DATASET                  = module.compute[0] == null ? null : module.compute[0].compute.id
    STORAGE_DATASET                  = module.storage[0] == null ? null : module.storage[0].storage.id
    CLOUD_SQL_DATASET                = module.cloudsql[0] == null ? null : module.cloudsql[0].cloudsql.id
    FUNCTION_DATASET                 = module.cloudfunctions[0] == null ? null : module.cloudfunctions[0].function.id
  })
  parameters = templatefile("${path.module}/dashboards/parameters_v1.json", {
    RESOURCE_DATASET                 = observe_dataset.projects.id
    RESOURCE_ASSET_INVENTORY_DATASET = observe_dataset.resource_asset_inventory_records.id
    COMPUTE_DATASET                  = module.compute[0] == null ? null : module.compute[0].compute.id
    STORAGE_DATASET                  = module.storage[0] == null ? null : module.storage[0].storage.id
    CLOUD_SQL_DATASET                = module.cloudsql[0] == null ? null : module.cloudsql[0].cloudsql.id
    FUNCTION_DATASET                 = module.cloudfunctions[0] == null ? null : module.cloudfunctions[0].function.id
  })

  parameter_values = null
}

