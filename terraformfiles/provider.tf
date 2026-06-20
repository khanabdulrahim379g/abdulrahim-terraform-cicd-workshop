terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }

  }

  backend "azurerm" {

    resource_group_name = "staterg"
    container_name = "tfstatecontainer"
    key = "abdul.terraform.tfstate"
    storage_account_name = "abdulstorage379"
    
  }
}



provider "azurerm" {
  # Configuration options
  features {}


}
