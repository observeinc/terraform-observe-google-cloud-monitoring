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
    Datastream to derive AWS resources from.
  EOF
}

# Dataset properties

variable "max_expiry_duration" {
  type        = string
  default     = "4h"
  description = "Maximum expiry time for resources."
}

variable "max_time_diff_duration" {
  type        = string
  description = "Maximum time difference for processing time window."
  default     = "4h"
}

variable "freshness_default_duration" {
  type        = string
  description = "Default dataset freshness. Can be overridden with freshness input"
  default     = "1m"
}

# AWS Services

variable "enable_service_cloudfunctions" {
  type        = bool
  default     = false
  description = <<-EOF
    Enable Cloud Functions service.
  EOF
}

variable "enable_service_cloudsql" {
  type        = bool
  default     = false
  description = <<-EOF
    Enable Cloud SQL service.
  EOF
}

variable "enable_service_compute" {
  type        = bool
  default     = true
  description = <<-EOF
    Enable Compute Engine service.
  EOF
}
