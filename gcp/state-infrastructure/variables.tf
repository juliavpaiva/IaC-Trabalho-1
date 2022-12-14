variable "google_region" {
  description = "Availability region"
  default     = "us-central1"
}

variable "google_zone" {
  description = "Availability zone"
  default     = "us-central1-c"
}

variable "google_network" {
  description = "VM network"
  default     = "default"
}

variable "google_bucket_name" {
  description = "Bucket name"
  default     = "bucket-02-iac-trabalho-1"
}

variable "google_storage_class" {
  description = "Bucket storage class"
  default     = "REGIONAL"
}