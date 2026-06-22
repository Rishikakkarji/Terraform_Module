# # Frontend IP Configuration
# resource "azurerm_lb_frontend" "lb_frontend" {
#   for_each = var.lb
#   name                 = "standard-lb-frontend"
#   location             = "Central India"
#   resource_group_name  = "rg-production"
#   public_ip_address_id = azurerm_public_ip.lb_pip.id
# }

# # Backend Pool
# resource "azurerm_lb_backend_address_pool" "lb_backend_pool" {
#   name            = "standard-lb-backend-pool"
#   loadbalancer_id = azurerm_lb.lb.id
# }

# # Health Probe (Validates application health on port 80 /healthz)
# resource "azurerm_lb_probe" "lb_http_probe" {
#   name                = "http-health-probe"
#   loadbalancer_id     = azurerm_lb.lb.id
#   protocol            = "Http"
#   port                = 80
#   request_path        = "/healthz"
#   interval_in_seconds = 5
#   number_of_probes    = 2
# }

# # Load Balancing Rule
# resource "azurerm_lb_rule" "lb_rule" {
#   name                           = "lb-rule-web"
#   loadbalancer_id                = azurerm_lb.lb.id
#   protocol                       = "Tcp"
#   frontend_port                  = 80
#   backend_port                   = 80
#   frontend_ip_configuration_name = "standard-lb-frontend"
#   backend_address_pool_id        = azurerm_lb_backend_address_pool.lb_backend_pool.id
#   probe_id                       = azurerm_lb_probe.lb_http_probe.id
#   disable_outbound_snat          = true
# }