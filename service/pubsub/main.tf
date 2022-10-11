
locals {
  # tflint-ignore: terraform_unused_declarations
  enable_metrics = lookup(var.feature_flags, "metrics", true)
  # tflint-ignore: terraform_unused_declarations
  enable_monitors = lookup(var.feature_flags, "monitors", true)
  # tflint-ignore: terraform_unused_declarations
  enable_both = lookup(var.feature_flags, "monitors", true) && lookup(var.feature_flags, "metrics", true)

  freshness = merge({
    cloudsql = "5m",
    metrics  = "1m",
    logging  = "1m",
  }, var.freshness_overrides)
}

