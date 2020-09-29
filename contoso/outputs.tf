output "rg_ids" {
  # splatting expression
  value = azurerm_resource_group.rgs.*.id
  # or for expression
  # value = [for rg in azurerm_resource_group.rgs : rg.id]
}

output "vnet_ids" {
  value = azurerm_virtual_network.vnet.*.id
}
