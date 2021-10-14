variable "name" {
  description = "Specifies the name of the Databricks Workspace resource."
  type        = string
}

variable "resource_group_name" {
  description = "The name of the Resource Group in which the Databricks Workspace should exist."
  type        = string
}

variable "location" {
  description = "Specifies the supported Azure location where the resource has to be created."
  type        = string
}

variable "load_balancer_backend_address_pool_id" {
  description = "Resource ID of the Outbound Load balancer Backend Address Pool for Secure Cluster Connectivity (No Public IP) workspace."
  type        = string
  default     = null
}

variable "sku" {
  description = "The sku to use for the Databricks Workspace."
  type        = string

  validation {
    condition = can(regex("^(standard|premium|trial)$", var.sku))
    error_message = "Possible values are standard, premium, or trial."
  }
}

variable "managed_services_cmk_key_vault_key_id" {
  description = "Customer managed encryption properties for the Databricks Workspace managed resources(e.g. Notebooks and Artifacts)."
  type        = string
  default     = null
}

variable "managed_resource_group_name" {
  description = "The name of the resource group where Azure should place the managed Databricks resources."
  type        = string
  default     = null
}

variable "customer_managed_key_enabled" {
  description = "Is the workspace enabled for customer managed key encryption? If true this enables the Managed Identity for the managed storage account. This field is only valid if the Databricks Workspace sku is set to premium."
  type        = bool
  default     = false
}

variable "infrastructure_encryption_enabled" {
  description = "Optional) Is the Databricks File System root file system enabled with a secondary layer of encryption with platform managed keys? This field is only valid if the Databricks Workspace sku is set to premium."
  type        = bool
  default     = false
}

variable "public_network_access_enabled" {
  description = "Allow public access for accessing workspace. Set value to false to access workspace only via private link endpoint."
  type        = bool
  default     = true
}

variable "network_security_group_rules_required" {
  description = "Does the data plane (clusters) to control plane communication happen over private link endpoint only or publicly? Required when public_network_access_enabled is set to false."
  type        = string
  default     = null

  validation {
    condition = var.network_security_group_rules_required == null || can(regex("^(AllRules|NoAzureDatabricksRules|NoAzureServiceRules)$", var.network_security_group_rules_required))
    error_message = "Possible values AllRules, NoAzureDatabricksRules or NoAzureServiceRules."
  }
}

variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(string)
  default     = {
    terraform="true",
  }
}

variable "custom_parameters_block_enabled" {
  description = "Should the Custom Parameters block be enabled?"
  type        = bool
  default     = false
}

variable "custom_parameters_nat_gateway_name" {
  description = "Name of the NAT gateway for Secure Cluster Connectivity (No Public IP) workspace subnets."
  type        = string
  default     = "nat-gateway"
}

variable "custom_parameters_public_ip_name" {
  description = "Name of the Public IP for No Public IP workspace with managed vNet."
  type        = string
  default     = "nat-gw-public-ip"
}

variable "custom_parameters_no_public_ip" {
  description = "Are public IP Addresses not allowed?"
  type        = bool
  default     = false
}

variable "custom_parameters_public_subnet_name" {
  description = "The name of the Public Subnet within the Virtual Network. Required if virtual_network_id is set."
  type        = string
  default     = null
}

variable "custom_parameters_public_subnet_network_security_group_association_id" {
  description = "The resource ID of the azurerm_subnet_network_security_group_association resource which is referred to by the public_subnet_name field. Required if virtual_network_id is set."
  type        = string
  default     = null
}

variable "custom_parameters_private_subnet_name" {
  description = "The name of the Private Subnet within the Virtual Network. Required if virtual_network_id is set."
  type        = string
  default     = null
}

variable "custom_parameters_private_subnet_network_security_group_association_id" {
  description = "The resource ID of the azurerm_subnet_network_security_group_association resource which is referred to by the private_subnet_name field. Required if virtual_network_id is set."
  type        = string
  default     = null
}

variable "custom_parameters_storage_account_name" {
  description = "Default Databricks File Storage account name."
  type        = string
  default     = null
}

variable "custom_parameters_storage_account_sku_name" {
  description = "Storage account SKU name."
  type        = string
  default     = "Standard_GRS"

  validation {
    condition = var.custom_parameters_storage_account_sku_name == null || can(regex("^(Standard_LRS|Standard_GRS|Standard_RAGRS|Standard_GZRS|Standard_RAGZRS|Standard_ZRS|Premium_LRS|Premium_ZRS)$", var.custom_parameters_storage_account_sku_name))
    error_message = "Possible values include Standard_LRS, Standard_GRS, Standard_RAGRS, Standard_GZRS, Standard_RAGZRS, Standard_ZRS, Premium_LRS or Premium_ZRS."
  }
}

variable "custom_parameters_virtual_network_id" {
  description = "The ID of a Virtual Network where this Databricks Cluster should be created."
  type        = string
  default     = null
}

variable "custom_parameters_vnet_address_prefix" {
  description = "Address prefix for Managed virtual network."
  type        = string
  default     = "10.139"
}

