locals {
  use_name_format_in_preferred_path = lookup(var.feature_flags, "use_name_format_in_preferred_path", false)

  links = {
    "ComputeInstanceToProjects" = {
      source = observe_dataset.compute_instance.oid
      target = var.google.projects.oid
      fields = ["project_id"]
      label  = "Projects"
      create = true
    }

    "ComputeDiskInstanceToProjects" = {
      source = observe_dataset.compute_disk.oid
      target = var.google.projects.oid
      fields = ["project_id"]
      label  = "Projects"
      create = true
    }

    "ComputeRawLogsToProjects" = {
      source = observe_dataset.compute_logs_raw.oid
      target = var.google.projects.oid
      fields = ["project_id"]
      label  = "Projects"
      create = true
    }

    "ComputeMetricsToComputeInstance" = {
      source = observe_dataset.compute_metrics[0].oid
      target = observe_dataset.compute_instance.oid
      fields = ["computeInstanceAssetKey"]
      label  = "Compute Instances"
      create = true
    }

    "ComputeMetricsToComputeDiskInstance" = {
      source = observe_dataset.compute_metrics[0].oid
      target = observe_dataset.compute_disk.oid
      fields = ["computeDiskInstanceAssetKey"]
      label  = "Disk Instances"
      create = true
    }

    "ComputeInstanceToComputeDisk" = {
      target = observe_dataset.compute_disk.oid
      source = observe_dataset.compute_instance.oid
      fields = ["computeInstanceAssetKey"]
      label  = "Disk Instances"
      create = true
    }

    "ComputeDiskToComputeRawLogs" = {
      source = observe_dataset.compute_disk.oid
      target = observe_dataset.compute_logs_raw.oid
      fields = ["computeDiskInstanceAssetKey"]
      label  = "Raw Logs"
      create = true
    }

    "ComputeInstanceToComputeRawLogs" = {
      source = observe_dataset.compute_instance.oid
      target = observe_dataset.compute_logs_raw.oid
      fields = ["computeInstanceAssetKey"]
      label  = "Raw Logs"
      create = true
    }

    "ComputeInstanceToInstanceGroup" = {
      source = observe_dataset.compute_instance.oid
      target = observe_dataset.instance_group.oid
      fields = ["instanceGroupAssetKey"]
      label  = "Compute Instances"
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
  name        = local.use_name_format_in_preferred_path == true ? format(var.name_format, "Link to Disk") : "Link to Disk"
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
  name        = local.use_name_format_in_preferred_path == true ? format(var.name_format, "Link to Compute Instances") : "Link to Compute Instances"
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
  name        = local.use_name_format_in_preferred_path == true ? format(var.name_format, "Link to Logs") : "Link to Logs"
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
  name        = local.use_name_format_in_preferred_path == true ? format(var.name_format, "Link to Compute Instances ") : "Link to Compute Instances "
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
  name        = local.use_name_format_in_preferred_path == true ? format(var.name_format, "Link to Compute Instances  ") : "Link to Compute Instances  "
  description = "Link to Compute Instances associated with current set of Instance Groups"
  source      = observe_dataset.instance_group.oid
  step {
    link    = observe_link.compute["ComputeInstanceToInstanceGroup"].oid
    reverse = true
  }
}
# tflint-ignore: terraform_unsupported_argument

resource "observe_preferred_path" "compute_instance_groups" {
  # folder = observe_folder.gcp.oid
  workspace   = var.workspace.oid
  name        = local.use_name_format_in_preferred_path == true ? format(var.name_format, "Link to compute instance group") : "Link to compute instance group"
  description = "Link to instance groups associated with current set of compute instances"
  source      = observe_dataset.compute_instance.oid
  step {
    link    = observe_link.compute["ComputeInstanceToInstanceGroup"].oid
    reverse = false
  }
}

resource "observe_preferred_path" "instance_group_compute_disk" {

  workspace   = var.workspace.oid
  name        = local.use_name_format_in_preferred_path == true ? format(var.name_format, "Link to Disk ") : "Link to Disk "
  description = "Link to Disks attached to Compute Instances associated with current set of Instance Groups"
  source      = observe_dataset.instance_group.oid

  step {
    link    = observe_link.compute["ComputeInstanceToInstanceGroup"].oid
    reverse = true
  }

  step {
    link    = observe_link.compute["ComputeInstanceToComputeDisk"].oid
    reverse = false
  }
}


