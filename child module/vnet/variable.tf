variable "vnet_name" {
  type = string
}
variable "vnet_rg_location" {
  type = string
}
variable "vnet_rg_name" {
  type = string
}
variable "vnet_ip" {
  type = list(string)
}
variable "vnet_dns" {
    type = list(string)  
}