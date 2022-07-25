
resource "observe_dataset" "storage_metrics" {
  count = local.enable_metrics ? 1 : 0

  workspace = var.workspace.oid
  name      = format(var.name_format, "Metrics")
  freshness = lookup(var.freshness_overrides, "storage_metrics", var.freshness_default)

  inputs = {
    "metrics" = var.google.metrics.oid
  }

  stage {
    pipeline = <<-EOF
      filter left(metric_type,7) = "storage"

      make_col 
        bucket_name:string(resource_labels.bucket_name),
        project_id:string(resource_labels.project_id),
        region:string(resource_labels.location),
        metric: replace(split_part(metric_type, "googleapis.com/", 2), "/", "_")

      pick_col
        start_time,
        end_time,
        metric,
        metric_kind,
        metric_type,
        metric_labels,
        value,
        value_type,
        project_id,
        region,
        bucket_name

      colshow 
        metric_type: false, 
        metric_kind: false, 
        value_type: false

      interface "metric", metric:metric, value:value
      
      ${join("\n\n",
    [for metric, options in local.metrics_definitions :
      indent(2,
        format("set_metric options(\n%s\n), %q",
          join(",\n",
      [for k, v in options : k == "interval" ? format("%s: %s", k, v) : format("%s: %q", k, v) if contains(var.metric_interface_fields, k)]), metric))
    ]
  )
}
    EOF
}
}


resource "observe_link" "storage_metrics" {
  for_each = length(observe_dataset.storage_metrics) > 0 ? {
    "Bucket" = {
      target = observe_dataset.storage.oid
      fields = ["bucket_name"]
    }
  } : {}

  workspace = var.workspace.oid
  source    = observe_dataset.storage_metrics[0].oid
  target    = each.value.target
  fields    = each.value.fields
  label     = each.key
}
