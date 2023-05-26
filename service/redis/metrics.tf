resource "observe_dataset" "redis_metrics" {
  count = local.enable_metrics ? 1 : 0

  workspace   = local.datasets.redis_metrics.workspace
  name        = local.datasets.redis_metrics.name
  freshness   = local.datasets.redis_metrics.freshness
  description = local.datasets.redis_metrics.description

  inputs = {
    "gcp"      = local.base_module.metrics.oid
    "instance" = observe_dataset.redis_instance.oid
  }

  # https://cloud.google.com/pubsub/docs/reference/rpc/google.pubsub.v1#pubsubmessage
  stage {
    input    = "gcp"
    pipeline = <<-EOF
        filter resource_type = "redis_instance"
        
        make_col metric: replace(replace(metric_type,'redis.googleapis.com/',''),'/','_'),
            role:string(metric_labels.role),
            relationship:string(metric_labels.relationship),
            space:string(metric_labels.space),
            node_id:string(resource_labels.node_id),
            instance_id:string(resource_labels.instance_id),
            region:string(resource_labels.region),
            metric_subject: split_part(metric_type, '/', 2),
            metric_category: split_part(metric_type, '/', 3),
            command:string(metric_labels.cmd)

        extract_regex metric_type, /(?P<label>[^\/]+$)/
        // example value = //redis.googleapis.com/projects/content-eng-arthur/locations/us-west1/instances/ha-memory-cache
        make_col instance_pkey: string_concat("//",metric_namespace,"/",instance_id)
        add_key instance_pkey
    EOF
  }

  stage {
    pipeline = <<-EOF
       join on(instance_pkey=@instance.instance_pkey), displayName:@instance.displayName, hostname:@instance.host
      EOF
  }
  stage {
    pipeline = <<-EOF
      pick_col
        end_time,
        metric,
        value,
        metric_category,
        label,
        role,
        relationship,
        space,
        metric_labels,
        value_type_text,
        metric_type,
        metric_kind,
        metric_kind_text,
        value_type,
        command,
        displayName,
        hostname,
        project_id,
        region,
        instance_pkey
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
      set_dataset_alias "gcp_redis"
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
      replace(replace(options.google_metric_path, "redis.googleapis.com/", ""), "/", "_")))
      if contains(var.metric_launch_stages, options.launchStage) # filters outer for loop
    ]                                                            # end of outer for loop and join statement
)}  

    EOF
}
}

resource "observe_link" "instance_to_metric" {
  count     = local.enable_metrics ? 1 : 0
  workspace = local.datasets.redis_metrics.workspace
  source    = one(observe_dataset.redis_metrics).oid
  target    = observe_dataset.redis_instance.oid
  fields    = ["instance_pkey"]
  label     = "Redis Instance"
}
