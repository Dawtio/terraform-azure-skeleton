module "resource_group" {
  source = "../modules/base/azurerm-resource-group"

  name     = "RG-DAWTIO-NETWORK"
  location = "northeurope"
}

locals {
  vnets = {
    "vnet_dawtio" = {
      cidr = ["10.0.0.0/24"]
    }
  }
  subnets = {
    "subnet_dv" = {
        parent = "vnet_dawtio"
        cidr   = ["10.0.0.0/27"]
    },
    "subnet_aks_dv" = {
        parent = "vnet_dawtio"
        cidr   = ["10.0.0.32/27"]
    },
    "subnet_hp" = {
        parent = "vnet_dawtio"
        cidr   = ["10.0.0.64/27"]
    },
    "subnet_aks_hp" = {
        parent = "vnet_dawtio"
        cidr   = ["10.0.0.96/27"]
    },
    "subnet_p" = {
        parent = "vnet_dawtio"
        cidr   = ["10.0.0.128/27"]
    },
    "subnet_aks_p" = {
        parent = "vnet_dawtio"
        cidr   = ["10.0.0.160/27"]
    },
  }
  nsg = {}
}

module "vnets" {
  for_each = local.vnets
  source   = "../modules/base/azurerm-virtual-network"

  name                = each.key
  resource_group_name = module.resource_group.this.name
  location            = module.resource_group.this.location
  address_space       = each.value["cidr"]
}

module "subnets" {
  for_each = local.subnets
  source   = "../modules/base/azurerm-virtual-network"

  name                 = each.key
  virtual_network_name = module.vnets[each.value["parent"]].this.name
  resource_group_name  = module.resource_group.this.name
  address_prefixes     = each.value["cidr"]
}
