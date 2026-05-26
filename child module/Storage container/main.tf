resource "azurerm_storage_container" "sg_container" {
  name                  = var.sg_name_container
  storage_account_id    = var.sg_id
  container_access_type = var.sg_access_type
}