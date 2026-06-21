resource "azurerm_nat_gateway_public_ip_association" "pub_id" {

  for_each = var.nat_id

  nat_gateway_id       = data.azurerm_nat_gateway.nat_id[each.key].id
  public_ip_address_id = data.azurerm_public_ip.ip_id[each.key].id
}