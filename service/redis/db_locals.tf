locals {
  dashboard_name        = format(var.name_format, "Monitoring")
  redis_instance        = resource.observe_dataset.redis_instance.id
  redis_metrics         = one(resource.observe_dataset.redis_metrics).id
  dashboard_description = "Monitoring dashboard for Redis"
}