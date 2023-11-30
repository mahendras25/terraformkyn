provider "aws" {
  region = "us-west-2"  # Change this to your desired AWS region
}

resource "aws_instance" "example" {
  ami           = "ami-0c55b159cbfafe1f0"  # Change this to your desired AMI
  instance_type = "t2.micro"

  tags = {
    Name = "example-instance"
  }

  provisioner "remote-exec" {
    inline = [
      "sudo apt-get update",
      "sudo apt-get install -y nginx",
      "sudo service nginx start"
    ]

    connection {
      type        = "ssh"
      user        = "ubuntu"
      private_key = file("~/.ssh/id_rsa")  # Change this to the path of your private key
      host        = self.public_ip
    }
  }
}
