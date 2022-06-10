# https://cloud.google.com/monitoring/api/metrics_gcp#gcp-compute
# https://registry.terraform.io/modules/terraform-google-modules/cloud-operations/google/latest/submodules/agent-policy
# brew install coreutils
# echo "alias python=/usr/bin/python3" >> ~/.zshrc

locals {
  compute_metrics = {
    "compute.googleapis.com/instance/disk/max_read_bytes_count" = {
      type        = "gauge"
      description = <<-EOF
          The CPU utilization percentage. Sampled every 60 seconds. After sampling, data is not visible for up to 240 seconds.
        EOF
      rollup      = "avg"
      aggregate   = "sum"
    },
    #   "cloudsql.googleapis.com/database/memory/total_usage" = {
    #     type        = "gauge"
    #     description = <<-EOF
    #       The total memory consumption in GiB. Sampled every 60 seconds. After sampling, data is not visible for up to 240 seconds.
    #     EOF
    #     rollup      = "avg"
    #     aggregate   = "sum"
    #   },
    #   # cloudsql.googleapis.com/database/postgresql/num_backends
    #   "cloudsql.googleapis.com/database/network/connections" = {
    #     type        = "gauge"
    #     description = <<-EOF
    #       The number of active network connections. Sampled every 60 seconds. After sampling, data is not visible for up to 240 seconds.
    #     EOF
    #     rollup      = "avg"
    #     aggregate   = "sum"
    #   },
    #   "cloudsql.googleapis.com/database/disk/write_ops_count" = {
    #     type        = "gauge"
    #     description = <<-EOF
    #       The number of write operations per second. Sampled every 60 seconds. After sampling, data is not visible for up to 240 seconds.
    #     EOF
    #     rollup      = "avg"
    #     aggregate   = "sum"
    #   },
    #   "cloudsql.googleapis.com/database/disk/read_ops_count" = {
    #     type        = "gauge"
    #     description = <<-EOF
    #       The number of read operations per second. Sampled every 60 seconds. After sampling, data is not visible for up to 240 seconds.
    #     EOF
    #     rollup      = "avg"
    #     aggregate   = "sum"
    #   },
    #   #logging.googleapis.com/log_entry_count - Log Entries by severity
    #   "logging.googleapis.com/log_entry_count" = {
    #     type        = "gauge"
    #     description = <<-EOF
    #       The disk utilization percentage. Sampled every 60 seconds. After sampling, data is not visible for up to 240 seconds.
    #     EOF
    #     rollup      = "avg"
    #     aggregate   = "sum"
    #   },
    #   "cloudsql.googleapis.com/database/memory/utilization" = {
    #     type        = "gauge"
    #     description = <<-EOF
    #       The memory utilization percentage. Sampled every 60 seconds. After sampling, data is not visible for up to 240 seconds.
    #     EOF
    #     rollup      = "avg"
    #     aggregate   = "sum"
    #   },

    # "cloudfunctions.googleapis.com/function/network_egress" = {
    #   type        = "delta"
    #   description = <<-EOF
    #     Outgoing network traffic of function, in bytes. Sampled every 60 seconds. After sampling, data is not visible for up to 240 seconds.
    #   EOF
    #   rollup      = "rate"
    #   aggregate   = "sum"
    # },
    # "cloudfunctions.googleapis.com/function/user_memory_bytes" = {
    #   type        = "delta"
    #   description = <<-EOF
    #     Distribution of maximum function's memory usage during execution, in bytes. Sampled every 60 seconds. After sampling, data is not visible for up to 180 seconds.
    #   EOF
    #   rollup      = "avg"
    #   aggregate   = "sum"
    # },
  }
}

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

 EOF
  }
}

#  make_col 
#     database_id:string(resource_labels.database_id),
#     project_id:string(resource_labels.project_id),
#     region:string(resource_labels.region)

#   pick_col
#     start_time,
#     end_time,
#     metric_type,
#     metric_kind,
#     metric_labels,
#     value,
#     value_type,
#     project_id,
#     region,
#     database_id

#   interface "metric", metric:metric_type, value:value
#   ${join("\n\n", [for metric, options in local.cloudsql_metrics : indent(2, format("set_metric options(\n%s\n), %q", join(",\n", [for k, v in options : k == "interval" ? format("%s: %s", k, v) : format("%s: %q", k, v)]), metric))])}

# resource "observe_link" "compute_metrics" {
#   for_each = length(observe_dataset.cloudsql_metrics) > 0 ? {
#     "Cloud Function" = {
#       target = observe_dataset.cloudsql.oid
#       fields = ["project_id", "region", "database_id"]
#     }
#   } : {}

#   workspace = var.workspace.oid
#   source    = observe_dataset.cloudsql_metrics[0].oid
#   target    = each.value.target
#   fields    = each.value.fields
#   label     = each.key
# }
