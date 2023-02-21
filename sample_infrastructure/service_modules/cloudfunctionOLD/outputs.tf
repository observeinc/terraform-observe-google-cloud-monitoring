output "cloud_function_module" {
  value = { for key, value in local.functions : module.function[key].function_instance.name => module.function[key]
  }
}

output "cloud_function_names" {
  value = flatten([for key, value in module.function :
  "${value.function_instance.name}"])
}

output "cloud_function_trigger" {
  value = flatten([for key, value in module.function :
    { port = "CLOUD_FUNC", address = value.function_trigger }
  ])
}