
resource "observe_dataset" "storage_logs" {
  workspace   = local.datasets.storage_logs.workspace
  name        = local.datasets.storage_logs.name
  freshness   = local.datasets.storage_logs.freshness
  description = local.datasets.storage_logs.description

  inputs = {
    "logs" = var.google.logs.oid
  }

  stage {
    pipeline = <<-EOF
      filter resourceType = "gcs_bucket"

      make_col 
        bucket_name:string(resourceLabels.bucket_name),
        project_id:string(resourceLabels.project_id),
        region:string(resourceLabels.location)

      pick_col 
        timestamp,
        receiveTimestamp,
        logName,
        severity,
        textPayload,
        protoPayload,
        project_id,
        region,
        bucket_name
      
      interface "log", "structured_log": protoPayload
    EOF
  }
}

resource "observe_link" "storage_logs" {
  workspace = var.workspace.oid
  source    = observe_dataset.storage_logs.oid
  target    = each.value.target
  fields    = each.value.fields
  label     = each.key

  for_each = {
    "Bucket" = {
      target = observe_dataset.storage_buckets.oid
      fields = ["bucket_name"]
    }
  }
}
