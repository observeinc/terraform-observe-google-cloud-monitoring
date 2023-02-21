variable "project_id" {
  type        = string
  description = "First project I want to create provider for"
}

variable "region" {
  type        = string
  description = "First region I want to create provider for"
}

variable "name" {
  type        = string
  description = "Name format"
  default     = "test1-%s"
}

variable "source_dir" {
  type        = string
  description = "Code source"
}

variable "output_path" {
  type        = string
  description = "Output path for zip file"
}

variable "bucket_name" {
  type        = string
  description = "bucket for code"
}

# variable "archive_name" {
#   type        = string
#   description = "zip file name"
# }

