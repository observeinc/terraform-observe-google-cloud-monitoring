locals {
  enable_service_cloudfunctions = (
    var.enable_service_cloudfunctions == true ||
    (var.enable_service_all == true && var.enable_service_cloudfunctions != false) ||
    lookup(var.services, "cloudfunctions", false)
  )
  name_format_cloudfunctions = lookup(var.service_name_formats, "cloudfunctions", "Cloud Functions %s")
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
