locals {
  dashboard_name                  = format(var.name_format, "Monitoring")
  dashboard_name_singleton        = format(var.name_format, "Instance")
  redis_instance                  = resource.observe_dataset.redis_instance.id
  redis_metrics                   = one(resource.observe_dataset.redis_metrics).id
  dashboard_description           = "Monitoring dashboard for Redis"
  dashboard_description_singleton = "Instance dashboard for Redis"
}

resource "observe_default_dashboard" "monitoring" {
  dashboard = observe_dashboard.redis_monitoring.oid
  dataset   = resource.observe_dataset.redis_instance.oid
}