resource "observe_dataset" "compute_metrics" {
  count = local.enable_metrics ? 1 : 0

  workspace = var.workspace.oid
  name      = format(var.name_format, "Metrics")
  freshness = lookup(local.freshness, "metrics", var.freshness_default)

  inputs = {
    "metrics" = var.google.metrics.oid
  }

  stage {
    pipeline = <<-EOF
      filter resource_type = "gce_instance"
      make_col 
        instance_id:string(resource_labels.instance_id),
        project_id:string(resource_labels.project_id),
        zone:string(resource_labels.zone),
        metric_subject: split_part(metric_type, '/', 2),
        metric_category: split_part(metric_type, '/', 3),
        metric: replace(replace(metric_type,'compute.googleapis.com/',''),'/','_')

      filter metric_subject = "instance" 

      make_col instance_name: string(metric_labels.instance_name)

      make_col instance_key: strcat(project_id,":",instance_name)

      extract_regex zone, /(?P<region>[a-z]+[-]+[a-z,0-9]+)/

      extract_regex metric_type, /(?P<label>[^\/]+$)/

      EOF
  }
  stage {
    pipeline = <<-EOF
      pick_col
        start_time,
        end_time,
        instance_key,
        metric,
        value,
        metric_category,
        label,
        metric_labels,
        value_type_text,
        zone,
        metric_type,
        metric_kind,
        metric_kind_text,
        value_type,
        project_id,
        region,
        instance_id,
        instance_name
      EOF
  }

  stage {
    pipeline = <<-EOF
      interface "metric", metric:metric, value:value
      ${join("\n\n",
    [for metric, options in local.metrics_definitions :
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
    "Compute" = {
      target = observe_dataset.compute.oid
      fields = ["instance_key"]
    }
  } : {}

  workspace = var.workspace.oid
  source    = observe_dataset.compute_metrics[0].oid
  target    = each.value.target
  fields    = each.value.fields
  label     = each.key
}
