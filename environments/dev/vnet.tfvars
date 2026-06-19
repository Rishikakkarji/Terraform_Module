vnet = {
  vnet_prod = {
    name                = "private_network"
    location            = "centralindia"
    resource_group_name = "todo-rg"
    address_space       = ["10.0.0.0/16"]
    dns_servers         = ["8.8.8.8", "1.1.1.1"]

  }
}

subnet = {
  Subnet_prod = {
    name                 = "frontendsubnet"
    resource_group_name  = "todo-rg"
    virtual_network_name = "private_network"
    address_prefixes     = ["10.0.1.0/24"]
  }
  Subnet_dev = {
    name                 = "backendsubnet"
    resource_group_name  = "todo-rg"
    virtual_network_name = "private_network"
    address_prefixes     = ["10.0.2.0/24"]
  }
  Subnet_qa = {
    name                 = "databasesubnet"
    resource_group_name  = "todo-rg"
    virtual_network_name = "private_network"
    address_prefixes     = ["10.0.3.0/24"]
  }
}


pub = {
  "pub_prod" = {
    name                = "vm_public_ip_nginx"
    resource_group_name = "todo-rg"
    location            = "centralindia"
    allocation_method   = "Static"

  }
}

nsg = {
  "nsg_name" = {
    name                = "vmnsgformyprivateserver"
    location            = "centralindia"
    resource_group_name = "todo-rg"

  }
}

nsg_rule = {
  allowssh = {
    security_name               = "Allowthessh"
    priority                    = 100
    direction                   = "Inbound"
    access                      = "Allow"
    protocol                    = "Tcp"
    destination_port_range      = "22"
    source_port_range           = "*"
    source_address_prefix       = "*"
    destination_address_prefix  = "*"
    resource_group_name         = "todo-rg"
    network_security_group_name = "vmnsgformyprivateserver"
  }
  allowhttp = {
    security_name               = "Allowthehttp"
    priority                    = 101
    direction                   = "Inbound"
    access                      = "Allow"
    protocol                    = "Tcp"
    destination_port_range      = "80"
    source_port_range           = "*"
    source_address_prefix       = "*"
    destination_address_prefix  = "*"
    resource_group_name         = "todo-rg"
    network_security_group_name = "vmnsgformyprivateserver"

  }

  allowhttps = {
    security_name               = "Allowthehttps"
    priority                    = 102
    direction                   = "Inbound"
    access                      = "Allow"
    protocol                    = "Tcp"
    destination_port_range      = "443"
    source_port_range           = "*"
    source_address_prefix       = "*"
    destination_address_prefix  = "*"
    resource_group_name         = "todo-rg"
    network_security_group_name = "vmnsgformyprivateserver"

  }
}








