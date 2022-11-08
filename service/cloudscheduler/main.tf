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

  stage {
    pipeline = <<-EOF
      filter attributes.OBSERVATION_KIND = "gcpCloudSchedulerJobs"

      make_col data2: parse_json(data)
      
      flatten_single data2

      make_col attempt_deadline:string(_c_data2_value.attempt_deadline),
          description:string(_c_data2_value.description),
          http_target:string(_c_data2_value.http_target),
          last_attempt_time:string(_c_data2_value.last_attempt_time),
          name:string(_c_data2_value.name),
          project_id:string(_c_data2_value.project_id),
          region:string(_c_data2_value.region),
          schedule:string(_c_data2_value.schedule),
          schedule_time:string(_c_data2_value.schedule_time),
          state: int64(_c_data2_value.state),
          state_text:case(
            int64(_c_data2_value.state) = 0, "DISABLED",
            int64(_c_data2_value.state) = 1, "ENABLED",
            int64(_c_data2_value.state) = 2, "PAUSED",
            int64(_c_data2_value.state) = 3, "STATE_UNSPECIFIED",
            int64(_c_data2_value.state) = 4, "UPDATE_FAILED",
            true, "UNKNOWN"
            ),
          status:string(_c_data2_value.status),
          time_zone:string(_c_data2_value.time_zone),
          user_update_time:string(_c_data2_value.user_update_time)
      
      extract_regex status, /(?P<code_value>\d+)/

      make_col code_value: int64(code_value)

      make_col code_text: case (
        is_null(code_value), "OK", 
        code_value = 0, "OK",	
        code_value = 1, "CANCELLED",
        code_value = 2, "UNKNOWN",
        code_value = 3, "INVALID_ARGUMENT",
        code_value = 4, "DEADLINE_EXCEEDED",
        code_value = 5, "NOT_FOUND",
        code_value = 6, "ALREADY_EXISTS",
        code_value = 7, "PERMISSION_DENIED",
        code_value = 8, "UNAUTHENTICATED",
        code_value = 9, "RESOURCE_EXHAUSTED",
        code_value = 10, "FAILED_PRECONDITION",
        code_value = 11, "ABORTED",
        code_value = 12, "OUT_OF_RANGE",
        code_value = 13, "UNIMPLEMENTED",
        code_value = 14, "INTERNAL",
        code_value = 15, "UNAVAILABLE",
        code_value = 16, "DATA_LOSS",
        true, "UNKNOWN")

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
          status_text: code_text,
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
