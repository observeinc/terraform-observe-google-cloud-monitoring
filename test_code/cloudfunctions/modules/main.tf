data "archive_file" "init" {
  type        = "zip"
  source_dir  = var.source_dir
  output_path = var.output_path
}

resource "google_cloudfunctions_function" "function" {
  name        = format(var.name, "function-optional-error")
  region      = var.region
  description = "a new function"
  project     = var.project_id

  runtime                      = "nodejs16"
  available_memory_mb          = 128
  source_archive_bucket        = var.bucket_name
  source_archive_object        = google_storage_bucket_object.object.name
  trigger_http                 = true
  https_trigger_security_level = "SECURE_OPTIONAL"
  ingress_settings             = "ALLOW_ALL"
  timeout                      = 60
  entry_point                  = "helloHttp"

  lifecycle {
    replace_triggered_by = [
      google_storage_bucket_object.object
    ]
  }

}

resource "google_cloudfunctions_function_iam_member" "invoker" {
  project        = google_cloudfunctions_function.function.project
  region         = google_cloudfunctions_function.function.region
  cloud_function = google_cloudfunctions_function.function.name

  role   = "roles/cloudfunctions.invoker"
  member = "allUsers"

  lifecycle {
    replace_triggered_by = [
      google_storage_bucket_object.object
    ]
  }
}

resource "google_storage_bucket_object" "object" {
  depends_on = [
    data.archive_file.init
  ]
  name   = format(var.name, "function-source.zip")
  bucket = var.bucket_name
  source = var.output_path # Add path to the zipped function source code
}
