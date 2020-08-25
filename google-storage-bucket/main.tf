# Dumbed down version of https://www.terraform.io/docs/providers/google/r/storage_bucket.html

resource "google_storage_bucket" "bucket" {
  name     = var.name
  location = var.location
}
