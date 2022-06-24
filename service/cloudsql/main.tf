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
    "events" = var.google.resource_asset_inventory_records.oid
  }

  # https://cloud.google.com/sql/docs
  stage {
    input    = "events"
    pipeline = <<-EOF
      filter asset_type = "sqladmin.googleapis.com/Instance"
      make_col
        assetInventoryName:name,
        name:string(data.name),
        ipAddressObject:pivot_array(array(data.ipAddresses), "type", "ipAddress" )


      make_resource options(expiry:${var.max_expiry}),
        name,
        databaseVersion: string(data.databaseVersion),
        label: strcat(string(data.databaseVersion),":",name),
        databaseInstalledVersion: string(data.databaseInstalledVersion),
        project_id: string(data.project),
        region:  string(data.region),
        database_id: strcat(string(data.project),":",name),
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
        primary_key(assetInventoryName),
        valid_for(ttl)

      add_key name
      set_label label

      add_key project_id, region, database_id
    EOF
  }
}
