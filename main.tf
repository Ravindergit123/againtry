terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.46.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "ravifirst"
    storage_account_name = "ravifirststg"
    container_name       = "ravifirstcon"
    key                  = "prod.terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
  subscription_id = "af280858-6355-4c91-adb0-9afd6d1a2196"
}

resource "azurerm_resource_group" "rg_first" {
  name     = var.resource_group_name
  location = var.location

}

