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
