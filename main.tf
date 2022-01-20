terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "=2.91.0"
    }
  }
}

# Specify and configure the resource you want to use e.g. azure, aws, etc
# All documentation is available here- https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs

provider "azurerm" {
  features {}
}

#note that name in the resource line is only the name of the file - not the resource group in azure.
#name in the second line will be the name of the resource group in azure
#location depicts location of the resource group
resource "azurerm_resource_group" "terraform_template1" {
  name = "terraform_workspace"
  location = "UK West"
}