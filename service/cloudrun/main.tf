locals {
  # creates a map of dashboards to deploy
  # dashboards = {
  #   for k, v in {
  #     dashboard_service_instances  = { name = "Service Instance" }
  #     dashboard_revision_instances = { name = "Revision Instance" }
  #   } : k =>
  #   {
  #     create   = lookup(v, "create", true)
  #     name     = format(var.name_format, v.name)
  #     datasets = data.observe_oid.datasets
  #   }
  # }
  # google = merge(var.google, {
  #   cloud_run_service_instances  = observe_dataset.cloud_run_service_instances
  #   cloud_run_revision_instances = observe_dataset.cloud_run_revision_instances
  #   cloud_run_metrics            = observe_dataset.cloud_run_metrics
  # })

  #cloud_run_service_instances = resource.observe_dataset.cloud_run_service_instances.id
  #cloud_functions_metrics   = resource.observe_dataset.cloud_functions_metrics[0].id
  #cloud_functions_logs      = resource.observe_dataset.cloud_functions_function_logs.id
  #dashboard_name            = format(var.name_format, "Monitoring")

  freshness = merge({}, var.freshness_overrides)
  workspace = var.workspace.oid

  /*
  workspace = local.datasets.REPLACE_WITH_DATASET_NAME.workspace
  name        = local.datasets.REPLACE_WITH_DATASET_NAME.name
  freshness   = local.datasets.REPLACE_WITH_DATASET_NAME.freshness
  description = local.datasets.REPLACE_WITH_DATASET_NAME.description
*/

  datasets = {
    cloud_run_service_instances = {
      workspace   = local.workspace
      name        = format(var.name_format, "Service Instances")
      freshness   = lookup(local.freshness, "cloud_run_service_instances", var.freshness_default_duration)
      description = "This dataset is used to create Cloud Run Service instances"
    }

    cloud_run_revision_instances = {
      workspace   = local.workspace
      name        = format(var.name_format, "Revision Instances")
      freshness   = lookup(local.freshness, "cloud_run_revision_instances", var.freshness_default_duration)
      description = "This dataset is used to create Cloud Run Revision instances"
    }

    cloud_run_metrics = {
      workspace   = local.workspace
      name        = format(var.name_format, "Metrics")
      freshness   = lookup(local.freshness, "cloud_run_metrics", var.freshness_default_duration)
      description = "This dataset contains metrics collected for Cloud Run"
    }

    cloud_run_service_logs = {
      workspace   = local.workspace
      name        = format(var.name_format, "Logs")
      freshness   = lookup(local.freshness, "cloud_run_service_logs", var.freshness_default_duration)
      description = "This dataset contains run logs generated by Cloud Run services"
    }

    cloud_run_audit_logs = {
      workspace   = local.workspace
      name        = format(var.name_format, "Audit Logs")
      freshness   = lookup(local.freshness, "cloud_run_audit_logs", var.freshness_default_duration)
      description = "This dataset contains audit logs generated by Cloud Run operations"
    }

  }
}

# this takes a list of datasets that are outputs from gcp app
# and formats them as a map of datsets with key of dataset name and properties of
# id / oid / type / version
# data "observe_oid" "datasets" {
#   for_each = merge(
#     { for k, v in local.google : k => v }
#   )
#   oid = each.value.oid
# }







