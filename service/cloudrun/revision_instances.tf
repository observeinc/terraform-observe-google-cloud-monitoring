resource "observe_dataset" "cloud_run_revision_instances" {
  workspace   = local.datasets.cloud_run_revision_instances.workspace
  name        = local.datasets.cloud_run_revision_instances.name
  freshness   = local.datasets.cloud_run_revision_instances.freshness
  description = local.datasets.cloud_run_revision_instances.description

  inputs = {
    "events" = var.google.resource_asset_inventory_records.oid
  }

  stage {
    pipeline = <<-EOF
      filter asset_namespace="run.googleapis.com"
      filter asset_sub_type = "Revision"
    EOF
  }
  stage {
    pipeline = <<-EOF
      make_col
        // General
        creationTimestamp:parse_isotime(string(data.metadata.creationTimestamp)),
        location:string(data.metadata.labels['cloud.googleapis.com/location']),
        // Revision metadata
        revisionName:string(data.metadata.name),
        revisionUid:string(data.metadata.uid),
        // Linked service metadata
        serviceUid:string(data.metadata.labels["serving.knative.dev/serviceUid"]),
        serviceName:string(data.metadata.labels["serving.knative.dev/service"]),
        // Extended fields
        spec:drop_fields(object(data.spec), "containerConcurrency", "containers"),
        containers:data.spec.containers,
        // Useful attributes
        cloudSqlInstances:string_concat(project_id, ":", split_part(string(data.metadata.annotations['run.googleapis.com/cloudsql-instances']), ":", 3)),
        containerConcurrency:int64(data.spec.containerConcurrency),
        maxScale:int64(data.metadata.annotations["autoscaling.knative.dev/maxScale"]),
        minScale:int64(data.metadata.annotations["autoscaling.knative.dev/minScale"]),
        cpuThrottling:bool(data.metadata.annotations["run.googleapis.com/cpu-throttling"]),
        startupCpuBoost:if(bool(data.metadata.annotations['run.googleapis.com/startup-cpu-boost']), true, false)
      flatten_single containers
      rename_col container:_c_containers_value
      drop_col _c_containers_flattenid, _c_containers_path

      make_col
        env: container.env,
        image: string(container.image),
        container: drop_fields(container, "env", "image")
    EOF
  }
  stage {
    pipeline = <<-EOF
      make_resource options(expiry:${var.max_expiry}),
        // General
        creationTimestamp,
        location,
        project_id,
        // Revision metadata
        revisionName,
        revisionUid,
        // Linked service metadata
        parent,
        serviceUid,
        serviceName,
        // Container properties
        image,
        env,
        container,
        // Useful attributes
        cloudSqlInstances,
        containerConcurrency,
        maxScale,
        minScale,
        cpuThrottling,
        startupCpuBoost,
        ttl,
        deleted,
        primary_key(name),
        valid_for(ttl)

      add_key cloudSqlInstances
      set_label revisionName
    EOF
  }
}

resource "observe_link" "cloud_run_revisions" {
  workspace = var.workspace.oid
  source    = observe_dataset.cloud_run_revision_instances.oid
  target    = each.value.target
  fields    = each.value.fields
  label     = each.key
  for_each = merge(
    {
      "Service" = {
        target = observe_dataset.cloud_run_service_instances.oid
        fields = ["parent:name"]
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
        fields = ["parent:serviceAssetKey"]
      }
    }
  )
}

resource "observe_preferred_path" "cloud_run_revision_to_cloud_sql" {
  name        = "CloudSQL instance referred by Cloud Run Revision"
  description = "CloudSQL instance from the Cloud Run Revision"
  source      = observe_dataset.cloud_run_revision_instances.oid
  workspace   = local.datasets.cloud_run_revision_instances.workspace
  step {
    link    = observe_link.cloud_run_revisions["CloudSQL"].oid
    reverse = false
  }
}

resource "observe_preferred_path" "cloud_run_revision_to_cloud_run_service" {
  name        = "Cloud Run Service referred by Cloud Run Revision"
  description = "Cloud Run Service from the Cloud Run Revision"
  source      = observe_dataset.cloud_run_revision_instances.oid
  workspace   = local.datasets.cloud_run_revision_instances.workspace
  step {
    link    = observe_link.cloud_run_revisions["Service"].oid
    reverse = false
  }
}
