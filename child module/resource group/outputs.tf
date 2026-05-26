output "prod_rg_name" {
  value = azurerm_resource_group.this.name
}

output "prod_rg_location" {
    value = azurerm_resource_group.this.location
  
}