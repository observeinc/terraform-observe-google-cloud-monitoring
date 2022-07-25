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
}
