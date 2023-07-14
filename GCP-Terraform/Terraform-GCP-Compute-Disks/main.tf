resource "google_compute_disk" "tf-disk" {
  name  = var.name
  description = "this disk is created from terraform script"
  project = var.project
  zone = var.zone
  type  = "pd-ssd"
  image = var.image
  size  = 40
  labels = {
    environment = "dev"
  }
  physical_block_size_bytes = 4096
}