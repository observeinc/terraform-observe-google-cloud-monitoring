resource "observe_dataset" "cloud_run_revision_instances" {
  workspace   = local.datasets.cloud_run_revision_instances.workspace
  name        = local.datasets.cloud_run_revision_instances.name
  freshness   = local.datasets.cloud_run_revision_instances.freshness
  description = local.datasets.cloud_run_revision_instances.description

  inputs = {
    "events"     = var.google.resource_asset_inventory_records.oid
    "audit_logs" = observe_dataset.cloud_run_audit_logs.oid
  }

  stage {
    input    = "events"
    pipeline = <<-EOF
      filter asset_namespace="run.googleapis.com"
      filter asset_sub_type = "Revision"
    EOF
  }
  stage {
    alias    = "revision_instances_from_asset_records"
    pipeline = <<-EOF
      #hint{allowVariantColumn:"env"}
      make_col
        // General
        creationTimestamp:parse_isotime(string(data.metadata.creationTimestamp)),
        location:string(data.metadata.labels['cloud.googleapis.com/location']),
        // Revision metadata
        revisionAssetKey:name,
        revisionName:string(data.metadata.name),
        revisionUid:string(data.metadata.uid),
        // Linked service metadata
        serviceAssetKey:parent,
        //serviceAssetKey:substring(parent, 2), //CHANGE THIS BACK LATER
        serviceUid:string(data.metadata.labels["serving.knative.dev/serviceUid"]),
        serviceName:string(data.metadata.labels["serving.knative.dev/service"]),
        // Extended fields
        spec:drop_fields(object(data.spec), "containerConcurrency", "containers"),
        containers:data.spec.containers,
        // Useful attributes
        database_id:string_concat(project_id, ":", split_part(string(data.metadata.annotations['run.googleapis.com/cloudsql-instances']), ":", 3)),
        containerConcurrency:int64(data.spec.containerConcurrency),
        maxScale:int64(data.metadata.annotations["autoscaling.knative.dev/maxScale"]),
        minScale:int64(data.metadata.annotations["autoscaling.knative.dev/minScale"]),
        cpuThrottling:bool(data.metadata.annotations["run.googleapis.com/cpu-throttling"]),
        startupCpuBoost:if(bool(data.metadata.annotations['run.googleapis.com/startup-cpu-boost']), true, false),
        conditions:data.status.conditions
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
      @revisions <- @ {
        make_col
          statusConditions:pivot_array(array(conditions), "type", "status"),
          statusMessages:pivot_array(array(conditions), "type", "message"),
          statusLastTransitionTimes:pivot_array(array(conditions), "type", "lastTransitionTime")
        
        make_col
          condition: make_object(
            ready: make_object(
              status: string(statusConditions["Ready"]),
              message: string(statusMessages["Ready"])
            ),
            active: make_object(
              status: string(statusConditions["Active"]),
              message: string(statusMessages["Active"])
            ),
            containerHealthy: make_object(
              status: string(statusConditions["ContainerHealthy"]),
              message: string(statusMessages["ContainerHealthy"])
            )
          )
        
        make_col retired:condition.active.status="False" and condition.active.message="Revision retired."
        make_col
          status:case(
            condition.ready.status="True" and condition.active.status="True" and condition.containerHealthy.status="True", "Healthy",
            retired or (condition.active.status="Unknown" and condition.containerHealthy.status="True"), "Inactive",
            condition.ready.status="False" or condition.containerHealthy.status="False", "Unhealthy")
        make_col
          health: case(
            status="Healthy", "🟩",
            status="Inactive", "⬜️",
            status="Unhealthy", "🟥"
          )
        make_col statusMessage: case(status="Healthy", "-", status="Inactive", "Revision retired or inactive", status="Unhealthy", condition.ready.message)
        make_resource options(expiry:${var.max_expiry}),
          health,
          status,
          statusMessage,
          // Links
          revisionName,
          serviceName,
          database_id,
          serviceAssetKey,
          // General
          creationTimestamp,
          location,
          project_id,
          // Revision metadata          
          revisionUid,
          // Linked service metadata
          serviceUid,
       
          // Container properties
          image,
          env,
          container,
          // Useful attributes
          containerConcurrency,
          maxScale,
          minScale,
          cpuThrottling,
          startupCpuBoost,
          ttl,
          deleted,
          primary_key(revisionAssetKey),
          valid_for(ttl)
        
        add_key serviceAssetKey
        add_key revisionName
        add_key database_id

        set_label revisionName
      }

      @deletedRevisions <- @audit_logs {
        filter protoPayload.methodName="google.cloud.run.v1.Revisions.DeleteRevision"

        make_resource
          deleteTimestamp:receiveTimestamp,
          primary_key(project_id, location, revisionName)
        
        join on(revisionName=@revisions.revisionName), serviceName:@revisions.serviceName

        make_interval
      }
      @deletedServices <- @audit_logs {
        filter protoPayload.methodName="google.cloud.run.v1.Services.DeleteService"

        make_resource
          deleteTimestamp:receiveTimestamp,
          primary_key(project_id, location, serviceName)
        
        join on(serviceName=@revisions.serviceName), revisionName:@revisions.revisionName

        make_interval
      }

      @deletedInstances <- @deletedRevisions {
        union @deletedServices

        make_resource
          deleteTimestamp,
          primary_key(project_id, location, serviceName, revisionName)
      }

      <- @revisions {
        leftjoin on(serviceName=@deletedInstances.serviceName and revisionName=@deletedInstances.revisionName), deleteTimestamp:@deletedInstances.deleteTimestamp

        make_col
          ttl:if(not is_null(deleteTimestamp), 1ns, ${var.max_expiry})
   
        set_col_visible
          ttl:false,
          deleted:false
      }
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
      "Service Instance" = {
        target = observe_dataset.cloud_run_service_instances.oid
        fields = ["serviceAssetKey"]
      }
    },
    var.google.cloudsql != null ? ## Only create link if CloudSql exists 
    {
      "CloudSQL Instance" = {
        target = var.google.cloudsql.oid
        fields = ["database_id"]
      }
    } : {}
  )
}
