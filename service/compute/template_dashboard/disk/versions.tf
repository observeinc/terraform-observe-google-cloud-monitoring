terraform {
  backend "local" {}

  required_providers {
    observe = {
      source  = "terraform.observeinc.com/observeinc/observe"
      version = ">= 0.10.4"
    }
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.11"
    }

    local = {
      source  = "hashicorp/local"
      version = "~> 2.2.3"
    }

    null = {
      source  = "hashicorp/null"
      version = "~> 3.1.1"
    }

  }
  required_version = ">= 0.13"
}

