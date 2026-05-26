variable "vm_name" {
    type = string 
}

variable "vm_rg_location" {
    type = string 
}

variable "vm_rg_name" {
    type = string 
}


variable "interface_id" {
  type = list(string)
}
variable "vm_size" {
  type = string
}
variable "image_pub" {
  type = string
}
variable "image_offer" {
  type = string
}
variable "image_sku" {
  type = string
}
variable "image_version" {
  type = string
}
variable "os_disk" {
  type = string
}
variable "os_caching" {
  type = string
}

variable "os_option" {
  type = string
}

variable "disk_type" {
  type = string
}

variable "os_name" {
  type = string
}

variable "os_user_name" {
  type = string
}

variable "os_user_password" {
  type = string
}

variable "profile_config" {
  type = string
}

variable "custom_data" {
  type = string
}




