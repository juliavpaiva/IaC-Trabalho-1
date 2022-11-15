resource "google_storage_bucket" "bucket02" {

  name = var.google_bucket_name

  storage_class = var.google_storage_class

  location = var.google_region

}