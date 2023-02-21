output "network-load-balancer-ip-address" {
  value = google_compute_forwarding_rule.default.ip_address
}