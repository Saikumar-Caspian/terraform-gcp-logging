module "storage" {
  source      = "./modules/storage"
  bucket_name = var.bucket_name
  location    = var.location
}

module "compute" {
  source      = "./modules/compute"
  vm_name     = "log-uploader-vm"
  zone        = var.zone
  bucket_name = module.storage.bucket_name
}
