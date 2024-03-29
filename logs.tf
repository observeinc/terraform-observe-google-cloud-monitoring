resource "observe_dataset" "logs" {
  workspace   = local.datasets.logs.workspace
  name        = local.datasets.logs.name
  freshness   = local.datasets.logs.freshness
  description = local.datasets.logs.description

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
      interface "log"
    EOF
  }
}

resource "observe_dataset" "audit_logs" {
  workspace   = local.datasets.audit_logs.workspace
  name        = local.datasets.audit_logs.name
  freshness   = local.datasets.audit_logs.freshness
  description = local.datasets.audit_logs.description

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
