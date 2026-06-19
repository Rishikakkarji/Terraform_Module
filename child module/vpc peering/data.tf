data "azurerm_virtual_network" "vnet_id" {
    for_each = var.peering
    name = each.value.remote_name
    resource_group_name = each.value.vnet_rg
  
}