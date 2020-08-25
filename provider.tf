# Provider

terraform {
  required_version = ">= 0.13.0" # Terraform v0.13.0 and above only
  required_providers {
    google = {
      source  = "hashicorp/google" # Shorthand for registry.terraform.io/hashicorp/google
      version = "~> 3.35.0"        # Prevent automatic upgrades to new major versions that may contain breaking changes
    }
  }
}

provider "google" {}
