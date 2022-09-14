terraform {
  required_providers {
    random = {
      version = ">= 3"
    }
    observe = {
      source  = "terraform.observeinc.com/observeinc/observe"
      version = ">= 0.7.0"
    }
  }
  required_version = ">= 1.1.0"
}
