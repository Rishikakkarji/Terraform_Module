variable "vnet" {
  description = "A map for vnet resources"
  type = map(object({
    name                = string
    location            = string
    resource_group_name = string
    address_space       = list(string)
    dns_servers         = list(string)
  }))
}