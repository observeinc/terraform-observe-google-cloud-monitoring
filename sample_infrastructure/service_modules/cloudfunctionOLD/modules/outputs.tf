output "function_instance" {
  value = google_cloudfunctions_function.function
}

output "function_trigger" {
  value = google_cloudfunctions_function.function.https_trigger_url
}
