variable "default_datastream" {
  type        = string
  description = "Default datastream to use for test"
  default     = "System"
}

variable "freshness_default_duration" {
  type        = string
  description = "Default dataset freshness. Can be overridden with freshness input"
  default     = "5m"
}