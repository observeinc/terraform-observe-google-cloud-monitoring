

terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = ">= 4.18.0"
    }
    archive = {
      source  = "hashicorp/archive"
      version = ">=2.3.0"
    }
  }
  required_version = ">= 1.3.0"
}

