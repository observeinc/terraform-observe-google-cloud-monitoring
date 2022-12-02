resource "observe_dataset" "pubsub_service" {
  workspace   = var.workspace.oid
  name        = format(var.name_format, "Service")
  freshness   = lookup(local.freshness, "pubsub", var.freshness_duration_default)
  description = "Dataset showing consumed APIs"
  inputs = {
    "events" = var.google.metrics.oid
  }

  stage {
    input    = "events"
    pipeline = <<-EOF

        filter metric_namespace = "serviceruntime.googleapis.com"

        make_col metric_subject: split_part(metric_type, '/', 2)

        filter metric_subject = "api"

        make_col credential_id:string(resource_labels.credential_id),
            location:string(resource_labels.location),
            method:string(resource_labels.method),
            param1:string(resource_labels.param1),
            param2:string(resource_labels.param2),
            param3:string(resource_labels.param3),
            param4:string(resource_labels.param4),
            project_id:string(resource_labels.project_id),
            service:string(resource_labels.service),
            version:string(resource_labels.version)
        
        make_col name: split_part(service,".",1)

    EOF
  }

  # https://cloud.google.com/compute/docs

  stage {
    pipeline = <<-EOF
        make_resource options(expiry:${var.max_expiry}),
          name,
          project_id, 
          location,
          primary_key(service),
          valid_for(duration_hr(24))

        add_key name
        set_label name

        add_key project_id

      EOF
  }
}

resource "observe_dataset" "pubsub_service_api_metrics" {
  workspace   = var.workspace.oid
  name        = format(var.name_format, "Service API Metrics")
  freshness   = lookup(local.freshness, "pubsub", var.freshness_duration_default)
  description = "Metrics for Service APIs"
  inputs = {
    "events" = var.google.metrics.oid
  }

  stage {
    input    = "events"
    pipeline = <<-EOF

        filter metric_namespace = "serviceruntime.googleapis.com"

        make_col metric_subject: split_part(metric_type, '/', 2)

        filter metric_subject = "api"

        extract_regex metric_type, /(?P<label1>api\/.*)/

        make_col metric:replace(label1, '/','_')
        make_col label:replace(label1, '/','_')

        make_col credential_id:string(resource_labels.credential_id),
            location:string(resource_labels.location),
            method:string(resource_labels.method),
            param1:string(resource_labels.param1),
            param2:string(resource_labels.param2),
            param3:string(resource_labels.param3),
            param4:string(resource_labels.param4),
            project_id:string(resource_labels.project_id),
            service:string(resource_labels.service),
            version:string(resource_labels.version)

        add_key service

    EOF
  }

  stage {
    pipeline = <<-EOF
      pick_col
        end_time,
        service,
        location,
        method,
        metric,
        value,
        label,
        metric_labels,
        value_type_text,
        metric_type,
        metric_kind,
        metric_kind_text,
        value_type,
        project_id
      EOF
  }

  # https://cloud.google.com/compute/docs
  stage {
    pipeline = <<-EOF
      interface "metric", metric:metric, value:value
      ${join("\n\n",
    [for metric, options in local.service_metrics_definitions :
      indent(2,
        format("set_metric options(\n%s\n), %q",
          join(",\n",
      [for k, v in options : k == "interval" ? format("%s: %s", k, v) : format("%s: %q", k, v) if contains(var.metric_interface_fields, k)]), metric))
if(contains(var.metric_launch_stages, options.launchStage) && options.metricBin == "api")])}

    EOF
}
}

resource "observe_dataset" "pubsub_service_quota_metrics" {
  workspace   = var.workspace.oid
  name        = format(var.name_format, "Service Quota Metrics")
  freshness   = lookup(local.freshness, "pubsub", var.freshness_duration_default)
  description = "Dataset showing service quota metrics"
  inputs = {
    "events" = var.google.metrics.oid
  }

  stage {
    input    = "events"
    pipeline = <<-EOF

        filter metric_namespace = "serviceruntime.googleapis.com"
        make_col metric_subject: split_part(metric_type, '/', 2)

        filter metric_subject = "quota"

        extract_regex metric_type, /(?P<label1>quota\/.*)/

        make_col metric:replace(label1, '/','_')
        make_col label:replace(label1, '/','_')


        make_col credential_id:string(resource_labels.credential_id),
            location:string(resource_labels.location),
            project_id:string(resource_labels.project_id),
            service:string(resource_labels.service)

        make_col limit_name:string(metric_labels.limit_name),
            method:string(metric_labels.method),
            quota_metric:string(metric_labels.quota_metric)

    EOF
  }

  # https://cloud.google.com/compute/docs

  stage {
    pipeline = <<-EOF
      pick_col
        end_time,
        service,
        quota_metric,
        limit_name,
        method,
        location,
        metric,
        value,
        label,
        metric_labels,
        value_type_text,
        metric_type,
        metric_kind,
        metric_kind_text,
        value_type,
        project_id
      EOF
  }

  stage {
    pipeline = <<-EOF
      interface "metric", metric:metric, value:value
      ${join("\n\n",
    [for metric, options in local.service_metrics_definitions :
      indent(2,
        format("set_metric options(\n%s\n), %q",
          join(",\n",
      [for k, v in options : k == "interval" ? format("%s: %s", k, v) : format("%s: %q", k, v) if contains(var.metric_interface_fields, k)]), metric))
if(contains(var.metric_launch_stages, options.launchStage) && options.metricBin == "quota")])}

    EOF
}

}

resource "observe_link" "service_metrics" {
  for_each = {
    "api" = {
      source = observe_dataset.pubsub_service_api_metrics.oid
      target = observe_dataset.pubsub_service.oid
      fields = ["service"]
    }
    "quota" = {
      source = observe_dataset.pubsub_service_quota_metrics.oid
      target = observe_dataset.pubsub_service.oid
      fields = ["service"]
    }
  }

  workspace = var.workspace.oid
  source    = each.value.source
  target    = each.value.target
  fields    = each.value.fields
  label     = each.key
}
