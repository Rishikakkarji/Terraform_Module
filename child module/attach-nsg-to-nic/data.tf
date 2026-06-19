data "azurerm_network_security_group" "nsg_id" {
    for_each = var.nsg-to-nic
    name = each.value.nsg_name
    resource_group_name = each.value.nsg_rg
}

data "azurerm_network_interface" "nic_id" {
    for_each = var.nsg-to-nic
    name = each.value.nic_name
    resource_group_name = each.value.nic_rg
}