resource "observe_dashboard" "monitoring" {
  count     = local.enable_metrics ? 1 : 0
  workspace = var.workspace.oid
  name      = format(var.name_format, "Monitoring")
  stages = templatefile("${path.module}/dashboards/stages_v1.json", {
    RESOURCE_DATASET = observe_dataset.compute.id
    METRICS_DATASET  = local.enable_metrics == true ? observe_dataset.compute_metrics[0].id : null
    LOGS_DATASET     = observe_dataset.compute_logs.id
  })
  layout = templatefile("${path.module}/dashboards/layout_v1.json", {
    RESOURCE_DATASET = observe_dataset.compute.id
    METRICS_DATASET  = local.enable_metrics == true ? observe_dataset.compute_metrics[0].id : null
    LOGS_DATASET     = observe_dataset.compute_logs.id
  })
  parameters = templatefile("${path.module}/dashboards/parameters_v1.json", {
    RESOURCE_DATASET = observe_dataset.compute.id
    METRICS_DATASET  = local.enable_metrics == true ? observe_dataset.compute_metrics[0].id : null
    LOGS_DATASET     = observe_dataset.compute_logs.id
  })

  # parameter_values = templatefile("${path.module}//Users/arthur/content_eng/terraform-observe-google/service/compute/dashboards/parameterValues_v1.json", {
  #
  #})
}

resource "observe_default_dashboard" "compute" {
  dataset   = observe_dataset.compute.oid
  dashboard = resource.observe_dashboard.monitoring[0].oid
}

