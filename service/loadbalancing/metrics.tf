
resource "observe_dataset" "load_balancing_metrics" {
  count = local.enable_metrics ? 1 : 0

  workspace   = local.datasets.load_balancing_metrics.workspace
  name        = local.datasets.load_balancing_metrics.name
  freshness   = local.datasets.load_balancing_metrics.freshness
  description = local.datasets.load_balancing_metrics.description

  inputs = {
    "metrics"       = var.google.metrics.oid
    "distributions" = var.google.distribution_metrics.oid
  }

  stage {
    input    = "metrics"
    pipeline = <<-EOF
      union @distributions
      filter left(metric_type,13) = "loadbalancing"
      make_col
        url_map_name:string(if(starts_with(string(resource_labels.url_map_name), "URL_MAP/"), split_part(string(resource_labels.url_map_name), "_", 3), string(resource_labels.url_map_name)))
      make_col 
        backend_name:string(resource_labels.backend_name),
        backend_target_name:string(resource_labels.backend_target_name),
        forwarding_rule_name:string(resource_labels.forwarding_rule_name),
        target_proxy_name:string(resource_labels.target_proxy_name),
        load_balancer_name:string(coalesce(
          url_map_name,
          string(resource_labels.load_balancer_name), 
          string(resource_labels.backend_target_name))),
        project_id:string(resource_labels.project_id),
        region:string(resource_labels.location),
        metric: replace(split_part(metric_type, "googleapis.com/", 2), "/", "_"),
        resource_labels:object(drop_fields(resource_labels, 
          "backend_name",
          "backend_target_name",
          "forwarding_rule_name",
          "target_proxy_name",
          "url_map_name",
          "project_id",
          "region"))
         EOF
  }

  stage {
    pipeline = <<-EOF
      pick_col 
        end_time,
        metric,
        metric_kind,
        metric_type,
        resource_labels,
        metric_labels,
        value,
        value_type,
        project_id,
        region,
        backend_name,
        backend_target_name,
        forwarding_rule_name,
        target_proxy_name,
        load_balancer_name,
        url_map_name,
        distribution_metadata

      set_col_visible
        metric_type: false, 
        metric_kind: false, 
        value_type: false
         EOF
  }
  # The terraform below dynamically writes set_metric statements in opal
  # This loops through the local.metrics_definitions map using for
  # [for metric, options in local.metrics_definitions :

  # metric is the key (avg_ttl) and options is the value (all the stuff between {})
  /* Example metric in local.metrics_definitions
        avg_ttl = {
            type               = "gauge"
            description        = <<-EOF
                            Average TTL for keys in this database.
                        EOF
            launchStage        = "GA"
            rollup             = "avg"
            aggregate          = "sum"
            metricCategory     = "none"
            google_metric_path = "redis.googleapis.com/keyspace/avg_ttl"
            label              = "Average TTL"
            unit               = "ms"
            metricBin          = "keyspace"
            valuetype          = "DOUBLE"

        }
        */

  # We filter the outer for loop checking whether options.launchStage is in the array defined by var.metric_launch_stages 
  # in the inner for loop we iterate through the fields in the options objects and check if the field is in the array defined by var.metric_interface_fields
  ##  and if so fd
  /* Example output
  set_metric options(
    aggregate: "sum",
    description: "Average TTL for keys in this database.\n",
    rollup: "avg",
    type: "gauge",
    unit: "ms"
    ), "avg_ttl"
    
  */

  stage {
    pipeline = <<-EOF
      interface "metric", metric:metric, value:value
      %{if local.enable_metric_dataset_alias}
      set_dataset_alias "gcp_lb"
      %{endif}
      ${join("\n\n",
    [for metric, options in local.merged_metrics_definitions :
      indent(2,
        # format takes result of join / forloop and metric as inputs
        format("set_metric options(\n%s\n), %q",
          join(",\n",
            [for optionFieldName, optionFieldNameValue in options :
              optionFieldName == "interval" ? format("%s: %s", optionFieldName, optionFieldNameValue) :
              # format takes optionFieldName and optionFieldNameValue as inputs
              format("%s: %q", optionFieldName, optionFieldNameValue)
              if contains(var.metric_interface_fields, optionFieldName) # filters inner for loop
            ]                                                           # end of inner for loop
          ),                                                            # end of inner join statement
      replace(replace(options.google_metric_path, "loadbalancing.googleapis.com/", ""), "/", "_")))
      if contains(var.metric_launch_stages, options.launchStage) # filters outer for loop
    ]                                                            # end of outer for loop and join statement
)}  

    EOF
}
}


resource "observe_link" "url_map_metrics" {
  for_each = length(observe_dataset.load_balancing_metrics) > 0 ? {
    "Url Map" = {
      target = observe_dataset.url_map.oid
      fields = ["url_map_name:name"]
    }
  } : {}

  workspace = var.workspace.oid
  source    = observe_dataset.load_balancing_metrics[0].oid
  target    = each.value.target
  fields    = each.value.fields
  label     = each.key
}


resource "observe_link" "backend_metrics" {
  for_each = length(observe_dataset.load_balancing_metrics) > 0 ? {
    "Backend Service" = {
      target = observe_dataset.backend.oid
      fields = ["backend_target_name:name"]
    }
  } : {}

  workspace = var.workspace.oid
  source    = observe_dataset.load_balancing_metrics[0].oid
  target    = each.value.target
  fields    = each.value.fields
  label     = each.key
}

resource "observe_link" "forwarding_rules_metrics" {
  for_each = length(observe_dataset.load_balancing_metrics) > 0 ? {
    "Frontend Forwarding Rule" = {
      target = observe_dataset.forwarding_rule.oid
      fields = ["forwarding_rule_name:frontend_name"]
    }
  } : {}

  workspace = var.workspace.oid
  source    = observe_dataset.load_balancing_metrics[0].oid
  target    = each.value.target
  fields    = each.value.fields
  label     = each.key
}

resource "observe_link" "target_proxy_metrics" {
  for_each = length(observe_dataset.load_balancing_metrics) > 0 ? {
    "Target Proxy" = {
      target = observe_dataset.target_proxy.oid
      fields = ["target_proxy_name:name"]
    }
  } : {}

  workspace = var.workspace.oid
  source    = observe_dataset.load_balancing_metrics[0].oid
  target    = each.value.target
  fields    = each.value.fields
  label     = each.key
}

resource "observe_link" "load_balancer_metrics" {
  for_each = length(observe_dataset.load_balancing_metrics) > 0 ? {
    "Load Balancer" = {
      target = observe_dataset.load_balancing_load_balancer.oid
      fields = [
        "load_balancer_name:name",
        "forwarding_rule_name:frontEnd",
        "backend_target_name:defaultServiceName"
      ]
    }
  } : {}

  workspace = var.workspace.oid
  source    = observe_dataset.load_balancing_metrics[0].oid
  target    = each.value.target
  fields    = each.value.fields
  label     = each.key
}
