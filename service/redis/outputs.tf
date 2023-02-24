output "logs" {
  value = observe_dataset.logs
}

output "metrics" {
  value = one(observe_dataset.redis_metrics)
}

output "instance" {
  value = observe_dataset.redis_instance
}
