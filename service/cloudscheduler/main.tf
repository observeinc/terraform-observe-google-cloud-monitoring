locals {
  freshness = merge({
    cloudsql = "5m",
    metrics  = "1m",
    logging  = "1m",
  }, var.freshness_overrides)
}

resource "observe_dataset" "cloud_scheduler_jobs" {
  workspace   = var.workspace.oid
  name        = format(var.name_format, "Jobs")
  freshness   = lookup(var.freshness_overrides, "target_proxy", var.freshness_duration_default)
  description = "This dataset is used to create cloud scheduler job resources"

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
      make_col time:BUNDLE_TIMESTAMP, asset_inventory_name: name, ttl: 15m, time:BUNDLE_TIMESTAMP
      
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
