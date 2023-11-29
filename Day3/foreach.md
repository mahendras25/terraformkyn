
### Example 1 - IAM User
```sh
provider "aws" {
  region     = "us-west-2"
  access_key = ""
  secret_key = ""
}

resource "aws_iam_user" "iam" {
  for_each = toset( ["user-01","user-02", "user-03"] )
  name     = each.key
}
```

### Example 2 - EC2 Instance
```sh
resource "aws_instance" "myec2" {
  ami = "ami-00c39f71452c08778"
  for_each = {
    server1 = "t2.micro"
    server2 = "t2.medium"
  }
  instance_type = each.value
  //key_name         = each.key
  tags = {
    Name = each.key
  }
}
}
```
