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

output "cloud_functions" {
  value = local.enable_service_cloudfunctions ? module.cloudfunctions[0] : null
}

output "cloud_sql" {
  value = local.enable_service_cloudsql ? module.cloudsql[0] : null
}
