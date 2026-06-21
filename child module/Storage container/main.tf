resource "azurerm_storage_container" "sg_container" {
  for_each              = var.sg_container
  name                  = each.value.sg_name_container
  storage_account_id    = data.azurerm_storage_account.sg_id[each.key].id
  # container_access_type = each.value.sg_access_type
}