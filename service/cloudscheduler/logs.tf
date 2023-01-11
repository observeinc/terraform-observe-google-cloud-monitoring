resource "observe_dataset" "cloudscheduler_logs" {
  workspace   = local.datasets.cloudscheduler_logs.workspace
  name        = local.datasets.cloudscheduler_logs.name
  freshness   = local.datasets.cloudscheduler_logs.freshness
  description = local.datasets.cloudscheduler_logs.description

  inputs = {
    "logs" = var.google.logs.oid
  }

  stage {
    pipeline = <<-EOF

        filter resourceType = "cloud_scheduler_job"
        filter not is_null(httpRequest)

        make_col resourceLabelsJson: parse_json(string(resourceLabels))

        make_col 
            status:string(jsonPayload.status),
            targetType:string(jsonPayload.targetType),
            url:string(jsonPayload.url)
            
        make_col job_id:string(resourceLabelsJson.job_id),
            location:string(resourceLabelsJson.location),
            project_id:string(resourceLabelsJson.project_id)
            
        make_col http_status:int64(httpRequest.status)

    EOF
  }

  stage {
    pipeline = <<-EOF
        pick_col 
            timestamp,
            project_id,
            location,
            job_id,
            http_status,
            status,
            targetType,
            url
    EOF
  }
}

