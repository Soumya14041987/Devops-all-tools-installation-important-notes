terraform {
  backend "s3" {
    bucket = "one-tier-architecture-app"
    key    = "terraform/terraform.tfstate"
    region = "us-east-1"
  }
}
