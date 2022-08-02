variable "workspace" {
  type        = object({ oid = string })
  description = "Workspace to apply module to."
}

variable "datastream" {
  type = object({
    oid     = string
    dataset = string
  })
  description = <<-EOF
    Datastream to derive OTEL resources from.
  EOF
}

variable "name_format" {
  type        = string
  description = "Format string to use for dataset names. Override to introduce a prefix or suffix."
  default     = "%s"
}

variable "max_expiry" {
  type        = string
  description = "Maximum expiry time for resources."
  default     = "4h"
}

variable "max_time_diff" {
  type        = string
  description = "Maximum time difference for processing time window."
  default     = "4h"
}

variable "freshness_default" {
  type        = string
  description = "Default dataset freshness. Can be overridden with freshness input"
  default     = "1m"
}

variable "freshness_overrides" {
  type        = map(string)
  description = "Freshness overrides by dataset. If absent, fall back to freshness_default"
  default     = {}
}

variable "feature_flags" {
  type        = map(bool)
  description = "Toggle features which are being rolled out or phased out."
  default     = {}
}

variable "services" {
  type        = map(bool)
  description = "Map of services to enable."
  default     = {}
}

variable "service_name_formats" {
  type        = map(string)
  description = "Override nested name_format for enabled services"
  default     = {}
}

variable "enable_service_all" {
  type        = bool
  default     = false
  description = <<-EOF
    Enable all services.
    If enabled, all services that are not explicitly set to false will be
    configured.
  EOF
}

variable "enable_service_cloudfunctions" {
  type        = bool
  default     = null
  description = <<-EOF
    Enable Cloud Functions service.
  EOF
}

variable "enable_service_cloudsql" {
  type        = bool
  default     = null
  description = <<-EOF
    Enable Cloud SQL service.
  EOF
}

variable "enable_service_compute" {
  type        = bool
  default     = null
  description = <<-EOF
    Enable Compute service.
  EOF
}

variable "enable_service_storage" {
  type        = bool
  default     = null
  description = <<-EOF
    Enable Cloud Storage service.
  EOF
}

variable "collection" {
  type = list(object({
    project = string
    subscription = object({
      name = string
    })
    service_account_key = object({
      private_key = string
    })
  }))
  default = []

  description = <<-EOF
    A list of observe/terraform-google-collection modules to pull data from.

    A set of pollers will be created for each element of the array. Each element
    in the array should describe a different GCP project.
  EOF
}

variable "metrics_poller_interval" {
  type        = string
  default     = "1m0s"
  description = <<-EOF
    How frequently to poll for metrics from Google Cloud Monitoring.
  EOF
}

variable "metrics_poller_include_metric_type_prefixes" {
  type        = list(string)
  default     = []
  description = <<-EOF
    Metrics with these Metric Types with these prefixes will be fetched.
    
    See https://cloud.google.com/monitoring/api/metrics_gcp for a list of Metric Types.
  EOF
}

variable "metrics_poller_exclude_metric_type_prefixes" {
  type        = list(string)
  default     = []
  description = <<-EOF
    Metrics with these Metric Types with these prefixes will not be fetched. This
    variable takes precendence over "metrics_poller_include_metric_type_prefixes".
    
    See https://cloud.google.com/monitoring/api/metrics_gcp for a list of Metric Types.
  EOF
}

