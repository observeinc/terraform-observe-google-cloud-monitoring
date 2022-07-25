resource "observe_dataset" "postgres_data_access_logs" {
  workspace = var.workspace.oid
  name      = format(var.name_format, "Logs Postgres Data Access")
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

resource "observe_dataset" "mysql_data_access_logs" {
  workspace = var.workspace.oid
  name      = format(var.name_format, "Logs MySql Data Access")
  freshness = lookup(local.freshness, "logging", var.freshness_default)

  inputs = {
    "logs" = observe_dataset.sql_logs.oid
  }

  stage {
    pipeline = <<-EOF
      filter log_Name = "mysql-general.log"
    EOF
  }

  stage {
    pipeline = <<-EOF
      extract_regex textPayload, /(?P<queryTime>\d{1,4}-\d{1,2}-\d{1,2}T\d{1,2}:\d{1,2}:\d{1,2}\.\d{1,6}Z)/
        /\s*/
        /(?P<USER>[a-z,A-Z]+)/
          /[^0-9]+/
          /(?P<IP>[^\]]+)/
          /[^Query]+\b(Query)\b\s*/
          /(?P<SQL>.*)/

      filter not is_null(queryTime) and USER != "root"
    EOF
  }

  stage {
    pipeline = <<-EOF
      pick_col
        timestamp,
        queryTime,
        USER,
        IP,
        SQL,
        log_Name,
        project_id,
        region,
        database_id
    EOF
  }
}

resource "observe_link" "sql_access_logs" {
  workspace = var.workspace.oid
  source    = each.value.source
  target    = each.value.target
  fields    = each.value.fields
  label     = each.key

  for_each = {
    "PostGresDatabaseAccess" = {
      target = observe_dataset.cloudsql.oid
      fields = ["database_id"]
      source = observe_dataset.postgres_data_access_logs.oid
    }

    "MySQLDatabaseAccess" = {
      target = observe_dataset.cloudsql.oid
      fields = ["database_id"]
      source = observe_dataset.mysql_data_access_logs.oid
    }
  }
}