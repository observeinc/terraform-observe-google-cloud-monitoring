resource "observe_dataset" "sql_logs" {
  workspace = var.workspace.oid
  name      = format(var.name_format, "Logs")
  freshness = lookup(local.freshness, "logging", var.freshness_default)

  inputs = {
    "logs" = var.google.logs.oid
  }

  stage {
    pipeline = <<-EOF
      filter resourceType = "cloudsql_database"

      make_col 
        database_id:string(resourceLabels.database_id),
        project_id:string(resourceLabels.project_id),
        region:string(resourceLabels.region),
        log_Name: split_part(logName,"%2F",2),
        log_Source: split_part(split_part(logName,"%2F",1),'/', 4)
    EOF
  }

  stage {
    pipeline = <<-EOF
      pick_col 
        timestamp,
        receiveTimestamp,
        logName,
        log_Source,
        log_Name,
        severity,
        textPayload,
        protoPayload,
        project_id,
        region,
        database_id

      colshow receiveTimestamp: false, logName: false
    EOF
  }
}

resource "observe_dataset" "activity_logs" {
  workspace = var.workspace.oid
  name      = format(var.name_format, "Logs Activity")
  freshness = lookup(local.freshness, "logging", var.freshness_default)

  inputs = {
    "logs" = var.google.logs.oid
  }

  stage {
    pipeline = <<-EOF
      filter not is_null(protoPayload)

      make_col type:string(protoPayload.authorizationInfo[0].resourceAttributes.type),
          resource:string(protoPayload.authorizationInfo[0].resource),
          methodName:string(protoPayload.methodName),
          serviceName:string(protoPayload.serviceName),
          resourceName:string(protoPayload.resourceName),
          status:protoPayload.status,
          message:string(protoPayload.status.message),
          code:int64(protoPayload.status.code)

      filter serviceName = "cloudsql.googleapis.com"
      filter is_null(methodName) or (methodName != "cloudsql.instances.query")


      make_col 
        database_id:string(resourceLabels.database_id),
        project_id:string(resourceLabels.project_id),
        region:string(resourceLabels.region),
        log_Name: split_part(logName,"%2F",2),
        log_Source: split_part(split_part(logName,"%2F",1),'/', 4)
    EOF
  }

  stage {
    pipeline = <<-EOF
      pick_col 
        timestamp,
        receiveTimestamp,
        type,
        resource,
        methodName,
        serviceName,
        resourceName,
        status,
        message,
        code,
        log_Source,
        log_Name,
        severity,
        textPayload,
        protoPayload,
        project_id,
        region,
        database_id

      colshow receiveTimestamp: false, log_Name: false
    EOF
  }
}

resource "observe_link" "sql_logs" {
  workspace = var.workspace.oid
  source    = each.value.source
  target    = each.value.target
  fields    = each.value.fields
  label     = each.key

  for_each = {
    "Database" = {
      target = observe_dataset.cloudsql.oid
      fields = ["database_id"]
      source = observe_dataset.sql_logs.oid
    }
  }
}
