locals {

}

# data "google_compute_network" "default" {
#   name    = "default"
#   project = var.project_id
# }

# data "google_compute_subnetwork" "uswest1" {
#   project = var.project_id
#   name    = "default"
#   region  = "us-west1"
# }

resource "google_compute_global_address" "my_ip" {
  name    = format(var.name_format, "static-load-balancer")
  project = var.project_id
}

# resource "google_compute_health_check" "http_health_check" {
#   project = var.project_id
#   name    = format(var.name_format, "http-health-check")

#   timeout_sec        = 1
#   check_interval_sec = 1

#   http_health_check {
#     port = 80
#   }
# }

# resource "google_compute_http_health_check" "default" {
#   project      = var.project_id
#   name         = format(var.name_format, "authentication-health-check")
#   request_path = "/"

#   timeout_sec        = 1
#   check_interval_sec = 1
# }

# resource "google_compute_forwarding_rule" "default" {
#   name       = "website-forwarding-rule"
#   target     = google_compute_target_pool.default.id
#   port_range = "80"
# }


# resource "google_compute_target_pool" "default" {
#   project = var.project_id
#   region  = var.region
#   name    = format(var.name_format, "instance-pool")

#   instances = var.target_group_instances

#   health_checks = [
#     google_compute_http_health_check.default.name,
#   ]
# }

# resource "google_compute_global_forwarding_rule" "default" {
#       project = var.project_id
#   name       = format(var.name_format,"global-rule")
#   target     = google_compute_target_http_proxy.default.id
#   port_range = "80"
# }

# resource "google_compute_target_http_proxy" "default" {
#      project = var.project_id
#   name        = format(var.name_format,"target-proxy")
#   description = "a description"
#   url_map     = google_compute_url_map.default.id
# }

# resource "google_compute_url_map" "default" {
#       project = var.project_id
#   name            = format(var.name_format,"url-map-target-proxy")
#   description     = "a description"
#   default_service = google_compute_backend_service.default.id

#   host_rule {
#     hosts        = ["*"]
#     path_matcher = "allpaths"
#   }

#   path_matcher {
#     name            = "allpaths"
#     default_service = google_compute_backend_service.default.id

#     path_rule {
#       paths   = ["/*"]
#       service = google_compute_backend_service.default.id
#     }
#   }
# }

# resource "google_compute_backend_service" "default" {
#       project = var.project_id
#   name        = "backend"
#   port_name   = "http"
#   protocol    = "HTTP"
#   timeout_sec = 10

#   health_checks = [google_compute_http_health_check.default.id]
# }

# Load balancer with unmanaged instance group | lb-unmanaged.tf

# used to forward traffic to the correct load balancer for HTTP load balancing 
# resource "google_compute_global_forwarding_rule" "global_forwarding_rule" {
#   name       = format(var.name_format,"global-forwarding-rule")
#   project    = var.project_id
#   target     = google_compute_target_http_proxy.target_http_proxy.self_link
#   port_range = "80"
# }

# # used by one or more global forwarding rule to route incoming HTTP requests to a URL map
# resource "google_compute_target_http_proxy" "target_http_proxy" {
#   name    = format(var.name_format,"proxy")
#   project = var.project_id
#   url_map = google_compute_url_map.url_map.self_link
# }

# # defines a group of virtual machines that will serve traffic for load balancing
# resource "google_compute_backend_service" "backend_service" {
#   name                    = format(var.name_format,"backend-service")
#   project                 = var.project_id
#   port_name               = "http"
#   protocol                = "HTTP"
#   health_checks           = ["${google_compute_health_check.healthcheck.self_link}"]

#   backend {
#     group                 = google_compute_instance_group.web_private_group.self_link
#     balancing_mode        = "RATE"
#     max_rate_per_instance = 100
#   }
# }

# # creates a group of dissimilar virtual machine instances
# resource "google_compute_instance_group" "web_private_group" {
#     project         = var.project_id
#   name        = format(var.name_format,"vm-group")
#   description = "Web servers instance group"
#   zone        = "${var.region}-a"

#   instances   = var.target_group_instances

#   named_port {
#     name = "http"
#     port = "80"
#   }
# }

# # determine whether instances are responsive and able to do work
# resource "google_compute_health_check" "healthcheck" {
#     project         = var.project_id
#   name               = format(var.name_format,"healthcheck")
#   timeout_sec        = 1
#   check_interval_sec = 1
#   http_health_check {
#     port = 80
#   }
# }

# # used to route requests to a backend service based on rules that you define for the host and path of an incoming URL
# resource "google_compute_url_map" "url_map" {
#   name            = format(var.name_format,"load-balancer")
#   project         = var.project_id
#   default_service = google_compute_backend_service.backend_service.self_link
# }

# show external ip address of load balancer

module "http_load_balancer" {
  source                 = "./modules/http"
  project_id             = var.project_id
  name_format            = var.name_format
  target_group_instances = var.target_group_instances
  region                 = var.region
}

module "network_load_balancer" {
  source                 = "./modules/network"
  project_id             = var.project_id
  name_format            = var.name_format
  target_group_instances = var.target_group_instances
  region                 = var.region
}
