output "pubsub_events" {
  value = module.this.pubsub_events
}

output "asset_inventory_records" {
  value = module.this.asset_inventory_records
}

output "resource_asset_inventory_records" {
  value = module.this.resource_asset_inventory_records
}

output "iam_policy_asset_inventory_records" {
  value = module.this.iam_policy_asset_inventory_records
}

output "logs" {
  value = module.this.logs
}

output "audit_logs" {
  value = module.this.audit_logs
}

output "metrics" {
  value = module.this.metrics
}

output "cloud_functions" {
  value = module.this.cloud_functions
}
