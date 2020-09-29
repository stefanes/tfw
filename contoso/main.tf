# main.tf
terraform {
  backend "azurerm" {
    resource_group_name   = "tfstate"
    # storage_account_name  = "tfstate1339"
    container_name        = "tfstate"
    key                   = "terraform.tfstate"
  }
}

provider "azurerm" {
  version = "~>2.13.0"
  features {}
}

module "connectedrg" {
  # source = "./modules/contoso-az-connectedrg"
  source = "git@github.com:stefanes/tfw-modules.git//contoso-az-connectedrg?ref=v1.0"

  rg_names = var.rg_names
  vnets    = var.vnets
}
