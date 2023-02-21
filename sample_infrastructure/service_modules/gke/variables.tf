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

# variable "config_bucket_name" {
#   type = string
# }