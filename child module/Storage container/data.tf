data "azurerm_storage_account" "sg_id" {
  for_each            = var.sg_container
  name                = each.value.sg_map
  resource_group_name = each.value.rg_name
}