# Google Storage Bucket + Storage Default Object Access Control (Public)

module "bucket" {
  source   = "../google-storage-bucket/"
  name     = var.name
  location = var.location
}

resource "google_storage_default_object_access_control" "public" {
  bucket = module.bucket.name
  role   = "READER"
  entity = "allUsers"
}
