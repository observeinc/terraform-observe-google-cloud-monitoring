variable "observe_domain" {
  type        = string
  default     = "observe-staging.com"
  description = "the observe domain"
}

variable "observe_customer_id" {
  type        = string
  description = "the observe customer id"
}

variable "user_email" {
  type        = string
  description = "email used to login to observe"
}

variable "template_dashboard_id" {
  type        = string
  default     = "41117519"
  description = "dashboard id used to create tf definition"
}
