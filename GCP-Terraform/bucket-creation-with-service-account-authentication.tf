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
### create cloud storage bucket with service account authentication process ###
resource google_storage_bucket "GCS2" {
  name = "bucket-creation-with-service-account-authentication"
  location = "us-east1"
}
