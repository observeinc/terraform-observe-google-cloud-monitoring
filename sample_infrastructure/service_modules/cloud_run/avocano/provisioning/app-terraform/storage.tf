resource "google_storage_bucket" "media" {
  name          = "media-${var.project_id}"
  location      = var.region
  storage_class = "REGIONAL"
  force_destroy = true
}

data "google_iam_policy" "mediaaccess" {

  binding {
    role    = "roles/storage.legacyBucketOwner"
    members = ["projectOwner:${var.project_id}", "projectEditor:${var.project_id}", local.server_sa, local.automation_sa]
  }
  binding {
    role    = "roles/storage.legacyBucketReader"
    members = ["projectViewer:${var.project_id}"]
  }
}

resource "google_storage_bucket_iam_policy" "policy" {
  bucket      = google_storage_bucket.media.name
  policy_data = data.google_iam_policy.mediaaccess.policy_data
}