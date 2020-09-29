output "rg_ids" {
  # splatting expression
  value = azurerm_resource_group.rgs.*.id
  # or for expression
  # value = [for rg in azurerm_resource_group.rgs : rg.id]
}
