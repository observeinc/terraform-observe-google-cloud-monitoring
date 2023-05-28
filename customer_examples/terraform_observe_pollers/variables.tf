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

variable "metric_prefixes" {
  description = "Default metric prefixes to poll"
  type        = list(string)
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
    "vpcaccess.googleapis.com"
  ]
}
