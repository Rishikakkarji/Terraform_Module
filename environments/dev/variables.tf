variable "rg_name" {}

variable "sg_map" {}

variable "sg_container" {}


variable "vnet" {}

variable "subnet" {}


# variable "vm_nic" {
#   type = map(object({
#     name                          = string
#     ip_configuration_name         = string
#     private_ip_address_allocation = string

#   }))
# }

# variable "vm_linux_app" {
#   type = map(object({
#     # VM Variable
#     name    = string
#     vm_size = string

#     # Storage variable
#     publisher = string
#     offer     = string
#     sku       = string
#     version   = string

#     # OS DISK Variable
#     os_name           = string
#     caching           = string
#     create_option     = string
#     managed_disk_type = string

#     # OS profile variable
#     computer_name  = string
#     admin_username = string
#     admin_password = string

#     # OS Profile variable
#     disable_password_authentication = string

#   }))

# }

# variable "nsg_detail" {
#   type = map(object({
#     name                       = string
#     nsg_name                   = string
#     priority                   = number
#     direction                  = string
#     access                     = string
#     protocol                   = string
#     destination_port_range     = string
#     source_port_range          = string
#     source_address_prefix      = string
#     destination_address_prefix = string
#   }))

# }


# variable "public_ip_vm_linux" {
#   type = map(object({
#     name              = string
#     allocation_method = string
#   }))

# }