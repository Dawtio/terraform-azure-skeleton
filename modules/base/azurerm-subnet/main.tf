# # Resource : azurerm_subnet
# resource "azurerm_subnet" "this" {

#   address_prefixes     = var.as_address_prefixes

#   dynamic "delegation" {
#     for_each = var.as_delegation != null ? var.as_delegation : []
#     content {
#       name = delegation.value.name
#       service_delegation {
#         actions = delegation.value.service_delegation.actions
#         name    = delegation.value.service_delegation.name
#       }
#     }
#   }

#   # One of them
#   enforce_private_link_endpoint_network_policies = var.as_enforce_private_link_endpoint_network_policies != null ? var.as_enforce_private_link_endpoint_network_policies : null
#   enforce_private_link_service_network_policies  = var.as_enforce_private_link_endpoint_network_policies != null ? null : var.as_enforce_private_link_service_network_policies

#   name                 = var.as_name
#   resource_group_name  = data.azurerm_resource_group.this.name
#   service_endpoints = var.as_service_endpoints
#   service_endpoint_policy_ids = var.as_service_endpoint_policy_ids
#   virtual_network_name = var.as_virtual_network_name
# }

data "azurerm_subnet" "this" {
  name                 = var.name
  resource_group_name  = var.resource_group_name
  virtual_network_name = var.virtual_network_name
}