# observe_monitor.cloud-sql-metrics-threshold-database-id-check:
resource "observe_monitor_v2" "high_cpu" {
  count       = local.enable_both ? 0 : 0
  disabled    = true
  description = "This monitor will alert on CPU usage above a certain threshold"
  inputs = {
    "Compute Metrics" = observe_dataset.compute_metrics[0].oid
  }
  name                     = format("(TEMPLATE) %s", format(var.name_format, "Compute CPU Threshold"))
  workspace                = var.workspace.oid
  rule_kind                = "threshold"
  lookback_time            = "5m0s"
  data_stabilization_delay = local.datasets.compute_metrics.freshness

  groupings {
    column_path {
      name = "computeInstanceAssetKey"
    }
  }
  groupings {
    column_path {
      name = "project_id"
    }
  }
  groupings {
    column_path {
      name = "region"
    }
  }

  rules {
    level = "informational"

    threshold {
      aggregation       = "max"
      value_column_name = "cpu_utilization"

      compare_values {
        compare_fn = var.metric_thresholds["CPU"].compare_function
        value_float64 = [
          var.metric_thresholds["CPU"].value,
        ]
      }
    }
  }

  stage {
    pipeline = <<-EOT
      align 1m, frame(back: 1m), cpu_utilization_value:avg(m("instance_cpu_utilization"))
      aggregate cpu_utilization:avg(cpu_utilization_value), group_by(computeInstanceAssetKey, project_id, region)
    EOT
  }
}

# observe_monitor.cloud-sql-disk-quota-used:
# resource "observe_monitor" "disk_quota" {
#   count    = local.enable_both ? 1 : 0
#   disabled = var.metric_thresholds["Disk_Quota"].disabled
#   inputs = {
#     "Cloud SQL Metrics Wide" = observe_dataset.cloudsql_metrics_wide[0].oid
#   }

#   name      = format("(TEMPLATE) %s", format(var.name_format, "Disk Quota Used"))
#   workspace = var.workspace.oid
#   notification_spec {
#     importance = "informational"
#     merge      = "separate"
#   }

#   rule {
#     source_column = "value"

#     group_by_group {
#       columns = [
#         "database_id",
#         "project_id",
#         "region"
#       ]
#     }

#     threshold {
#       compare_function = var.metric_thresholds["Disk_Quota"].compare_function
#       compare_values = [
#         var.metric_thresholds["Disk_Quota"].value,
#       ]
#       lookback_time = "5m0s"
#     }
#   }

#   stage {}
# }
