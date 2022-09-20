resource "observe_dataset" "cloud_functions_instances" {
  workspace   = var.workspace.oid
  name        = format(var.name_format, "Instances")
  freshness   = var.freshness_default
  description = "This dataset is used to create Cloud Function Resources"

  inputs = {
    "events" = var.google.resource_asset_inventory_records.oid
  }

  # https://cloud.google.com/functions/docs/reference/rest/v1/projects.locations.functions#CloudFunction
  stage {
    input    = "events"
    pipeline = <<-EOF
      filter asset_type = "cloudfunctions.googleapis.com/CloudFunction"
      make_col
        assetInventoryName:name,
        name:string(data.name)
      make_resource options(expiry:${var.max_expiry}),
        name,
        availableMemoryMb:int64(data.availableMemoryMb),
        buildId:string(data.buildId),
        buildName:string(data.buildName),
        description:string(data.description),
        dockerRegistry:string(data.dockerRegistry),
        entryPoint:string(data.entryPoint),
        environmentVariables:object(data.environmentVariables),
        eventTrigger:object(data.eventTrigger),
        httpsTrigger:object(data.httpsTrigger),
        ingressSettings:string(data.ingressSettings),
        maxInstances:int64(data.maxInstances),
        runtime:string(data.runtime),
        serviceAccountEmail:string(data.serviceAccountEmail),
        sourceArchiveUrl:string(data.sourceArchiveUrl),
        status:string(data.status),
        timeout:string(data.timeout),
        updateTime:parse_isotime(string(data.updateTime)),
        versionId:string(data.versionId),
        primary_key(assetInventoryName),
        valid_for(if(deleted, 1ns, ${var.max_expiry}))

      add_key name
      set_label name
      extract_regex name, /projects\/(?P<projectId>[^\/+]+)\/locations\/(?P<region>[^\/+]+)\/functions\/(?P<functionName>[^\/+]+)/
      add_key projectId, region, functionName
      add_key projectId
    EOF
  }
}
