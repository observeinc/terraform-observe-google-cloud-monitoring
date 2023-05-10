resource "observe_dataset" "cloud_functions_function_logs" {
  workspace   = local.datasets.cloud_functions_function_logs.workspace
  name        = local.datasets.cloud_functions_function_logs.name
  freshness   = local.datasets.cloud_functions_function_logs.freshness
  description = local.datasets.cloud_functions_function_logs.description

  inputs = {
    "logs" = var.google.logs.oid
  }

  stage {
    pipeline = <<-EOF
      // if textPayload is not null, it's an function log
      filter resourceType = "cloud_function" and not is_null(textPayload)

      make_col 
        functionName:string(resourceLabels.function_name),
        projectId:string(resourceLabels.project_id),
        region:string(resourceLabels.region)

      make_col cloudFunctionInstanceAssetKey: string_concat("//cloudfunctions.googleapis.com/projects/",projectId,"/locations/",region,"/functions/",functionName)
      // ex - //cloudfunctions.googleapis.com/projects/content-testpproj-stage-1/locations/us-west1/functions/extension-export-cloud-scheduler-v2

      pick_col 
        timestamp,
        receiveTimestamp,
        logName,
        severity,
        textPayload,
        projectId,
        region,
        cloudFunctionInstanceAssetKey,
        assetInventoryName:cloudFunctionInstanceAssetKey,
        functionName

      set_col_visible assetInventoryName: false
      interface "log", "log": textPayload
    EOF
  }
}

resource "observe_dataset" "cloud_functions_audit_logs" {
  workspace   = local.datasets.cloud_functions_audit_logs.workspace
  name        = local.datasets.cloud_functions_audit_logs.name
  freshness   = local.datasets.cloud_functions_audit_logs.freshness
  description = local.datasets.cloud_functions_audit_logs.description

  inputs = {
    "logs" = var.google.logs.oid
  }

  stage {
    pipeline = <<-EOF
      // if protoPayload is not null, it's an audit log
      filter resourceType = "cloud_function" and not is_null(protoPayload)

      make_col 
        functionName:string(resourceLabels.function_name),
        projectId:string(resourceLabels.project_id),
        region:string(resourceLabels.region)

      make_col cloudFunctionInstanceAssetKey: string_concat("//cloudfunctions.googleapis.com/projects/",projectId,"/locations/",region,"/functions/",functionName)
      // ex - //cloudfunctions.googleapis.com/projects/content-testpproj-stage-1/locations/us-west1/functions/extension-export-cloud-scheduler-v2


      pick_col 
        timestamp,
        receiveTimestamp,
        logName,
        severity,
        protoPayload,
        projectId,
        region,
        functionName,
        cloudFunctionInstanceAssetKey

      interface "log", "structured_log": protoPayload
    EOF
  }
}

resource "observe_link" "function_logs" {
  workspace = var.workspace.oid
  source    = observe_dataset.cloud_functions_function_logs.oid
  target    = each.value.target
  fields    = each.value.fields
  label     = each.key

  for_each = {
    "Cloud Function" = {
      target = observe_dataset.cloud_functions_instances.oid
      fields = ["cloudFunctionInstanceAssetKey"]
    }
  }
}

resource "observe_link" "audit_logs" {
  workspace = var.workspace.oid
  source    = observe_dataset.cloud_functions_audit_logs.oid
  target    = each.value.target
  fields    = each.value.fields
  label     = each.key

  for_each = {
    "Cloud Function" = {
      target = observe_dataset.cloud_functions_instances.oid
      fields = ["cloudFunctionInstanceAssetKey"]
    }
  }
}
