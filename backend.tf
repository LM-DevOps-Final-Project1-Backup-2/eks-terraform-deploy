terraform {
  required_version = ">=0.12.0"
  backend "s3" {
    key            = "infra/terraform.state"
    bucket         = "gabe02-terraform-backend-bucket"
    region         = "us-west-2"
    dynamodb_table = "terraform-state-locking"
  }
}
