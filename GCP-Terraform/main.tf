terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "4.73.1"
    }
  }
}
provider "google" {
  project = "terraform-training-392804"
  region = "us-east1"
  zone = "us-east1-a"
}
### create cloud storage bucket with username & password authentication process ###
resource google_storage_bucket "GCS1" {
  name = "bucket-from-terraform-username-password"
  location = "us-east1"
}
