locals {
  customer      = "126329491179"
  domain        = "observeinc.com"
  user_email    = ""
  user_password = ""
}

terraform {
  required_providers {
    observe = {
      source  = "terraform.observeinc.com/observeinc/observe"
      version = "~> 0.13"
    }
    google = {
      source  = "hashicorp/google"
      version = "<= 4.37.0"
    }
  }
  required_version = ">= 1.3.0"

}

provider "observe" {
  customer      = local.customer
  domain        = local.domain
  user_email    = local.user_email
  user_password = local.user_password
}

provider "google" {
  project = var.project_id
  region  = var.region
}
