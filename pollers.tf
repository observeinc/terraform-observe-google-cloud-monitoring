module "pollers" {
  source                       = "./modules/pollers"
  workspace                    = var.workspace
  datastream                   = var.datastream
  name_format                  = var.name_format
  collection                   = var.collection
  interval_duration            = var.metrics_poller_interval_duration
  include_metric_type_prefixes = var.metrics_poller_include_metric_type_prefixes
  exclude_metric_type_prefixes = var.metrics_poller_exclude_metric_type_prefixes
}
