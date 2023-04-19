locals {
  workspace                                  = var.workspace.oid
  cloud_sql_monitoring_dashboard_name        = format(var.name_format, "Monitoring")
  cloud_sql_monitoring_dashboard_description = "CloudSQL Instances Monitoring Dashboard"
  cloud_sql_monitoring_dashboard_enable      = 1
  dashboard_name_singleton                   = format(var.name_format, "Instance")
  cloud_sql_instance                         = observe_dataset.cloud_sql_instance.id
  cloud_sql_metrics                          = one(observe_dataset.cloud_sql_metrics[*].id)
  cloud_sql_metrics_combo                    = one(observe_dataset.cloud_sql_metrics_combo[*].id)
  cloud_sql_logs_error                       = observe_dataset.cloud_sql_logs_error.id
  cloud_sql_metrics_wide                     = one(observe_dataset.cloud_sql_metrics_wide[*].id)
  cloud_sql_logs_postgres_data_access        = observe_dataset.postgres_data_access_logs.id
}
