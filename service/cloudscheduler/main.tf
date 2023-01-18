locals {
  freshness = merge({}, var.freshness_overrides)
  workspace = var.workspace.oid
  /*

  workspace = local.datasets.REPLACE_WITH_DATASET_NAME.workspace
  name        = local.datasets.REPLACE_WITH_DATASET_NAME.name
  freshness   = local.datasets.REPLACE_WITH_DATASET_NAME.freshness
  description = local.datasets.REPLACE_WITH_DATASET_NAME.description

*/

  datasets = {
    cloud_scheduler_jobs = {
      workspace   = local.workspace
      name        = format(var.name_format, "Jobs")
      freshness   = lookup(local.freshness, "cloud_scheduler_jobs", var.freshness_default_duration)
      description = "This dataset is used to create cloud scheduler job resources"
    }

    cloudscheduler_logs = {
      workspace   = local.workspace
      name        = format(var.name_format, "Logs")
      freshness   = lookup(local.freshness, "cloudscheduler_logs", var.freshness_default_duration)
      description = "This dataset contains all logs generated for compute instances"
    }
  }

}

resource "observe_dataset" "cloud_scheduler_jobs" {
  workspace   = local.datasets.cloud_scheduler_jobs.workspace
  name        = local.datasets.cloud_scheduler_jobs.name
  freshness   = local.datasets.cloud_scheduler_jobs.freshness
  description = local.datasets.cloud_scheduler_jobs.description

  inputs = {
    "events" = var.google.pubsub_events.oid
  }

  # Upstream data: see https://github.com/observeinc/google-cloud-functions/pull/2
  stage {
    pipeline = <<-EOF
      filter attributes.observe_gcp_kind = "https://cloud.google.com/scheduler/docs/reference/rest/v1/projects.locations.jobs"

      make_col data2:parse_json(data)
      
      make_col attempt_deadline:string(data2.job.attemptDeadline),
          description:string(data2.job.description),
          http_target:string(data2.job.httpTarget),
          last_attempt_time:string(data2.job.lastAttemptTime),
          name:string(data2.job.name),
          project_id:string(data2.projectId),
          region:string(data2.locationId),
          schedule:string(data2.job.schedule),
          schedule_time:string(data2.job.scheduleTime),
          state:string(data2.job.state),
          status:string(data2.job.status),
          time_zone:string(data2.job.timeZone),
          user_update_time:string(data2.job.userUpdateTime)
      make_col code_value:int64(data2.job.status.code)
    EOF
  }

  stage {
    pipeline = <<-EOF
      make_col time:BUNDLE_TIMESTAMP, asset_inventory_name: name, ttl: 30m, time:BUNDLE_TIMESTAMP
      
      extract_regex name, /jobs\/(?P<job_name>[^\/]+)/

      set_valid_from options(max_time_diff:${var.max_time_diff}), time
  EOF
  }

  stage {
    pipeline = <<-EOF
      make_resource 
          project_id,
          region,
          job_name,
          description,
          attempt_deadline,
          deliveryAttempt,
          http_target,
          schedule,
          schedule_time,
          last_attempt_time,
          state,
          status,
          time_zone,
          user_update_time,
          primary_key(asset_inventory_name),
          valid_for(ttl)
    EOF
  }
}

resource "observe_link" "project" {
  for_each = {
    "CloudScheduler" = {
      target = var.google.projects.oid
      fields = ["project_id"]
    }
  }

  workspace = var.workspace.oid
  source    = observe_dataset.cloud_scheduler_jobs.oid
  target    = each.value.target
  fields    = each.value.fields
  label     = each.key
}
