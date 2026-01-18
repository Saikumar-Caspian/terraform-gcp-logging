resource "google_storage_bucket" "logs" {
  name     = var.bucket_name
  location = var.location

  uniform_bucket_level_access = true

  versioning {
    enabled = true
  }

  logging {
    log_bucket        = var.bucket_name
    log_object_prefix = "access-logs"
  }
}
resource "google_storage_bucket_iam_member" "vm_log_writer" {
  bucket = google_storage_bucket.logs.name
  role   = "roles/storage.objectAdmin"
  member = "serviceAccount:${var.vm_service_account}"
}