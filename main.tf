module "annad" {
  source = "./child module/resource group"

  for_each    = var.resource_group
  rg_name     = each.value.name
  rg_location = each.value.location
}

module "sg" {
  source      = "./child module/Storage account"
  for_each    = var.sg_azure
  sg_name     = each.value.name
  sg_tier     = each.value.account_tier
  sg_type     = each.value.account_replication_type
  sg_gn       = module.annad[each.key].kuldeep #ballu        # implicit depenency lga raha hai upper vala module ka sath
  sg_location = module.annad[each.key].varun   #east us
} 

module "vnet_child" {
  source = "./child module/Vnet"
  for_each = var.network_var
  vnet_name = each.value.name
  vnet_dns = each.value.dns_servers
  vnet_ip = each.value.address_space
  vnet_rg_location = module.annad[each.key].varun
  vnet_rg_name = module.annad[each.key].kuldeep

}