resource "observe_monitor_v2" "high_cpu" {
  count       = local.enable_both ? 1 : 0
  disabled    = true
  description = "This monitor will alert on CPU usage above a certain threshold"
  inputs = {
    "Cloud SQL Metrics" = observe_dataset.cloud_sql_metrics[0].oid
  }
  name                     = format("(TEMPLATE) %s", format(var.name_format, "Cloud SQL CPU Threshold"))
  workspace                = var.workspace.oid
  rule_kind                = "threshold"
  lookback_time            = "5m0s"
  data_stabilization_delay = local.datasets.cloud_sql_metrics.freshness

  groupings {
    column_path {
      name = "database_id"
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
      align 1m, frame(back: 1m), cpu_utilization_value:avg(m("database_cpu_utilization"))
      aggregate cpu_utilization:avg(cpu_utilization_value), group_by(database_id, project_id, region)
    EOT
  }
}

resource "observe_monitor_v2" "disk_quota" {
  count       = local.enable_both ? 1 : 0
  disabled    = true
  description = "This monitor will alert on percent of disk quota used above a certain threshold"
  inputs = {
    "Cloud SQL Metrics" = observe_dataset.cloud_sql_metrics[0].oid
  }

  name                     = format("(TEMPLATE) %s", format(var.name_format, "Disk Quota Used"))
  workspace                = var.workspace.oid
  rule_kind                = "threshold"
  lookback_time            = "5m0s"
  data_stabilization_delay = local.datasets.cloud_sql_metrics.freshness

  groupings {
    column_path {
      name = "database_id"
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
      value_column_name = "disk_quota_used_fraction"

      compare_values {
        compare_fn = var.metric_thresholds["Disk_Quota"].compare_function
        value_float64 = [
          var.metric_thresholds["Disk_Quota"].value,
        ]
      }
    }
  }

  scheduling {
    scheduled {
      alarm_mode = "ongoing"
      raw_cron   = "* * * * *"
      timezone   = "UTC"
    }
  }

  stage {
    pipeline = <<-EOT
      align 1m, frame(back: 1m),
        disk_bytes_used:avg(m("database_disk_bytes_used")),
        disk_quota_bytes:avg(m("database_disk_quota"))
      aggregate disk_bytes_used:avg(disk_bytes_used),
        disk_quota_bytes:avg(disk_quota_bytes),
        group_by(database_id, project_id, region)
      make_col disk_quota_used_fraction:if(disk_quota_bytes > 0, float64(disk_bytes_used) / float64(disk_quota_bytes), float64_null())
    EOT
  }
}
