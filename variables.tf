variable "resource_group" {
  type = map(object({
    name     = string
    location = string
  }))

}

variable "sg_azure" {
  type = map(object({
    name                     = string
    account_replication_type = string
    account_tier             = string
  }))
}

variable "network_var" {
  
  type = map(object({
  name                = string
  address_space       = list(string)
  dns_servers         = list(string) #  toh vaha pa list use hoti hai ["10.0.0.0/16"]
  }))
}