variable "workspace" {
  type        = object({ oid = string })
  description = "Workspace to apply module to."
}

variable "observation_dataset" {
  type        = string
  description = "Name of dataset to derive AWS resources from."
  default     = "Observation"
}

variable "datastreams" {
  type        = list(object({ dataset = string }))
  description = <<-EOF
    Datastreams to derive AWS resources from. If more than one datastream is
    provided, a dataset containing the union of all datastreams is created.
  EOF
  default     = []
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

variable "firehose_collection" {
  type        = map(bool)
  description = "Overrides for toggling firehose related transformations."
  default     = {}
}

variable "services" {
  type        = map(bool)
  description = "Map of services to enable."
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

variable "service_name_formats" {
  type        = map(string)
  description = "Override nested name_format for enabled services"
  default     = {}
}

variable "feature_flags" {
  type        = map(bool)
  description = "Toggle features which are being rolled out or phased out."
  default     = {}
}

variable "freshness_default" {
  type        = string
  description = "Default dataset freshness. Can be overridden with freshness input"
  default     = "1m"
}

variable "extract_labels" {
  type        = list(string)
  description = "List of tags to be extracted as columns for all objects."
  default     = []
}
