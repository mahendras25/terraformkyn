### Terraform Workspace commands:
```sh
terraform workspace -h
terraform workspace show
terraform workspace new dev
terraform workspace new prd
terraform workspace list
terraform workspace select dev
```

### Terraform Based Configuration File
```sh
provider "aws" {
  region     = "ap-south-1"
  access_key = "YOUR-ACCESS-KEY"
  secret_key = "YOUR-SECRET-KEY"
}

resource "aws_instance" "myec2" {
   ami = "ami-082b5a644766e0e6f"
   instance_type = "t2.micro"
}
```

### Terraform Final Modified Configuration File
```sh
resource "aws_s3_bucket" "workspacesamples3" {
  bucket = "kyn-bucket-${terraform.workspace}"
}
  
```

## Documentation Referred:

### Terraform Function - Lookup

https://www.terraform.io/docs/configuration/functions/lookup.html

