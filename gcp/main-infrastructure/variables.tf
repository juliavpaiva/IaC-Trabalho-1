variable "google_region" {
  description = "Availability region"
  default     = "us-central1"
}

variable "google_zone" {
  description = "Availability zone"
  default     = "us-central1-c"
}

variable "google_machine_type" {
  description = "Machine type for VM"
  default     = "e2-micro"
}

variable "google_image" {
  description = "VM OS image"
  default     = "debian-cloud/debian-11"
}

variable "google_network" {
  description = "VM network"
  default     = "default"
}

variable "google_bucket_name" {
  description = "Bucket name"
  default     = "bucket02"
}

variable "storage_class" {
  description = "Bucket storage class"
  default     = "REGIONAL"
}