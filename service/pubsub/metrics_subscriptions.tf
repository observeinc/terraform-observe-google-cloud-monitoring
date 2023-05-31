resource "observe_dataset" "pubsub_subscription_metrics" {
  count = local.enable_metrics ? 1 : 0

  workspace   = var.workspace.oid
  name        = format(var.name_format, "Subscription Metrics")
  freshness   = lookup(local.freshness, "metrics", var.freshness_default_duration)
  description = "Metrics dataset for PubSub Subscriptions"
  inputs = {
    "metrics" = var.google.metrics.oid
  }

  stage {
    pipeline = <<-EOF
      filter resource_type = "pubsub_subscription"

      make_col project_id:string(resource_labels.project_id),
          subscription_id:string(resource_labels.subscription_id)


      extract_regex metric_type, /(?P<label1>subscription\/.+)/

      make_col metric: replace(label1,'/','_')
      make_col label: replace(label1,'/','_')

      //pubsub.googleapis.com/projects/terraflood-345116/subscriptions/slobsv
          
      make_col 
        subscription_key: string_concat("//pubsub.googleapis.com/projects/",project_id,"/subscriptions/",subscription_id)

      add_key subscription_id
      add_key subscription_key
     

     
      EOF
  }
  stage {
    pipeline = <<-EOF
        pick_col
          end_time,
          subscription_id,
          subscription_key,
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
      %{if local.enable_metric_dataset_alias}
      set_dataset_alias "gcp_pubsub_sub"
      %{endif}
      ${join("\n\n",
    [for metric, options in local.merged_metrics_definitions :
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
      replace(replace(options.google_metric_path, "pubsub.googleapis.com/", ""), "/", "_")))
    if(contains(var.metric_launch_stages, options.launchStage) && options.metricBin == "subscription")] # filters outer for loop
    # end of outer for loop and join statement
)}  

    EOF
}
}

