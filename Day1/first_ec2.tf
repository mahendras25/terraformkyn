provider "aws" {
  region     = "us-east-1"
  access_key = "AKIA5I2DFJ3YPEJCQCEW"
  secret_key = "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"
}

resource "aws_instance" "mpss_myec2" {
    ami = "ami-00c39f71452c08778"
    instance_type = "t3.micro"
  tags = {
    Name = "MyFirstEC2"
  }
}