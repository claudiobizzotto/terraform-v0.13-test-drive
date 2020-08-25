# Input variables

variable "name" {
  description = "Name of the Storage bucket."
  type        = string
}

variable "location" {
  description = "Where the Storage bucket should be placed. https://cloud.google.com/storage/docs/locations"
  type        = string
}
