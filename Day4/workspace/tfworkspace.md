Lab steps :

1) Create workspace of qa,uat,prod
2) Change to the qa

### Terraform Workspace commands:
```sh
terraform workspace -h
terraform workspace show
terraform workspace new dev
terraform workspace new prd
terraform workspace list
terraform workspace select dev
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

