To get the required commands executed in the Terraform machine, we can use the local provisioners.

Ensure the command is valid on the Terraform running machine.

Copy the below code in the new folder called Localexec
Use your existing provider credentials
Run Terraform init
Terraform apply -auto-approve
Review the generated Private_ips.txt in your local folder.







resource "aws_instance" "myec2" {
   ami = "ami-082b5a644766e0e6f"
   instance_type = "t2.micro"

   provisioner "local-exec" {
    command = "echo ${aws_instance.myec2.private_ip} >> private_ips.txt"
  }
}
