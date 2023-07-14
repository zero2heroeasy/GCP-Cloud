variable "project" {
  description = "terraform-test-project"
  type        = string
  default = "terraform-training-392804"
}
variable "name" {
  description = "disk-name"
  type        = string
  default = "tf-disk"
}
variable "zone" {
  description = "terraform-disk-creation-zone"
  type        = string
  default = "us-east1-b"
}
variable "image" {
  description = "terraform-disk-image"
  type        = string
  default = "centos-7-v20230711"
}