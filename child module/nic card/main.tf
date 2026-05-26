resource "azurerm_network_interface" "vm_nic" {
  name                = "${var.vm}-nic"
  location            = var.nic_location
  resource_group_name = var.nic_rg

  ip_configuration {
    name                          = var.ip_configuration
    subnet_id                     = var.subnet_id
    private_ip_address_allocation = var.allocation_type
    public_ip_address_id          = var.pub_id
  }
}