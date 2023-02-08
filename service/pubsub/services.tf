resource "observe_dataset" "pubsub_service" {
  workspace   = local.datasets.pubsub_service.workspace
  name        = local.datasets.pubsub_service.name
  freshness   = local.datasets.pubsub_service.freshness
  description = local.datasets.pubsub_service.description

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
  workspace   = local.datasets.pubsub_service_api_metrics.workspace
  name        = local.datasets.pubsub_service_api_metrics.name
  freshness   = local.datasets.pubsub_service_api_metrics.freshness
  description = local.datasets.pubsub_service_api_metrics.description

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
# The terraform below dynamically writes set_metric statements in opal
# This loops through the local.metrics_definitions map using for
# [for metric, options in local.metrics_definitions :

# metric is the key (avg_ttl) and options is the value (all the stuff between {})
/* Example metric in local.metrics_definitions
        avg_ttl = {
            type               = "gauge"
            description        = <<-EOF
                            Average TTL for keys in this database.
                        EOF
            launchStage        = "GA"
            rollup             = "avg"
            aggregate          = "sum"
            metricCategory     = "none"
            google_metric_path = "redis.googleapis.com/keyspace/avg_ttl"
            label              = "Average TTL"
            unit               = "ms"
            metricBin          = "keyspace"
            valuetype          = "DOUBLE"

        }
        */

# We filter the outer for loop checking whether options.launchStage is in the array defined by var.metric_launch_stages 
# in the inner for loop we iterate through the fields in the options objects and check if the field is in the array defined by var.metric_interface_fields
##  and if so 
/* Example output
  set_metric options(
    aggregate: "sum",
    description: "Average TTL for keys in this database.\n",
    rollup: "avg",
    type: "gauge",
    unit: "ms"
    ), "avg_ttl"
    
  */

  stage {
    pipeline = <<-EOF
      interface "metric", metric:metric, value:value
      ${join("\n\n",
    [for metric, options in local.merged_metrics_definitions_service :
      indent(2,
        # format takes result of join / forloop and metric as inputs
        format("set_metric options(\n%s\n), %q",
          join(",\n",
            [for optionFieldName, optionFieldNameValue in options :
              optionFieldName == "interval" ? format("%s: %s", optionFieldName, optionFieldNameValue) :
              # format takes optionFieldName and optionFieldNameValue as inputs
              format("%s: %q", optionFieldName, optionFieldNameValue)
              if contains(var.metric_interface_fields, optionFieldName) # filters inner for loop
            ]                                                           # end of inner for loop
          ),                                                            # end of inner join statement
      replace(replace(options.google_metric_path, "serviceruntime.googleapis.com/", ""), "/", "_")))
    if(contains(var.metric_launch_stages, options.launchStage) && options.metricBin == "api")] # filters outer for loop
    # end of outer for loop and join statement
)}  

    EOF
}
}

resource "observe_dataset" "pubsub_service_quota_metrics" {
  workspace   = var.workspace.oid
  name        = format(var.name_format, "Service Quota Metrics")
  freshness   = lookup(local.freshness, "pubsub", var.freshness_default_duration)
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
    [for metric, options in local.merged_metrics_definitions_service :
      indent(2,
        # format takes result of join / forloop and metric as inputs
        format("set_metric options(\n%s\n), %q",
          join(",\n",
            [for optionFieldName, optionFieldNameValue in options :
              optionFieldName == "interval" ? format("%s: %s", optionFieldName, optionFieldNameValue) :
              # format takes optionFieldName and optionFieldNameValue as inputs
              format("%s: %q", optionFieldName, optionFieldNameValue)
              if contains(var.metric_interface_fields, optionFieldName) # filters inner for loop
            ]                                                           # end of inner for loop
          ),                                                            # end of inner join statement
      replace(replace(options.google_metric_path, "serviceruntime.googleapis.com/", ""), "/", "_")))
    if(contains(var.metric_launch_stages, options.launchStage) && options.metricBin == "quota")] # filters outer for loop
    # end of outer for loop and join statement
)}  

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
