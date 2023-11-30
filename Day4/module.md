1) Create a folder module underneath EC2
2) Same level create a folder Project underneath create Project A and Project B
3) In the Module-> EC2 - Folder add your EC2 creation code.
4) In the Project-> ProjectA - Folder add a given below code snipper to call the moduel
5) Further run the Terraform init,plan and apply.


module "ec2module" {
  source = "../../modules/ec2"
  
}
