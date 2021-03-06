locals {
  storage_accounts = {
    "dawtioasa" = {},
    "dawtiofoo" = {},
  }
}

module "storage_accounts" {
  for_each = local.storage_accounts
  source   = "../../base/azurerm-storage-account"

  name                = "${each.key}${var.context.environment_code}"
  resource_group_name = var.context.resource_group.name
  location            = var.context.resource_group.location
}
