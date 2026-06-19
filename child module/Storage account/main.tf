resource "azurerm_storage_account" "sg" {
  for_each                 = var.sg_map
  name                     = each.value.name
  account_tier             = each.value.account_tier
  account_replication_type = each.value.account_replication_type
  resource_group_name      = each.value.resource_group_name
  location                 = each.value.location

}