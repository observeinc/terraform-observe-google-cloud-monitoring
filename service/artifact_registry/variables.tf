
variable "workspace" {
  type        = object({ oid = string, id = string })
  description = "Workspace to apply module to."
  default     = null
}

variable "name_format" {
  type        = string
  description = <<-EOF
    Format string to use for dataset names. Override to introduce a prefix or
    suffix.
  EOF
  default     = "unknown/%s"
}

variable "freshness_overrides" {
  type        = map(string)
  description = "Freshness overrides by dataset. If absent, fall back to freshness_default"
  default     = {}
}

# tflint-ignore: terraform_unused_declarations
variable "datastream" {
  type        = object({ dataset = string })
  description = <<-EOF
    The datastream used to derive resources from.
  EOF
  default     = null
}

variable "freshness_default_duration" {
  type        = string
  description = "Dataset freshness"
  default     = "1m"
}

# tflint-ignore: terraform_unused_declarations
variable "max_expiry_duration" {
  type        = string
  description = "Maximum expiry time for resources."
  default     = "4h"
}

# tflint-ignore: terraform_unused_declarations
variable "max_time_diff_duration" {
  type        = string
  description = "Maximum time difference for processing time window."
  default     = "4h"
}

variable "metric_launch_stages" {
  type        = set(string)
  default     = ["GA", "BETA"]
  description = "Used by metric interface to pick metrics to include"
}

variable "metric_interface_fields" {
  type        = set(string)
  default     = ["type", "description", "rollup", "aggregate", "interval", "unit"]
  description = "Used by metric interface to pick fields to map"
}

variable "google" {
  type = object({
    resource_asset_inventory_records = object({ oid = string })
    logs                             = object({ oid = string })
    metrics                          = object({ oid = string })
    projects                         = object({ oid = string })
  })
  description = "Google base module"
  default     = null
}

variable "feature_flags" {
  type        = map(bool)
  description = "Toggle features which are being rolled out or phased out."
  default     = {}
}
