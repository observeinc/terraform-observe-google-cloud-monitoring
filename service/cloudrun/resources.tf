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
    pipeline = <<-EOF
      filter asset_namespace="run.googleapis.com"
      filter asset_sub_type = "Service"
    EOF
  }
  stage {
    pipeline = <<-EOF
      make_col
        serviceAssetKey:string(name),
        serviceUid:string(data.metadata.uid),
        serviceName:string(data.metadata.name),
        creationTimestamp:data.metadata.creationTimestamp,
        location:string(data.metadata.labels['cloud.googleapis.com/location']),
        spec:object(data.spec)
    EOF
  }
  stage {
    pipeline = <<-EOF
      make_resource options(expiry:4h),
        project_id,
        serviceName,
        spec,
        ttl,
        deleted,
        primary_key(serviceAssetKey),
        valid_for(ttl)

      make_col cloud_sql_instances:string_concat(project_id, ":", split_part(string(spec.template.metadata.annotations['run.googleapis.com/cloudsql-instances']), ":", 3))

      add_key cloud_sql_instances
      set_label serviceName
    EOF
  }
}

resource "observe_link" "cloud_sql" {
  workspace = var.workspace.oid
  source    = observe_dataset.cloud_run_instances.oid
  target    = var.google.cloudsql.oid
  fields    = ["cloud_sql_instances:database_id"]
  label     = "cloud_sql"
}
