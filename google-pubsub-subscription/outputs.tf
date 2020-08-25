# Output variables

output "subscription_id" {
  value       = google_pubsub_subscription.subscription.id
  description = "ID of the new Pub/Sub subscription."
}
