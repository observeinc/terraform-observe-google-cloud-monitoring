locals {
  workspace                           = var.workspace.oid
  dashboard_name_monitoring           = format(var.name_format, "Monitoring")
  dashboard_name_singleton            = format(var.name_format, "Instance")
  cloud_sql_instance                  = observe_dataset.cloud_sql_instance.id
  cloud_sql_metrics                   = one(observe_dataset.cloud_sql_metrics[*].id)
  cloud_sql_metrics_combo             = one(observe_dataset.cloud_sql_metrics_combo[*].id)
  cloud_sql_logs_error                = observe_dataset.cloud_sql_logs_error.id
  cloud_sql_logs_postgres_data_access = observe_dataset.postgres_data_access_logs.id
}
