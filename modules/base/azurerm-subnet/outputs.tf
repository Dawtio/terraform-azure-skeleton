# # Resource : azurerm_subnet
# output "as_id" {
#   description = "The subnet ID."
#   value       = azurerm_subnet.this.id
# }

# output "as_name" {
#   description = "The name of the subnet."
#   value       = azurerm_subnet.this.name
# }

# output "as_resource_group_name" {
#   description = "The name of the resource group in which the subnet is created in."
#   value       = azurerm_subnet.this.resource_group_name
# }

# output "as_virtual_network_name" {
#   description = "The name of the virtual network in which the subnet is created in"
#   value       = azurerm_subnet.this.virtual_network_name
# }

# output "as_address_prefixes" {
#   description = "The address prefixes for the subnet"
#   value       = azurerm_subnet.this.address_prefixes
# }

output "this" {
  description = "The Subnet resource."
  value       = data.azurerm_subnet.this
}