resource "google_cloud_scheduler_job" "job" {
  for_each    = { for key, value in var.http_endpoints : key => value if value.port == "80" }
  project     = var.project_id
  region      = var.region
  name        = format(var.name_format, "${each.key}-load-balancer-job")
  description = "ping load balancer"
  schedule    = "*/1 * * * *"

  attempt_deadline = "30s"

  retry_config {
    retry_count = 1
  }

  http_target {
    http_method = "GET"
    uri         = each.value.address

  }
}

resource "google_cloud_scheduler_job" "job8080" {
  for_each    = { for key, value in var.http_endpoints : key => value if value.port == "8080" }
  project     = var.project_id
  region      = var.region
  name        = format(var.name_format, "${each.key}-load-balancer-job-8080")
  description = "call file - calls all on private ip - 8080"
  schedule    = "*/1 * * * *"

  attempt_deadline = "30s"

  retry_config {
    retry_count = 1
  }

  http_target {
    http_method = "GET"
    uri         = "${each.value.address}:8080/file"

  }
}

resource "google_cloud_scheduler_job" "job8080_script" {
  for_each    = { for key, value in var.http_endpoints : key => value if value.port == "8080" }
  project     = var.project_id
  region      = var.region
  name        = format(var.name_format, "${each.key}-load-balancer-job-8080-script")
  description = "call observe setup"
  schedule    = "*/1 * * * *"

  attempt_deadline = "180s"

  retry_config {
    retry_count = 1
  }

  http_target {
    http_method = "GET"
    uri         = "${each.value.address}:8080/observe"

  }
}


resource "google_cloud_scheduler_job" "bad_job" {
  for_each    = { for key, value in var.http_endpoints : key => value }
  project     = var.project_id
  region      = var.region
  name        = format(var.name_format, "${each.key}-load-balancer-bad-job")
  description = "ping load balancer at nonexistent path"
  schedule    = "*/5 * * * *"

  attempt_deadline = "30s"

  retry_config {
    retry_count = 1
  }

  http_target {
    http_method = "GET"
    uri         = "${each.value.address}/bad"

  }
}

resource "google_cloud_scheduler_job" "cloud_function_post" {
  for_each    = { for key, value in var.http_endpoints : key => value if value.port == "CLOUD_FUNC" }
  project     = var.project_id
  region      = var.region
  name        = format(var.name_format, "${each.key}-cloud-function-post-job")
  description = "ping cloud function"
  schedule    = "*/5 * * * *"

  attempt_deadline = "30s"

  retry_config {
    retry_count = 1
  }

  http_target {
    http_method = "POST"
    uri         = each.value.address
    headers = {
      "Content-Type" = "application/json"
    }
    body = base64encode("{\"errorName\": \"helloError2\"}")

  }
}

resource "google_cloud_scheduler_job" "cloud_function_get" {
  for_each    = { for key, value in var.http_endpoints : key => value if value.port == "CLOUD_FUNC" }
  project     = var.project_id
  region      = var.region
  name        = format(var.name_format, "${each.key}-cloud-function-get-job")
  description = "ping cloud function"
  schedule    = "*/1 * * * *"

  attempt_deadline = "30s"

  retry_config {
    retry_count = 1
  }

  http_target {
    http_method = "GET"
    uri         = each.value.address
  }
}