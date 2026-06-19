nic = {
  "prod" = {
    nic_name                      = "vm_nic"
    location                      = "centralindia"
    resource_group_name           = "todo-rg"
    ip_name                       = "vm_pub"
    private_ip_address_allocation = "Dynamic"
    subnet_name                   = "frontendsubnet"
    subnet_rg                     = "todo-rg"
    pub_rg                        = "todo-rg"
    pub_name                      = "vm_public_ip_nginx"
    vn_name                       = "private_network"

  }
}

# vm_linux_app = {
#   "prod" = {
#     name    = "todo-app-azure-vm"
#     vm_size = "Standard_D2ls_v5"

#     publisher = "Canonical"
#     offer     = "0001-com-ubuntu-server-jammy"
#     sku       = "22_04-lts"
#     version   = "latest"

#     os_name           = "mydisk"
#     caching           = "ReadWrite"
#     create_option     = "FromImage"
#     managed_disk_type = "Standard_LRS"

#     computer_name  = "ubuntu-hostname"
#     admin_username = "ubuntu"
#     admin_password = "Azure@12345"

#     disable_password_authentication = false

#   }
# }