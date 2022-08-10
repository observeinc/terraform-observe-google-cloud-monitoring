# observe_monitor.cloud-sql-metrics-threshold-database-id-check:
resource "observe_monitor" "high_cpu" {
  count = local.enable_both ? 1 : 0

  disabled = var.metric_thresholds["CPU"].disabled

  inputs = {
    "Cloud SQL Metrics" = observe_dataset.cloudsql_metrics[0].oid
  }
  name      = format("(TEMPLATE) %s", format(var.name_format, "CPU Threshold"))
  workspace = var.workspace.oid

  notification_spec {
    importance = "informational"
    merge      = "separate"
  }

  rule {
    source_column = "value"

    group_by_group {
      columns = [
        "database_id",
        "project_id",
        "region"
      ]
    }

    threshold {
      compare_function = var.metric_thresholds["CPU"].compare_function
      compare_values = [
        var.metric_thresholds["CPU"].value,
      ]
      lookback_time = "5m0s"
    }
  }

  stage {
    pipeline = "filter metric = \"database_cpu_utilization\""
  }
}

# observe_monitor.cloud-sql-disk-quota-used:
resource "observe_monitor" "disk_quota" {
  count    = local.enable_both ? 1 : 0
  disabled = var.metric_thresholds["Disk_Quota"].disabled
  inputs = {
    "Cloud SQL Metrics Wide" = observe_dataset.cloudsql_metrics_wide[0].oid
  }

  name      = format("(TEMPLATE) %s", format(var.name_format, "Disk Quota Used"))
  workspace = var.workspace.oid
  notification_spec {
    importance = "informational"
    merge      = "separate"
  }

  rule {
    source_column = "value"

    group_by_group {
      columns = [
        "database_id",
        "project_id",
        "region"
      ]
    }

    threshold {
      compare_function = var.metric_thresholds["Disk_Quota"].compare_function
      compare_values = [
        var.metric_thresholds["Disk_Quota"].value,
      ]
      lookback_time = "5m0s"
    }
  }

  stage {}
}
