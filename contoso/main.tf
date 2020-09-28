locals {
  prefix = "contoso"
  region = "UK South"
  tags = {
    cost_center = "contoso research"
  }
}

provider "azurerm" {
  version = "~>2.13.0"
  features {}
}

resource "azurerm_resource_group" "contoso_rg" {
  name     = "${local.prefix}_rg"
  location = local.region
  tags     = local.tags
}

resource "azurerm_resource_group" "contoso_dev_rg" {
  name     = "${local.prefix}_dev_rg"
  location = local.region
  tags     = local.tags
}
