locals {
  
  freshness = merge({}, var.freshness_overrides)
  workspace = var.workspace.oid

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








