variable "project_id_1" {
  type        = string
  description = "First project I want to create provider for"
}

variable "region_1" {
  type        = string
  description = "First region I want to create provider for"
}

variable "name_1" {
  type        = string
  description = "Name format"
  default     = "test1-%s"
}
