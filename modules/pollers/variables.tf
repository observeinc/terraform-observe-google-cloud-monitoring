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

variable "name_format" {
  type        = string
  description = "Format string to use for dataset names. Override to introduce a prefix or suffix."
  default     = "%s"
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

