resource "google_storage_bucket" "bucket-02-iac-trabalho-1" {

  name = var.google_bucket_name

  storage_class = var.google_storage_class

  location = var.google_region

}