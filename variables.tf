# Input variables

variable "sectors" {
  description = "Put anything here. (We just need something to loop over.)"
  type = map(object({
    slug            = string
    network         = string
    subnetwork      = string
    bucket_location = string
  }))
}
