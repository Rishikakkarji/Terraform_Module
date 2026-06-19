resource "azurerm_linux_virtual_machine" "vm_linux" {
  for_each            = var.vm_linux
  name                = "${each.value.name}-vm-app"
  location            = each.value.location
  resource_group_name = data.azurerm_network_interface.nic_id[each.key].resource_group_name

  size = each.value.size

  network_interface_ids = [data.azurerm_network_interface.nic_id[each.key].id]

  admin_username = each.value.admin_username
  admin_password = each.value.admin_password

  disable_password_authentication = each.value.disable_password_authentication

  # custom_data = each.value.custom_data

  source_image_reference {
    publisher = each.value.publisher
    offer     = each.value.offer
    sku       = each.value.sku
    version   = each.value.version
  }

  os_disk {
    name                 = each.value.os_name
    caching              = each.value.caching
    storage_account_type = each.value.storage_account_type
  }
}