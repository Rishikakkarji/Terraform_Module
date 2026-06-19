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
  source     = "../../child module/vnet"
  depends_on = [module.rg]
  vnet       = var.vnet
}


# Subnet Module
module "subnet" {
  source     = "../../child module/subnet"
  depends_on = [module.vnet_child]
  subnet     = var.subnet
}


# # Nic Module
module "vm_nic" {
  source     = "../../child module/nic card"
  depends_on = [module.publicip, module.subnet]
  nic        = var.nic

}

# Public IP for vm
module "publicip" {
  source     = "../../child module/public ip"
  depends_on = [module.subnet]
  pub        = var.pub

}

module "nsg" {
  source     = "../../child module/nsg"
  depends_on = [module.rg]
  nsg        = var.nsg
  nsg_rules  = var.nsg_rule
}

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



# resource "azurerm_network_interface_security_group_association" "example" {
#   network_interface_id      = module.vm_nic["prod"].nic_id
#   network_security_group_id = module.nsg_attach_nic["prod"].nsg_id
# }


# output "publicip_terminal" {
#   value = module.publicip["prod"].public_ip_name

# }