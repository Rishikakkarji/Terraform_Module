output "public_ip" {
    value = azurerm_public_ip.vm_ip.id
  
}

output "public_ip_name" {
  value = azurerm_public_ip.vm_ip.ip_address
}
