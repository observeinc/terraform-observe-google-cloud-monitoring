resource "observe_dataset" "bigquery_metrics" {
  count = local.enable_metrics ? 1 : 0

  workspace   = local.datasets.bigquery_metrics.workspace
  name        = local.datasets.bigquery_metrics.name
  freshness   = local.datasets.bigquery_metrics.freshness
  description = local.datasets.bigquery_metrics.description

  inputs = {
    "metrics" = var.google.metrics.oid
  }

  # the filter for metric list below can be configured several different ways depending on your needs
  # look at local variable definition and decide
  stage {
    pipeline = <<-EOF
        filter contains(metric_type, "bigquery")
        make_col dataset_id:string(resource_labels.dataset_id),
            location:string(resource_labels.location),
            project_id:string(resource_labels.project_id),
            metric: replace(split_part(metric_type, "googleapis.com/", 2), "/", "_"),
            table_id: string(metric_labels.table)
            
        pick_col 
            timestamp:end_time,
            metric,
            metric_kind,
            metric_labels,
            value,
            value_type,
            resource_type,
            dataset_id,
            table_id,
            location,
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
      set_dataset_alias "gcp_bigquery"
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
      replace(replace(options.google_metric_path, "bigquery.googleapis.com/", ""), "/", "_")))
      if contains(var.metric_launch_stages, options.launchStage) # filters outer for loop
    ]                                                            # end of outer for loop and join statement
)}  

    EOF
}
}

resource "observe_link" "bigquery_metrics" {
  for_each = length(observe_dataset.bigquery_metrics) > 0 ? {
    "BigQuery Dataset" = {
      target = observe_dataset.bigquery_dataset.oid
      fields = ["dataset_id", "project_id"]
      source = observe_dataset.bigquery_metrics[0].oid
    }
    "BigQuery Project" = {
      target = var.google.projects.oid
      fields = ["project_id"]
      source = observe_dataset.bigquery_metrics[0].oid
    }
  } : {}

  workspace = var.workspace.oid
  source    = each.value.source
  target    = each.value.target
  fields    = each.value.fields
  label     = each.key
}