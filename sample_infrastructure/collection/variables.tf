variable "project_id" {
  type        = string
  description = "GCP project to deploy sample env"
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
    "logging.googleapis.com/",
    "iam.googleapis.com/",
    "monitoring.googleapis.com/",
    "pubsub.googleapis.com/",
    "storage.googleapis.com/",
    "cloudsql.googleapis.com/",
    "compute.googleapis.com/",
    "serviceruntime.googleapis.com/",
    "loadbalancing.googleapis.com/",
    "kubernetes.io/",
    "redis.googleapis.com/",
    "run.googleapis.com/"
  ]
}
