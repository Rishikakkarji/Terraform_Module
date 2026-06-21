variable "sg_container" {
  description = "A map of storage containers to create"
  type = map(object({
    sg_name_container = string
    # sg_access_type    = string
    rg_name           = string
    sg_map            = string
  }))
}