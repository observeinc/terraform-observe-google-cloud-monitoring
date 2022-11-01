resource "observe_link" "project" {
  for_each = {
    "ClustersToProject" = {
      target = var.google.projects.oid
      fields = ["project_id"]
      source = observe_dataset.gke_clusters.oid
      label  = "Link to project"
    }

    "ClusterToLogs" = {
      target = observe_dataset.gke_logs.oid
      fields = ["gkeClusterAssetKey"]
      source = observe_dataset.gke_clusters.oid
      label  = "Link to logs"
    }

    "GKEClusterToInstanceGroup" = {
      target = var.google.compute_instance_group.oid
      fields = ["gkeClusterAssetKey"]
      source = observe_dataset.gke_clusters.oid
      label  = "Link to instance group"
    }

  }

  workspace = var.workspace.oid
  source    = each.value.source
  target    = each.value.target
  fields    = each.value.fields
  label     = each.value.label
}

resource "observe_preferred_path" "gke_to_logs" {
  workspace   = var.workspace.oid
  name        = format(var.name_format, "Link to Logs")
  description = "Link to compute instances that are used as nodes in current set of GKE Clusters"
  source      = observe_dataset.gke_clusters.oid
  step {
    link    = observe_link.project["ClusterToLogs"].oid
    reverse = false
  }
}

resource "observe_preferred_path" "gke_to_compute" {
  workspace   = var.workspace.oid
  name        = format(var.name_format, "Link to Compute")
  description = "Link to compute instances that are used as nodes in current set of GKE Clusters"
  source      = observe_dataset.gke_clusters.oid
  step {
    link    = observe_link.project["GKEClusterToInstanceGroup"].oid
    reverse = false
  }
  step {
    link    = var.google.compute_instance_group_link_to_instance.oid
    reverse = false
  }
}

resource "observe_preferred_path" "gke_to_disk" {
  workspace   = var.workspace.oid
  name        = format(var.name_format, "Link to compute disk")
  description = "Link to compute disk instances that are used by nodes in current set of GKE Clusters"
  source      = observe_dataset.gke_clusters.oid
  step {
    link    = observe_link.project["GKEClusterToInstanceGroup"].oid
    reverse = false
  }
  step {
    link    = var.google.compute_instance_group_link_to_instance.oid
    reverse = false
  }
  step {
    link    = var.google.compute_instance_link_to_disk.oid
    reverse = false
  }
}


