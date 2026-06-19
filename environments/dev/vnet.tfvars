vnet = {
  vnet_prod = {
    name                = "prod_network"
    location            = "centralindia"
    resource_group_name = "todo-rg"
    address_space       = ["10.0.0.0/16"]
    dns_servers         = ["8.8.8.8", "1.1.1.1"]

  }
  vnet_dev = {
    name                = "dev_network"
    location            = "centralindia"
    resource_group_name = "todo-rg"
    address_space       = ["172.0.0.0/16"]
    dns_servers         = ["8.8.8.8", "1.1.1.1"]

  }
}

subnet = {
  Subnet_prod1 = {
    name                 = "frontendsubnet"
    resource_group_name  = "todo-rg"
    virtual_network_name = "prod_network"
    address_prefixes     = ["10.0.1.0/24"]
  }
  Subnet_prod2 = {
    name                 = "backendsubnet"
    resource_group_name  = "todo-rg"
    virtual_network_name = "prod_network"
    address_prefixes     = ["10.0.2.0/24"]
  }
  Subnet_prod3 = {
    name                 = "databasesubnet"
    resource_group_name  = "todo-rg"
    virtual_network_name = "prod_network"
    address_prefixes     = ["10.0.3.0/24"]
  }

  Subnet_dev1 = {
    name                 = "frontendsubnet"
    resource_group_name  = "todo-rg"
    virtual_network_name = "dev_network"
    address_prefixes     = ["172.0.1.0/24"]
  }
  Subnet_dev2 = {
    name                 = "backendsubnet"
    resource_group_name  = "todo-rg"
    virtual_network_name = "dev_network"
    address_prefixes     = ["172.0.2.0/24"]
  }
  Subnet_dev3 = {
    name                 = "databasesubnet"
    resource_group_name  = "todo-rg"
    virtual_network_name = "dev_network"
    address_prefixes     = ["172.0.3.0/24"]
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

bastion = {
  dev_bastion = {
    name     = "devbastion"
    location = "centralindia"

    # below is ipconfiguration
    ip_conf_name   = "pudbastion"
    pub_name       = "vm_public_ip_nginx"
    pub_rg_name    = "todo-rg"
    sub_name       = "frontendsubnet"
    subnet_rg_name = "todo-rg"
    vnet_name      = "dev_network"
  }
}


peering = {
  prodnetworktodev = {
    name = "prodnetworktodev"
    virtual_network_name = "prod_network"
    ## data peering below
    remote_name = "dev_network"
    vnet_rg = "todo-rg"
  }
   devnetworktoprod = {
    name = "devnetworktoprod"
    virtual_network_name = "dev_network"
    ## data peering below
    remote_name = "prod_network"
    vnet_rg = "todo-rg"
  }

}








