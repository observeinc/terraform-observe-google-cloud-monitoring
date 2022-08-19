resource "observe_dashboard" "bigquery_project" {
  count            = local.enable_metrics ? 1 : 0
  name = format(var.name_format, "Project")
  workspace = var.workspace.oid
  stages = local.bigquery_project.stages
  layout = local.bigquery_project.layout
  parameters = local.bigquery_project.parameters
  parameter_values = local.bigquery_project.parameter_values
}

resource "observe_dashboard" "bigquery_dataset" {
  count            = local.enable_metrics ? 1 : 0
  name = format(var.name_format, "Dataset")
  workspace = var.workspace.oid
  stages = local.bigquery_dataset.stages
  layout = local.bigquery_dataset.layout
  parameters = local.bigquery_dataset.parameters
  parameter_values = local.bigquery_dataset.parameter_values
}

resource "observe_dashboard" "bigquery_singleton" {
  count            = local.enable_metrics ? 1 : 0
  name = format(var.name_format, "Project Overview")
  workspace = var.workspace.oid
  stages = local.bigquery_singleton.stages
  layout = local.bigquery_singleton.layout
  parameters = local.bigquery_singleton.parameters
  parameter_values = local.bigquery_singleton.parameter_values
}