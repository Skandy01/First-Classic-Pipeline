terraform {
  required_providers {

    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.36.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = "959b5bec-4c7a-4fce-958e-8d10c69abe92"
}
