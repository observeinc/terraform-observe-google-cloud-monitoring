
locals {
  overview_json = local.enable_metrics ? jsondecode(templatefile("${path.module}/json/overview_dashboard.json", {
    dataset_id_load_balancers         = observe_dataset.load_balancers.id
    dataset_id_backend_services       = observe_dataset.backend_services.id
    dataset_id_load_balancing_metrics = observe_dataset.load_balancing_metrics[0].id
    dataset_id_health_check_logs      = observe_dataset.health_check_logs.id
    dataset_id_gcp_logs               = var.google.logs.id
  })) : jsondecode("{}")
}
# dataset_id_load_balancers: 41103057
# dataset_id_backend_services: 41103063
# dataset_id_load_balancing_metrics: 41103064
# dataset_id_health_check_logs: 41112560
# dataset_id_gcp_logs: 41103047

resource "observe_dashboard" "load_balancer_overview" {
  count            = local.enable_metrics ? 1 : 0
  name             = format(var.name_format, "Monitoring")
  workspace        = var.workspace.oid
  stages           = local.overview_json.stages
  layout           = local.overview_json.layout
  parameters       = local.overview_json.parameters
  parameter_values = local.overview_json.parameter_values
}
