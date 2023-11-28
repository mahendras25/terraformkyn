# Define variables

variable "aws_region" {
  description = "The AWS region where resources will be created."
  type        = string
  default     = "us-east-1" # Set a default value, or you can leave it unset and provide a value when running Terraform commands.
}

variable "instance_type" {
  description = "The type of EC2 instance to launch."
  type        = string
  default     = "t2.micro"
}

# AWS provider configuration
provider "aws" {
  region     = var.aws_region
  access_key = "XX"
  secret_key = "YY"
}
# EC2 instance resource
resource "aws_instance" "example" {
  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = var.instance_type
  tags = {
    Name = "ExampleInstance"
  }
}