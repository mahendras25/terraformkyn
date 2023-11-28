terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
}
 
# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
 
  subscription_id = "59a6714f-58f1-4354-8de6-c01f6c55af63"
  tenant_id       = "d09f5f82-4c50-409f-8d8d-fd48ad2c3bce"
}
 
 
resource "azurerm_resource_group" "example" {
  name     = "example"
  location = "West Europe"
}
