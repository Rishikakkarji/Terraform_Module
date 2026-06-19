variable "nic" {
  type = map(object({
    nic_name                      = string
    location                      = string
    resource_group_name           = string
    ip_name                       = string
    private_ip_address_allocation = string
    subnet_name                   = string
    subnet_rg                     = string
    pub_rg                        = string
    pub_name                      = string
    vn_name                       = string
  }))

}