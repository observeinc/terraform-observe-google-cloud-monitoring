data "observe_folder" "gcp" {
  name      = "gcp"
  workspace = data.observe_workspace.default.oid
}

data "observe_app" "gcp" {
  folder = data.observe_folder.gcp.oid
  name   = "Google Cloud Platform (GCP)"

}

data "observe_workspace" "default" {
  name = "Default"
}

locals {
  app = jsondecode(data.observe_app.gcp.outputs)
}

module "local_dev" {
  source      = "../"
  workspace   = data.observe_workspace.default
  name_format = "new/%s"
  google = {
    logs = {
      oid = local.app.logs.oid
    }
    metrics = {
      oid = local.app.metrics.oid
    }
    projects = {
      oid = local.app.projects.oid
    }
    resource_asset_inventory_records = {
      oid = local.app.resource_asset_inventory_records.oid
    }
    #     string_metrics = {
    #       oid = local.app.string_metrics.oid
    #   } 
  }
}
