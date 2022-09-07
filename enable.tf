# The following variables should be in sync:
# - enable_service_* variable definitions in variables.tf
# - enable_service_* local variable definitions in enable.tf
# - enable_service_* local variable usages in enable.tf
# - enable_service_* variable definitions in apps/variables.tf
# - enable_service_* variable usages in apps/main.tf
locals {
  enable_service_cloudfunctions = (
    var.enable_service_cloudfunctions == true ||
    # (var.enable_service_all == true && var.enable_service_cloudfunctions != false) ||
    lookup(var.services, "cloudfunctions", false)
  )
  name_format_cloudfunctions = lookup(var.service_name_formats, "cloudfunctions", "Cloud Functions %s")

  enable_service_cloudsql = (
    var.enable_service_cloudsql == true ||
    # (var.enable_service_all == true && var.enable_service_cloudsql != false) ||
    lookup(var.services, "cloudsql", false)
  )
  name_format_cloudsql = lookup(var.service_name_formats, "cloudsql", "Cloud SQL %s")

  enable_service_compute = (
    var.enable_service_compute == true ||
    # (var.enable_service_all == true && var.enable_service_compute != false) ||
    lookup(var.services, "compute", false)
  )
  name_format_compute = lookup(var.service_name_formats, "compute", "Compute %s")

  enable_service_storage = (
    var.enable_service_storage == true ||
    # (var.enable_service_all == true && var.enable_service_storage != false) ||
    lookup(var.services, "storage", false)
  )
  name_format_storage = lookup(var.service_name_formats, "storage", "Storage %s")

  enable_service_load_balancing = (
    var.enable_service_load_balancing == true ||
    # (var.enable_service_all == true && var.enable_service_load_balancing != false) ||
    lookup(var.services, "loadbalancer", false)
  )
  name_format_load_balancing = lookup(var.service_name_formats, "load_balancing", "Load Balancing %s")
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

module "compute" {
  count = local.enable_service_compute ? 1 : 0

  source            = "./service/compute"
  workspace         = var.workspace
  name_format       = format(var.name_format, local.name_format_compute)
  max_expiry        = var.max_expiry
  freshness_default = var.freshness_default
  feature_flags     = var.feature_flags

  google = local.base_module
}

module "storage" {
  count = local.enable_service_storage ? 1 : 0

  source              = "./service/storage"
  workspace           = var.workspace
  name_format         = format(var.name_format, local.name_format_storage)
  max_expiry          = var.max_expiry
  freshness_default   = var.freshness_default
  freshness_overrides = var.freshness_overrides
  feature_flags       = var.feature_flags

  google = local.base_module
}

module "load_balancing" {
  count = local.enable_service_load_balancing ? 0 : 0

  source              = "./service/loadbalancing"
  workspace           = var.workspace
  name_format         = format(var.name_format, local.name_format_load_balancing)
  max_expiry          = var.max_expiry
  freshness_default   = var.freshness_default
  freshness_overrides = var.freshness_overrides
  feature_flags       = var.feature_flags

  google = local.base_module
}
