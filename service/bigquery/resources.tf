resource "observe_dataset" "bigquery_dataset" {
  workspace   = local.datasets.bigquery_dataset.workspace
  name        = local.datasets.bigquery_dataset.name
  freshness   = local.datasets.bigquery_dataset.freshness
  description = local.datasets.bigquery_dataset.description

  inputs = {
    "events" = var.google.resource_asset_inventory_records.oid
  }

  stage {
    input    = "events"
    pipeline = <<-EOF
        filter asset_type = "bigquery.googleapis.com/Dataset"
        make_col dataset_id:string(data.datasetReference.datasetId),
            project_id:string(data.datasetReference.projectId),
            creationTime:from_milliseconds(int64(data.creationTime)),
            defaultTableExpirationMs:int64(data.defaultTableExpirationMs),
            id:string(data.id),
            lastModifiedTime:from_milliseconds(int64(data.lastModifiedTime)),
            location_1:string(data.location)
            
        make_resource options(expiry:${var.max_expiry}), 
            creationTime,
            lastModifiedTime,
            defaultTableExpirationMs,
            location,
            primary_key(dataset_id, project_id)

        set_label dataset_id 
    EOF
  }
}

resource "observe_dataset" "bigquery_table" {
  workspace   = local.datasets.bigquery_table.workspace
  name        = local.datasets.bigquery_table.name
  freshness   = local.datasets.bigquery_table.freshness
  description = local.datasets.bigquery_table.description

  inputs = {
    "events" = var.google.resource_asset_inventory_records.oid
  }

  stage {
    input    = "events"
    pipeline = <<-EOF
        #hint{allowVariantColumn:"schema"} 

        filter asset_type = "bigquery.googleapis.com/Table"
        make_col dataset_id:string(data.tableReference.datasetId),
            project_id:string(data.tableReference.projectId),
            table_id:string(data.tableReference.tableId),
            schema:data.schema,
            expirationTime:from_milliseconds(int64(data.expirationTime)),
            creationTime:from_milliseconds(int64(data.creationTime))

        make_resource options(expiry:${var.max_expiry}), 
            creationTime,
            expirationTime,
            schema,
            location,
            primary_key(table_id, dataset_id, project_id)
            
        set_label table_id
    EOF
  }
}

resource "observe_link" "bigquery_dataset" {
  workspace = var.workspace.oid
  source    = observe_dataset.bigquery_dataset.oid
  target    = each.value.target
  fields    = each.value.fields
  label     = each.key

  for_each = merge(
    {
      "BigQuery Project" = {
        target = var.google.projects.oid
        fields = ["project_id"]
      }
    }
  )
}

resource "observe_link" "bigquery_table" {
  workspace = var.workspace.oid
  source    = observe_dataset.bigquery_table.oid
  target    = each.value.target
  fields    = each.value.fields
  label     = each.key

  for_each = merge(
    {
      "BigQuery Dataset" = {
        target = observe_dataset.bigquery_dataset.oid
        fields = ["project_id", "dataset_id"]
      }
    }
  )
}

