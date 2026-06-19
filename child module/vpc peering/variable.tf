variable "peering" {
  type = map(object({
    name = string
    virtual_network_name = string
    ## data peering below
    remote_name = string
    vnet_rg = string
  }))




}