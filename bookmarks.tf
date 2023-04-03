
locals {
  enable_bookmarks = lookup(var.feature_flags, "bookmarks", true)
}


resource "observe_bookmark_group" "start" {
  count     = local.enable_bookmarks ? 1 : 0
  workspace = var.workspace.oid
  name      = format(var.name_format, "Getting Started with GCP Home")
}

resource "observe_bookmark" "logs" {
  count    = local.enable_bookmarks ? 1 : 0
  group    = observe_bookmark_group.start[0].oid
  target   = observe_dataset.logs.oid
  name     = "GCP Logs"
  icon_url = "editing/others/clipboard-list"
}

resource "observe_bookmark" "asset_inventory_events" {
  count    = local.enable_bookmarks ? 1 : 0
  group    = observe_bookmark_group.start[0].oid
  target   = observe_dataset.resource_asset_inventory_records.oid
  name     = "Asset Inventory Events"
  icon_url = "editing/others/clipboard-approve"
}

resource "observe_bookmark" "home_dashboard" {
  count    = local.enable_bookmarks ? 1 : 0
  group    = observe_bookmark_group.start[0].oid
  target   = observe_dashboard.app_home.oid
  name     = "GCP Home"
  icon_url = "star"
}

resource "observe_bookmark" "compute" {
  count    = local.enable_bookmarks && local.enable_service_compute ? 1 : 0
  group    = observe_bookmark_group.start[0].oid
  target   = module.compute[0].instance.oid
  icon_url = module.compute[0].instance.icon_url
  name     = "Compute Instances"
}

resource "observe_bookmark" "cloudsql" {
  count    = local.enable_bookmarks && local.enable_service_cloudsql ? 1 : 0
  group    = observe_bookmark_group.start[0].oid
  target   = module.cloudsql[0].cloudsql.oid
  icon_url = module.cloudsql[0].cloudsql.icon_url
  name     = "CloudSQL Instances"
}

resource "observe_bookmark" "gke" {
  count    = local.enable_bookmarks && local.enable_service_gke ? 1 : 0
  group    = observe_bookmark_group.start[0].oid
  target   = module.gke[0].cluster.oid
  icon_url = module.gke[0].cluster.icon_url
  name     = "GKE Clusters"
}

resource "observe_bookmark" "cloudfunction" {
  count    = local.enable_bookmarks && local.enable_service_cloudfunctions ? 1 : 0
  group    = observe_bookmark_group.start[0].oid
  target   = module.cloudfunctions[0].function.oid
  icon_url = module.cloudfunctions[0].function.icon_url
  name     = "Cloud Functions"
}
