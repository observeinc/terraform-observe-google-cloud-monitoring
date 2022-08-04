terraform {
  backend "local" {}

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = ">= 4.18.0"
    }

    observe = {
      source  = "terraform.observeinc.com/observeinc/observe"
      version = ">= 0.7.0"
    }

    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.11"
    }

    random = {
      source  = "hashicorp/random"
      version = "~> 3.3"
    }

  }
  required_version = ">= 0.13"
}

