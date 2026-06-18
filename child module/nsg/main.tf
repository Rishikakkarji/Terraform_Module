# resource "azurerm_network_security_group" "this" {
#   name                = var.nsg_name
#   location            = var.rg_location
#   resource_group_name = var.rg_name

#  security_rule {
#     name                       = var.nsg_rule_name
#     priority                   = var.priority_number
#     direction                  = var.inbound_outbound
#     access                     = var.allow_deny
#     protocol                   = var.tcp_udp
#     destination_port_range     = var.port_range # Customize your port
#     source_port_range = var.source_port
#     source_address_prefix = var.source_prefix
#     destination_address_prefix = var.destination_prefix
#     # ... source/destination address prefixes ...
#   }
# }
  
