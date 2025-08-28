terraform {

  required_version = ">= 1.0.0"
  required_providers {

    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.36.0"
    }
  }
  backend "azurerm" {
  resource_group_name = "rg-terraform"
  storage_account_name = "stgado"
  container_name = "mycnt"
  key = "dev.terraform.tfstate"
}
}

provider "azurerm" {
  features {}
  subscription_id = "9c521f44-ae8d-4736-9337-a8ab0038c6c7"
}
