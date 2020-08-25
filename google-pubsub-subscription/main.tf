# Dumbed down version of https://www.terraform.io/docs/providers/google/r/pubsub_subscription.html

resource "google_pubsub_subscription" "subscription" {
  name  = var.name
  topic = var.topic
}
