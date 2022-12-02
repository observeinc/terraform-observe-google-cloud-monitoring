resource "observe_dataset" "bigquery_metrics" {
  count = local.enable_metrics ? 1 : 0

  workspace   = var.workspace.oid
  name        = format(var.name_format, "Metrics")
  freshness   = lookup(local.freshness, "metrics", var.freshness_duration_default)
  description = "Metrics for Big Query"
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

        interface "metric", metric:metric, value:value
        ${join("\n\n", [for metric, options in local.metrics_definitions :
    indent(2,
      format("set_metric options(\n%s\n), %q",
        join(",\n",
          [for k, v in options : k == "interval" ?
            format("%s: %s", k, v)
            :
            format("%s: %q", k, v)
    if contains(var.metric_interface_fields, k)]), metric))
    if contains(var.launch_stage, options.launchStage)
  ]
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