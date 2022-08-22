
variable "name" {
  type        = string
  description = "Poller name. Should be unique per datastream."
}

# tflint-ignore: terraform_unused_declarations
variable "description" {
  type        = string
  description = "Short description meant for other humans"
  default     = ""
}

variable "workspace" {
  type        = object({ oid = string })
  description = "Workspace to apply module to."
}

variable "datastream" {
  type = object({
    oid = string
  })
  description = <<-EOF
    Datastream to derive resources from.
  EOF
}

variable "project" {
  type        = string
  description = "GCP project ID"
}

variable "service_account_private_key_json" {
  type        = string
  description = "A GCP Service Account Private Key with the 'monitoring/viewer' and 'cloudasset.viewer' roles."
}

variable "interval_duration" {
  type        = string
  default     = "1m0s"
  description = <<-EOF
    How frequently to poll for metrics from Google Cloud Monitoring.
  EOF
}

variable "include_metric_type_prefixes" {
  type        = list(string)
  default     = []
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