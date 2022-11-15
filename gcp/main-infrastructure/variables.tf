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
  default     = "e2-small"
}

variable "google_image" {
  description = "VM OS image"
  default     = "ubuntu-os-cloud/ubuntu-1804-lts"
}

variable "google_network" {
  description = "VM network"
  default     = "default"
}