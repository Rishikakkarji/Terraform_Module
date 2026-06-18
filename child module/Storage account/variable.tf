variable "sg_map" {
  description = "Map of storage account configurations"
  type = map(object({
    name                     = string
    account_tier             = string
    account_replication_type = string
    resource_group_name      = string
    location                 = string
  }))
}