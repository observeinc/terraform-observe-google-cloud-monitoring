resource "observe_monitor_v2" "high_execution_times" {
  count       = local.enable_both ? 1 : 0
  disabled    = true
  description = "This monitor will alert on Cloud Function execution times exceeding a specified amount of time"
  inputs = {
    "Function Metrics" = observe_dataset.cloud_functions_metrics[0].oid
  }
  name                     = format("(TEMPLATE) %s", format(var.name_format, "Execution Times"))
  workspace                = var.workspace.oid
  rule_kind                = "threshold"
  lookback_time            = "5m0s"
  data_stabilization_delay = local.datasets.cloud_functions_metrics.freshness

  rules {
    level = "informational"

    threshold {
      aggregation       = "max"
      value_column_name = "execution_time_ns"

      compare_values {
        compare_fn = "greater"
        value_float64 = [
          var.metric_thresholds["Execution_Times"].value,
        ]
      }
    }
  }
  stage {
    pipeline = <<-EOT
      align 1m, frame(back: 1m), execution_time_ns:avg(m("function_execution_times"))
      aggregate execution_time_ns:max(execution_time_ns), group_by()
    EOT
  }
}
