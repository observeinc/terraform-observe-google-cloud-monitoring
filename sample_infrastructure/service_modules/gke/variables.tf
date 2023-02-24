variable "project_id" {
  type        = string
  description = "GCP project to deploy to"
}

variable "region" {
  type        = string
  description = "GCP region to deploy to"
}

variable "name_format" {
  type        = string
  default     = "gcp-test-%s"
  description = "name prefix for resources"
}

# variable "config_bucket_name" {
#   type = string
# }

# variable "gke_username" {
#   default     = ""
#   description = "gke username"
# }

# variable "gke_password" {
#   default     = ""
#   description = "gke password"
# }

variable "gke_num_nodes" {
  type        = number
  default     = 2
  description = "number of gke nodes"
}
