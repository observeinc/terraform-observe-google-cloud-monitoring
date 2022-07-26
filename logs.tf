resource "observe_dataset" "logs" {
  workspace = var.workspace.oid
  name      = format(var.name_format, "Logs")
  freshness = var.freshness_default

  inputs = {
    "events" = observe_dataset.base_pubsub_events.oid
  }

  stage {
    input    = "events"
    pipeline = <<-EOF
      filter not is_null(attributes["logging.googleapis.com/timestamp"])
      make_col data:parse_json(data)

      make_col timestamp:parse_isotime(string(data.timestamp))
      set_valid_from options(max_time_diff:${var.max_time_diff}), timestamp

    EOF
  }

  stage {
    pipeline = <<-EOF
      pick_col timestamp,
          receiveTimestamp:parse_isotime(string(data.receiveTimestamp)),
          logName:string(data.logName),
          severity:string(data.severity),
          textPayload:string(data.textPayload),
          protoPayload:object(data.protoPayload),
          jsonPayload:object(data.jsonPayload),
          labels:object(data.labels),
          resourceLabels:object(data.resource.labels),
          resourceType:string(data.resource.type),
          httpRequest:object(data.httpRequest),
          insertId:string(data.insertId),
          trace:string(data.trace),
          messageId:id
    EOF
  }
}

resource "observe_dataset" "audit_logs" {
  workspace = var.workspace.oid
  name      = format(var.name_format, "Audit Logs")
  freshness = var.freshness_default

  inputs = {
    "events" = observe_dataset.logs.oid
  }

  # https://cloud.google.com/logging/docs/reference/audit/auditlog/rest/Shared.Types/AuditLog
  stage {
    input    = "events"
    pipeline = <<-EOF
    filter contains(logName, "/logs/cloudaudit.googleapis.com")
    EOF
  }

  stage {
    input    = "events"
    pipeline = <<-EOF
    pick_col 
      timestamp,
      logName,
      severity,
      type:string(protoPayload['@type']),
      serviceName:string(protoPayload.serviceName),
      methodName:string(protoPayload.methodName),
      resourceName:string(protoPayload.resourceName),
      status:object(protoPayload.status),
      authenticationInfo:object(protoPayload.authenticationInfo),
      authorizationInfo:object(protoPayload.authorizationInfo),
      requestMetadata:object(protoPayload.requestMetadata),
      request:object(protoPayload.request),
      response:object(protoPayload.response),
      serviceData:object(protoPayload.serviceData),
      resourceLabels,
      resourceType
    EOF
  }

}
