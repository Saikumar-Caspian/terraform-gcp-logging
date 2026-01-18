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
