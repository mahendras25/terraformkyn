provider "aws" {
  region     = "us-west-2"
}
terraform {
  backend "s3" {
    bucket = "labs-terraform-backend"
    key    = "network/terraform.tfstate"
    region = "us-east-1"
  }
}

resource "aws_eip" "lb" {
  vpc      = true
}
