provider "azurerm" {
    version = "~>2.13.0"
    features {}    
}

resource "azurerm_resource_group" "contoso_rg" {
    name = "contoso_rg"
    location = "UK South"
}
