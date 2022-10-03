resource "random_id" "bucket_prefix" {
  byte_length = 8
}

resource "google_storage_bucket" "bucket" {
  name                        = format(var.name_1, "${random_id.bucket_prefix.hex}-gcf-source") # Every bucket name must be globally unique
  location                    = "US"
  uniform_bucket_level_access = true
  project                     = var.project_id_1
}

data "archive_file" "init" {
  type        = "zip"
  source_dir  = "${path.module}/helloworld/nodejs"
  output_path = "${path.module}/helloworld/zipfiles/function-source.zip"
}

resource "google_storage_bucket_object" "object" {
  depends_on = [
    data.archive_file.init
  ]
  name   = format(var.name_1, "function-source.zip")
  bucket = google_storage_bucket.bucket.name
  source = "${path.module}/helloworld/zipfiles/function-source.zip" # Add path to the zipped function source code
}

resource "google_cloudfunctions_function" "function" {
  name        = format(var.name_1, "function-helloworldv3")
  region      = var.region_1
  description = "a new function"
  project     = var.project_id_1

  runtime                      = "nodejs16"
  available_memory_mb          = 128
  source_archive_bucket        = google_storage_bucket.bucket.name
  source_archive_object        = google_storage_bucket_object.object.name
  trigger_http                 = true
  https_trigger_security_level = "SECURE_OPTIONAL"
  timeout                      = 60
  entry_point                  = "helloHttp"
}

resource "google_cloudfunctions_function_iam_member" "invoker" {
  project        = google_cloudfunctions_function.function.project
  region         = google_cloudfunctions_function.function.region
  cloud_function = google_cloudfunctions_function.function.name

  role   = "roles/cloudfunctions.invoker"
  member = "allUsers"
}



module "function2" {
  source      = "./modules"
  source_dir  = "${path.module}/helloworld/nodejs"
  output_path = "${path.module}/helloworld/zipfiles/function2-source.zip"
  name        = "test2-%s"
  region      = var.region_1
  project_id  = var.project_id_1
  bucket_name = google_storage_bucket.bucket.name
  #   archive_name  = google_storage_bucket_object.object.name
}
