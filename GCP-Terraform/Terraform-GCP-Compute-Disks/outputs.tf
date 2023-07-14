output "project" {
value = var.project
}
output "zone" {
  value       = var.zone
}
output "compute-disk-name" {
  value       = google_compute_disk.tf-disk.name
}
output "compute-disk-path" {
  value       = google_compute_disk.tf-disk.self_link
}