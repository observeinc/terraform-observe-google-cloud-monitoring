resource "observe_dataset" "bigquery_dataset" {
  workspace = var.workspace.oid
  name      = format(var.name_format, "Dataset")
  freshness = var.freshness_default

  inputs = {
    "events" = var.google.resource_asset_inventory_records.oid
  }

  stage {
    input    = "events"
    pipeline = <<-EOF
        filter asset_type = "bigquery.googleapis.com/Dataset"
        make_col datasetId:string(data.datasetReference.datasetId),
            projectId:string(data.datasetReference.projectId),
            creationTime:from_milliseconds(int64(data.creationTime)),
            defaultTableExpirationMs:int64(data.defaultTableExpirationMs),
            id:string(data.id),
            lastModifiedTime:from_milliseconds(int64(data.lastModifiedTime)),
            location_1:string(data.location)
            
        make_resource 
            creationTime,
            lastModifiedTime,
            defaultTableExpirationMs,
            location,
            primary_key(datasetId, projectId)

        set_label datasetId 
    EOF
  }
}

resource "observe_dataset" "bigquery_table" {
  workspace = var.workspace.oid
  name      = format(var.name_format, "Table")
  freshness = var.freshness_default

  inputs = {
    "events" = var.google.resource_asset_inventory_records.oid
  }

  stage {
    input    = "events"
    pipeline = <<-EOF
        filter contains(asset_type, "bigquery")
        filter asset_type = "bigquery.googleapis.com/Table"
        make_col datasetId:string(data.tableReference.datasetId),
            projectId:string(data.tableReference.projectId),
            tableId:string(data.tableReference.tableId),
            schema:data.schema,
            expirationTime:from_milliseconds(int64(data.expirationTime)),
            creationTime:from_milliseconds(int64(data.creationTime))

        make_resource options(expiry: 20m),
            creationTime,
            expirationTime,
            schema,
            location,
            primary_key(tableId, datasetId, projectId)
            
        set_label tableId
    EOF
  }
}
