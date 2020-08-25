# Output variables

output "self_link" {
  value       = module.bucket.self_link
  description = "URI of the new Storage bucket."
}

output "url" {
  value       = module.bucket.url
  description = "Base URL of the new Storage bucket, in the format gs://<bucket-name>."
}
