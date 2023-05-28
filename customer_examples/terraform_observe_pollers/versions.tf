terraform {
  required_providers {
    observe = {
      source = "terraform.observeinc.com/observeinc/observe"
    }
  }
}

provider "observe" {
  customer_id   = local.customer_id
  user_email    = local.user_email
  user_password = local.user_password
}

provider "google" {
  project = var.project_id
  region  = var.region
}
