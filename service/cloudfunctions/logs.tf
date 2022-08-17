resource "observe_dataset" "function_logs" {
  workspace = var.workspace.oid
  name      = format(var.name_format, "Function Logs")
  freshness = var.freshness_default

  inputs = {
    "logs" = var.google.logs.oid
  }

  stage {
    pipeline = <<-EOF
      filter resourceType = "cloud_function"

      make_col 
        functionName:string(resourceLabels.function_name),
        projectId:string(resourceLabels.project_id),
        region:string(resourceLabels.region)

      pick_col 
        timestamp,
        receiveTimestamp,
        logName,
        severity,
        textPayload,
        projectId,
        region,
        functionName
    EOF
  }
}

resource "observe_link" "function_logs" {
  workspace = var.workspace.oid
  source    = observe_dataset.function_logs.oid
  target    = each.value.target
  fields    = each.value.fields
  label     = each.key

  for_each = {
    "Cloud Function" = {
      target = observe_dataset.function.oid
      fields = ["projectId", "region", "functionName"]
    }
  }
}
