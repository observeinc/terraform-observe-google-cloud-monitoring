resource "observe_monitor_v2" "redis_memory_usage" {
  count                    = local.enable_monitors ? 1 : 0
  disabled                 = true
  inputs                   = { "redis_metrics" = one(observe_dataset.redis_metrics).oid }
  name                     = local.datasets.memory_monitor.name
  workspace                = local.datasets.memory_monitor.workspace
  description              = local.datasets.memory_monitor.description
  rule_kind                = "threshold"
  lookback_time            = "5m0s"
  data_stabilization_delay = local.datasets.redis_metrics.freshness

  rules {
    level = "informational"

    threshold {
      aggregation       = "avg_of"
      value_column_name = "B"

      compare_values {
        compare_fn = "greater"
        value_float64 = [
          75,
        ]
      }
    }
  }

  stage {
    pipeline = <<-EOT
            @A <- @"redis_metrics" {
                filter role = "primary"
                align 1m, frame(back: 1m), metric_stats_memory_usage_ratio_1pn1q0ht:avg(m("stats_memory_usage_ratio"))
                aggregate metric_stats_memory_usage_ratio_1pn1q0ht:sum(metric_stats_memory_usage_ratio_1pn1q0ht), group_by()
                make_event}
            <- @A {
                aggregate A: any_not_null(metric_stats_memory_usage_ratio_1pn1q0ht), group_by()
                make_col B: A*100
                }
            EOT

  }
}
