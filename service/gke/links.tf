resource "observe_link" "gke" {
  for_each = {
    "ClustersToProject" = {
      target = var.google.projects.oid
      fields = ["project_id"]
      source = observe_dataset.gke_clusters.oid
      label  = "Project"
    }

    "ClusterToLogs" = {
      target = observe_dataset.gke_logs.oid
      fields = ["gkeClusterAssetKey"]
      source = observe_dataset.gke_clusters.oid
      label  = "Logs"
    }

    "InstanceGroupToGKECluster" = {
      source = var.google.compute_instance_group.oid
      target = observe_dataset.gke_clusters.oid
      fields = ["gkeClusterAssetKey"]
      label  = "Instance group"
    }

  }

  workspace = var.workspace.oid
  source    = each.value.source
  target    = each.value.target
  fields    = each.value.fields
  label     = each.value.label
}

resource "observe_preferred_path" "gke_to_logs" {
  count = local.enable_preferred_paths ? 1 : 0

  workspace   = var.workspace.oid
  name        = local.use_name_format_in_preferred_path == true ? format(var.name_format, "Link to Logs ") : "Link to Logs "
  description = "Link to compute instances that are used as nodes in current set of GKE Clusters"
  source      = observe_dataset.gke_clusters.oid
  step {
    link    = observe_link.gke["ClusterToLogs"].oid
    reverse = false
  }
}

resource "observe_preferred_path" "gke_to_compute" {
  count       = local.enable_preferred_paths ? 1 : 0
  workspace   = var.workspace.oid
  name        = local.use_name_format_in_preferred_path == true ? format(var.name_format, "Link to Compute  ") : "Link to Compute  "
  description = "Link to compute instances that are used as nodes in current set of GKE Clusters"
  source      = observe_dataset.gke_clusters.oid
  step {
    link    = observe_link.gke["InstanceGroupToGKECluster"].oid
    reverse = true
  }
  step {
    link    = var.google.compute_instance_link_to_instance_group.oid
    reverse = true
  }
}

resource "observe_preferred_path" "gke_to_disk" {
  count       = local.enable_preferred_paths ? 1 : 0
  workspace   = var.workspace.oid
  name        = local.use_name_format_in_preferred_path == true ? format(var.name_format, "Link to compute disk") : "Link to compute disk"
  description = "Link to compute disk instances that are used by nodes in current set of GKE Clusters"
  source      = observe_dataset.gke_clusters.oid
  step {
    link    = observe_link.gke["InstanceGroupToGKECluster"].oid
    reverse = true
  }
  step {
    link    = var.google.compute_instance_link_to_instance_group.oid
    reverse = true
  }
  step {
    link    = var.google.compute_instance_link_to_disk.oid
    reverse = false
  }
}


