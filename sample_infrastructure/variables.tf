variable "project_id" {
  type        = string
  description = "GCP project to deploy sample env"
}

variable "region" {
  type        = string
  description = "GCP region to deploy sample env"
}

variable "zone1" {
  type        = string
  description = "GCP zone"
}

variable "zone2" {
  type        = string
  description = "GCP alternate zone"
}

variable "name_format" {
  type        = string
  description = "Format string to use for infra names."
}

variable "observe" {
  type = object({
    domain           = string
    customer_id      = string
    datastream_token = string
  })
  default = null
}
