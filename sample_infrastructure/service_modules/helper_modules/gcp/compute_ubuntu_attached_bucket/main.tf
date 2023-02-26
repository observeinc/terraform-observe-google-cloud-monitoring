locals {

  # https://cloud.google.com/compute/docs/images/os-details#ubuntu_lts
  # version = [Image project]/[Image family]
  # ex -  version      = "ubuntu-os-cloud/ubuntu-2004-lts"

  # list of compute instance objects to create using filter to pick which ones
  compute_instances = { for key, value in var.compute_values :
  key => value if contains(var.compute_filter, key) }

  # multiply instances by count variable and create map of instances to create
  compute_set = flatten([
    for i in range(0, var.compute_instance_count) : [
      for key, value in local.compute_instances : {
        "${key}_${i}" : value
      }
    ]
  ])

  # flatten list of maps into single map
  compute_map = zipmap(
    flatten(
      [for item in local.compute_set : keys(item)]
    ),
    flatten(
      [for item in local.compute_set : values(item)]
    )
  )

  # list of map keys for comparison
  compute_map_keys = keys(local.compute_map)

  target_group_instances = keys({ for key, value in local.compute_map : key => value if index(local.compute_map_keys, key) < 15 })

  # for output value
  # script_map = { for key, value in local.compute_map : key =>
  #   var.observe.install_linux_host_monitoring == true ? "sleep ${value.wait}; curl \"https://raw.githubusercontent.com/observeinc/linux-host-configuration-scripts/main/observe_configure_script.sh\" | bash -s -- --customer_id \"${var.observe.customer_id}\" --ingest_token \"${var.observe.datastream_token}\" --observe_host_name https://${var.observe.customer_id}.collect.${var.observe.domain}/ --config_files_clean TRUE --ec2metadata FALSE --datacenter GCP --appgroup MY_APP_GROUP" : "ls;"
  # }

  # For dynamic access config block in instance
  # access_config = {
  #   "0" = []
  #   "1" = [{}]
  # }

}

resource "google_service_account" "compute" {
  account_id   = format(var.name_format, "sa")
  display_name = "Service Account for compute resources"
  project      = var.project_id
}

resource "google_project_iam_member" "compute" {
  for_each = toset([
    "roles/compute.admin",
    # "roles/osconfig.osPolicyAssignmentAdmin",
    # "roles/logging.logWriter",
    # "roles/monitoring.metricWriter",
    "roles/storage.objectAdmin",
    "roles/bigquery.admin"
  ])

  project = var.project_id
  role    = each.key
  member  = "serviceAccount:${google_service_account.compute.email}"
}

resource "google_compute_instance" "instances" {

  depends_on = [
    google_compute_firewall.fw_rules,
    # google_compute_router_nat.nat,
    # google_storage_bucket_object.object_script
  ]
  # instance for each value in map
  for_each = local.compute_map

  name         = format(var.name_format, "instance-${lower(replace(each.key, local.str_f, local.str_r))}")
  project      = var.project_id
  machine_type = each.value.machine_type
  # zone         = contains(local.target_group_instances, each.key) ? "${var.region}-${var.zone}" : index(local.compute_map_keys, each.key) < 39 ? "us-east1-b" : index(local.compute_map_keys, each.key) < 59 ? "us-central1-b" : "us-south1-a"
  zone        = var.zone
  description = each.value.description

  tags = ["externalssh", "content", "arthur"]

  boot_disk {
    initialize_params {
      image = each.value.version
    }
  }

  #  Local SSD disk
  # scratch_disk {
  #   interface = "SCSI"
  # }

  network_interface {
    network = "default"

    # Dynamically creates a public ip address if instance first item in map
    dynamic "access_config" {
      for_each = each.key == local.compute_map_keys[0] ? [1] : []
      content {
        network_tier = "PREMIUM"
      }
    }
  }

  metadata = {
    ssh-keys = "${each.value.default_user}:${file(var.public_key_path)}"
    # google-monitoring-enabled = true
  }

  metadata_startup_script = templatefile("${path.module}/${each.value.user_data_file}", {
    # CUSTOMER_ID  = var.observe.customer_id
    # INGEST_TOKEN = var.observe.datastream_token
    # DOMAIN       = var.observe.domain
    BUCKET_NAME   = local.bucket_name
    append_script = var.metadata_startup_script == null ? "" : var.metadata_startup_script
  })

  service_account {
    # Google recommends custom service accounts that have cloud-platform scope and permissions granted via IAM Roles.
    email  = google_service_account.compute.email
    scopes = ["cloud-platform"]
  }

  labels = {
    team    = "content"
    creator = "module"
  }

}

locals {
  str_f = "_"
  str_r = "-"
}
resource "google_compute_firewall" "fw_rules" {
  for_each = local.compute_map
  name     = format(var.name_format, "${lower(replace(each.key, local.str_f, local.str_r))}-fw")
  network  = "default"
  project  = var.project_id

  allow {
    protocol = "tcp"
    ports    = var.open_ports
  }

  allow {
    protocol = "udp"
    ports    = var.open_ports_udp
  }

  source_ranges = var.source_ranges
  target_tags   = ["externalssh"]
}

