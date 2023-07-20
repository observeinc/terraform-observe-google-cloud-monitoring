locals {
  enable_metrics              = lookup(var.feature_flags, "metrics", true)
  enable_metric_dataset_alias = lookup(var.feature_flags, "metric_explorer", true)
  # tflint-ignore: terraform_unused_declarations
  enable_monitors = lookup(var.feature_flags, "monitors", true)

  freshness = merge({}, var.freshness_overrides)

  /*

  workspace = local.datasets.REPLACE_WITH_DATASET_NAME.workspace
  name        = local.datasets.REPLACE_WITH_DATASET_NAME.name
  freshness   = local.datasets.REPLACE_WITH_DATASET_NAME.freshness
  description = local.datasets.REPLACE_WITH_DATASET_NAME.description

*/

  datasets = {
    storage_buckets = {
      workspace   = local.workspace
      name        = format(var.name_format, "Buckets")
      freshness   = lookup(local.freshness, "storage_buckets", var.freshness_default_duration)
      description = "This dataset is used to create Storage Resources"
    }

    storage_logs = {
      workspace   = local.workspace
      name        = format(var.name_format, "Logs")
      freshness   = lookup(local.freshness, "storage_logs", var.freshness_default_duration)
      description = "This dataset contains all logs generated for storage buckets"
    }
  }
}

resource "observe_dataset" "storage_buckets" {
  workspace   = local.datasets.storage_buckets.workspace
  name        = local.datasets.storage_buckets.name
  freshness   = local.datasets.storage_buckets.freshness
  description = local.datasets.storage_buckets.description

  inputs = {
    "events" = var.google.resource_asset_inventory_records.oid
  }

  # https://cloud.google.com/storage/docs
  stage {
    alias    = "fields"
    input    = "events"
    pipeline = <<-EOF
      filter asset_type = "storage.googleapis.com/Bucket"
      make_col
        assetInventoryName:name,
        bucket_name:string(data.name),
        projectNumber:string(data.projectNumber),
        owner:object(data.owner),
        region:location,
        locationType:string(data.locationType),
        selfLink:string(data.selfLink),
        iamConfiguration:object(data.iamConfiguration),
        acl:array(data.acl),
        defaultObjectAcl:array(data.defaultObjectAcl),
        website:object(data.website),
        cors:array(data.cors),
        encryption:object(data.encryption),
        versioning:object(data.versioning),
        storageClass:string(data.storageClass),
        autoclass:object(data.autoclass),
        lifecycle:object(data.lifecycle),
        retentionPolicy:object(data.retentionPolicy),
        billing:object(data.billing),
        logging:object(data.logging),
        labels:object(data.labels),
        updated:string(data.updated),
        timeCreated:string(data.timeCreated)
    EOF
  }

  stage {
    alias    = "resource"
    pipeline = <<-EOF
      make_resource options(expiry:${var.max_expiry}), 
        projectNumber,
        project_id,
        owner,
        region,
        locationType,
        selfLink,
        iamConfiguration,
        acl,
        defaultObjectAcl,
        website,
        cors,
        encryption,
        versioning,
        storageClass,
        autoclass,
        lifecycle,
        retentionPolicy,
        billing,
        logging,
        labels,
        updated,
        timeCreated,
        assetInventoryName,
        primary_key(bucket_name),
        valid_for(ttl)

      set_label bucket_name

      //add_key projectNumber, region
      //add_key project_id
      add_key assetInventoryName
    EOF
  }
}

resource "observe_link" "storage_projects" {
  workspace = var.workspace.oid
  source    = observe_dataset.storage_buckets.oid
  target    = var.google.projects.oid
  fields    = ["projectNumber"]
  label     = "Project Number"
}
