# main.tf

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "example" {
  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.micro"

  tags = {
    Name = "example-instance"
  }

  connection {
    type        = "ssh"
    user        = "ec2-user"  # Update with your desired username
    password    = "your-password"  # Update with your password
    host        = self.public_ip
  }

  provisioner "remote-exec" {
    inline = [
      "echo 'Remote command executed on the EC2 instance'",
      "hostname",
    ]
  }
}
