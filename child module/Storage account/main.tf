resource "azurerm_storage_account" "sg" {
    name = var.sg_name
    account_tier = var.sg_tier
    account_replication_type = var.sg_type
    resource_group_name = var.sg_gn
    location = var.sg_location
  
}