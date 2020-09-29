provider "azurerm" {
  version = "~>2.13.0"
  features {}
}

resource "azurerm_resource_group" "rgs" {
  count    = length(var.rg_names)
  name     = "${var.prefix}_${var.rg_names[count.index]}"
  location = var.region
  tags     = var.tags
}
