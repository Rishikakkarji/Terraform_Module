resource "azurerm_subnet" "private" {
  name                 = var.vnet_subnet # "${var.vnet_name}-app-public"
  resource_group_name  = var.subnet_sg
  virtual_network_name = var.network_name
  address_prefixes     = var.subnet_ip_scope

}