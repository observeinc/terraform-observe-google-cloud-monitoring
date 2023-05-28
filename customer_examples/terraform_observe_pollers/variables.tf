variable "project_id" {
  type        = string
  description = "GCP project to deploy sample env"
}

variable "datastream_name" {
  type        = string
  description = "GCP datastream"
  default     = "GCP"
}

variable "region" {
  type        = string
  description = "GCP region to deploy sample env"
}

variable "name_format" {
  type        = string
  description = "Format string to use for infra names."
}

variable "include_metric_type_prefixes" {
  type = list(string)
  default = [
    "cloudfunctions.googleapis.com/",
    "cloudsql.googleapis.com/",
    "compute.googleapis.com/",
    "iam.googleapis.com/",
    "logging.googleapis.com/",
    "monitoring.googleapis.com/",
    "pubsub.googleapis.com/",
    "serviceruntime.googleapis.com/",
    "storage.googleapis.com/",
    "bigquery.googleapis.com/",
    "loadbalancing.googleapis.com",
    "kubernetes.io/",
    "redis.googleapis.com",
    "memcache.googleapis.com",
    "vpcaccess.googleapis.com"
  ]
  description = <<-EOF
    Metrics with these Metric Types with these prefixes will be fetched.
    
    See https://cloud.google.com/monitoring/api/metrics_gcp for a list of Metric Types.
  EOF
}

variable "exclude_metric_type_prefixes" {
  type        = list(string)
  default     = []
  description = <<-EOF
    Metrics with these Metric Types with these prefixes will not be fetched. This
    variable takes precendence over "metrics_poller_include_metric_type_prefixes".
    
    See https://cloud.google.com/monitoring/api/metrics_gcp for a list of Metric Types.
  EOF
}
