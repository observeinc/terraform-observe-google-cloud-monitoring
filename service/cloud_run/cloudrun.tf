resource "observe_dataset" "cloud_run_instances" {
  workspace   = local.datasets.cloud_run_instances.workspace
  name        = local.datasets.cloud_run_instances.name
  freshness   = local.datasets.cloud_run_instances.freshness
  description = local.datasets.cloud_run_instances.description

  inputs = {
    "events" = var.google.resource_asset_inventory_records.oid
  }

  stage {
    pipeline = <<-EOF
      filter asset_type = "run.googleapis.com/Service"

      make_col apiVersion:string(data.apiVersion),
          kind:string(data.kind),
          metadata:data.metadata,
          cloudrun_pkey:string(name),
          namespace:string(data.metadata.namespace),
          resourceVersion:string(data.metadata.resourceVersion),
          url:string(data.status.url),
          traffic:data.status.traffic,
          observedGeneration:int64(data.status.observedGeneration),
          latestReadyRevisionName:string(data.status.latestReadyRevisionName),
          latestCreatedRevisionName:string(data.status.latestCreatedRevisionName),
          conditions:data.status.conditions,
          address:data.status.address,
          spec:data.spec,
          selfLink:string(data.metadata.selfLink),
          uid:string(data.metadata.uid)

      make_col 
          annotations:data.metadata.annotations,
          "rungoogleapiscom/ingress":string(data.metadata.annotations['run.googleapis.com/ingress']),
          "rungoogleapiscom/ingress-status":string(data.metadata.annotations['run.googleapis.com/ingress-status']),
          "rungoogleapiscom/operation-id":string(data.metadata.annotations['run.googleapis.com/operation-id']),
          "servingknativedev/creator":string(data.metadata.annotations['serving.knative.dev/creator']),
          "servingknativedev/lastModifier":string(data.metadata.annotations['serving.knative.dev/lastModifier']),
          creationTimestamp:string(data.metadata.creationTimestamp),
          generation:int64(data.metadata.generation),
          labels:data.metadata.labels,
          "cloudgoogleapiscom/location":string(data.metadata.labels['cloud.googleapis.com/location']),
          namespace_1:string(data.metadata.namespace),
          resourceVersion_1:string(data.metadata.resourceVersion),
          selfLink_1:string(data.metadata.selfLink),
          status:data.status
        EOF
  }

  stage {

    pipeline = <<-EOF
      make_resource options(expiry:${var.max_expiry_duration}),
        time,
        update_time,
        deleted,
        project_id,
        asset_type,
        asset_sub_type,
        asset_namespace,
        ingress: @."rungoogleapiscom/ingress",
        ingress_status: @."rungoogleapiscom/ingress-status",
        operation_id: @."rungoogleapiscom/operation-id",
        creator: @."servingknativedev/creator",
        modifier: @."servingknativedev/lastModifier",
        creationTimestamp,
        location: @."cloudgoogleapiscom/location",
        namespace,
        resourceVersion,
        selfLink,
        status,
        ttl,
        primary_key(cloudrun_pkey)

      EOF
  }
}
