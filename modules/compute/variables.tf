variable "vm_name" {
  description = "Name of the Compute Engine VM"
  type        = string
}

variable "zone" {
  description = "GCP zone where VM will be created"
  type        = string
}

variable "bucket_name" {
  description = "Cloud Storage bucket to upload logs"
  type        = string
}
