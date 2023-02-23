variable "project_id" {
  type        = string
  description = "First project I want to create provider for"
}

variable "region" {
  type        = string
  description = "First region I want to create provider for"
}

variable "name_format" {
  type        = string
  description = "Name format"
  default     = "test1-%s"
}

variable "table_count" {
  type    = number
  default = 2
}

# variable "config_bucket_name" {
#   type = string
# }