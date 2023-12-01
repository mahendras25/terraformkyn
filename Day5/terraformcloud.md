https://app.terraform.io/app/getting-started

Steps Terraform cloud and VS Code repo setup

VS Code - Github setup

1) Create a new repo in the Github repository named "tfcloudrepo" - private repo.
2) Create a new file named readme.txt
3) Get the Clone url from the repo.
4) Open your VS Code editor.
5) Paste the cloning URL in the command VS Code
6) It will open the Github repo workspace in the VS Code
7) You add the Terraform code in the VS Code ( Don't publish the provider AWS credentials with ID, it might end up disabling the account based on the policy )
8) Commit and push the code to the Github

Terraform Cloud setup

1) Open the Terraform Cloud URL
2) Create the account if you don't have one.
3) Select the choce of flow as VCS
4) Select the github and select the repo you created in earlier step
5) assign and run the flow.

TF CLoud CLI flow.
1) Next create TF CLoud project with CLI flow.
2) 














## Documentation Referred:

https://registry.terraform.io/providers/hashicorp/aws/latest/docs

https://registry.terraform.io/providers/hashicorp/time/latest/docs/resources/sleep


### ec2.tf file

```sh
provider "aws" {
  region     = "us-west-2"
}

resource "aws_instance" "myec2" {
   ami = "ami-082b5a644766e0e6f"
   instance_type = "t2.micro"
}
```
### Environment Variables to Add in Terraform Cloud
```sh
AWS_ACCESS_KEY_ID
AWS_SECRET_ACCESS_KEY
```
### sleep.tf file
```sh
resource "time_sleep" "wait_30_seconds" {
  create_duration = "30s"
}
```
