resource "observe_monitor" "redis_memory_usage" {
  disabled  = false
  inputs    = { "stats_memory_usage_ratio_from_GCP/Redis Metrics" = "o:::dataset:41745695" }
  name      = "Redis Memory Usage"
  workspace = local.workspace.oid
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
            @A <- @"stats_memory_usage_ratio_from_GCP/Redis Metrics" {
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
