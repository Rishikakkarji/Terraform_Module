sg_azure = {
  prod = {
    name                     = "sgasd1283"
    account_replication_type = "LRS"
    account_tier             = "Standard"

  }
}
sg_container = {
  prod = {
    name                  = "sgtfstatecontainer"
    container_access_type = "private"
  }
}