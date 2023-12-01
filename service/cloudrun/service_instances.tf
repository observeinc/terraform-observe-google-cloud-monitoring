resource "observe_dataset" "cloud_run_service_instances" {
  workspace   = local.datasets.cloud_run_service_instances.workspace
  name        = local.datasets.cloud_run_service_instances.name
  freshness   = local.datasets.cloud_run_service_instances.freshness
  description = local.datasets.cloud_run_service_instances.description

  inputs = {
    "events"     = var.google.resource_asset_inventory_records.oid
    "audit_logs" = observe_dataset.cloud_run_audit_logs.oid
  }

  # https://cloud.google.com/functions/docs/reference/rest/v1/projects.locations.functions#CloudFunction
  stage {
    input    = "events"
    pipeline = <<-EOF
      filter asset_namespace="run.googleapis.com"
      filter asset_sub_type = "Service"
    EOF
  }
  stage {
    alias    = "service_instances_from_asset_records"
    pipeline = <<-EOF
      make_col
        // General
        creationTimestamp:parse_isotime(string(data.metadata.creationTimestamp)),
        location:string(data.metadata.labels['cloud.googleapis.com/location']),
        // Service metadata
        serviceAssetKey:name,
        serviceUid:string(data.metadata.uid),
        serviceName:string(data.metadata.name),
        // Linked revision metadata
        latestCreatedRevisionName:string(data.status.latestCreatedRevisionName),
        revisionName:string(data.status.latestReadyRevisionName),
        traffic:data.spec.traffic,
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
        database_id:string_concat(project_id, ":", split_part(string(spec.template.metadata.annotations['run.googleapis.com/cloudsql-instances']), ":", 3))
    EOF
  }
  stage {
    pipeline = <<-EOF
      @services <- @ {
        make_resource options(expiry:${var.max_expiry}),
          creationTimestamp,
          // Links
          serviceName,
          latestCreatedRevisionName,
          revisionName,
          database_id,        
          // General
          project_id,
          location,
          // Service metadata
         
          serviceUid,
          env,
          image,
          container,
          ttl,
          deleted,
          traffic,
          primary_key(serviceAssetKey),
          valid_for(ttl)
              
        set_col_visible
          ttl:false,
          deleted:false
        
        add_key revisionName
        add_key serviceName
        add_key database_id
        
        set_label serviceName
      }

      @deletedServices <- @audit_logs {
        filter protoPayload.methodName="google.cloud.run.v1.Services.DeleteService"
        
        make_resource
          deleteTimestamp:receiveTimestamp,
          primary_key(project_id, location, serviceName)
        
        join on(serviceName=@services.serviceName)
        
        make_interval
      }

      @deletedInstances <- @deletedServices {
        make_resource
          deleteTimestamp,
          primary_key(project_id, location, serviceName)
      }

      <- @services {
        leftjoin on(serviceName=@deletedInstances.serviceName), deleteTimestamp:@deletedInstances.deleteTimestamp
        
        make_col
          ttl:if(not is_null(deleteTimestamp), 1ns, ${var.max_expiry})
        
        set_col_visible
          ttl:false,
          deleted:false
      }
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
      "Latest Revision Instance" = {
        target = observe_dataset.cloud_run_revision_instances.oid
        fields = ["revisionName"]
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
