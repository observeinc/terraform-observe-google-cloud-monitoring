resource "observe_monitor" "high_cpu" {
  count = local.enable_both ? 1 : 0
  is_template = true

  disabled    = var.metric_thresholds["CPU"].disabled
  description = "This monitor will alert on CPU usage above a certain threshold"
  inputs = {
    "Cloud SQL Metrics" = observe_dataset.cloud_sql_metrics[0].oid
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

resource "observe_monitor" "disk_quota" {
  count       = local.enable_both ? 1 : 0
  is_template = true
  disabled    = var.metric_thresholds["Disk_Quota"].disabled
  description = "This monitor will alert on percent of disk quota used above a certain threshold"
  inputs = {
    "Cloud SQL Metrics Wide" = observe_dataset.cloud_sql_metrics_wide[0].oid
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
