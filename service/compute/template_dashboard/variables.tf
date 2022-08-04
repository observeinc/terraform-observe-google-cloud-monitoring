variable "observe_domain" {
  type        = string
  default     = "observe-staging.com"
  description = "the observe domain"
}

variable "observe_customer_id" {
  type        = string
  description = "the observe customer id"
}

# appended to resource names so you can find your stuff

# variable "resource_prefix" {
#   type        = string
#   description = "Common prefix for resource names"
# }

# variable "observe_data_stream_name" {
#   type        = string
#   default     = "stand-alone"
#   description = "sample data stream name to create for testing"
# }

variable "user_email" {
  type        = string
  description = "email used to login to observe"
}
