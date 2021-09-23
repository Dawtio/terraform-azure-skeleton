locals {
  environment_code_by_var = {
    "dev"     = "dv"
    "preprod" = "pp"
    "prod"    = "p"
  }
}

module "resource_groups" {
  source   = "../internal/base/azurerm-resource-group"

  name     = "RG-DAWTIO-${upper(var.name)}"
  location = "westeurope"
}

locals {
  context = {
    project_name     = "foo"
    environment      = var.name
    environment_code = local.environment_code_by_var[var.name]
    resource_group = {
      name     = module.resource_groups.this.name
      location = module.resource_groups.this.location
    }
  }
}

module "storage" {
  source = "../internal/functional/storage"

  context = local.context
}
