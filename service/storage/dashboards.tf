
locals {
  overview_json = local.enable_metrics ? jsondecode(templatefile("${path.module}/json/overview_dashboard.json", {
    dataset_id_storage_buckets = observe_dataset.storage.id
    dataset_id_storage_metrics = observe_dataset.storage_metrics[0].id
    dataset_id_storage_logs    = observe_dataset.storage_logs.id
    dataset_id_projects        = var.google.projects.id
  })) : jsondecode("{}")
}

resource "observe_dashboard" "storage_overview" {
  count            = local.enable_metrics ? 1 : 0
  name             = format(var.name_format, "Monitoring")
  workspace        = var.workspace.oid
  stages           = local.overview_json.stages
  layout           = local.overview_json.layout
  parameters       = local.overview_json.parameters
  parameter_values = local.overview_json.parameter_values
}

