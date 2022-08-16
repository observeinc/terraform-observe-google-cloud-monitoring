resource "observe_dataset" "pubsub_topic_metrics" {
  count = local.enable_metrics ? 1 : 0

  workspace = var.workspace.oid
  name      = format(var.name_format, "Metrics")
  freshness = lookup(local.freshness, "metrics", var.freshness_default)

  inputs = {
    "metrics" = var.google.metrics.oid
  }

  stage {
    pipeline = <<-EOF
      filter resource_type = "pubsub_topic"

      make_col 
        topic_id:string(resource_labels.topic_id),
        project_id:string(resource_labels.project_id),
        topic_id: string(resource_labels.topic_id),
        topic_primary_key: strcat("//pubsub.google.apis.com/projects/",string(resource_labels.project_id),"/topics/",string(resource_labels.topic_id))
    
      extract_regex metric_type, /topic\/(?P<label>.+)/
      
      make_col metric:label
     
      EOF
  }
  stage {
    pipeline = <<-EOF
        pick_col
          end_time,
          topic_id,
          topic_primary_key,
          metric,
          value,
          label,
          metric_labels,
          value_type_text,
          metric_type,
          metric_kind,
          metric_kind_text,
          value_type,
          project_id
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

resource "observe_link" "pubsub_metrics" {
  for_each = length(observe_dataset.pubsub_topic_metrics) > 0 ? {
    "Topics" = {
      target = observe_dataset.pubsub_topics.oid
      fields = ["topic_primary_key:name"]
      source = observe_dataset.pubsub_topic_metrics[0].oid
    }
  } : {}

  workspace = var.workspace.oid
  source    = each.value.source
  target    = each.value.target
  fields    = each.value.fields
  label     = each.key
}
