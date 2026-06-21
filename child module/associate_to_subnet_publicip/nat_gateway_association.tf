resource "azurerm_subnet_nat_gateway_association" "nat_subnet_id" {

  for_each = var.nat_id

  subnet_id      = data.azurerm_subnet.subnet_id[each.key].id
  nat_gateway_id = data.azurerm_nat_gateway.nat_id[each.key].id
}