variable "vm_linux" {
  type = map(object({
    name                            = string
    location                        = string
    size                            = string
    admin_username                  = string
    admin_password                  = string
    disable_password_authentication = bool
    # custom_data                     = string
    publisher                       = string
    offer                           = string
    sku                             = string
    version                         = string
    os_name                         = string
    caching                         = string
    storage_account_type            = string
    

    #data block variable define below:
    nic_name = string
    rg_name = string


  }))

}