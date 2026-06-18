# Resource Group Module
module "rg" {
  source  = "../../child module/resource group"
  rg_name = var.rg_name
}


# Storage Module
module "sg" {
  source     = "../../child module/Storage account"
  depends_on = [module.rg]
  sg_map     = var.sg_map
}


# Storage  blob container Module
module "sg_container" {
  source       = "../../child module/Storage container"
  depends_on   = [module.sg]
  sg_container = var.sg_container

}

#Vnet Module
module "vnet_child" {
  source = "../../child module/vnet"
  depends_on = [ module.rg ]
  vnet   = var.vnet
}


# Subnet Module
module "subnet" {
  source          = "../../child module/subnet"
  depends_on = [ module.vnet_child ]
  subnet = var.subnet
}


# # Nic Module
# module "vm_nic" {
#   source           = "../../child module/nic card"
#   for_each         = var.vm_nic
#   vm               = each.value.name
#   nic_location     = module.rg[each.key].prod_rg_location
#   nic_rg           = module.rg[each.key].prod_rg_name
#   ip_configuration = each.value.ip_configuration_name
#   subnet_id        = module.subnet[each.key].subnet_id
#   allocation_type  = each.value.private_ip_address_allocation
#   pub_id           = module.publicip[each.key].public_ip

# }

# # Linux Module
# module "Linux_vm" {
#   source   = "../../child module/vm/linux"
#   for_each = var.vm_linux_app

#   #VM Configuration is below
#   vm_name        = each.value.name
#   vm_rg_location = module.rg[each.key].prod_rg_location
#   vm_rg_name     = module.rg[each.key].prod_rg_name
#   interface_id   = [module.vm_nic[each.key].nic_id]
#   vm_size        = each.value.vm_size

#   # Storage part start from below
#   image_pub     = each.value.publisher
#   image_offer   = each.value.offer
#   image_sku     = each.value.sku
#   image_version = each.value.version

#   # Storage OS DISK Below
#   os_disk    = each.value.os_name
#   os_caching = each.value.caching
#   os_option  = each.value.create_option
#   disk_type  = each.value.managed_disk_type

#   # OS profile is below
#   os_name          = each.value.computer_name
#   os_user_name     = each.value.admin_username
#   os_user_password = each.value.admin_password

#   # OS Profile Linux config
#   profile_config = each.value.disable_password_authentication

#   custom_data = base64encode(
#     file("${path.module}/../../child module/scripts/nginx.sh")
#   )

# }

# module "nsg_attach_nic" {
#   source      = "../../child module/nsg"
#   for_each    = var.nsg_detail
#   nsg_name    = each.value.name
#   rg_name     = module.rg[each.key].prod_rg_name
#   rg_location = module.rg[each.key].prod_rg_location

#   # nsg rule start from below
#   nsg_rule_name      = each.value.nsg_name
#   priority_number    = each.value.priority
#   inbound_outbound   = each.value.direction
#   allow_deny         = each.value.access
#   tcp_udp            = each.value.protocol
#   port_range         = each.value.destination_port_range
#   source_port        = each.value.source_port_range
#   source_prefix      = each.value.source_address_prefix
#   destination_prefix = each.value.destination_address_prefix

# }

# module "publicip" {
#   source         = "../../child module/public ip"
#   for_each       = var.public_ip_vm_linux
#   public_ip_name = each.value.name
#   rg-name        = module.rg[each.key].prod_rg_name
#   rg-location    = module.rg[each.key].prod_rg_location
#   static_dynamic = each.value.allocation_method

# }

# resource "azurerm_network_interface_security_group_association" "example" {
#   network_interface_id      = module.vm_nic["prod"].nic_id
#   network_security_group_id = module.nsg_attach_nic["prod"].nsg_id
# }


# output "publicip_terminal" {
#   value = module.publicip["prod"].public_ip_name

# }