resource "observe_dataset" "pubsub_subscription_metrics" {
  count = local.enable_metrics ? 1 : 0

  workspace   = var.workspace.oid
  name        = format(var.name_format, "Subscription Metrics")
  freshness   = lookup(local.freshness, "metrics", var.freshness_default_duration)
  description = "Metrics dataset for PubSub Subscriptions"
  inputs = {
    "metrics" = var.google.metrics.oid
  }

  stage {
    pipeline = <<-EOF
      filter resource_type = "pubsub_subscription"

      make_col project_id:string(resource_labels.project_id),
          subscription_id:string(resource_labels.subscription_id)


      extract_regex metric_type, /(?P<label1>subscription\/.+)/

      make_col metric: replace(label1,'/','_')
      make_col label: replace(label1,'/','_')

      //pubsub.googleapis.com/projects/terraflood-345116/subscriptions/slobsv
          
      make_col 
        subscription_key: string_concat("//pubsub.googleapis.com/projects/",project_id,"/subscriptions/",subscription_id)

      add_key subscription_id
      add_key subscription_key
     

     
      EOF
  }
  stage {
    pipeline = <<-EOF
        pick_col
          end_time,
          subscription_id,
          subscription_key,
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
if(contains(var.metric_launch_stages, options.launchStage) && options.metricBin == "subscription")])}

      EOF
}
}
