# The following variables should be in sync:
# - enable_service_* variable definitions in variables.tf
# - enable_service_* local variable definitions in enable.tf
# - enable_service_* local variable usages in enable.tf
# - enable_service_* variable definitions in apps/variables.tf
# - enable_service_* variable usages in apps/main.tf
locals {
  enable_service_bigquery = (
    var.enable_service_bigquery == true ||
    var.enable_service_bigquery ||
    lookup(var.services, "bigquery", false)
  )
  name_format_bigquery = lookup(var.service_name_formats, "bigquery", "BigQuery %s")

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
  # tflint-ignore: terraform_unused_declarations  
  enable_service_load_balancing = (
    var.enable_service_load_balancing == true ||
    # (var.enable_service_all == true && var.enable_service_load_balancing != false) ||
    lookup(var.services, "loadbalancer", false)
  )
  # tflint-ignore: terraform_unused_declarations
  name_format_load_balancing = lookup(var.service_name_formats, "load_balancing", "Load Balancing %s")

  enable_service_pubsub = (
    var.enable_service_pubsub == true ||
    lookup(var.services, "pubsub", false)
  )
  # tflint-ignore: terraform_unused_declarations
  name_format_pubsub = lookup(var.service_name_formats, "pub_sub", "PubSub %s")

  enable_service_cloudscheduler = (
    var.enable_service_cloudscheduler == true ||
    lookup(var.services, "cloud_scheduler", false)
  )
  # tflint-ignore: terraform_unused_declarations
  name_format_cloudscheduler = lookup(var.service_name_formats, "cloud_scheduler", "Cloud Scheduler %s")

  enable_service_gke = (
    var.enable_service_gke == true ||
    lookup(var.services, "gke", false)
  )
  # tflint-ignore: terraform_unused_declarations
  name_format_gke = lookup(var.service_name_formats, "gke", "GKE %s")

  enable_service_iam = (
    var.enable_service_iam == true ||
    lookup(var.services, "iam", false)
  )
  # tflint-ignore: terraform_unused_declarations
  name_format_iam = lookup(var.service_name_formats, "iam", "IAM %s")

  enable_service_billing = (
    var.enable_service_billing == true ||
    lookup(var.services, "billing", false)
  )
  # tflint-ignore: terraform_unused_declarations
  name_format_billing = lookup(var.service_name_formats, "billing", "Billing %s")
}

module "cloudfunctions" {
  count = local.enable_service_cloudfunctions ? 1 : 0

  source                     = "./service/cloudfunctions"
  workspace                  = var.workspace
  name_format                = format(var.name_format, local.name_format_cloudfunctions)
  max_expiry                 = var.max_expiry
  freshness_duration_default = var.freshness_duration_default
  feature_flags              = var.feature_flags

  google = local.base_module
}

module "cloudsql" {
  count = local.enable_service_cloudsql ? 1 : 0

  source                     = "./service/cloudsql"
  workspace                  = var.workspace
  name_format                = format(var.name_format, local.name_format_cloudsql)
  max_expiry                 = var.max_expiry
  freshness_duration_default = var.freshness_duration_default
  feature_flags              = var.feature_flags

  google = local.base_module
}

module "compute" {
  count = local.enable_service_compute ? 1 : 0

  source                     = "./service/compute"
  workspace                  = var.workspace
  name_format                = format(var.name_format, local.name_format_compute)
  max_expiry                 = var.max_expiry
  freshness_duration_default = var.freshness_duration_default
  feature_flags              = var.feature_flags
  # iam_asset_binding          = one(module.iam[*].asset_binding)

  google = local.base_module
}

module "storage" {
  count = local.enable_service_storage ? 1 : 0

  source                     = "./service/storage"
  workspace                  = var.workspace
  name_format                = format(var.name_format, local.name_format_storage)
  max_expiry                 = var.max_expiry
  freshness_duration_default = var.freshness_duration_default
  freshness_overrides        = var.freshness_overrides
  feature_flags              = var.feature_flags

  google = local.base_module
}

module "load_balancing" {
  count = local.enable_service_load_balancing ? 1 : 0

  source                     = "./service/loadbalancing"
  workspace                  = var.workspace
  name_format                = format(var.name_format, local.name_format_load_balancing)
  max_expiry                 = var.max_expiry
  freshness_duration_default = var.freshness_duration_default
  freshness_overrides        = var.freshness_overrides
  feature_flags              = var.feature_flags

  google = local.base_module
}

module "bigquery" {
  count                      = local.enable_service_bigquery ? 1 : 0
  source                     = "./service/bigquery"
  workspace                  = var.workspace
  name_format                = format(var.name_format, local.name_format_bigquery)
  max_expiry                 = var.max_expiry
  freshness_duration_default = var.freshness_duration_default
  # freshness_overrides = var.freshness_overrides
  feature_flags = var.feature_flags
  google        = local.base_module
}
module "pubsub" {
  count = local.enable_service_pubsub ? 1 : 0

  source                     = "./service/pubsub"
  workspace                  = var.workspace
  name_format                = format(var.name_format, local.name_format_pubsub)
  max_expiry                 = var.max_expiry
  freshness_duration_default = var.freshness_duration_default
  freshness_overrides        = var.freshness_overrides
  feature_flags              = var.feature_flags

  google = local.base_module
}

module "cloudscheduler" {
  count = local.enable_service_cloudscheduler ? 1 : 0

  source                     = "./service/cloudscheduler"
  workspace                  = var.workspace
  name_format                = format(var.name_format, local.name_format_cloudscheduler)
  max_expiry                 = var.max_expiry
  freshness_duration_default = var.freshness_duration_default
  freshness_overrides        = var.freshness_overrides

  google = local.base_module
}

module "gke" {
  count = local.enable_service_gke ? 1 : 0

  source                     = "./service/gke"
  workspace                  = var.workspace
  name_format                = format(var.name_format, local.name_format_gke)
  max_expiry                 = var.max_expiry
  freshness_duration_default = var.freshness_duration_default
  freshness_overrides        = var.freshness_overrides

  google = merge(local.base_module, {
    compute_instance_group                  = one(module.compute[*].compute_instance_group)
    compute_instance                        = one(module.compute[*].compute)
    compute_metrics                         = one(module.compute[*].compute_metrics)
    compute_instance_group_link_to_instance = one(module.compute[*].compute_instance_group_link_to_instance)
    compute_instance_link_to_disk           = one(module.compute[*].compute_instance_link_to_disk)
  })

}

module "iam" {
  count = local.enable_service_iam ? 1 : 0

  source                     = "./service/iam"
  workspace                  = var.workspace
  name_format                = format(var.name_format, local.name_format_iam)
  max_expiry                 = var.max_expiry
  freshness_duration_default = var.freshness_duration_default
  freshness_overrides        = var.freshness_overrides

  google = local.base_module
}

module "billing" {
  count = local.enable_service_billing ? 1 : 0

  source                     = "./service/billing"
  workspace                  = var.workspace
  name_format                = format(var.name_format, local.name_format_billing)
  # max_expiry                 = var.max_expiry
  freshness_duration_default = var.freshness_duration_default
  freshness_overrides        = var.freshness_overrides

  google = local.base_module
}

