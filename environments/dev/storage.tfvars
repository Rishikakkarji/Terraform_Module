sg_map = {
  prod = {
    name                     = "sgaccount856"
    account_tier             = "Standard"
    account_replication_type = "LRS"
    resource_group_name      = "todo-rg"
    location                 = "centralindia"

  }
}
sg_container = {
  prod1 = {
    sg_name_container = "prodtfstatecontainer"
    sg_access_type    = "private"
    rg_name           = "todo-rg"
    sg_map            = "sgaccount856"
  }
}