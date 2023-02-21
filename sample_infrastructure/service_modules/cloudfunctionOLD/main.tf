locals {
  functions = flatten([
    for i in range(0, var.function_count) : [
      {
        function_name : "${format(var.name_format, i)}-%s"
      }
    ]
  ])
}

resource "random_id" "bucket_prefix" {
  byte_length = 8
}

resource "google_storage_bucket" "bucket" {
  name                        = format(var.name_format, "${random_id.bucket_prefix.hex}-gcf-source") # Every bucket name must be globally unique
  location                    = "US"
  uniform_bucket_level_access = true
  project                     = var.project_id
}

module "function" {
  for_each    = { for key, value in local.functions : key => value }
  source      = "./modules"
  source_dir  = "${path.module}/helloworld/nodejs"
  output_path = "${path.module}/helloworld/zipfiles/func-mod-${each.key}-source.zip"
  name        = each.value.function_name
  region      = var.region
  project_id  = var.project_id
  bucket_name = google_storage_bucket.bucket.name
}
