output "bucket_name" {
  description = "Name of the logs bucket"
  value       = google_storage_bucket.logs.name
}
