locals {
  workspace = var.workspace.oid
  workspace_id                 = var.workspace.id
  datastream_dataset_id        = regex("[^:]+$", var.datastream.dataset)
  datastream_name              = regex("[^//]+$", var.datastream.name)
  asset_inventory              = observe_dataset.base_asset_inventory_records.id
  logs                         = observe_dataset.logs.id
  dashboard_name_home         = format(var.name_format, "App Home")
  dashboard_name_resources    = format(var.name_format, "Resource Monitoring")
  dashboard_name_projects     = format(var.name_format, "Project Monitoring")
  resources_asset_inventory   = observe_dataset.resources_asset_inventory.id
  metrics                     = observe_dataset.metrics.id
  projects_collection_enabled = resource.observe_dataset.projects_collection_enabled.id
  pubsub_service_quota_metrics = one(module.pubsub[*].pubsub_service_quota_metrics.id)
  pubsub_topics                = one(module.pubsub[*].pubsub.id)
  compute_instance             = one(module.compute[*].compute.id)
  compute_metrics              = one(module.compute[*].compute_metrics.id)
  cloud_functions_metrics      = one(module.cloudfunctions[*].function_metrics.id)
  cloud_functions_instances    = one(module.cloudfunctions[*].function.id)
  cloud_functions_logs         = one(module.cloudfunctions[*].function_logs.id)
  storage_buckets              = one(module.storage[*].storage.id)
  storage_metrics              = one(module.storage[*].storage_metrics.id)
  cloud_sql_instance           = one(module.cloudsql[*].cloudsql.id)
  cloud_sql_metrics            = one(module.cloudsql[*].cloudsql_metrics.id)
  cloud_sql_metrics_combo      = one(module.cloudsql[*].cloudsql_metrics_combo.id)
  cloud_scheduler_jobs         = one(module.cloudscheduler[*].cloud_scheduler_jobs.id)
}
