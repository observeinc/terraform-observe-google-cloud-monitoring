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
        make_col asset_inventory_name: string_concat("projects/",project_id,"/locations/",location,"/jobs/",job_id)

    EOF
  }

  stage {
    pipeline = <<-EOF
        pick_col 
            timestamp,
            project_id,
            asset_inventory_name,
            location,
            job_id,
            http_status,
            status,
            targetType,
            url
            
        add_key asset_inventory_name
        interface "log"
    EOF
  }
}

resource "observe_link" "job" {
  workspace = var.workspace.oid
  source    = observe_dataset.cloudscheduler_logs.oid
  target    = observe_dataset.cloud_scheduler_jobs.oid
  fields    = ["asset_inventory_name"]
  label     = "log"
}

