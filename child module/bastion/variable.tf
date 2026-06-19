variable "bastion" {
    type = map(object({
      name = string
      location = string

      # below is ipconfiguration
      ip_conf_name = string
      pub_name = string
      pub_rg_name = string
      sub_name = string
      subnet_rg_name = string
      vnet_name = string
    }))
  
}