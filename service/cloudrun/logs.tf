resource "observe_dataset" "cloud_run_service_logs" {
  workspace   = local.datasets.cloud_run_service_logs.workspace
  name        = local.datasets.cloud_run_service_logs.name
  freshness   = local.datasets.cloud_run_service_logs.freshness
  description = local.datasets.cloud_run_service_logs.description

  inputs = {
    "logs" = var.google.logs.oid
  }

  stage {
    pipeline = <<-EOF
      filter resourceType = "cloud_run_revision" and contains(logName, "run.googleapis.com")

      make_col 
        serviceName:string(resourceLabels.service_name),
        revisionName:string(resourceLabels.revision_name),
        project_id:string(resourceLabels.project_id),
        location:string(resourceLabels.location),
        logType: split_part(logName,"%2F",2),
        logSource: split_part(split_part(logName,"%2F",1),'/', 4),
        latency:duration_sec(float64(split_part(httpRequest.latency,"s",1))),  
        requestMethod:string(httpRequest.requestMethod),
        requestUrl:string(httpRequest.requestUrl),
        responseSize:float64(httpRequest.responseSize),
        status:int64(httpRequest.status),
        null:httpRequest.null

      pick_col 
        timestamp,
        receiveTimestamp,
        project_id,
        location,
        serviceAssetKey:if(not is_null(serviceName) and serviceName != "", concat_strings("//run.googleapis.com/projects/", project_id, "/locations/", location, "/services/", serviceName), string_null()),
        revisionAssetKey:if(not is_null(revisionName) and revisionName != "", concat_strings("//run.googleapis.com/projects/", project_id, "/locations/", location, "/revisions/", revisionName), string_null()),
        serviceName,
        revisionName, 
        logType,
        logSource,
        severity,
        textPayload,
        httpRequest,
        requestMethod,
        status,
        responseSize,
        latency,
        requestUrl,
        trace

      add_key serviceAssetKey
      add_key revisionAssetKey
      add_key serviceName, revisionName
    EOF
  }
}


resource "observe_dataset" "cloud_run_audit_logs" {
  workspace   = local.datasets.cloud_run_audit_logs.workspace
  name        = local.datasets.cloud_run_audit_logs.name
  freshness   = local.datasets.cloud_run_audit_logs.freshness
  description = local.datasets.cloud_run_audit_logs.description

  inputs = {
    "logs" = var.google.logs.oid
  }

  stage {
    pipeline = <<-EOF
      // if protoPayload is not null, it's an audit log
      filter resourceType = "cloud_run_revision" and not is_null(protoPayload)

      make_col
        serviceName:string(resourceLabels.service_name),
        revisionName:string(resourceLabels.revision_name),
        project_id:string(resourceLabels.project_id),
        location:string(resourceLabels.location),
        logType: split_part(logName,"%2F",2),
        logSource: split_part(split_part(logName,"%2F",1),'/', 4)

      pick_col 
        timestamp,
        receiveTimestamp,
        logType,
        logSource,
        severity,
        protoPayload,
        project_id,
        location,
        serviceAssetKey:if(not is_null(serviceName) and serviceName != "", concat_strings("//run.googleapis.com/projects/", project_id, "/locations/", location, "/services/", serviceName), string_null()),
        revisionAssetKey:if(not is_null(revisionName) and revisionName != "", concat_strings("//run.googleapis.com/projects/", project_id, "/locations/", location, "/revisions/", revisionName), string_null()),
        serviceName,
        revisionName

      add_key serviceAssetKey
      add_key revisionAssetKey
      add_key serviceName, revisionName
    EOF
  }
}

resource "observe_link" "cloud_run_service_logs" {
  workspace = var.workspace.oid
  source    = observe_dataset.cloud_run_service_logs.oid
  target    = each.value.target
  fields    = each.value.fields
  label     = each.key
  for_each = merge(
    {
      "Service Instance" = {
        target = observe_dataset.cloud_run_service_instances.oid
        fields = ["serviceAssetKey"]
      }
    },
    {
      "Revision Instance" = {
        target = observe_dataset.cloud_run_revision_instances.oid
        fields = ["revisionAssetKey"]
      }
    }
  )
}


resource "observe_link" "cloud_run_audit_logs" {
  workspace = var.workspace.oid
  source    = observe_dataset.cloud_run_audit_logs.oid
  target    = each.value.target
  fields    = each.value.fields
  label     = each.key
  for_each = merge(
    {
      "Service Instance" = {
        target = observe_dataset.cloud_run_service_instances.oid
        fields = ["serviceAssetKey"]
      }
    },
    {
      "Revision Instance" = {
        target = observe_dataset.cloud_run_revision_instances.oid
        fields = ["revisionAssetKey"]
      }
    }
  )
}
