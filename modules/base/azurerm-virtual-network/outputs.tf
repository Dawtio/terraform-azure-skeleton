# # Resource : azurerm_network_ddos_protection_plan
# output "andpp_id" {
#   description = "The ID of the DDoS Protection Plan"
#   value       = var.avn_ddos_protection_plan_enable != false ? azurerm_network_ddos_protection_plan.this[0].id : null
# }

# output "andpp_virtual_network_ids" {
#   description = "A list of Virtual Network ID's associated with the DDoS Protection Plan."
#   value       = var.avn_ddos_protection_plan_enable != false ? azurerm_network_ddos_protection_plan.this[0].virtual_network_ids : null
# }

# # Resource : azurerm_virtual_network
# output "avn_id" {
#   description = "The virtual NetworkConfiguration ID."
#   value       = azurerm_virtual_network.this.id
# }
output "this" {
  description = "The Virtual Network resource."
  value       = data.azurerm_virtual_network.this
}

# output "avn_resource_group_name" {
#   description = "The name of the resource group in which to create the virtual network."
#   value       = azurerm_virtual_network.this.resource_group_name
# }

# output "avn_location" {
#   description = "The location/region where the virtual network is created."
#   value       = azurerm_virtual_network.this.location
# }

# output "avn_address_space" {
#   description = "The list of address spaces used by the virtual network."
#   value       = azurerm_virtual_network.this.address_space
# }

# output "avn_guid" {
#   description = "The GUID of the virtual network."
#   value       = azurerm_virtual_network.this.guid
# }
