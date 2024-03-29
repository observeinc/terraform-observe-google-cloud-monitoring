output "gke_cluster" {
  value = observe_dataset.gke_clusters
}

output "cluster" {
  value = observe_dataset.gke_clusters
}

output "gke_logs" {
  value = observe_dataset.gke_logs
}

output "logs" {
  value = var.google.logs
}

output "instance_group_link" {
  value = observe_link.gke["InstanceGroupToGKECluster"]
}
