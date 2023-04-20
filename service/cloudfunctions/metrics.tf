locals {
  enable_metrics = lookup(var.feature_flags, "metrics", true)
  # tflint-ignore: terraform_unused_declarations
  enable_monitors = lookup(var.feature_flags, "monitors", true)
  enable_both     = local.enable_monitors && local.enable_metrics

}
resource "observe_dataset" "cloud_functions_metrics" {
  count = local.enable_metrics ? 1 : 0

  workspace   = local.datasets.cloud_functions_metrics.workspace
  name        = local.datasets.cloud_functions_metrics.name
  freshness   = local.datasets.cloud_functions_metrics.freshness
  description = local.datasets.cloud_functions_metrics.description

  inputs = {
    "metrics" = var.google.metrics.oid
  }

  stage {
    pipeline = <<-EOF
      filter resource_type = "cloud_function"

      make_col 
        function_name:string(resource_labels.function_name),
        project_id:string(resource_labels.project_id),
        region:string(resource_labels.region),
        metric: replace(split_part(metric_type, "googleapis.com/", 2), "/", "_")

      // ex - //cloudfunctions.googleapis.com/projects/content-eng-sample-infra/locations/us-central1/functions/infra-coll-env
      make_col cloudFunctionInstanceAssetKey: concat_strings("//cloudfunctions.googleapis.com/projects/",project_id,"/locations/",region,"/functions/",function_name)

      pick_col
        end_time,
        metric,
        metric_kind,
        metric_labels,
        value,
        value_type,
        project_id,
        region,
        function_name,
        cloudFunctionInstanceAssetKey

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
      replace(replace(options.google_metric_path, "cloudfunctions.googleapis.com/", ""), "/", "_")))
      if contains(var.metric_launch_stages, options.launchStage) # filters outer for loop
    ]                                                            # end of outer for loop and join statement
)}  

    EOF
}
}

resource "observe_link" "function_metrics" {
  for_each = length(observe_dataset.cloud_functions_metrics) > 0 ? {
    "Cloud Function" = {
      target = observe_dataset.cloud_functions_instances.oid
      fields = ["cloudFunctionInstanceAssetKey"]
    }
  } : {}
  workspace = var.workspace.oid
  source    = observe_dataset.cloud_functions_metrics[0].oid
  target    = each.value.target
  fields    = each.value.fields
  label     = each.key
}

resource "observe_link" "project" {
  for_each = {
    "Projects" = {
      target = var.google.projects.oid
      fields = ["projectId:project_id"]
    }
  }

  workspace = var.workspace.oid
  source    = observe_dataset.cloud_functions_instances.oid
  target    = each.value.target
  fields    = each.value.fields
  label     = each.key
}
