terraform {
  required_providers {
    observe = {
      source  = "terraform.observeinc.com/observeinc/observe"
      version = ">= 0.9.2, <= 0.10.6"
    }
  }
  required_version = ">= 0.13.0"
}

