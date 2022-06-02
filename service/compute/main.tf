
locals {
  enable_metrics = lookup(var.feature_flags, "metrics", true)
  # tflint-ignore: terraform_unused_declarations
  enable_monitors = lookup(var.feature_flags, "monitors", true)
}

resource "observe_dataset" "compute" {
  workspace = var.workspace.oid
  name      = format(var.name_format, "Instance")
  freshness = var.freshness_default

  inputs = {
    "events" = var.google.resource_asset_inventory_records.oid
  }

  # https://cloud.google.com/compute/docs
  stage {
    input    = "events"
    pipeline = <<-EOF
      filter  starts_with(asset_type, "compute.googleapis.com/Instance")

      extract_regex name, /projects\/(?P<project_id>[^\/+]+)\/zones\/(?P<zone>[^\/+]+)\/instances\/(?P<instanceName>[^\/+]+)/
      
      extract_regex zone, /(?P<region>[a-z]+[-]+[a-z,0-9]+)/

      make_col
        assetInventoryName:name,
        name:string(data.name),
        instance_id:string(data.id)

      make_resource options(expiry:${var.max_expiry}),
        name,
        cpuPlatform: string(data.cpuPlatform),
        machineType: string(data.machineType),
        project_id, 
        region, 
        instance_id,
        primary_key(assetInventoryName),
        valid_for(if(deleted, 1ns, ${var.max_expiry}))

      add_key name
      set_label name

      add_key project_id, region, instance_id
    EOF
  }
}

<<<<<<< HEAD
resource "observe_dataset" "compute_logs" {
  workspace = var.workspace.oid
  name      = format(var.name_format, "Compute Logs")
  freshness = var.freshness_default

  inputs = {
    "audit_logs" = var.google.audit_logs.oid
  }

  stage {
    pipeline = <<-EOF
      filter resourceType = "gce_instance"

      extract_regex string(resourceLabels.zone), /(?P<region>[a-z]+[-]+[a-z,0-9]+)/

      pick_col 
         timestamp,
         request,
         response,
         requestMetadata,
         authenticationInfo,
         project_id: string(resourceLabels.project_id),
         region,
         instance_id: string(resourceLabels.instance_id),
         zone: string(resourceLabels.zone)
    EOF
  }
}

# resource "observe_link" "sql_logs" {
#   workspace = var.workspace.oid
#   source    = observe_dataset.sql_logs.oid
#   target    = each.value.target
#   fields    = each.value.fields
#   label     = each.key

#   for_each = {
#     "Database" = {
#       target = observe_dataset.cloudsql.oid
#       fields = ["project_id", "region", "database_id"]
#     }
#   }
# }
=======



>>>>>>> 24c23d7 (feat: Compute - creation of compute content)


# cloudsql.googleapis.com/database/memory/usage


# cloudsql.googleapis.com/database/memory/total_usage
# cloudsql.googleapis.com/database/state
# 
# cloudsql.googleapis.com/database/disk/bytes_used
# cloudsql.googleapis.com/database/disk/bytes_used_by_data_type
# https://cloud.google.com/sql/docs/mysql/admin-api/metrics
<<<<<<< HEAD
locals {
  # cloudsql_metrics = {
  #   "cloudsql.googleapis.com/database/cpu/utilization" = {
  #     type        = "gauge"
  #     description = <<-EOF
  #       The CPU utilization percentage. Sampled every 60 seconds. After sampling, data is not visible for up to 240 seconds.
  #     EOF
  #     rollup      = "avg"
  #     aggregate   = "sum"
  #   },
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
  # }
}

# resource "observe_dataset" "compute_metrics" {
#   count = local.enable_metrics ? 1 : 0

#   workspace = var.workspace.oid
#   name      = format(var.name_format, "SQL Metrics")
#   freshness = var.freshness_default

#   inputs = {
#     "metrics" = var.google.metrics.oid
#   }

#   stage {
#     pipeline = <<-EOF
#       filter resource_type = "cloudsql_database"

#       make_col 
#         database_id:string(resource_labels.database_id),
#         project_id:string(resource_labels.project_id),
#         region:string(resource_labels.region)

#       pick_col
#         start_time,
#         end_time,
#         metric_type,
#         metric_kind,
#         metric_labels,
#         value,
#         value_type,
#         project_id,
#         region,
#         database_id

#       interface "metric", metric:metric_type, value:value
#       ${join("\n\n", [for metric, options in local.cloudsql_metrics : indent(2, format("set_metric options(\n%s\n), %q", join(",\n", [for k, v in options : k == "interval" ? format("%s: %s", k, v) : format("%s: %q", k, v)]), metric))])}
#     EOF
#   }
# }

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
=======
>>>>>>> 24c23d7 (feat: Compute - creation of compute content)

# resource "observe_board" "function" {
#   for_each = length(observe_dataset.function_metrics) > 0 ? toset(["set", "singleton"]) : toset([])

#   dataset = observe_dataset.function.oid
#   name    = "Monitoring"
#   json = templatefile("${path.module}/boards/monitoring.json", {
#     dataset_cloudFunctionsFunctionMetrics = observe_dataset.function_metrics[0].oid
#     dataset_cloudFunctionsFunction        = observe_dataset.function.oid
#   })
#   type = each.key
# }

