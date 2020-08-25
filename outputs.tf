# Output variables

output "topic_ids" {
  value = values(google_pubsub_topic.topics)[*].id
}

output "subscription_ids" {
  value = values(module.subscriptions)[*].subscription_id
}

output "public_bucket_self_links" {
  value = values(module.public_buckets)[*].self_link
}

output "public_bucket_urls" {
  value = values(module.public_buckets)[*].url
}
