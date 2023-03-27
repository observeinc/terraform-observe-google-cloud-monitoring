resource "random_pet" "test" {}

data "observe_workspace" "default" {
  name = "Default"
}

data "observe_datastream" "default" {
  workspace = data.observe_workspace.default.oid
  name      = "System"
}

module "default" {
  source      = "../.."
  workspace   = data.observe_workspace.default
  datastream  = data.observe_datastream.default
  name_format = "test_gcp_${random_pet.test.id}/%s"

  enable_service_bigquery       = false
  enable_service_cloudfunctions = false
  enable_service_cloudsql       = false
  enable_service_compute        = false
  enable_service_storage        = false
  enable_service_load_balancing = false
  enable_service_pubsub         = false
  enable_service_cloudscheduler = false
  enable_service_gke            = false
  enable_service_redis          = false
  enable_service_cloudrun       = false


  # enable_service_memcache = false

  feature_flags = ["use_name_format_in_preferred_path"]
}
