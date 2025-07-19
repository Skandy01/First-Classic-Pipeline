terraform {
  required_providers {
    # aws = {
    #     source = "hashicorp/aws"
    #     version = "6.3.0"
    # }

    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.36.0"
    }
  }
}

provider "aws" {
}

provider "azurerm" {
  features {}
  subscription_id = "959b5bec-4c7a-4fce-958e-8d10c69abe92"
}
