variable "project_id" {
  type = string
}

variable "region" {
  type = string
}

variable "name_format" {
  type    = string
  default = "gcp-test-%s"
}

variable "function_count" {
  type    = number
  default = 2
}

