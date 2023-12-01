


https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html










AWS Configure --profile myprofile

Step 1: Install AWS CLI
Install the AWS CLI on your machine. You can follow the instructions provided in the AWS CLI User Guide for your operating system.

Step 2: Configure AWS CLI with a Profile
Run the following command to configure the AWS CLI with a named profile. Replace "myprofile" with your desired profile name.

bash
Copy code
aws configure --profile myprofile
Follow the prompts to enter your AWS access key, secret key, default region, and output format.

Step 3: Install Terraform
Download and install Terraform on your machine. You can find the latest version of Terraform on the official Terraform website. Follow the installation instructions for your operating system.

Step 4: Create Terraform Configuration
Create a new Terraform configuration file (e.g., main.tf) and include the AWS provider configuration with the specified profile:

hcl
Copy code
# main.tf

provider "aws" {
  region  = "us-east-1"
  profile = "myprofile"  # Specify the AWS profile name
}

resource "aws_instance" "example" {
  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.micro"
  tags = {
    Name = "example-instance"
  }
}
Step 5: Initialize and Apply
Open a terminal, navigate to the directory containing your Terraform configuration, and run the following commands:

bash
Copy code
terraform init
terraform apply
Terraform will initialize, download necessary providers, and apply the configuration using the specified AWS profile.

Step 6: Optional - Specify Profile via Environment Variable
Instead of specifying the profile in the Terraform configuration, you can use the AWS_PROFILE environment variable. Open a terminal and run:

bash
Copy code
export AWS_PROFILE=myprofile
terraform init
terraform apply
This way, you don't need to include the profile attribute in every provider block.
