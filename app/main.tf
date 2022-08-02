module "this" {
  source      = "../"
  workspace   = var.workspace
  datastream  = var.datastream
  name_format = "gcp/%s"

  max_expiry        = var.max_expiry_duration
  max_time_diff     = var.max_time_diff_duration
  freshness_default = var.freshness_default_duration

  enable_service_cloudfunctions = var.enable_service_cloudfunctions
  enable_service_cloudsql       = var.enable_service_cloudsql
  enable_service_compute        = var.enable_service_compute
}
