# The following should be in-sync:
# - outputs in outputs.tf
# - outputs in app/outputs.tf

output "pubsub_events" {
  value = observe_dataset.base_pubsub_events
}

output "asset_inventory_records" {
  value = observe_dataset.base_asset_inventory_records
}

output "resource_asset_inventory_records" {
  value = observe_dataset.resource_asset_inventory_records
}

output "iam_policy_asset_inventory_records" {
  value = observe_dataset.iam_policy_asset_inventory_records
}

output "logs" {
  value = observe_dataset.logs
}

output "audit_logs" {
  value = observe_dataset.audit_logs
}

output "metrics" {
  value = observe_dataset.metrics
}

output "distribution_metrics" {
  value = observe_dataset.process_distribution_metrics
}

output "cloud_functions" {
  value = local.enable_service_cloudfunctions ? module.cloudfunctions[0] : null
}

output "cloud_run" {
  value = local.enable_service_cloudrun ? module.cloudrun[0] : null
}

output "cloud_sql" {
  value = local.enable_service_cloudsql ? module.cloudsql[0] : null
}

output "compute" {
  value = local.enable_service_compute ? module.compute[0] : null
}

output "projects" {
  value = observe_dataset.projects_collection_enabled
}

output "storage" {
  value = local.enable_service_storage ? module.storage[0] : null
}

output "loadbalancer" {
  value = local.enable_service_load_balancing ? module.load_balancing[0] : null
}

output "gke" {
  value = local.enable_service_gke ? module.gke[0] : null
}

output "redis" {
  value = local.enable_service_redis ? module.redis[0] : null
}


# output "memcache" {
#   value = local.enable_service_memcache ? module.memcache[0] : null
# }
