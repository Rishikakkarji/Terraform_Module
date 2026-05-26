network_var = {
  prod = {
    name          = "private_network"
    address_space = ["10.0.0.0/16"]
    dns_servers   = ["8.8.8.8", "1.1.1.1"]

  }
}

vnet_subnet_net = {
  prod = {
    name            = "frontendsubnet"
    subnet_ip_scope = ["10.0.1.0/24"]
  }
  dev = {
    name            = "backendsubnet"
    subnet_ip_scope = ["10.0.2.0/24"]
  }
  qa = {
    name            = "databasesubnet"
    subnet_ip_scope = ["10.0.3.0/24"]
  }
}

nsg_detail = {
  "prod" = {
    name                       = "nsgfornic"
    nsg_name                   = "allowsshrule"
    priority                   = 100
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    destination_port_range     = "22"
    source_port_range          = "*"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }

  "prod" = {
    name                       = "nsgfornic"
    nsg_name                   = "allowhttprule"
    priority                   = 101
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    destination_port_range     = "80"
    source_port_range          = "*"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }



}



public_ip_vm_linux = {
  "prod" = {
    name              = "vm_public_ip_nginx"
    allocation_method = "Static"

  }
}


