# PROVIDERS
terraform {
  backend "local" {}

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "<= 4.37.0"
    }

    archive = {
      source  = "hashicorp/archive"
      version = ">= 2.2.0"
    }

    random = {
      source  = "hashicorp/random"
      version = ">= 3.4.3"
    }

  }
  required_version = ">= 1.2.0"
}


provider "google" {
  alias   = "new"
  project = var.project_id_1
  region  = var.region_1
}