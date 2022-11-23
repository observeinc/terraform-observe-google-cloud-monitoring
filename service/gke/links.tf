locals {
  use_name_format_in_preferred_path = lookup(var.feature_flags, "use_name_format_in_preferred_path", false)
}

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

    "GKEClusterToInstanceGroup" = {
      target = var.google.compute_instance_group.oid
      fields = ["gkeClusterAssetKey"]
      source = observe_dataset.gke_clusters.oid
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
  workspace   = var.workspace.oid
  name        = local.use_name_format_in_preferred_path == true ? format(var.name_format, "Link to Compute  ") : "Link to Compute  "
  description = "Link to compute instances that are used as nodes in current set of GKE Clusters"
  source      = observe_dataset.gke_clusters.oid
  step {
    link    = observe_link.gke["GKEClusterToInstanceGroup"].oid
    reverse = false
  }
  step {
    link    = var.google.compute_instance_group_link_to_instance.oid
    reverse = false
  }
}

resource "observe_preferred_path" "gke_to_disk" {
  workspace   = var.workspace.oid
  name        = local.use_name_format_in_preferred_path == true ? format(var.name_format, "Link to compute disk") : "Link to compute disk"
  description = "Link to compute disk instances that are used by nodes in current set of GKE Clusters"
  source      = observe_dataset.gke_clusters.oid
  step {
    link    = observe_link.gke["GKEClusterToInstanceGroup"].oid
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


