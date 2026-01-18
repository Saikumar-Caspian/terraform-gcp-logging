variable "bucket_name" {
  description = "Name of the Cloud Storage bucket"
  type        = string
}

variable "location" {
  description = "Bucket location (e.g. US)"
  type        = string
}
variable "vm_service_account" {
  description = "Service account email used by the VM"
  type        = string
}
