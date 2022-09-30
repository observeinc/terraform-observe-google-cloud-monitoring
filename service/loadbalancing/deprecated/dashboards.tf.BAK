
locals {
  overview_json = local.enable_metrics ? jsondecode(templatefile("${path.module}/json/overview_dashboard.json", {
    dataset_google_load_balancing_load_balancers           = observe_dataset.load_balancers.id
    dataset_id_backend_services                            = observe_dataset.backend_services.id
    dataset_google_load_balancing_metrics                  = observe_dataset.load_balancing_metrics[0].id
    dataset_backup_google_load_balancing_health_checks     = observe_dataset.health_checks.id
    dataset_backup_google_load_balancing_config_audit_logs = observe_dataset.audit_logs.id
  })) : jsondecode("{}")
}

resource "observe_dashboard" "load_balancer_overview" {
  count            = local.enable_metrics ? 1 : 0
  name             = format(var.name_format, "Monitoring")
  workspace        = var.workspace.oid
  stages           = local.overview_json.stages
  layout           = local.overview_json.layout
  parameters       = local.overview_json.parameters
  parameter_values = local.overview_json.parameter_values
}
