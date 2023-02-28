resource "observe_dataset" "artifact_registry_instances" {
  workspace   = local.datasets.artifact_registry_instances.workspace
  name        = local.datasets.artifact_registry_instances.name
  freshness   = local.datasets.artifact_registry_instances.freshness
  description = local.datasets.artifact_registry_instances.description

  inputs = {
    "events" = var.google.resource_asset_inventory_records.oid
  }

  stage {
    pipeline = <<-EOF
        filter asset_type = "artifactregistry.googleapis.com/Repository"
        make_col
            description:string(data.description),
            format:string(data.format),
            instance_pkey:string(data.name)

        extract_regex name, /repositories\/(?P<displayName>.*)/
        EOF
  }

  stage {

    pipeline = <<-EOF
      make_resource options(expiry:${var.max_expiry_duration}),
        time,
        project_id,
        name,
        displayName,
        description,
        format,
        update_time,
        ttl,
        primary_key(instance_pkey)

      EOF
  }
}

