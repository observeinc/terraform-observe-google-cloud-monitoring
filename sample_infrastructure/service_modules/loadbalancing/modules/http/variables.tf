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

variable "target_group_instances" {
  default = []
}

variable "function_name" {
  type = string
}