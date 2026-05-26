resource "azurerm_public_ip" "vm_ip" {
  name                = var.public_ip_name
  resource_group_name = var.rg-name
  location            = var.rg-location
  allocation_method   = var.static_dynamic

}

