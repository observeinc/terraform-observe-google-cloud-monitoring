output "logs" {
  value = observe_dataset.logs
}

output "metrics" {
  value = one(observe_dataset.memcache_metrics)
}

output "instance" {
  value = observe_dataset.memcache_instance
}
