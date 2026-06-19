resource "azurerm_bastion_host" "bastion" {
  for_each = var.bastion
  name                = each.value.name
  location            = each.value.location
  resource_group_name = data.azurerm_subnet.subnet_id[each.key].resource_group_name

  ip_configuration {
    name                 = each.value.ip_conf_name
    subnet_id            = data.azurerm_subnet.subnet_id[each.key].id
    public_ip_address_id = data.azurerm_public_ip.pub_id[each.key].id
  }
}