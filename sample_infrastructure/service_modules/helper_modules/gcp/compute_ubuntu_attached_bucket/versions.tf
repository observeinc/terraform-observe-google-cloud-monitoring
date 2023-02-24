

terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = ">= 4.18.0"
    }

    random = {
      source  = "hashicorp/random"
      version = ">= 3.4.3"
    }
  }
  required_version = ">= 1.2"
}

