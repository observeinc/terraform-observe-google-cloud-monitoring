resource "observe_dataset" "cloudsql_metrics" {
  count = local.enable_metrics ? 1 : 0

  workspace = var.workspace.oid
  name      = format(var.name_format, "Metrics")
  freshness = var.freshness_default

  inputs = {
    "metrics" = var.google.metrics.oid
  }

  stage {
    pipeline = <<-EOF
      filter resource_type = "cloudsql_database"

      make_col 
        database_id:string(resource_labels.database_id),
        project_id:string(resource_labels.project_id),
        region:string(resource_labels.region)

      pick_col
        start_time,
        end_time,
        metric_type,
        metric_kind,
        metric_labels,
        value,
        value_type,
        project_id,
        region,
        database_id

      interface "metric", metric:metric_type, value:value
      
      ${join("\n\n",
    [for metric, options in local.metrics_definitions :
      indent(2,
        format("set_metric options(\n%s\n), %q",
          join(",\n",
      [for k, v in options : k == "interval" ? format("%s: %s", k, v) : format("%s: %q", k, v) if contains(var.metric_interface_fields, k)]), metric))
    if contains(var.metric_launch_stages, options.launchStage)]
  )
}
    EOF
}
}

# use var instead of prop metric_interface_fields

resource "observe_link" "cloudsql_metrics" {
  for_each = length(observe_dataset.cloudsql_metrics) > 0 ? {
    "Cloud SQL" = {
      target = observe_dataset.cloudsql.oid
      fields = ["project_id", "region", "database_id"]
    }
  } : {}

  workspace = var.workspace.oid
  source    = observe_dataset.cloudsql_metrics[0].oid
  target    = each.value.target
  fields    = each.value.fields
  label     = each.key
}
