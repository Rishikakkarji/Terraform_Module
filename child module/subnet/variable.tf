variable "vnet_subnet" {
    type = string
}

variable "subnet_sg" {
  type = string
}

variable "network_name" {
  type = string
}

variable "subnet_ip_scope" {
  type = list(string)
}