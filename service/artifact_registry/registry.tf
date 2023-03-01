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
            registry_pkey:string(data.name)

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
        primary_key(registry_pkey)

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
        make_col imageSizeBytes:float64(data.imageSizeBytes),
            mediaType:string(data.mediaType),
            tags:data.tags,
            upload_time:parse_isotime(data.uploadTime),
            uri:string(data.uri)

        extract_regex name, /(?P<registry_pkey>.*)\/.*\//
        extract_regex name, /@.*:(?P<sha>.*)/

        extract_regex name, /repositories\/.*\/(?P<image_name>.*).*@/

        make_col dur_since_ms: float64(time-upload_time)
        make_col dur_since_log: log(10,dur_since_ms)*100
        make_col dur_since_float: float64(dur_since_log)
        make_col dur_since: time-upload_time
        make_col adj_time: time-duration_ms(dur_since_float)

        set_valid_from options(max_time_diff:4h), adj_time
        EOF
  }

  stage {

    pipeline = <<-EOF

      make_resource options(expiry:${var.max_expiry_duration}),
        adj_time,
        time,
        update_time,
        upload_time,
        project_id,
        image_name,
        tags,
        sha,
        imageSizeBytes,
        mediaType,
        uri,
        ttl,
        registry_pkey,
        primary_key(name)

      add_key registry_pkey
      EOF
  }
}

resource "observe_link" "images_to_artifact_registry" {
  workspace = local.workspace.oid
  target    = observe_dataset.artifact_registry_instances.oid
  source    = observe_dataset.artifact_registry_images.oid
  fields    = ["registry_pkey"]
  label     = "Artifact Registry"
}
