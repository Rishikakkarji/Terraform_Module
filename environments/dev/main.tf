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


# Public IP for vm
module "publicip" {
  source     = "../../child module/public ip"
  depends_on = [module.subnet]
  pub        = var.pub

}

# # Nic Module
module "vm_nic" {
  source     = "../../child module/nic card"
  depends_on = [module.publicip, module.subnet]
  nic        = var.nic

}



module "nsg" {
  source     = "../../child module/nsg"
  depends_on = [module.rg, module.vm_nic]
  nsg        = var.nsg
}

module "nsg-rule" {
  source     = "../../child module/nsg-rule"
  depends_on = [module.nsg]
  nsg_rules  = var.nsg_rule
}

# Linux Module
module "Linux_vm" {
  source     = "../../child module/vm/linux"
  depends_on = [module.publicip, module.nsg]
  vm_linux   = var.vm_linux
}

module "bastion" {
  source     = "../../child module/bastion"
  depends_on = [module.Linux_vm]
  bastion    = var.bastion

}

module "peering" {
  source  = "../../child module/vpc peering"
  depends_on = [ module.vnet_child, var.subnet ]
  peering = var.peering

}

module "nsg-to-nic" {
  source = "../../child module/attach-nsg-to-nic"
  depends_on = [ module.nsg, module.vm_nic ]
  nsg-to-nic = var.nsg-to-nic 
}

module "nat_gateway" {
  source = "../../child module/nat_gateway"
  depends_on = [ module.subnet ]
  nat = var.nat
  
}

module "nat_id" {
  source = "../../child module/associate_to_subnet_publicip"
  depends_on = [ module.nat_gateway, module.publicip ]
  nat_id = var.nat_id
  
}

# output "publicip_terminal" {
#   value = module.publicip["prod"].public_ip_name

# }