resource "azurerm_network_interface_security_group_association" "example_association" {
  for_each = var.nsg-to-nic
  network_interface_id      = data.azurerm_network_interface.nic_id[each.key].id
  network_security_group_id = data.azurerm_network_security_group.nsg_id[each.key].id
}