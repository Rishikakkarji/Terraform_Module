data "azurerm_public_ip" "pub_id" {
    for_each = var.bastion
    name = each.value.pub_name
    resource_group_name = each.value.pub_rg_name
  
}

data "azurerm_subnet" "subnet_id" {
    for_each = var.bastion
    name = each.value.sub_name
    resource_group_name = each.value.subnet_rg_name
    virtual_network_name = each.value.vnet_name
  
}

