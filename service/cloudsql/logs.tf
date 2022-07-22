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

resource "observe_dataset" "data_access_logs" {
  workspace = var.workspace.oid
  name      = format(var.name_format, "Data Access Logs")
  freshness = lookup(local.freshness, "logging", var.freshness_default)

  inputs = {
    "logs" = observe_dataset.sql_logs.oid
  }

  stage {
    pipeline = <<-EOF
      filter log_Name = "data_access"

      make_col "@type":string(protoPayload['@type']),
        methodName:string(protoPayload.methodName),
        request:protoPayload.request,
        resourceName:string(protoPayload.resourceName),
        serviceName:string(protoPayload.serviceName)

      make_col user:string(request.user),
          substatementId:int64(request.substatementId),
          statementId:int64(request.statementId),
          statement:string(request.statement),
          parameter:string(request.parameter),
          objectType:string(request.objectType),
          object:string(request.object),
          databaseSessionId:int64(request.databaseSessionId),
          database:string(request.database),
          command:string(request.command),
          chunkIndex:int64(request.chunkIndex),
          chunkCount:int64(request.chunkCount),
          auditType:string(request.auditType),
          auditClass:string(request.auditClass),
          "@type_1":string(request['@type'])
    EOF
  }

  stage {
    pipeline = <<-EOF
      pick_col 
        timestamp,
        database_id,
        log_Source,
        log_Name,
        severity,
        protoPayload,
        methodName,
        user,
        statement,
        databaseSessionId,
        database,
        command,
        auditType,
        auditClass,
        resourceName,
        serviceName,
        project_id,
        region

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
    "DatabaseAccess" = {
      target = observe_dataset.cloudsql.oid
      fields = ["database_id"]
      source = observe_dataset.data_access_logs.oid
    }
  }
}
