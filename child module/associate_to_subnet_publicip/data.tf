data "azurerm_public_ip" "ip_id" {
    for_each = var.nat_id
    name = each.value.pub_name
    resource_group_name = each.value.pub_rg_name
  
}

data "azurerm_nat_gateway" "nat_id" {
  for_each = var.nat_id
  name = each.value.nat_name
  resource_group_name = each.value.nat_rg_name
}

data "azurerm_subnet" "subnet_id" {
    for_each = var.nat_id
    name = each.value.subnet_name
    resource_group_name = each.value.subnet_rg_name
    virtual_network_name = each.value.subnet_vnet_name

}

