# Input variables

variable "name" {
  description = "Name of Pub/Sub subscription."
  type        = string
}

variable "topic" {
  description = "Reference to an existing Pub/Sub topic."
  type        = string
}
