output "function_uri" {
  value = google_cloudfunctions_function.function.https_trigger_url
}

output "function2_uri" {
  value = module.function2.function_uri
}
