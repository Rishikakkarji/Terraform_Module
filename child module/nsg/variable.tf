variable "nsg" {
  type = map(object({
    name                = string
    location            = string
    resource_group_name = string
  }))

}

variable "nsg_rules" {
  type = map(object({
    security_name               = string
    priority                    = number
    direction                   = string
    access                      = string
    protocol                    = string
    destination_port_range      = string
    source_port_range           = string
    source_address_prefix       = string
    destination_address_prefix  = string
    resource_group_name         = string
    network_security_group_name = string
  }))

}