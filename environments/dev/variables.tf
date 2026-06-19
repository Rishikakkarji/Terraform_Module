variable "rg_name" {}

variable "sg_map" {}

variable "sg_container" {}


variable "vnet" {}

variable "subnet" {}


variable "nic" {}


variable "pub" {}

variable "nsg" {}
variable "nsg_rule" {}

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




