locals {
  freshness = merge({
    cloudsql = "5m",
    metrics  = "1m",
    logging  = "1m",
  }, var.freshness_overrides)

  enable_metrics  = lookup(var.feature_flags, "metrics", true)
  enable_monitors = lookup(var.feature_flags, "monitors", true)
  enable_both     = local.enable_monitors && local.enable_metrics
}

resource "observe_dataset" "cloud_sql_instance" {
  workspace   = var.workspace.oid
  name        = format(var.name_format, "Instance")
  freshness   = lookup(local.freshness, "cloudsql", var.freshness_default)
  description = "This dataset is used to create CloudSQL Resources"

  inputs = {
    "events" = var.google.resource_asset_inventory_records.oid,
  }

  # https://cloud.google.com/sql/docs
  stage {
    pipeline = <<-EOF
      filter asset_type = "sqladmin.googleapis.com/Instance"
      make_col
        assetInventoryName:name,
        project_id: split_part(name, "/",5),
        name: split_part(name, "/",7),
        ipAddressObject:pivot_array(array(data.ipAddresses), "type", "ipAddress" )

      make_col
        database_id: strcat(project_id,":",name),
        createTime: parse_isotime(string(data.createTime))

    EOF
  }

  stage {
    pipeline = <<-EOF
      make_resource options(expiry:${var.max_expiry}),
        name,
        databaseVersion: string(data.databaseVersion),
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
        createTime,
        ipAddressPrimary: ipAddressObject.PRIMARY,
        ipAddresses:string(data.ipAddresses),
        gceZone:string(data.gceZone),
        ttl,
        deleted,
        primary_key(database_id),
        valid_for(ttl)

      add_key name

      set_label name

      add_key project_id
      add_key region
      
    EOF
  }
}

resource "observe_link" "project" {
  for_each = {
    "Projects" = {
      target = var.google.projects.oid
      fields = ["project_id"]
    }
  }

  workspace = var.workspace.oid
  source    = observe_dataset.cloud_sql_instance.oid
  target    = each.value.target
  fields    = each.value.fields
  label     = each.key
}
