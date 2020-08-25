# terraform-v0.13-test-drive

Templates for testing some of the [features introduced in Terraform v0.13.0](https://github.com/hashicorp/terraform/releases/tag/v0.13.0). Have a look at [`main.tf`](./main.tf) to see what features are being tested.

## Usage

### Configuration

Start by configuring a GCP profile or service account. For example:

```bash
export GOOGLE_PROJECT="???"
export GOOGLE_REGION="???"
export GOOGLE_ZONE="???"
```

### Input variables

Create a `terraform.tfvars` file with the necessary input variables. For example:

```terraform
sectors = {
  "a" = {
    slug            = "sectora"
    network         = "netA"
    subnetwork      = "subnetA"
    bucket_location = "NORTHAMERICA-NORTHEAST1" # Free healthcare!
  },
  "b" = {
    slug            = "sectorb"
    network         = "netB"
    subnetwork      = "subnetB"
    bucket_location = "NORTHAMERICA-NORTHEAST1" # Best bagels!
  }
}
```

### Create resources

```bash
terraform apply
```

### Delete resources

```bash
terraform destroy
```
