# PROVIDERS
terraform {
  backend "s3" {
    bucket  = "sockshop-terraform-state"
    region  = "us-west-2"
    key     = "content-eng-tools/Content-Eng-Cypress/gcp/"
    profile = "sockshop"
  }

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
  required_version = ">= 1.3.0"
}

# set GOOGLE_PROJECT env variable
# set GOOGLE_REGION env variable
provider "google" {
}
