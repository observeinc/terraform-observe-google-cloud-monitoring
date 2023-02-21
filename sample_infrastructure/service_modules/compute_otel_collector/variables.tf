variable "project_id" {
  type        = string
  description = "First project I want to create provider for"
}

variable "region" {
  type        = string
  description = "First region I want to create provider for"
}


variable "zone" {
  type        = string
  description = "First region I want to create provider for"
}

variable "name_format" {
  type        = string
  description = "Name format"
  default     = "test1-%s"
}

variable "observe" {
  type = object({
    domain           = optional(string)
    customer_id      = optional(string)
    datastream_token = optional(string)
  })
  default = {
    domain           = "YOURS"
    customer_id      = "YOURS"
    datastream_token = "YOURS"
  }
}
