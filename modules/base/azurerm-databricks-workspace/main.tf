resource "azurerm_databricks_workspace" "this" {
  name                                  = var.name
  resource_group_name                   = var.resource_group_name
  location                              = var.location
  load_balancer_backend_address_pool_id = var.load_balancer_backend_address_pool_id
  sku                                   = var.sku
  managed_services_cmk_key_vault_key_id = var.managed_services_cmk_key_vault_key_id
  managed_resource_group_name           = var.managed_resource_group_name
  customer_managed_key_enabled          = var.customer_managed_key_enabled
  infrastructure_encryption_enabled     = var.infrastructure_encryption_enabled
  public_network_access_enabled         = var.public_network_access_enabled
  network_security_group_rules_required = var.network_security_group_rules_required
  dynamic "custom_parameters" {
    for_each = var.custom_parameters_block_enabled == true ? [1] : []
    content {
      nat_gateway_name                                     = var.custom_parameters_nat_gateway_name
      public_ip_name                                       = var.custom_parameters_public_ip_name
      no_public_ip                                         = var.custom_parameters_no_public_ip
      public_subnet_name                                   = var.custom_parameters_public_subnet_name
      public_subnet_network_security_group_association_id  = var.custom_parameters_public_subnet_network_security_group_association_id
      private_subnet_name                                  = var.custom_parameters_private_subnet_name
      private_subnet_network_security_group_association_id = var.custom_parameters_private_subnet_network_security_group_association_id
      storage_account_name                                 = var.custom_parameters_storage_account_name
      storage_account_sku_name                             = var.custom_parameters_storage_account_sku_name
      virtual_network_id                                   = var.custom_parameters_virtual_network_id
      vnet_address_prefix                                  = var.custom_parameters_vnet_address_prefix
    }
  }
  tags = var.tags
}
