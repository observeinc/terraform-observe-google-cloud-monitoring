locals {
  links = {
    "ComputeInstanceToProjects" = {
      source = observe_dataset.compute_instance.oid
      target = var.google.projects.oid
      fields = ["project_id"]
      label  = "Link to Projects"
      create = true
    }

    "ComputeDiskInstanceToProjects" = {
      source = observe_dataset.compute_disk.oid
      target = var.google.projects.oid
      fields = ["project_id"]
      label  = "Link to Projects"
      create = true
    }

    "ComputeRawLogsToProjects" = {
      source = observe_dataset.compute_logs_raw.oid
      target = var.google.projects.oid
      fields = ["project_id"]
      label  = "Link to Projects"
      create = true
    }

    "ComputeMetricsToComputeInstance" = {
      source = observe_dataset.compute_metrics[0].oid
      target = observe_dataset.compute_instance.oid
      fields = ["computeInstanceAssetKey"]
      label  = "Link to Compute Instances"
      create = true
    }

    "ComputeMetricsToComputeDiskInstance" = {
      source = observe_dataset.compute_metrics[0].oid
      target = observe_dataset.compute_disk.oid
      fields = ["computeDiskInstanceAssetKey"]
      label  = "Link to Compute Disk Instances"
      create = true
    }

    # "ComputeInstanceToComputeMetrics" = {
    #   target = observe_dataset.compute_metrics[0].oid
    #   source = observe_dataset.compute_instance.oid
    #   fields = ["computeInstanceAssetKey"]
    #   label  = "Link to Compute Instances"
    #   create = true
    # }

    # "ComputeDiskInstanceToComputeMetrics" = {
    #   target = observe_dataset.compute_metrics[0].oid
    #   source = observe_dataset.compute_disk.oid
    #   fields = ["computeDiskInstanceAssetKey"]
    #   label  = "Link to Compute Disk Instances"
    #   create = true
    # }

    # "ComputeDiskToComputeInstance" = {
    #   source = observe_dataset.compute_disk.oid
    #   target = observe_dataset.compute_instance.oid
    #   fields = ["computeInstanceAssetKey"]
    #   label  = "Link to Compute Instances"
    #   create = true
    # }

    "ComputeInstanceToComputeDisk" = {
      target = observe_dataset.compute_disk.oid
      source = observe_dataset.compute_instance.oid
      fields = ["computeInstanceAssetKey"]
      label  = "Link to Compute Instances"
      create = true
    }

    "ComputeDiskToComputeRawLogs" = {
      source = observe_dataset.compute_disk.oid
      target = observe_dataset.compute_logs_raw.oid
      fields = ["computeDiskInstanceAssetKey"]
      label  = "Link to Compute Raw Logs"
      create = true
    }

    "ComputeInstanceToComputeRawLogs" = {
      source = observe_dataset.compute_instance.oid
      target = observe_dataset.compute_logs_raw.oid
      fields = ["computeInstanceAssetKey"]
      label  = "Link to Compute Raw Logs"
      create = true
    }

    "ComputeInstanceToInstanceGroup" = {
      target = observe_dataset.instance_group.oid
      fields = ["instanceGroupAssetKey"]
      source = observe_dataset.compute_instance.oid
      label  = "Link to Compute Instances"
      create = true
    }

    "InstanceGroupToComputeInstance" = {
      source = observe_dataset.instance_group.oid
      fields = ["instanceGroupAssetKey"]
      target = observe_dataset.compute_instance.oid
      label  = "Link to Compute Instances"
      create = true
    }
  }
}

resource "observe_link" "compute" {
  for_each = { for key, value in local.links : key => value if value.create == true }

  workspace = var.workspace.oid
  source    = each.value.source
  target    = each.value.target
  fields    = each.value.fields
  label     = each.value.label
}


resource "observe_preferred_path" "compute_disk" {
  # folder = observe_folder.gcp.oid
  workspace   = var.workspace.oid
  name        = format(var.name_format, "to disk")
  description = "Link to disk resources associated with current set of compute instances"
  source      = observe_dataset.compute_instance.oid
  step {
    link    = observe_link.compute["ComputeInstanceToComputeDisk"].oid
    reverse = false
  }
}

resource "observe_preferred_path" "disk_compute" {
  # folder = observe_folder.gcp.oid
  workspace   = var.workspace.oid
  name        = format(var.name_format, "disk to compute instances")
  description = "Link to compute instances associated with current set of disk resources"
  source      = observe_dataset.compute_disk.oid
  step {
    link    = observe_link.compute["ComputeInstanceToComputeDisk"].oid
    reverse = true
  }
}

resource "observe_preferred_path" "compute_log" {
  # folder = observe_folder.gcp.oid
  workspace   = var.workspace.oid
  name        = format(var.name_format, "to Logs")
  description = "Link to logs associated with current set of compute instances"
  source      = observe_dataset.compute_instance.oid
  step {
    link    = observe_link.compute["ComputeInstanceToComputeRawLogs"].oid
    reverse = false
  }
}

resource "observe_preferred_path" "compute_metrics" {
  # folder = observe_folder.gcp.oid
  workspace   = var.workspace.oid
  name        = format(var.name_format, "metrics to instance")
  description = "Link to Metrics associated with current set of compute instances"
  source      = observe_dataset.compute_metrics[0].oid
  step {
    link    = observe_link.compute["ComputeMetricsToComputeDiskInstance"].oid
    reverse = false
  }
}

resource "observe_preferred_path" "instance_groups_compute" {
  # folder = observe_folder.gcp.oid
  workspace   = var.workspace.oid
  name        = format(var.name_format, "instance group to instances")
  description = "Link to Compute Instances associated with current set of Instance Groups"
  source      = observe_dataset.instance_group.oid
  step {
    link    = observe_link.compute["InstanceGroupToComputeInstance"].oid
    reverse = false
  }
}

resource "observe_preferred_path" "compute_instance_groups" {
  # folder = observe_folder.gcp.oid
  workspace   = var.workspace.oid
  name        = format(var.name_format, "instances to instance group")
  description = "Link to instance groups associated with current set of compute instances"
  source      = observe_dataset.compute_instance.oid
  step {
    link    = observe_link.compute["InstanceGroupToComputeInstance"].oid
    reverse = true
  }
}

resource "observe_preferred_path" "instance_groups_compute_disk" {

  workspace   = var.workspace.oid
  name        = format(var.name_format, "instance group to disks")
  description = "Link to Disks attached to Compute Instances associated with current set of Instance Groups"
  source      = observe_dataset.instance_group.oid

  step {
    link    = observe_link.compute["InstanceGroupToComputeInstance"].oid
    reverse = false
  }

  step {
    link    = observe_link.compute["ComputeInstanceToComputeDisk"].oid
    reverse = false
  }
}


