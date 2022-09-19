resource "observe_monitor" "high_execution_times" {
  count = local.enable_both ? 1 : 0

  disabled    = var.metric_thresholds["Execution_Times"].disabled
  description = "This monitor will alert on Cloud Function execution times exceeding a specified amount of time"
  inputs = {
    "Function Metrics" = observe_dataset.cloud_functions_metrics[0].oid
  }
  name      = format("(TEMPLATE) %s", format(var.name_format, "Execution Times"))
  workspace = var.workspace.oid

  notification_spec {
    importance = "informational"
    merge      = "separate"
  }

  rule {
    source_column = "value"

    threshold {
      compare_function = "greater"
      compare_values = [
        var.metric_thresholds["Execution_Times"].value,
      ]
      lookback_time          = "5m0s"
      threshold_agg_function = "at_least_once"
    }
  }
  stage {
    pipeline = "filter metric = \"function_execution_times\""
  }
}
