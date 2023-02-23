variable "project_id" {
  type = string
}

variable "region" {
  type = string
}

variable "zone1" {
  type = string
}

variable "zone2" {
  type = string
}

variable "name_format" {
  type    = string
  default = "gcp-test-%s"
}
