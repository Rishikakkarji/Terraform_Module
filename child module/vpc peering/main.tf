resource "azurerm_virtual_network_peering" "example-1" {
  for_each = var.peering
  name                      = each.value.name
  resource_group_name       = data.azurerm_virtual_network.vnet_id[each.key].resource_group_name
  virtual_network_name      = each.value.virtual_network_name
  remote_virtual_network_id = data.azurerm_virtual_network.vnet_id[each.key].id
}