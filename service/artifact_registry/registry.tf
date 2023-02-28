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


resource "observe_dataset" "artifact_registry_images" {
  workspace   = local.datasets.artifact_registry_images.workspace
  name        = local.datasets.artifact_registry_images.name
  freshness   = local.datasets.artifact_registry_images.freshness
  description = local.datasets.artifact_registry_images.description

  inputs = {
    "events" = var.google.resource_asset_inventory_records.oid
  }

  stage {
    pipeline = <<-EOF
        filter asset_type = "artifactregistry.googleapis.com/DockerImage"
        make_col imageSizeBytes:string(data.imageSizeBytes),
            mediaType:string(data.mediaType),
            name_1:string(data.name),
            tags:data.tags,
            uploadTime:string(data.uploadTime),
            uri:string(data.uri)

        EOF
  }

  stage {

    pipeline = <<-EOF

      EOF
  }
}
