variable "project_id" {
  description = "GCP project ID"
  type        = string
}

variable "region" {
  description = "GCP region"
  type        = string
}

variable "zone" {
  description = "GCP zone"
  type        = string
}

variable "bucket_name" {
  description = "Unique name for Cloud Storage bucket"
  type        = string
}

variable "location" {
  description = "Bucket location (e.g. US)"
  type        = string
}
variable "vm_service_account" {
  description = "VM service account email"
  type        = string
}
