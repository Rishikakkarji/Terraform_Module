data "azurerm_subnet" "subnet_id" {
  for_each             = var.nic
  name                 = each.value.subnet_name
  resource_group_name  = each.value.subnet_rg
  virtual_network_name = each.value.vn_name

}


## i comment it out becuase the public ip will be assigned to azure bastion.
# data "azurerm_public_ip" "public_id" {
#   for_each            = var.nic
#   resource_group_name = each.value.pub_rg
#   name                = each.value.pub_name
# }

