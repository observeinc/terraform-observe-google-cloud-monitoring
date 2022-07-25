
# Create GCP Observe Content
module "google" {
  source             = "/Users/arthur/content_eng/terraform-observe-google"
  workspace          = data.observe_workspace.default
  name_format        = local.name_format
  datastream         = observe_datastream.gcp
  enable_service_all = true
  # enable_service_cloudsql = true
  # enable_service_cloudfunctions = true
  # enable_service_compute = true
}