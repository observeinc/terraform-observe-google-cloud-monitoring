resource "observe_monitor" "high_execution_times" {
  count = local.enable_both ? 1 : 0

  disabled    = var.metric_thresholds["Execution_Times"].disabled
  description = "This monitor will alert on Cloud Function execution times exceeding a specified amount of time"
  inputs = {
    "Function Metrics" = observe_dataset.function_metrics[0].oid
  }
  name      = format("(TEMPLATE) %s", format(var.name_format, "Function Execution Times"))
  workspace = var.workspace.oid

  notification_spec {
    importance = "informational"
    merge      = "separate"
  }

  rule {
    source_column = "value"

    threshold {
      compare_function = var.metric_thresholds["Execution_Times"].compare_function
      compare_values = [
        var.metric_thresholds["Execution_Times"].value,
      ]
      lookback_time = "5m0s"
    }
  }

  stage {
    pipeline = "filter metric = \"metric-function_execution_times\""
  }
}
