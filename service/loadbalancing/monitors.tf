
resource "observe_monitor" "healthcheck_logs_non_healthy" {
  count     = local.enable_monitors ? 1 : 0
  disabled  = true
  workspace = var.workspace.oid
  name      = format("(TEMPLATE) %s", format(var.name_format, "LB Backend in non-healthy state"))
  inputs = {
    "Logs" = observe_dataset.health_check_logs.oid
  }
  description = <<-EOF
    An LB Backend is in a non-healthy state. 
  EOF

  notification_spec {
    importance = "informational"
    merge      = "separate"
  }

  rule {
    promote {
      description_field = "description"
      kind_field        = "timestamp"
      primary_key = [
        "instance_group_name",
        "messageId",
      ]
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

resource "observe_monitor" "high_4xx_rate" {
  count     = local.enable_metrics && local.enable_monitors ? 1 : 0
  disabled  = true
  workspace = var.workspace.oid
  name      = format("(TEMPLATE) %s", format(var.name_format, "High 4xx rate for an LB backend"))
  inputs = {
    "Metrics" = observe_dataset.load_balancing_metrics[0].oid
  }
  description = <<-EOF
    4xx responses were greater than 1% of the total responses for an LB backend
  EOF

  notification_spec {
    importance = "informational"
    merge      = "separate"
  }
  rule {
    source_column = "C"

    group_by_group {
      columns = ["backend_target_name"]
      # group_name = "Backend Service"
    }
    group_by_group {
      columns = [
        "load_balancer_name",
        "forwarding_rule_name",
        "backend_target_name",
      ]
      # group_name = "Load Balancer"
    }
    threshold {
      compare_function = "greater"
      compare_values   = [1]
      lookback_time    = "10m0s"
      # threshold_agg_function = "in_total"
    }
  }

  stage {
    alias    = "A"
    pipeline = <<-EOT
      filter metric_labels.response_code_class = "400"
      align 1m, frame(back: 1m), "metric-https_request_count":avg(m("https_request_count"))
      aggregate "metric-https_request_count":sum(@."metric-https_request_count"), group_by(backend_target_name, load_balancer_name, forwarding_rule_name)
      make_event
    EOT
  }
  stage {
    alias    = "B"
    input    = "Metrics"
    pipeline = <<-EOT
      align 1m, frame(back: 1m), "metric-https_request_count":avg(m("https_request_count"))
      aggregate "metric-https_request_count":sum(@."metric-https_request_count"), group_by(backend_target_name, load_balancer_name, forwarding_rule_name)
      make_event
    EOT
  }
  stage {
    input    = "A"
    pipeline = <<-EOT
      union @B
      aggregate A: any_not_null(@."metric-https_request_count"), B: any_not_null(@."metric-https_request_count"), group_by(backend_target_name, load_balancer_name, forwarding_rule_name)
      make_col C: A/B*100
    EOT
  }
}

resource "observe_monitor" "high_5xx_rate" {
  count     = local.enable_metrics && local.enable_monitors ? 1 : 0
  disabled  = true
  workspace = var.workspace.oid
  name      = format("(TEMPLATE) %s", format(var.name_format, "High 5xx rate for an LB backend"))
  inputs = {
    "Metrics" = observe_dataset.load_balancing_metrics[0].oid
  }
  description = <<-EOF
    5xx responses were greater than 1% of the total responses for an LB backend
  EOF

  notification_spec {
    importance = "informational"
    merge      = "separate"
  }
  rule {
    source_column = "C"

    group_by_group {
      columns = ["backend_target_name"]
      # group_name = "Backend Service"
    }
    group_by_group {
      columns = [
        "load_balancer_name",
        "forwarding_rule_name",
        "backend_target_name",
      ]
      # group_name = "Load Balancer"
    }
    threshold {
      compare_function = "greater"
      compare_values   = [1]
      lookback_time    = "10m0s"
      # threshold_agg_function = "in_total"
    }
  }

  stage {
    alias    = "A"
    pipeline = <<-EOT
      filter metric_labels.response_code_class = "500"
      align 1m, frame(back: 1m), "metric-https_request_count":avg(m("https_request_count"))
      aggregate "metric-https_request_count":sum(@."metric-https_request_count"), group_by(backend_target_name, load_balancer_name, forwarding_rule_name)
      make_event
    EOT
  }
  stage {
    alias    = "B"
    input    = "Metrics"
    pipeline = <<-EOT
      align 1m, frame(back: 1m), "metric-https_request_count":avg(m("https_request_count"))
      aggregate "metric-https_request_count":sum(@."metric-https_request_count"), group_by(backend_target_name, load_balancer_name, forwarding_rule_name)
      make_event
    EOT
  }
  stage {
    input    = "A"
    pipeline = <<-EOT
      union @B
      aggregate A: any_not_null(@."metric-https_request_count"), B: any_not_null(@."metric-https_request_count"), group_by(backend_target_name, load_balancer_name, forwarding_rule_name)
      make_col C: A/B*100
    EOT
  }
}
