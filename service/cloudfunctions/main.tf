
locals {
  enable_metrics = lookup(var.feature_flags, "metrics", true)
  # tflint-ignore: terraform_unused_declarations
  enable_monitors = lookup(var.feature_flags, "monitors", true)
}

resource "observe_dataset" "function" {
  workspace = var.workspace.oid
  name      = format(var.name_format, "Function")
  freshness = var.freshness_default

  inputs = {
    "events" = var.google.resource_asset_inventory_records.oid
  }

  // https://cloud.google.com/functions/docs/reference/rest/v1/projects.locations.functions#CloudFunction
  stage {
    input    = "events"
    pipeline = <<-EOF
      filter asset_type = "cloudfunctions.googleapis.com/CloudFunction"
      make_col
        assetInventoryName:name,
        name:string(data.name)
      make_resource options(expiry:${var.max_expiry}),
        name,
        availableMemoryMb:int64(data.availableMemoryMb),
        buildId:string(data.buildId),
        buildName:string(data.buildName),
        description:string(data.description),
        dockerRegistry:string(data.dockerRegistry),
        entryPoint:string(data.entryPoint),
        environmentVariables:object(data.environmentVariables),
        eventTrigger:object(data.eventTrigger),
        httpsTrigger:object(data.httpsTrigger),
        ingressSettings:string(data.ingressSettings),
        maxInstances:int64(data.maxInstances),
        runtime:string(data.runtime),
        serviceAccountEmail:string(data.serviceAccountEmail),
        sourceArchiveUrl:string(data.sourceArchiveUrl),
        status:string(data.status),
        timeout:string(data.timeout),
        updateTime:parse_isotime(string(data.updateTime)),
        versionId:string(data.versionId),
        primary_key(assetInventoryName),
        valid_for(if(deleted, 1ns, ${var.max_expiry}))

      add_key name
      set_label name
      extract_regex name, /projects\/(?P<projectId>[^\/+]+)\/locations\/(?P<region>[^\/+]+)\/functions\/(?P<functionName>[^\/+]+)/
      add_key projectId, region, functionName
    EOF
  }
}

resource "observe_dataset" "function_logs" {
  workspace = var.workspace.oid
  name      = format(var.name_format, "Function Logs")
  freshness = var.freshness_default

  inputs = {
    "logs" = var.google.logs.oid
  }

  stage {
    pipeline = <<-EOF
      filter resourceType = "cloud_function"

      make_col 
        functionName:string(resourceLabels.function_name),
        projectId:string(resourceLabels.project_id),
        region:string(resourceLabels.region)

      pick_col 
        timestamp,
        receiveTimestamp,
        logName,
        severity,
        textPayload,
        projectId,
        region,
        functionName
    EOF
  }
}

resource "observe_link" "function_logs" {
  workspace = var.workspace.oid
  source    = observe_dataset.function_logs.oid
  target    = each.value.target
  fields    = each.value.fields
  label     = each.key

  for_each = {
    "Cloud Function" = {
      target = observe_dataset.function.oid
      fields = ["projectId", "region", "functionName"]
    }
  }
}


locals {
  function_metrics = {
    "cloudfunctions.googleapis.com/function/active_instances" = {
      type        = "gauge"
      description = <<-EOF
        The number of active function instances. Sampled every 60 seconds. After sampling, data is not visible for up to 240 seconds.
      EOF
      rollup      = "avg"
      aggregate   = "sum"
    },
    "cloudfunctions.googleapis.com/function/execution_count" = {
      type        = "delta"
      description = <<-EOF
        Count of function executions broken down by status. Sampled every 60 seconds. After sampling, data is not visible for up to 240 seconds.
      EOF
      rollup      = "rate"
      aggregate   = "sum"
    },
    "cloudfunctions.googleapis.com/function/execution_times" = {
      type        = "gauge"
      description = <<-EOF
        The number of active function instances. Sampled every 60 seconds. After sampling, data is not visible for up to 240 seconds.
      EOF
      rollup      = "avg"
      aggregate   = "sum"
    },
    "cloudfunctions.googleapis.com/function/instance_count" = {
      type        = "gauge"
      description = <<-EOF
        The number of active function instances. Sampled every 60 seconds. After sampling, data is not visible for up to 240 seconds.
      EOF
      rollup      = "avg"
      aggregate   = "sum"
    },
    "cloudfunctions.googleapis.com/function/network_egress" = {
      type        = "delta"
      description = <<-EOF
        Outgoing network traffic of function, in bytes. Sampled every 60 seconds. After sampling, data is not visible for up to 240 seconds.
      EOF
      rollup      = "rate"
      aggregate   = "sum"
    },
    "cloudfunctions.googleapis.com/function/user_memory_bytes" = {
      type        = "delta"
      description = <<-EOF
        Distribution of maximum function's memory usage during execution, in bytes. Sampled every 60 seconds. After sampling, data is not visible for up to 180 seconds.
      EOF
      rollup      = "avg"
      aggregate   = "sum"
    },
  }
}

resource "observe_dataset" "function_metrics" {
  count = local.enable_metrics ? 1 : 0

  workspace = var.workspace.oid
  name      = format(var.name_format, "Function Metrics")
  freshness = var.freshness_default

  inputs = {
    "metrics" = var.google.metrics.oid
  }

  stage {
    pipeline = <<-EOF
      filter resource_type = "cloud_function"

      make_col 
        function_name:string(resource_labels.function_name),
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
        function_name

      interface "metric", metric:metric_type, value:value
      ${join("\n\n", [for metric, options in local.function_metrics : indent(2, format("set_metric options(\n%s\n), %q", join(",\n", [for k, v in options : k == "interval" ? format("%s: %s", k, v) : format("%s: %q", k, v)]), metric))])}
    EOF
  }
}

resource "observe_link" "function_metrics" {
  workspace = var.workspace.oid
  source    = observe_dataset.function_metrics[0].oid
  target    = each.value.target
  fields    = each.value.fields
  label     = each.key

  for_each = length(observe_dataset.function_metrics) > 0 ? {
    "Cloud Function" = {
      target = observe_dataset.function.oid
      fields = ["project_id:projectId", "region", "function_name:functionName"]
    }
  } : {}
}
