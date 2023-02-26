resource "google_cloud_run_service" "default" {
  name     = format(var.name_format, "test-cloudrun-srv")
  project  = var.project_id
  location = var.region

  template {
    spec {
      containers {
        image = "us-docker.pkg.dev/cloudrun/container/hello"
      }
    }
  }

  traffic {
    percent         = 100
    latest_revision = true
  }
}
