provider "google" {
  project = "{{YOUR GCP PROJECT}}"
  region  = var.google_region
  zone    = var.google_zone
}