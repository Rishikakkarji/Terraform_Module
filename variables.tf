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