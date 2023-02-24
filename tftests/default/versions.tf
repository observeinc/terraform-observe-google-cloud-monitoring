terraform {
  required_providers {
    random = {
      version = ">= 3"
    }
    observe = {
      source  = "terraform.observeinc.com/observeinc/observe"
      version = "0.13.5-2-g94c9a498"
    }
  }
  required_version = ">= 1.0.0"
}
