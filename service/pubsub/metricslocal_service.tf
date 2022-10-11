locals {
  service_metrics_definitions = {
    "api_request_count" = {
      type             = "delta"
      description      = <<-EOF
          The count of completed requests. Sampled every 60s and may take up to 180s to display.
      EOF
      launchStage      = "GA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "none"
      googleMetricPath = "serviceruntime.googleapis.com/api/request_count"
      label            = "Request count"
      active           = true
      interval         = "60s"
      metricBin        = "api"
    },
    "api_request_latencies" = {
      type             = "delta"
      description      = <<-EOF
          Distribution of latencies in seconds for non-streaming requests. Sampled every 60s and may take up to 180s to display.
      EOF
      launchStage      = "GA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "none"
      googleMetricPath = "serviceruntime.googleapis.com/api/request_latencies"
      label            = "Request latencies"
      active           = true
      interval         = "60s"
      unit             = "s"
      metricBin        = "api"
    },
    "api_request_latencies_backend" = {
      type             = "delta"
      description      = <<-EOF
          Distribution of backend latencies in seconds for non-streaming requests. Sampled every 60s and may take up to 180s to display.
      EOF
      launchStage      = "GA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "none"
      googleMetricPath = "serviceruntime.googleapis.com/api/request_latencies_backend"
      label            = "Request backend latencies"
      active           = true
      interval         = "60s"
      unit             = "s"
      metricBin        = "api"
    },
    "api_request_latencies_overhead" = {
      type             = "delta"
      description      = <<-EOF
          Distribution of request latencies in seconds for non-streaming requests excluding the backend. Sampled every 60s and may take up to 180s to display.
      EOF
      launchStage      = "GA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "none"
      googleMetricPath = "serviceruntime.googleapis.com/api/request_latencies_overhead"
      label            = "Request overhead latencies"
      active           = true
      interval         = "60s"
      unit             = "s"
      metricBin        = "api"
    },
    "api_request_sizes" = {
      type             = "delta"
      description      = <<-EOF
          Distribution of request sizes in bytes recorded at request completion. Sampled every 60s and may take up to 180s to display.
      EOF
      launchStage      = "GA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "none"
      googleMetricPath = "serviceruntime.googleapis.com/api/request_sizes"
      label            = "Request sizes"
      active           = true
      interval         = "60s"
      unit             = "By"
      metricBin        = "api"
    },
    "api_response_sizes" = {
      type             = "delta"
      description      = <<-EOF
          Distribution of response sizes in bytes recorded at request completion. Sampled every 60s and may take up to 180s to display.
      EOF
      launchStage      = "GA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "none"
      googleMetricPath = "serviceruntime.googleapis.com/api/response_sizes"
      label            = "Response sizes"
      active           = true
      interval         = "60s"
      unit             = "By"
      metricBin        = "api"
    },
    "quota_allocation_usage" = {
      type             = "gauge"
      description      = <<-EOF
          The total consumed allocation quota. Values reported more than 1/min are dropped. If no changes are received in quota usage, the last value is repeated at least every 24 hours. Sampled every 60s and may take up to  to display.
      EOF
      launchStage      = "GA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "none"
      googleMetricPath = "serviceruntime.googleapis.com/quota/allocation/usage"
      label            = "Allocation quota usage"
      active           = true
      interval         = "60s"
      metricBin        = "quota"
    },
    "quota_exceeded" = {
      type             = "gauge"
      description      = <<-EOF
          The error happened when the quota limit was exceeded. Sampled every 60s and may take up to  to display.
      EOF
      launchStage      = "GA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "none"
      googleMetricPath = "serviceruntime.googleapis.com/quota/exceeded"
      label            = "Quota exceeded error"
      active           = true
      interval         = "60s"
      metricBin        = "quota"
    },
    "quota_limit" = {
      type             = "gauge"
      description      = <<-EOF
          The limit for the quota. Sampled every 86400s and may take up to  to display.
      EOF
      launchStage      = "GA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "none"
      googleMetricPath = "serviceruntime.googleapis.com/quota/limit"
      label            = "Quota limit"
      active           = true
      interval         = "86400s"
      metricBin        = "quota"
    },
    "quota_rate_net_usage" = {
      type             = "delta"
      description      = <<-EOF
          The total consumed rate quota.
      EOF
      launchStage      = "GA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "none"
      googleMetricPath = "serviceruntime.googleapis.com/quota/rate/net_usage"
      label            = "Rate quota usage"
      active           = true
      metricBin        = "quota"
    },
    "reserved_metric1" = {
      type             = "delta"
      description      = <<-EOF
          Deprecated. Sampled every 60s and may take up to 180s to display.
      EOF
      launchStage      = "EARLY_ACCESS"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "none"
      googleMetricPath = "serviceruntime.googleapis.com/reserved/metric1"
      label            = "Deprecated"
      active           = false
      interval         = "60s"
      metricBin        = "reserved"
    },
  }
}
