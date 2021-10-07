resource "azurerm_network_ddos_protection_plan" "this" {
  count = var.ddos_protection_plan_enable != false ? 1 : 0

  location            = var.location
  name                = var.ddos_protection_plan_name
  resource_group_name = var.resource_group_name
  tags                = var.ddos_protection_plan_tags
}

resource "azurerm_virtual_network" "this" {
  address_space = var.address_space
  bgp_community = var.bgp_community
  dynamic "ddos_protection_plan" {
    for_each = var.ddos_protection_plan_enable != false ? [1] : []
    content {
      id     = azurerm_network_ddos_protection_plan.this[0].id
      enable = var.ddos_protection_plan_enable
    }
  }
  dns_servers           = var.dns_servers
  location              = var.location
  name                  = var.name
  resource_group_name   = var.resource_group_name
  tags                  = var.tags
  vm_protection_enabled = var.vm_protection_enabled
}
