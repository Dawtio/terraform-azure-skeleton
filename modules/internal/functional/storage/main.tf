locals {
  storage_accounts = {
      "asatoto" = {}
      "asatata" = {}
  }
}

module "storage_accounts" {
  for_each = local.storage_accounts
  source = "../../base/azurerm-storage-account"

  name                = each.key
  resource_group_name = var.context.resource_group.name
  location            = var.context.resource_group.location
}
