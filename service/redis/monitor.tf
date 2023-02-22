resource "observe_monitor" "redis_memory_usage" {
  count       = local.enable_monitors ? 1 : 0
  disabled    = true
  is_template = true
  inputs      = { "redis_metrics" = one(observe_dataset.redis_metrics).oid }
  name        = local.datasets.memory_monitor.name
  workspace   = local.datasets.memory_monitor.workspace
  description = local.datasets.memory_monitor.description

  notification_spec {
    importance = "informational"
    merge      = "separate"
  }
  rule {
    source_column = "B"
    threshold {
      compare_function       = "greater"
      compare_values         = [75]
      lookback_time          = "5m0s"
      threshold_agg_function = "on_average"
    }
  }

  stage {
    pipeline = <<-EOT
            @A <- @"redis_metrics" {
                filter role = "primary"
                align 1m, frame(back: 2m), metric_stats_memory_usage_ratio_1pn1q0ht:avg(m("stats_memory_usage_ratio"))
                aggregate metric_stats_memory_usage_ratio_1pn1q0ht:sum(metric_stats_memory_usage_ratio_1pn1q0ht), group_by()
                make_event}
            @B <- @A {
                aggregate A: any_not_null(metric_stats_memory_usage_ratio_1pn1q0ht), group_by()
                make_col B: A*100
                }
            <- @B {}
            EOT

  }
}
