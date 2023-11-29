Terraform Graph switch helps to get the relationship between the resources.
From the Terraform directory if you run the "Terraform Graph", it generates the output.
Using the online tool, if you paste the code, you have an option to review and download the Image format of the relationship.

Online tool: URL : https://dreampuf.github.io/GraphvizOnline


## This snippet is from the Terraform Graph Video.

### GraphiViz Documentation Referred in Course:

[https://graphviz.gitlab.io/download/](https://dreampuf.github.io/GraphvizOnline/)

### graph.tf
```sh
provider "aws" {
  region     = "us-west-2"
  access_key = "YOUR-ACCESS-KEY"
  secret_key = "YOUR-SECRET-KEY"
}

resource "aws_instance" "myec2" {
   ami = "ami-082b5a644766e0e6f"
   instance_type = "t2.micro"
}

resource "aws_eip" "lb" {
  instance = aws_instance.myec2.id
  vpc      = true
}

resource "aws_security_group" "allow_tls" {
  name        = "allow_tls"

  ingress {
    description = "TLS from VPC"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["${aws_eip.lb.private_ip}/32"]

  }
}
```

Terraform Graph



### Commands Used:
```sh
terraform graph > graph.dot
yum install graphviz
cat graph.dot | dot -Tsvg > graph.svg
```
