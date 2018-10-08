terraform {
  backend "s3" {
    encrypt = true
    bucket = "shiv-terraform-state"
    dynamodb_table = "terraform-state-lock"
    key    = "global/s3/terraform.tfstate"
    region = "us-east-2"
  }
}
