variable "workspace" {
  type        = object({ oid = string })
  description = "Workspace to apply module to."
}

variable "name_format" {
  type        = string
  description = "Format string to use for dataset names. Override to introduce a prefix or suffix."
  default     = "%s"
}

# variable "max_expiry" {
#   type        = string
#   description = "Maximum expiry time for resources."
#   default     = "4h"
# }

variable "freshness_duration_default" {
  type        = string
  description = "Default dataset freshness"
  default     = "1m"
}

variable "freshness_overrides" {
  type        = map(string)
  description = "Freshness overrides by dataset. If absent, fall back to freshness_duration_default"
  default     = {}
}

# variable "feature_flags" {
#   type        = map(bool)
#   description = "Toggle features which are being rolled out or phased out."
#   default     = {}
# }

variable "google" {
  type = object({
    pubsub_events = object({ oid = string, id = string })
  })
  description = "Google base module"
}

# variable "metric_interface_fields" {
#   type        = set(string)
#   default     = ["type", "description", "rollup", "aggregate", "interval"]
#   description = "Used by metric interface to pick fields to map"
# }
