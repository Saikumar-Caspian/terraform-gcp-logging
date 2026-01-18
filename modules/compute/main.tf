resource "google_compute_instance" "vm" {
  name         = var.vm_name
  machine_type = "e2-micro"
  zone         = var.zone

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-12"
    }
  }

  network_interface {
    network = "default"
    access_config {}
  }

  service_account {
    scopes = ["https://www.googleapis.com/auth/cloud-platform"]
  }

  metadata_startup_script = templatefile(
    "${path.module}/startup.sh.tpl",
    {
      bucket_name = var.bucket_name
    }
  )
}
