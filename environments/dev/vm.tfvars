vm_nic = {
  "prod" = {
    name                          = "vm-app"
    ip_configuration_name         = "testconfiguration1"
    private_ip_address_allocation = "Dynamic"


  }
}

vm_linux_app = {
  "prod" = {
    name    = "todo-app-azure-vm"
    vm_size = "Standard_D2ls_v5"

    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts"
    version   = "latest"

    os_name           = "mydisk"
    caching           = "ReadWrite"
    create_option     = "FromImage"
    managed_disk_type = "Standard_LRS"

    computer_name  = "ubuntu-hostname"
    admin_username = "ubuntu"
    admin_password = "Azure@12345"

    disable_password_authentication = false

  }
}