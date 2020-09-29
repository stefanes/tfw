# main.tf
provider "azurerm" {
  version = "~>2.13.0"
  features {}
}

module "connectedrg" {
  # or remote git repo with ?ref=verion    
  source = "./modules/contoso-az-connectedrg"

  rg_names = var.rg_names
  vnets    = var.vnets
}
