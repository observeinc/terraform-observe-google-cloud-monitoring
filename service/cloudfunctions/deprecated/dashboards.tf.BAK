locals {
  enable_metrics = lookup(var.feature_flags, "metrics", true)
  # tflint-ignore: terraform_unused_declarations
  enable_monitors = lookup(var.feature_flags, "monitors", true)
  enable_both     = local.enable_monitors && local.enable_metrics

  functions_dashboard = local.enable_metrics ? jsondecode(templatefile("${path.module}/dashboards/GCPFunctionsMonitoring.json", {
    dataset_cloudfunctions_cloud_functions_function         = observe_dataset.function.id
    dataset_cloudfunctions_cloud_functions_function_metrics = observe_dataset.function_metrics[0].id
    dataset_cloudfunctions_cloud_functions_function_logs    = observe_dataset.function_logs.id
  })) : {}

}

resource "observe_dashboard" "functions" {
  count            = local.enable_metrics ? 1 : 0
  name             = format(var.name_format, "Monitoring")
  workspace        = var.workspace.oid
  stages           = local.functions_dashboard.stages
  layout           = local.functions_dashboard.layout
  parameters       = local.functions_dashboard.parameters
  parameter_values = local.functions_dashboard.parameter_values
}
