output "compute" {
  value = observe_dataset.compute_instance
}

output "instance" {
  value = observe_dataset.compute_instance
}

output "compute_logs" {
  value = observe_dataset.compute_logs_raw
}

output "compute_metrics" {
  value = local.enable_metrics ? observe_dataset.compute_metrics[0] : null
}

output "compute_instance_group" {
  value = observe_dataset.instance_group
}

output "compute_instance_group_link_to_instance" {
  value = observe_link.compute["InstanceGroupToComputeInstance"]
}

output "compute_disk" {
  value = observe_dataset.compute_disk
}

output "volume" {
  value = observe_dataset.compute_disk
}

output "compute_instance_link_to_disk" {
  value = observe_link.compute["ComputeInstanceToComputeDisk"]
}
