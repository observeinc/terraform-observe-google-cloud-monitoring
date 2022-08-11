locals{
    enable_metrics = lookup(var.feature_flags, "metrics", true)
    freshness = merge({
        bigquery = "5m",
        metrics  = "1m",
        logging  = "1m",
  }, var.freshness_overrides)
}