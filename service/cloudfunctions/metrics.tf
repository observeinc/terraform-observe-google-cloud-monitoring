# locals {
#   metrics_definitions = {
#     "function_active_instances" = {
#       type             = "gauge"
#       description      = <<-EOF
#           The number of active function instances. Sampled every 60s and may take up to 240s to display.
#       EOF
#       launchStage      = "BETA"
#       rollup           = "avg"
#       aggregate        = "sum"
#       metricCategory   = "none"
#       googleMetricPath = "cloudfunctions.googleapis.com/function/active_instances"
#       label            = "Active instances"
#       active           = false


#       interval = "60s"




#     },
#     "function_execution_count" = {
#       type             = "delta"
#       description      = <<-EOF
#           Count of function executions broken down by status. Sampled every 60s and may take up to 240s to display.
#       EOF
#       launchStage      = "GA"
#       rollup           = "avg"
#       aggregate        = "sum"
#       metricCategory   = "none"
#       googleMetricPath = "cloudfunctions.googleapis.com/function/execution_count"
#       label            = "Executions"
#       active           = true


#       interval = "60s"




#     },
#     "function_execution_times" = {
#       type             = "delta"
#       description      = <<-EOF
#           Distribution of functions execution times in nanoseconds. Sampled every 60s and may take up to 240s to display.
#       EOF
#       launchStage      = "GA"
#       rollup           = "avg"
#       aggregate        = "sum"
#       metricCategory   = "none"
#       googleMetricPath = "cloudfunctions.googleapis.com/function/execution_times"
#       label            = "Execution times"
#       active           = true


#       interval = "60s"

#       unit = "ns"


#     },
#     "function_instance_count" = {
#       type             = "gauge"
#       description      = <<-EOF
#           The number of function instances, broken down by state. Sampled every 60s and may take up to 240s to display.
#       EOF
#       launchStage      = "GA"
#       rollup           = "avg"
#       aggregate        = "sum"
#       metricCategory   = "none"
#       googleMetricPath = "cloudfunctions.googleapis.com/function/instance_count"
#       label            = "Instance Count"
#       active           = true


#       interval = "60s"




#     },
#     "function_network_egress" = {
#       type             = "delta"
#       description      = <<-EOF
#           Outgoing network traffic of function, in bytes. Sampled every 60s and may take up to 240s to display.
#       EOF
#       launchStage      = "GA"
#       rollup           = "avg"
#       aggregate        = "sum"
#       metricCategory   = "none"
#       googleMetricPath = "cloudfunctions.googleapis.com/function/network_egress"
#       label            = "Network egress"
#       active           = true


#       interval = "60s"

#       unit = "By"


#     },
#     "function_user_memory_bytes" = {
#       type             = "delta"
#       description      = <<-EOF
#           Distribution of maximum function's memory usage during execution, in bytes. Sampled every 60s and may take up to 180s to display.
#       EOF
#       launchStage      = "GA"
#       rollup           = "avg"
#       aggregate        = "sum"
#       metricCategory   = "none"
#       googleMetricPath = "cloudfunctions.googleapis.com/function/user_memory_bytes"
#       label            = "Memory usage"
#       active           = true


#       interval = "60s"

#       unit = "By"


#     },
#   }
# }

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

      pick_col
        end_time,
        metric,
        metric_kind,
        metric_labels,
        value,
        value_type,
        project_id,
        region,
        function_name

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

resource "observe_link" "function_metrics" {
  for_each = length(observe_dataset.cloud_functions_metrics) > 0 ? {
    "Cloud Function" = {
      target = observe_dataset.cloud_functions_instances.oid
      fields = ["project_id:projectId", "region", "function_name:functionName"]
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
