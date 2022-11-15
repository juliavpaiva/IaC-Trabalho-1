terraform {
  required_version = "v1.3.4"

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.43.0"
    }
  }

}

provider "google" {
  region  = var.google_region
  zone    = var.google_zone

  default_tags {
    tags = {
      Project   = "IaC Trabalho 1"
      ManagedBy = "Terraform"
      Owner     = "Julia Paiva"
    }
  }
}