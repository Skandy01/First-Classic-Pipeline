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
  subscription_id = "19fa1140-ae73-433b-a3e6-3aab93fcf378"
}