resource "random_pet" "test" {}

data "observe_workspace" "default" {
  name = "Default"
}

data "observe_datastream" "default" {
  workspace = data.observe_workspace.default.oid
  name      = "System"
}

module "all_services_all_opts" {
  source      = "../.."
  workspace   = data.observe_workspace.default
  datastream  = data.observe_datastream.default
  name_format = "test_gcp_${random_pet.test.id}/%s"

  # grep -rh "variable \"enable" --include variables.tf | sed -e 's/^[ \t]*//'| sed -e 's/variable//g' | sed -e 's/{//g' | sed -e 's/"//g'| sort | uniq 
  enable_service_cloudfunctions = true
  enable_service_cloudsql       = true
  enable_service_compute        = true
  enable_service_load_balancing = true
  enable_service_storage        = true
  enable_service_bigquery       = true
  enable_service_gke            = true
  enable_service_cloudscheduler = true

  # feature_flags = {
  #   metrics  = false
  #   monitors = false
  # }
}
