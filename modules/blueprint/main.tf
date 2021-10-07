locals {
  environment_code_by_var = {
    "dev"     = "dv"
    "preprod" = "pp"
    "prod"    = "p"
  }
}

module "resource_groups" {
  source = "../base/azurerm-resource-group"

  name     = "RG-DAWTIO-${upper(var.name)}"
  location = "northeurope"
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
  source = "../functional/storage"

  context = local.context
}

module "law" {
  source = "../base/azurerm-log-analytics-workspace"

  name                = "dawtio-law"
  location            = module.resource_groups.this.location
  resource_group_name = module.resource_groups.this.name
}
