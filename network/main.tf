module "resource_group" {
  source = "../modules/base/azurerm-resource-group"

  name     = "RG-DAWTIO-NETWORK"
  location = "northeurope"
}

locals {
  vnets = {
    "vnet_dawtio" = {
      cidr = ["10.0.0.0/26"]
    },
  }
  subnets = {
    "subnet_dv" = {
        parent = "vnet_dawtio"
        cidr   = ["10.0.0.0/28"] // 16 Hosts
    },
    "subnet_hp" = {
        parent = "vnet_dawtio"
        cidr   = ["10.0.0.16/28"] // 16 Hosts
    },
    "subnet_p" = {
        parent = "vnet_dawtio"
        cidr   = ["10.0.0.32/28"] // 16 Hosts
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
  source   = "../modules/base/azurerm-subnet"

  name                 = each.key
  virtual_network_name = module.vnets[each.value["parent"]].this.name
  resource_group_name  = module.resource_group.this.name
  address_prefixes     = each.value["cidr"]
}
