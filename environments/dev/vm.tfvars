nic = {
  "nic_prod" = {
    nic_name                      = "vm_nic"
    location                      = "centralindia"
    resource_group_name           = "todo-rg"
    ip_name                       = "vm_pub"
    private_ip_address_allocation = "Dynamic"
    subnet_name                   = "frontendsubnet"
    subnet_rg                     = "todo-rg"
    pub_rg                        = "todo-rg"
    pub_name                      = "vm_public_ip_nginx"
    vn_name                       = "prod_network"

  }
}

vm_linux = {
  "vm_prod" = {
    name                            = "todo-app-azure-vm"
    location                        = "centralindia"
    size                            = "Standard_D2ls_v5"
    admin_username                  = "ubuntu"
    admin_password                  = "Azure@12345"
    disable_password_authentication = false

    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts"
    version   = "latest"

    os_name              = "mydisk"
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"

    # data block variable value below
    nic_name = "vm_nic-nic"
    rg_name  = "todo-rg"

  }
}