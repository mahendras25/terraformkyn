1. Copy the code from the given below location.
2. Add it in your Day 3 folder.
3. You need to login your Github account.
4. Generate Token of the Github account - Clicking the Profile picture of the github account, go to settings, create a token.
5. Copy and paste the token in the Github provider token area.
6. Run the Terraform Init, Plan and Apply.
7. You can verify the created new repository in the Github.


#### GitHub Provider Terraform:

https://registry.terraform.io/providers/integrations/github/latest/docs

Code Used:

```sh

terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 5.0"
    }
  }
}

provider "github" {
  token = "your-token-here"
}

resource "github_repository" "example" {
  name        = "example"
  description = "My awesome codebase"

  visibility = "public"

}
```
#### Initialize and Apply:
```sh
terraform init
terraform plan
terraform apply
```
