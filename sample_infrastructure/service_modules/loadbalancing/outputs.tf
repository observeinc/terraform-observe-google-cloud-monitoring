output "http-load_balancer_ip" {
  value = google_compute_global_address.my_ip
}

output "http-load-balancer-ip-address" {
  #   value = google_compute_global_forwarding_rule.global_forwarding_rule.ip_address
  value = module.http_load_balancer.http-load-balancer-ip-address
}

output "http-curl-load-balancer-ip-address" {
  #   value = google_compute_global_forwarding_rule.global_forwarding_rule.ip_address
  value = "curl -m1 ${module.http_load_balancer.http-load-balancer-ip-address}"
}

output "http-curl-load-balancer-ip-address_8080" {
  #   value = google_compute_global_forwarding_rule.global_forwarding_rule.ip_address
  value = "curl -m1 ${module.http_load_balancer.http-load-balancer-ip-address-8080}"
}

output "network-load_balancer_ip" {
  value = google_compute_global_address.my_ip
}

output "network-load-balancer-ip-address" {
  #   value = google_compute_global_forwarding_rule.global_forwarding_rule.ip_address
  value = module.network_load_balancer.network-load-balancer-ip-address
}

output "network-curl-load-balancer-ip-address" {
  #   value = google_compute_global_forwarding_rule.global_forwarding_rule.ip_address
  value = "curl -m1 ${module.network_load_balancer.network-load-balancer-ip-address}"
}

output "load-balancer-list" {
  #   value = google_compute_global_forwarding_rule.global_forwarding_rule.ip_address
  value = [
    { port = "80", address = "http://${module.network_load_balancer.network-load-balancer-ip-address}" },
    { port = "8080", address = "http://${module.http_load_balancer.http-load-balancer-ip-address-8080}" },
  { port = "80", address = "http://${module.http_load_balancer.http-load-balancer-ip-address}" }]
}


