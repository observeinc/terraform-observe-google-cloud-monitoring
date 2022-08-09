variable "workspace" {
  type        = object({ oid = string })
  description = "Workspace to apply module to."
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

variable "freshness_overrides" {
  type        = map(string)
  description = "Freshness overrides by dataset. If absent, fall back to freshness_default"
  default     = {}
}

variable "freshness_default" {
  type        = string
  description = "Default dataset freshness"
  default     = "2m"
}

variable "feature_flags" {
  type        = map(bool)
  description = "Toggle features which are being rolled out or phased out."
  default     = {}
}

variable "google" {
  type = object({
    resource_asset_inventory_records = object({ oid = string })
    logs                             = object({ oid = string })
    metrics                          = object({ oid = string })
    audit_logs                       = object({ oid = string })
  })
  description = "Google base module"
}

variable "metric_launch_stages" {
  type        = set(string)
  default     = ["GA", "BETA"]
  description = "Used by metric interface to pick metrics to include"
}

variable "metric_interface_fields" {
  type        = set(string)
  default     = ["type", "description", "rollup", "aggregate", "interval", "label", "unit"]
  description = "Used by metric interface to pick fields to map"
}
