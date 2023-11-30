Lab steps :

Manual creation of EC2 instance:
1) Connect to AWS
2) Create a key pair - downloaded PEM key keep it in the folder.
3) Create EC2 instance
4) Allow port 80 inbound rule in the security group
5) install NGINX using the command
6) yum -y install nginx
7) systemctl start nginx
8) systemctl status nginx
9) Get the public address of the Virtual machine
10) Validate NGINX installation in the browser with loading page.


Now, we are going to simulate the same thing using the remote exec provisioner.
1) Take the Key pair - PEM key in the Terraform folder.
2) Create the Terraform provisioner file.
3) Change the PEM key permission to get the SSH access
4) Connect the machine with SSH, see the success
5) Further execute terraform init plan and apply to install nginx with remote exec provisioner.



### Documentation Referenced:

https://www.terraform.io/language/resources/provisioners/remote-exec

https://www.terraform.io/language/resources/provisioners/connection

https://www.terraform.io/language/functions/file

### Base Code:
```sh
provider "aws" {
  region     = "us-east-1"
  access_key = "YOUR-KEY"
  secret_key = "YOUR-KEY"
}


resource "aws_instance" "myec2" {
   ami = "ami-0f3769c8d8429942f"
   instance_type = "t2.micro"
}
```
### Final Code:


```sh
provider "aws" {
  region     = "us-east-1"
  access_key = "YOUR-KEY"
  secret_key = "YOUR-KEY"
}


resource "aws_instance" "myec2" {
   ami = "ami-0ca285d4c2cda3300"
   instance_type = "t2.micro"
   key_name = "terraform-key"

   connection {
   type     = "ssh"
   user     = "ec2-user"
   private_key = file("./terraform-key.pem")
   host     = self.public_ip
    }

 provisioner "remote-exec" {
   inline = [
    # Updating with the latest command for Amazon Linux machine
     "sudo yum install -y nginx",
     "sudo systemctl start nginx"
   ]
 }
}
```

```sh
terraform init
terraform plan
terraform apply -auto-approve
terraform destroy -auto-approve
```
