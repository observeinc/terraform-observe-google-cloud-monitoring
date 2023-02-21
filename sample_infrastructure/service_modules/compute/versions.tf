

terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = ">= 4.18.0"
    }

    # observe = {
    #   source  = "terraform.observeinc.com/observeinc/observe"
    #   version = "~> 0.11.0"
    # }
  }
  required_version = ">= 1.2"
}

