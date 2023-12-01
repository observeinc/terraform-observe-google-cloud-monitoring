locals {
  enable_metrics = lookup(var.feature_flags, "metrics", true)
  # tflint-ignore: terraform_unused_declarations
  enable_monitors = lookup(var.feature_flags, "monitors", true)
  # enable_both     = local.enable_monitors && local.enable_metrics

}
resource "observe_dataset" "cloud_run_metrics" {
  count       = local.enable_metrics ? 1 : 0
  workspace   = local.datasets.cloud_run_metrics.workspace
  name        = local.datasets.cloud_run_metrics.name
  freshness   = local.datasets.cloud_run_metrics.freshness
  description = local.datasets.cloud_run_metrics.description

  inputs = {
    "metrics" = var.google.metrics.oid
  }

  stage {
    pipeline = <<-EOF
      filter resource_type = "cloud_run_revision"
      
      make_col 
        project_id:string(resource_labels.project_id),
        location:string(resource_labels.location),
        serviceName:string(resource_labels.service_name),
        revisionName:string(resource_labels.revision_name),
        metric: replace(split_part(metric_type, "googleapis.com/", 2), "/", "_")

      make_col
        serviceAssetKey: if(not is_null(serviceName) and serviceName != "", concat_strings("//run.googleapis.com/projects/", project_id, "/locations/", location, "/services/", serviceName), string_null()),
        revisionAssetKey: if(not is_null(revisionName) and revisionName != "", concat_strings("//run.googleapis.com/projects/", project_id, "/locations/", location, "/revisions/", revisionName), string_null())
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
        location,        
        serviceAssetKey,
        revisionAssetKey
      
      add_key serviceAssetKey
      add_key revisionAssetKey
      add_key serviceName, revisionName
    EOF
  }

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

resource "observe_link" "cloud_run_metrics" {
  workspace = var.workspace.oid
  source    = observe_dataset.cloud_run_metrics[0].oid
  target    = each.value.target
  fields    = each.value.fields
  label     = each.key
  for_each = length(observe_dataset.cloud_run_metrics) > 0 ? merge(
    {
      "Service Instance" = {
        target = observe_dataset.cloud_run_service_instances.oid
        fields = ["serviceAssetKey"]
      }
    },
    {
      "Revision Instance" = {
        target = observe_dataset.cloud_run_revision_instances.oid
        fields = ["revisionAssetKey"]
      }
    }
  ) : {}
}
