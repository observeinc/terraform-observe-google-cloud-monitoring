variable "workspace" {
  type        = object({ oid = string, id = string })
  description = "Workspace to apply module to."
}

variable "datastream" {
  type = object({
    oid     = string
    dataset = string
    name    = string
  })
  description = <<-EOF
    Datastream to derive resources from.
  EOF
}

variable "name_format" {
  type        = string
  description = "Format string to use for dataset names. Override to introduce a prefix or suffix."
  default     = "GCP/%s"
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

variable "freshness_default_duration" {
  type        = string
  description = "Default dataset freshness. Can be overridden with freshness input"
  default     = "5m"
}

variable "freshness_overrides" {
  type        = map(string)
  description = "Freshness overrides by dataset. If absent, fall back to freshness_duration_default"
  default     = {}
}

variable "feature_flags" {
  type        = list(string)
  description = "List of feature flags. This field is experimental, please contact support for guidance."
  default     = []
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

# variable "enable_service_all" {
#   type        = bool
#   default     = true
#   description = <<-EOF
#     Enable all services.
#     If enabled, all services that are not explicitly set to false will be
#     configured.
#   EOF
# }

variable "enable_service_bigquery" {
  type        = bool
  default     = true
  description = <<-EOF
    Enable BigQuery service.
  EOF
}


variable "enable_service_cloudfunctions" {
  type        = bool
  default     = true
  description = <<-EOF
    Enable Cloud Functions service.
  EOF
}

variable "enable_service_cloudrun" {
  type        = bool
  default     = true
  description = <<-EOF
    Enable Cloud Run service.
  EOF
}


variable "enable_service_cloudsql" {
  type        = bool
  default     = true
  description = <<-EOF
    Enable Cloud SQL service.
  EOF
}

variable "enable_service_compute" {
  type        = bool
  default     = true
  description = <<-EOF
    Enable Compute service.
  EOF
}

variable "enable_service_storage" {
  type        = bool
  default     = true
  description = <<-EOF
    Enable Cloud Storage service.
  EOF
}

variable "enable_service_load_balancing" {
  type        = bool
  default     = true
  description = <<-EOF
    Enable Cloud Load Balancing service.
  EOF
}

variable "enable_service_pubsub" {
  type        = bool
  default     = true
  description = <<-EOF
    Enable Pub Sub service.
  EOF
}

variable "enable_service_cloudscheduler" {
  type        = bool
  default     = true
  description = <<-EOF
    Enable Cloud Scheduler service.
  EOF
}
variable "enable_service_gke" {
  type        = bool
  default     = true
  description = <<-EOF
    Enable GKE service.
  EOF
}

variable "enable_service_redis" {
  type        = bool
  default     = true
  description = <<-EOF
    Enable Redis service.
  EOF
}

# variable "enable_service_memcache" {
#   type        = bool
#   default     = true
#   description = <<-EOF
#     Enable Memcache service.
#   EOF
# }
