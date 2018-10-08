## This files contains the backend info for storing the .tfstate file. To avoid race condition, lock is implemented using a DynamoDB table.
## Please run the files in the "Initial setup" folder to create an S3 bucket and a dynamoDB table before using this backend configuration.
## Accordingly change the name of bucket and table name given in this file.

terraform {
  backend "s3" {
    encrypt = true
    bucket = "shiv-terraform-state"
    dynamodb_table = "terraform-state-lock"
    key    = "global/s3/terraform.tfstate"
    region = "us-east-2"
  }
}
