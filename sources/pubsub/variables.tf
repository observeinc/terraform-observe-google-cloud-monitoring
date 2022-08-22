variable "name" {
  type        = string
  description = "Poller name. Should be unique per datastream."
}

# tflint-ignore: terraform_unused_declarations
variable "description" {
  type        = string
  description = "Short description meant for other humans"
  default     = ""
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
  description = "GCP project ID"
}

variable "subscription" {
  type        = string
  description = "GCP Pub/Sub Subscription ID"
}

variable "service_account_private_key_json" {
  type        = string
  description = "A GCP Service Account Private Key with the 'monitoring/viewer' and 'cloudasset.viewer' roles."
}
