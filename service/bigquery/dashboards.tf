locals {
  bigquery_project = jsondecode(templatefile("${path.module}/dashboards/BigQuery-Project.json",{
    dataset_bigquery_bigquery_logs        = observe_dataset.bigquery_logs.id
    dataset_bigquery_bigquery_metrics = observe_dataset.bigquery_metrics[0].id
    dataset_bigquery_project = var.google.projects.id
  }))
    bigquery_dataset = jsondecode(templatefile("${path.module}/dashboards/BigQuery-Project.json",{
         dataset_bigquery_project = var.google.projects.id
    dataset_bigquery_bigquery_logs        = observe_dataset.bigquery_logs.id
    dataset_bigquery_bigquery_metrics = observe_dataset.bigquery_metrics[0].id
    dataset_bigquery_dataset = observe_dataset.bigquery_dataset.id
  }))
	}

resource "observe_dashboard" "bigquery_project" {
  count            = local.enable_metrics ? 1 : 0
  name = "BigQuery Project"
  workspace = var.workspace.oid
  stages = local.bigquery_project.stages
  layout = local.bigquery_project.layout
  parameters = local.bigquery_project.parameters
  parameter_values = local.bigquery_project.parameter_values
}

resource "observe_dashboard" "bigquery_dataset" {
  count            = local.enable_metrics ? 1 : 0
  name = "BigQuery Dataset"
  workspace = var.workspace.oid
  stages = local.bigquery_dataset.stages
  layout = local.bigquery_dataset.layout
  parameters = local.bigquery_dataset.parameters
  parameter_values = local.bigquery_dataset.parameter_values
}