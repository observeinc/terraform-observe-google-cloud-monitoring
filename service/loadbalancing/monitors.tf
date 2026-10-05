
resource "observe_monitor_v2" "healthcheck_logs_non_healthy" {
  count                    = local.enable_monitors ? 1 : 0
  disabled                 = true
  workspace                = var.workspace.oid
  name                     = format("(TEMPLATE) %s", format(var.name_format, "LB Backend in non-healthy state"))
  rule_kind                = "promote"
  lookback_time            = "0s"
  data_stabilization_delay = local.datasets.health_check_logs.freshness
  inputs = {
    "Logs" = observe_dataset.health_check_logs.oid
  }
  description = <<-EOF
    An LB Backend is in a non-healthy state. 
  EOF

  groupings {
    column_path {
      name = "instance_group_name"
    }
  }
  groupings {
    column_path {
      name = "messageId"
    }
  }
  rules {
    level = "informational"

    promote {
    }
  }

  stage {
    pipeline = <<-EOT
      filter healthState != "HEALTHY"
      make_col 
        description:strcat("ELB Health Check in state: ", healthState, " for group: ", instance_group_name)
    EOT
  }
}

resource "observe_monitor_v2" "high_4xx_rate" {
  count                    = local.enable_metrics && local.enable_monitors ? 1 : 0
  disabled                 = true
  workspace                = var.workspace.oid
  name                     = format("(TEMPLATE) %s", format(var.name_format, "High 4xx rate for an LB backend"))
  rule_kind                = "threshold"
  lookback_time            = "10m0s"
  data_stabilization_delay = local.datasets.load_balancing_metrics.freshness
  inputs = {
    "Metrics" = observe_dataset.load_balancing_metrics[0].oid
  }
  description = <<-EOF
    4xx responses were greater than 1% of the total responses for an LB backend
  EOF

  groupings {
    column_path {
      name = "backend_target_name"
    }
  }
  groupings {
    column_path {
      name = "load_balancer_name"
    }
  }
  groupings {
    column_path {
      name = "forwarding_rule_name"
    }
  }

  rules {
    level = "informational"

    threshold {
      aggregation       = "max"
      value_column_name = "C"

      compare_values {
        compare_fn = "greater"
        value_float64 = [
          1,
        ]
      }
    }
  }

  stage {
    pipeline = <<-EOT
      align 1m, frame(back: 1m), request_count:avg(m("https_request_count"))
      aggregate errors:sum(if(string(metric_labels.response_code_class) = "400", request_count, 0)), total:sum(request_count), group_by(backend_target_name, load_balancer_name, forwarding_rule_name)
      make_col C:100 * float64(errors) / float64(total)
    EOT
  }
}

resource "observe_monitor_v2" "high_5xx_rate" {
  count                    = local.enable_metrics && local.enable_monitors ? 1 : 0
  disabled                 = true
  workspace                = var.workspace.oid
  name                     = format("(TEMPLATE) %s", format(var.name_format, "High 5xx rate for an LB backend"))
  rule_kind                = "threshold"
  lookback_time            = "10m0s"
  data_stabilization_delay = local.datasets.load_balancing_metrics.freshness
  inputs = {
    "Metrics" = observe_dataset.load_balancing_metrics[0].oid
  }
  description = <<-EOF
    5xx responses were greater than 1% of the total responses for an LB backend
  EOF

  groupings {
    column_path {
      name = "backend_target_name"
    }
  }
  groupings {
    column_path {
      name = "load_balancer_name"
    }
  }
  groupings {
    column_path {
      name = "forwarding_rule_name"
    }
  }

  rules {
    level = "informational"

    threshold {
      aggregation       = "max"
      value_column_name = "C"

      compare_values {
        compare_fn = "greater"
        value_float64 = [
          1,
        ]
      }
    }
  }

  stage {
    pipeline = <<-EOT
      align 1m, frame(back: 1m), request_count:avg(m("https_request_count"))
      aggregate errors:sum(if(string(metric_labels.response_code_class) = "500", request_count, 0)), total:sum(request_count), group_by(backend_target_name, load_balancer_name, forwarding_rule_name)
      make_col C:100 * float64(errors) / float64(total)
    EOT
  }
}
