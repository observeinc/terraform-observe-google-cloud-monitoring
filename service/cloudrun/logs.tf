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
      filter resourceType = "cloud_run_revision" 

      make_col 
        serviceName:string(resourceLabels.service_name),
        revisionName:string(resourceLabels.revision_name),
        projectId:string(resourceLabels.project_id),
        location:string(resourceLabels.location),
        logType: split_part(logName,"%2F",2),
        logSource: split_part(split_part(logName,"%2F",1),'/', 4),
        latency:duration_sec(float64(split_part(httpRequest.latency,"s",1))),  
        requestMethod:string(httpRequest.requestMethod),
        requestUrl:string(httpRequest.requestUrl),
        responseSize:float64(httpRequest.responseSize),
        status:int64(httpRequest.status),
        null:httpRequest.null
        
      //run.googleapis.com/projects/content-eng-nikhil/locations/us-west1/services/helloworld
      make_col assetInventoryName: string_concat("//run.googleapis.com/projects/",projectId,"/locations/",location,"/services/",serviceName)
      // // ex - //run.googleapis.com/projects/test-project-1/locations/us-west1/services/helloworld

      //Exclude Audit Logs 
      filter logSource = "run.googleapis.com"

      pick_col 
        timestamp,
        receiveTimestamp,
        projectId,
        location,
        assetInventoryName,
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
              
      add_key assetInventoryName
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
        projectId:string(resourceLabels.project_id),
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
        projectId,
        location,
        serviceName,
        revisionName
    EOF
  }
}

# resource "observe_link" "function_logs" {
#   workspace = var.workspace.oid
#   source    = observe_dataset.cloud_functions_function_logs.oid
#   target    = each.value.target
#   fields    = each.value.fields
#   label     = each.key

#   for_each = {
#     "Cloud Function" = {
#       target = observe_dataset.cloud_functions_instances.oid
#       fields = ["projectId", "region", "functionName"]
#     }
#   }
# }

# resource "observe_link" "audit_logs" {
#   workspace = var.workspace.oid
#   source    = observe_dataset.cloud_functions_audit_logs.oid
#   target    = each.value.target
#   fields    = each.value.fields
#   label     = each.key

#   for_each = {
#     "Cloud Function" = {
#       target = observe_dataset.cloud_functions_instances.oid
#       fields = ["projectId", "region", "functionName"]
#     }
#   }
# }


# // if textPayload is not null, it's an function log
# filter resourceType = "cloud_run_revision" 
# //filter contains(severity, "")

# make_col 
#   serviceName:string(resourceLabels.service_name),
#   projectId:string(resourceLabels.project_id),
#   location:string(resourceLabels.location)

# // make_col assetInventoryName: string_concat("//cloudfunctions.googleapis.com/projects/",projectId,"/locations/",region,"/functions/",functionName)
# // // ex - //cloudfunctions.googleapis.com/projects/content-testpproj-stage-1/locations/us-west1/functions/extension-export-cloud-scheduler-v2

# pick_col 
#    timestamp,
#    receiveTimestamp,
#    logName,
#    severity,
#    textPayload,