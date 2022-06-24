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

variable "freshness_default" {
  type        = string
  description = "Default dataset freshness"
  default     = "1m"
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
  })
  description = "Google base module"
}

variable "metric_interface_fields" {
  type        = set(string)
  default     = ["type", "description", "rollup", "aggregate", "interval", "label"]
  description = "Used by metric interface to pick fields to map"
}

variable "metric_list" {
  type = set(string)
  default = [
    "cpu_utilization",
    "memory_total_usage",
    "network_connections",
    "disk_read_ops_count",
    "disk_write_ops_count",
    "disk_bytes_used",
  ]
  description = "Used by metric interface to pick metrics to include"
}
