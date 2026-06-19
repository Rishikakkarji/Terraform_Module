# resource "azurerm_linux_virtual_machine" "vm_linux" {

#   name                = "${var.vm_name}-vm-app"
#   location            = var.vm_rg_location
#   resource_group_name = var.vm_rg_name

#   size = var.vm_size

#   network_interface_ids = var.interface_id

#   admin_username = var.os_user_name
#   admin_password = var.os_user_password

#   disable_password_authentication = false

#   custom_data = var.custom_data

#   source_image_reference {
#     publisher = var.image_pub
#     offer     = var.image_offer
#     sku       = var.image_sku
#     version   = var.image_version
#   }

#   os_disk {
#     name                 = var.os_disk
#     caching              = var.os_caching
#     storage_account_type = var.disk_type
#   }
# }