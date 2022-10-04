variable "name" {
  type        = string
  description = "Poller name. Should be unique per datastream."
  default     = "Logs"
}

# tflint-ignore: terraform_unused_declarations
variable "description" {
  type        = string
  description = "Short description meant for other humans"
  default     = "GCP Poller for log data"
}

variable "workspace" {
  type        = object({ oid = string })
  description = "Workspace to apply module to."
}

variable "datastream" {
  type = object({
    oid = string
  })
  description = <<-EOF
    Datastream to derive resources from.
  EOF
}

variable "project" {
  type        = string
  description = "GCP Project ID"
}

variable "subscription" {
  type        = string
  description = "GCP Pub/Sub Subscription ID (from topic)"
}

variable "service_account_private_key_json" {
  sensitive   = true
  type        = string
  description = "A GCP Service Account Private Key - see https://docs.observeinc.com/en/latest/content/integrations/gcp/gcp.html#installation"
}
