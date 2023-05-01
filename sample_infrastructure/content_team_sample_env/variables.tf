variable "project_id" {
  description = "gcp project id"
  type        = string
  default     = "content-eng-testing-env"
}

variable "name_format" {
  type        = string
  description = "Format string to use for infra names."
  default     = "ce-sample-env-%s"
}

variable "region" {
  type        = string
  description = "GCP region to deploy sample env"
  default     = "us-west1"
}

variable "zone1" {
  type        = string
  description = "GCP zone"
  default     = "us-west1-a"
}

variable "zone2" {
  type        = string
  description = "GCP zone"
  default     = "us-west1-b"
}

variable "observe" {
  type = object({
    domain           = optional(string)
    customer_id      = optional(string)
    datastream_token = optional(string)
  })
  default     = null
  description = "Object with Observe credentials"
}

