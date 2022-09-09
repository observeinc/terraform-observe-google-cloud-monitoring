terraform {
  required_providers {
    random = {
      version = ">= 3"
    }
    observe = {
      source  = "terraform.observeinc.com/observeinc/observe"
      version = ">= 0.9.2, <= 0.11.3"
    }
  }
  required_version = ">= 0.13.0"
}
