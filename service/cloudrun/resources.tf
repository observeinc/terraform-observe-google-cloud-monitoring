resource "observe_dataset" "cloud_run_instances" {
  workspace   = local.datasets.cloud_run_instances.workspace
  name        = local.datasets.cloud_run_instances.name
  freshness   = local.datasets.cloud_run_instances.freshness
  description = local.datasets.cloud_run_instances.description

  inputs = {
    "events" = var.google.resource_asset_inventory_records.oid
  }

  # https://cloud.google.com/functions/docs/reference/rest/v1/projects.locations.functions#CloudFunction
  stage {
    input    = "events"
    pipeline = <<-EOF
      filter asset_type = "run.googleapis.com/Service" or asset_type = "run.googleapis.com/Revision"
    EOF
  }
}
