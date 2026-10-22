terraform {
  required_providers {
    random = {
      version = ">= 3"
    }
    observe = {
      source  = "observeinc/observe"
      version = ">= 0.14.73, < 1.0.0"
    }
  }
  required_version = ">= 1.3.0"
}
