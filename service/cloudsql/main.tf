locals {
  enable_metrics = lookup(var.feature_flags, "metrics", true)
  # tflint-ignore: terraform_unused_declarations
  enable_monitors = lookup(var.feature_flags, "monitors", true)
}

resource "observe_dataset" "cloudsql" {
  workspace = var.workspace.oid
  name      = format(var.name_format, "Instance")
  freshness = var.freshness_default

  inputs = {
    "events"         = var.google.resource_asset_inventory_records.oid,
    "string_metrics" = observe_dataset.cloudsql_string_metrics[0].oid
  }

  # https://cloud.google.com/sql/docs
  stage {
    input    = "events"
    pipeline = <<-EOF
      filter asset_type = "sqladmin.googleapis.com/Instance"
      make_col
        assetInventoryName:name,
        name:string(data.name),
        ipAddressObject:pivot_array(array(data.ipAddresses), "type", "ipAddress" ),
        project_id: string(data.project)

      make_col
        database_id: strcat(project_id,":",name)
    EOF
  }

  stage {
    pipeline = <<-EOF
      make_resource options(expiry:${var.max_expiry}),
        name,
        databaseVersion: string(data.databaseVersion),
        label: strcat(string(data.databaseVersion),":",name),
        databaseInstalledVersion: string(data.databaseInstalledVersion),
        project_id,
        region:  string(data.region),
        backendType:string(data.backendType),
        backupConfiguration:data.settings.backupConfiguration,
        availabilityType:string(data.settings.availabilityType),
        dataDiskSizeGb:string(data.settings.dataDiskSizeGb),
        dataDiskType:string(data.settings.dataDiskType),
        databaseFlags:data.settings.databaseFlags,
        ipConfiguration:data.settings.ipConfiguration,
        tier:string(data.settings.tier),
        state:string(data.state),
        createTime:string(data.createTime),
        ipAddressPrimary: ipAddressObject.PRIMARY,
        ipAddresses:string(data.ipAddresses),
        gceZone:string(data.gceZone),
        primary_key(database_id),
        valid_for(ttl)

      add_key name
      set_label label

      add_key project_id, region

      update_resource options(expiry:duration_hr(1)), database_id=@string_metrics.database_id, current_state:@string_metrics.value
    EOF
  }
}
