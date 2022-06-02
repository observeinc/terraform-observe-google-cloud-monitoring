locals {
  enable_service_cloudfunctions = (
    var.enable_service_cloudfunctions == true ||
    (var.enable_service_all == true && var.enable_service_cloudfunctions != false) ||
    lookup(var.services, "cloudfunctions", false)
  )
  name_format_cloudfunctions = lookup(var.service_name_formats, "cloudfunctions", "Cloud Functions %s")

  enable_service_cloudsql = (
    var.enable_service_cloudsql == true ||
    (var.enable_service_all == true && var.enable_service_cloudsql != false) ||
    lookup(var.services, "cloudsql", false)
  )
  name_format_cloudsql = lookup(var.service_name_formats, "cloudsql", "Cloud SQL %s")
}

module "cloudfunctions" {
  count = local.enable_service_cloudfunctions ? 1 : 0

  source            = "./service/cloudfunctions"
  workspace         = var.workspace
  name_format       = format(var.name_format, local.name_format_cloudfunctions)
  max_expiry        = var.max_expiry
  freshness_default = var.freshness_default
  feature_flags     = var.feature_flags

  google = local.base_module
}

module "cloudsql" {
  count = local.enable_service_cloudsql ? 1 : 0

  source            = "./service/cloudsql"
  workspace         = var.workspace
  name_format       = format(var.name_format, local.name_format_cloudsql)
  max_expiry        = var.max_expiry
  freshness_default = var.freshness_default
  feature_flags     = var.feature_flags

  google = local.base_module
}

