output "http-load-balancer-ip-address" {
  value = google_compute_global_forwarding_rule.global_forwarding_rule.ip_address
}

output "http-load-balancer-ip-address-8080" {
  value = google_compute_global_forwarding_rule.global_forwarding_rule_8080.ip_address
}