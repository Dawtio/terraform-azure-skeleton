locals {
  resource_groups = {
    "RG_1" = {
      location = "westeurope"
    },
    "RG_2" = {
      location = "westeurope"
    },
  }

  environment_code_by_var = {
    "dev"     = "dv"
    "preprod" = "pp"
    "prod"    = "p"
  }
}

module "resource_groups" {
  for_each = local.resource_groups
  source   = "../internal/base/azurerm-resource-group"

  name     = each.key
  location = each.value.location
}

locals {
  context = {
    project_name     = "foo"
    environment      = var.name
    environment_code = local.environment_code_by_var[var.name]
    resource_group = {
      name     = module.resource_groups["RG_1"].this.name
      location = module.resource_groups["RG_1"].this.location
    }
  }
}

module "storage" {
  source = "../internal/functional/storage"

  context = local.context
}
