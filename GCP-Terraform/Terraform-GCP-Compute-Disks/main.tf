resource "google_compute_disk" "tf-disk" {
  name  = "tf-disk"
  description = "this disk is created from terraform script"
  project = "terraform-training-392804"
  zone = "us-east1-b"
  type  = "pd-ssd"
  image = "centos-7-v20230711"
  size  = 40
  labels = {
    environment = "dev"
  }
  physical_block_size_bytes = 4096
}
