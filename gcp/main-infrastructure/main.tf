terraform {
  required_version = "v1.3.4"

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.43.0"
    }
  }

  backend "gcs" {}

}

provider "google" {
  region = var.google_region
  zone   = var.google_zone
}