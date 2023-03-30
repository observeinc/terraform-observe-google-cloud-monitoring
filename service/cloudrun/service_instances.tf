resource "observe_dataset" "cloud_run_service_instances" {
  workspace   = local.datasets.cloud_run_service_instances.workspace
  name        = local.datasets.cloud_run_service_instances.name
  freshness   = local.datasets.cloud_run_service_instances.freshness
  description = local.datasets.cloud_run_service_instances.description

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
        // General
        creationTimestamp:parse_isotime(string(data.metadata.creationTimestamp)),
        location:string(data.metadata.labels['cloud.googleapis.com/location']),
        // Service metadata
        serviceUid:string(data.metadata.uid),
        serviceName:string(data.metadata.name),
        // Linked revision metadata
        latestCreatedRevisionName:string(data.status.latestCreatedRevisionName),
        latestReadyRevisionName:string(data.status.latestReadyRevisionName),
        // Extended fields
        spec:object(data.spec),
        containers:data.spec.template.spec.containers
      flatten_single containers
      rename_col container:_c_containers_value
      drop_col _c_containers_flattenid, _c_containers_path
      
      make_col
        env: container.env,
        image: string(container.image),
        container: drop_fields(container, "env", "image"),
        cloudSqlInstances:string_concat(project_id, ":", split_part(string(spec.template.metadata.annotations['run.googleapis.com/cloudsql-instances']), ":", 3))
    EOF
  }
  stage {
    pipeline = <<-EOF
      make_resource options(expiry:${var.max_expiry}),
        // General
        project_id,
        // Service metadata
        serviceName,
        serviceUid,
        env,
        image,
        container,
        cloudSqlInstances,
        // Linked revision metadata
        latestCreatedRevisionName,
        latestReadyRevisionName,
        ttl,
        deleted,
        primary_key(name),
        valid_for(ttl)

      add_key cloudSqlInstances
      set_label serviceName
    EOF
  }
}

resource "observe_link" "cloud_run_services" {
  workspace = var.workspace.oid
  source    = observe_dataset.cloud_run_service_instances.oid
  target    = each.value.target
  fields    = each.value.fields
  label     = each.key
  for_each = merge(
    {
      "Revision" = {
        target = observe_dataset.cloud_run_revision_instances.oid
        fields = ["latestReadyRevisionName:revisionName"]
      }
    },
    {
      "CloudSQL" = {
        target = var.google.cloudsql.oid
        fields = ["cloudSqlInstances:database_id"]
      }
    },
    {
      "Metrics" = {
        target = observe_dataset.cloud_run_metrics.oid
        fields = ["name:serviceAssetKey"]
      }
    }
  )
}

resource "observe_preferred_path" "cloud_run_service_to_cloud_sql" {
  name        = "CloudSQL instance referred by Cloud Run Service"
  description = "CloudSQL instance from the Cloud Run Service"
  source      = observe_dataset.cloud_run_service_instances.oid
  workspace   = local.datasets.cloud_run_service_instances.workspace
  step {
    link    = observe_link.cloud_run_services["CloudSQL"].oid
    reverse = false
  }
}

resource "observe_preferred_path" "cloud_run_service_to_cloud_run_revision" {
  name        = "Cloud Run Revision referred by Cloud Run Service"
  description = "Cloud Run Revision from the Cloud Run Service"
  source      = observe_dataset.cloud_run_service_instances.oid
  workspace   = local.datasets.cloud_run_service_instances.workspace
  step {
    link    = observe_link.cloud_run_services["Revision"].oid
    reverse = false
  }
}

resource "observe_preferred_path" "cloud_run_service_to_metrics" {
  name        = "Metrics referred by Cloud Run Service"
  description = "Metrics from the Cloud Run Service"
  source      = observe_dataset.cloud_run_service_instances.oid
  workspace   = local.datasets.cloud_run_service_instances.workspace
  step {
    link    = observe_link.cloud_run_services["Metrics"].oid
    reverse = false
  }
}
