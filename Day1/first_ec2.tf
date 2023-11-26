provider "aws" {
  region     = "us-east-1"
  access_key = "AKIA4K6IJLWFGBISVTWF"
  secret_key = "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"
}

resource "aws_instance" "hwksrmyec2" {
    ami = "ami-00c39f71452c08778"
    instance_type = "t2.micro"
}