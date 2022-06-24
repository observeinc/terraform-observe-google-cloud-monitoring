resource "observe_dataset" "compute_metrics" {
  count = local.enable_metrics ? 1 : 0

  workspace = var.workspace.oid
  name      = format(var.name_format, "Metrics")
  freshness = var.freshness_default

  inputs = {
    "metrics" = var.google.metrics.oid
  }

  stage {
    pipeline = <<-EOF
      filter resource_type = "gce_instance"
      make_col 
        instance_id:string(resource_labels.instance_id),
        project_id:string(resource_labels.project_id),
        zone:string(resource_labels.zone)

      extract_regex zone, /(?P<region>[a-z]+[-]+[a-z,0-9]+)/

      pick_col
        start_time,
        end_time,
        metric_type,
        metric_kind,
        metric_labels,
        value,
        value_type,
        project_id,
        zone,
        region,
        instance_id

      interface "metric", metric:metric_type, value:value
      ${join("\n\n",
    [for metric, options in local.metrics_definitions :
      indent(2,
        format("set_metric options(\n%s\n), %q",
          join(",\n",
      [for k, v in options : k == "interval" ? format("%s: %s", k, v) : format("%s: %q", k, v) if contains(var.metric_interface_fields, k)]), metric))
    if contains(var.metric_launch_stages, options.launchStage)])}

      ${join("\n\n",
    [for metric, options in local.agent_metrics_definitions :
      indent(2,
        format("set_metric options(\n%s\n), %q",
          join(",\n",
      [for k, v in options : k == "interval" ? format("%s: %s", k, v) : format("%s: %q", k, v) if contains(var.metric_interface_fields, k)]), metric))
if contains(var.metric_launch_stages, options.launchStage)])}
    EOF
}
}

resource "observe_link" "compute_metrics" {
  for_each = length(observe_dataset.compute_metrics) > 0 ? {
    "Cloud Function" = {
      target = observe_dataset.compute.oid
      fields = ["project_id", "region", "instance_id"]
    }
  } : {}

  workspace = var.workspace.oid
  source    = observe_dataset.compute_metrics[0].oid
  target    = each.value.target
  fields    = each.value.fields
  label     = each.key
}
