locals {
  # enable_metrics = lookup(var.feature_flags, "metrics", true)
  # tflint-ignore: terraform_unused_declarations
  enable_monitors = lookup(var.feature_flags, "monitors", true)
  # enable_both     = local.enable_monitors && local.enable_metrics

}
resource "observe_dataset" "cloud_run_metrics" {
  workspace   = local.datasets.cloud_run_metrics.workspace
  name        = local.datasets.cloud_run_metrics.name
  freshness   = local.datasets.cloud_run_metrics.freshness
  description = local.datasets.cloud_run_metrics.description

  inputs = {
    "metrics" = var.google.metrics.oid
  }

  stage {
    pipeline = <<-EOF
      filter resource_type = "run" or resource_type = "cloud_run_revision"
      
      make_col 
        project_id:string(resource_labels.project_id),
        region:string(resource_labels.region),
        serviceName:string(resource_labels.service_name),
        revisionName:string(resource_labels.revision_name),
        metric: replace(split_part(metric_type, "googleapis.com/", 2), "/", "_"),
        serviceAssetKey: string_concat("//run.googleapis.com/projects/", string(resource_labels.project_id), "/locations/", string(resource_labels.location), "/services/", string(resource_labels.service_name))
      EOF
  }
  stage {
    pipeline = <<-EOF
      pick_col
        end_time,
        metric,
        metric_kind,
        metric_labels,
        serviceName,
        revisionName,
        value,
        value_type,
        project_id,
        region,        
        serviceAssetKey
      add_key serviceAssetKey
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
      replace(replace(options.google_metric_path, "run.googleapis.com/", ""), "/", "_")))
      if contains(var.metric_launch_stages, options.launchStage) # filters outer for loop
    ]                                                            # end of outer for loop and join statement
)}  

    EOF
}
}

# resource "observe_link" "cloud_run_metrics" {
#   workspace = var.workspace.oid
#   source    = observe_dataset.cloud_run_metrics.oid
#   target    = observe_dataset.cloud_run_service_instances.oid
#   fields    = ["serviceAssetKey:name"]
#   label     = "service_name"
# }


# resource "observe_link" "run_metrics" {
#   for_each = length(observe_dataset.cloud_run_metrics) > 0 ? {
#     "Cloud Run" = {
#       target = observe_dataset.cloud_run_service_instances.oid
#       fields = ["project_id:projectId", "region", "function_name:functionName"]
#     }
#   } : {}
#   workspace = var.workspace.oid
#   source    = observe_dataset.cloud_run_metrics[0].oid
#   target    = each.value.target
#   fields    = each.value.fields
#   label     = each.key
# }

# resource "observe_link" "project" {
#   for_each = {
#     "Projects" = {
#       target = var.google.projects.oid
#       fields = ["projectId:project_id"]
#     }
#   }

#   workspace = var.workspace.oid
#   source    = observe_dataset.cloud_run_service_instances.oid
#   target    = each.value.target
#   fields    = each.value.fields
#   label     = each.key
# }
