locals {
  # enable_metrics = lookup(var.feature_flags, "metrics", true)
  # tflint-ignore: terraform_unused_declarations
  # enable_monitors = lookup(var.feature_flags, "monitors", true)

  freshness = merge({
    gke     = "5m",
    metrics = "1m",
    logging = "1m",
  }, var.freshness_overrides)

}

