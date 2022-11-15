resource "google_storage_bucket" "bucket-02-iac-trabalho-1" {
  name     = var.google_bucket_name
  location = var.google_region

}