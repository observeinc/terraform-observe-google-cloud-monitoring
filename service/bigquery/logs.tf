resource "observe_dataset" "bigquery_audit_logs" {
  workspace   = local.datasets.bigquery_audit_logs.workspace
  name        = local.datasets.bigquery_audit_logs.name
  freshness   = local.datasets.bigquery_audit_logs.freshness
  description = local.datasets.bigquery_audit_logs.description

  inputs = {
    "events" = var.google.logs.oid
  }

  stage {
    input    = "events"
    pipeline = <<-EOF
    filter contains(resourceType, "bigquery") and not is_null(protoPayload)

    make_col 
        project_id : string(resourceLabels.project_id),
        location : string(resourceLabels.location),
        dataset_id : string(resourceLabels.dataset_id),
        resourceLabels : drop_fields(resourceLabels, "project_id", "location", "dataset_id")
        
    pick_col 
        timestamp, 
        severity,
        protoPayload,
        project_id,
        dataset_id,
        location,
        logName,
        insertId,
        messageId
    EOF
  }

  stage {
    pipeline = <<-EOF
      make_col principalEmail:string(protoPayload.authenticationInfo.principalEmail),
          authorizationInfo:protoPayload.authorizationInfo,
          metadata:protoPayload.metadata,
          methodName:string(protoPayload.methodName),
          requestMetadata:protoPayload.requestMetadata,
          resourceName:string(protoPayload.resourceName),
          serviceData:protoPayload.serviceData
          
      pick_col
          timestamp, 
          severity,
          metadata,
          methodName,
          requestMetadata,
          resourceName,
          serviceData,
          principalEmail,
          authorizationInfo,
          project_id,
          dataset_id,
          location
    EOF
  }
}


resource "observe_dataset" "bigquery_job_logs" {
  workspace   = local.datasets.bigquery_job_logs.workspace
  name        = local.datasets.bigquery_job_logs.name
  freshness   = local.datasets.bigquery_job_logs.freshness
  description = local.datasets.bigquery_job_logs.description

  inputs = {
    "events" = var.google.logs.oid
  }

  stage {
    input    = "events"
    pipeline = <<-EOF
    filter contains(resourceType, "bigquery") and not is_null(jsonPayload)

    make_col 
        project_id : string(resourceLabels.project_id),
        location : string(resourceLabels.location),
        dataset_id : string(resourceLabels.dataset_id),
        resourceLabels : drop_fields(resourceLabels, "project_id", "location", "dataset_id")
        
    pick_col 
        timestamp, 
        severity,
        message:string(jsonPayload.message),
        project_id,
        location
    EOF
  }
}


resource "observe_link" "bigquery_audit_logs" {
  workspace = var.workspace.oid
  source    = observe_dataset.bigquery_audit_logs.oid
  target    = each.value.target
  fields    = each.value.fields
  label     = each.key

  for_each = merge(
    {
      "BigQuery Dataset" = {
        target = observe_dataset.bigquery_dataset.oid
        fields = ["dataset_id", "project_id"]
      }
      "GCP Project" = {
        target = var.google.projects.oid
        fields = ["project_id"]
      }
    }
  )
}

resource "observe_link" "bigquery_job_logs" {
  workspace = var.workspace.oid
  source    = observe_dataset.bigquery_job_logs.oid
  target    = each.value.target
  fields    = each.value.fields
  label     = each.key

  for_each = merge(
    {
      "GCP Project" = {
        target = var.google.projects.oid
        fields = ["project_id"]
      }
    }
  )
}