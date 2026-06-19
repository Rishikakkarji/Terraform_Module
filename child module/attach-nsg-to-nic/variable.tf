variable "nsg-to-nic" {
    type = map(object({
      nsg_name = string
      nsg_rg = string

      # nic below
      nic_name = string
      nic_rg = string
    }))
  
}