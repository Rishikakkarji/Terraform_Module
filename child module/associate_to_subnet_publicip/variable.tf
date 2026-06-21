variable "nat_id" {
  type = map(object({
    # below is public variable code for id
    pub_name = string
    pub_rg_name = string
    # below is nat variable code for id
    nat_name = string
    nat_rg_name = string
     # below is subnet id variable code for id
     subnet_name = string
     subnet_rg_name = string
     subnet_vnet_name = string
  }))
}