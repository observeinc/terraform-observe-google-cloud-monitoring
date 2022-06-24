resource "observe_dataset" "sql_logs" {
  workspace = var.workspace.oid
  name      = format(var.name_format, "Logs")
  freshness = var.freshness_default

  inputs = {
    "logs" = var.google.logs.oid
  }

  stage {
    pipeline = <<-EOF
      filter resourceType = "cloudsql_database"

      make_col 
        database_id:string(resourceLabels.database_id),
        project_id:string(resourceLabels.project_id),
        region:string(resourceLabels.region)

      pick_col 
        timestamp,
        receiveTimestamp,
        logName,
        severity,
        textPayload,
        protoPayload,
        project_id,
        region,
        database_id
    EOF
  }
}

resource "observe_link" "sql_logs" {
  workspace = var.workspace.oid
  source    = observe_dataset.sql_logs.oid
  target    = each.value.target
  fields    = each.value.fields
  label     = each.key

  for_each = {
    "Database" = {
      target = observe_dataset.cloudsql.oid
      fields = ["database_id"]
    }
  }
}
