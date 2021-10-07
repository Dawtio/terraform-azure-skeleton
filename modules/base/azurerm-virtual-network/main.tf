# # Resource : azurerm_network_ddos_protection_plan
# resource "azurerm_network_ddos_protection_plan" "this" {
#   count = var.avn_ddos_protection_plan_enable != false ? 1 : 0

#   location            = data.azurerm_resource_group.this.location
#   name                = var.andpp_ddos_protection_plan_name
#   resource_group_name = data.azurerm_resource_group.this.name
#   tags                = var.andpp_ddos_protection_plan_tags
# }

# # Resource : azurerm_virtual_network
# resource "azurerm_virtual_network" "this" {
#   address_space       = var.avn_address_space
#   bgp_community       = var.avn_bgp_community
#   dynamic "ddos_protection_plan" {
#     for_each = var.avn_ddos_protection_plan_enable != false ? [1] : []
#     content {
#       id     = azurerm_network_ddos_protection_plan.this[0].id
#       enable = var.avn_ddos_protection_plan_enable
#     }
#   }
#   dns_servers           = var.avn_dns_servers
#   location            = data.azurerm_resource_group.this.location
#   name                = var.avn_name
#   resource_group_name = data.azurerm_resource_group.this.name
#   tags                  = var.avn_tags
#   vm_protection_enabled = var.avn_vm_protection_enabled
# }

data "azurerm_virtual_network" "this" {
  name                = var.avn_name
  resource_group_name = var.resource_group_name
}
