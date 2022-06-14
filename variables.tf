variable "workspace" {
  type        = object({ oid = string })
  description = "Workspace to apply module to."
}

variable "datastream" {
  type        = object({ dataset = string })
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
