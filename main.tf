# Let's test some of the v0.13 features

locals {
  name = "tfv013testdrive"
}

# for_each on native resource (available since v0.12)
resource "google_pubsub_topic" "topics" {
  for_each = var.sectors
  name     = "${local.name}-${each.key}"

  labels = {
    disposable = "true"
    sector     = each.value["slug"]
    coolindex  = format("%s%02d", local.name, index(keys(var.sectors), each.key) + 1) # You can use the key however you like
  }
}

# for_each on module (introduced in v0.13)
module "subscriptions" {
  for_each = var.sectors
  source   = "./google-pubsub-subscription/"

  name  = "${local.name}-${each.key}"
  topic = google_pubsub_topic.topics[each.key].id # Reference Pub/Sub topics created previously
}

# for_each on nested module (introduced in v0.13)
module "public_buckets" {
  for_each = var.sectors
  source   = "./google-storage-bucket-public/"

  name     = "${local.name}-${each.key}"
  location = each.value["bucket_location"]

  # This is how you would reference the subscriptions created previously (through the "google-pubsub-subscription" module):
  #   module.subscriptions[each.key].subscription_id
}
