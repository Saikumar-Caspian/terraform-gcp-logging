output "logs_bucket_name" {
  description = "Cloud Storage bucket used for logs"
  value       = module.storage.bucket_name
}
