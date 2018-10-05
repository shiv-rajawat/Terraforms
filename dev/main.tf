terraform {
  backend "s3" {
    encrypt = true
    bucket = "shiv-terraform-state"
    dynamodb_table = "terraform-state-lock"
    key    = "global/s3/terraform.tfstate"
    region = "us-east-2"
  }
}

provider "aws" {
  region = "us-east-2"
}

module vpc{
  source = "../Modules/VPC"

  cidr_block = "${var.cidr_block}"
  vpc_name = "${var.vpc_name}"
}
