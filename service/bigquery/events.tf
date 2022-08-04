resource "observe_dataset" "bigquery_events" {
  workspace = var.workspace.oid
  name      = format(var.name_format, "Events")
  freshness = var.freshness_default

  inputs = {
    "events" = var.google.logs.oid
  }

  stage {
    input    = "events"
    pipeline = <<-EOF
    filter contains(resourceType, "bigquery")

    make_col 
        project_id : string(resourceLabels.project_id),
        location : string(resourceLabels.location),
        dataset_id : string(resourceLabels.dataset_id),
        resourceLabels : drop_fields(resourceLabels, "project_id", "location", "dataset_id")
        
    pick_col 
        timestamp, 
        receiveTimestamp,
        severity,
        protoPayload,
    //    labels,
    //    resourceLabels,
        project_id,
        dataset_id,
        location,
        logName,
        insertId,
        messageId
    EOF
  }
}
