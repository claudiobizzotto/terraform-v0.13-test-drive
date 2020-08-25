# Output variables

output "name" {
  value       = google_storage_bucket.bucket.name
  description = "Name of the new Storage bucket."
}

output "self_link" {
  value       = google_storage_bucket.bucket.self_link
  description = "URI of the new Storage bucket."
}

output "url" {
  value       = google_storage_bucket.bucket.url
  description = "Base URL of the new Storage bucket, in the format gs://<bucket-name>."
}
