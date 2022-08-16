
resource "observe_dataset" "load_balancing_metrics" {
  count = local.enable_metrics ? 1 : 0

  workspace = var.workspace.oid
  name      = format(var.name_format, "Metrics")
  freshness = lookup(var.freshness_overrides, "load_balancing_metrics", var.freshness_default)

  inputs = {
    "metrics"       = var.google.metrics.oid
    "distributions" = var.google.distribution_metrics.oid
  }

  stage {
    input = "metrics"
    pipeline = <<-EOF
      union @distributions
      filter left(metric_type,13) = "loadbalancing"
      make_col
        url_map_name:string(if(starts_with(resource_labels.url_map_name, "URL_MAP/"), split_part(string(resource_labels.url_map_name), "_", 3), string(resource_labels.url_map_name)))
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


resource "observe_link" "url_maps_metrics" {
  for_each = length(observe_dataset.load_balancing_metrics) > 0 ? {
    "Url Map" = {
      target = observe_dataset.url_maps.oid
      fields = ["url_map_name:name"]
    }
  } : {}

  workspace = var.workspace.oid
  source    = observe_dataset.load_balancing_metrics[0].oid
  target    = each.value.target
  fields    = each.value.fields
  label     = each.key
}


resource "observe_link" "backend_services_metrics" {
  for_each = length(observe_dataset.load_balancing_metrics) > 0 ? {
    "Backend Service" = {
      target = observe_dataset.backend_services.oid
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
      target = observe_dataset.forwarding_rules.oid
      fields = ["forwarding_rule_name:frontend_name"]
    }
  } : {}

  workspace = var.workspace.oid
  source    = observe_dataset.load_balancing_metrics[0].oid
  target    = each.value.target
  fields    = each.value.fields
  label     = each.key
}

resource "observe_link" "target_proxies_metrics" {
  for_each = length(observe_dataset.load_balancing_metrics) > 0 ? {
    "Target Proxy" = {
      target = observe_dataset.target_proxies.oid
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
      target = observe_dataset.load_balancers.oid
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