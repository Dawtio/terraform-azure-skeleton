# terraform-azurerm-databricks-workspace

## Table of content
<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->

- [Description](#description)
- [Requirements](#requirements)
- [Providers](#providers)
- [Modules](#modules)
- [Resources](#resources)
- [Inputs](#inputs)
- [Outputs](#outputs)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->

## Description

> Create a Databricks Workspace.

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >=1.0.3 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | >=2.80.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | 2.80.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_databricks_workspace.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/databricks_workspace) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_custom_parameters_block_enabled"></a> [custom\_parameters\_block\_enabled](#input\_custom\_parameters\_block\_enabled) | Should the Custom Parameters block be enabled? | `bool` | `false` | no |
| <a name="input_custom_parameters_nat_gateway_name"></a> [custom\_parameters\_nat\_gateway\_name](#input\_custom\_parameters\_nat\_gateway\_name) | Name of the NAT gateway for Secure Cluster Connectivity (No Public IP) workspace subnets. | `string` | `"nat-gateway"` | no |
| <a name="input_custom_parameters_no_public_ip"></a> [custom\_parameters\_no\_public\_ip](#input\_custom\_parameters\_no\_public\_ip) | Are public IP Addresses not allowed? | `bool` | `false` | no |
| <a name="input_custom_parameters_private_subnet_name"></a> [custom\_parameters\_private\_subnet\_name](#input\_custom\_parameters\_private\_subnet\_name) | The name of the Private Subnet within the Virtual Network. Required if virtual\_network\_id is set. | `string` | `null` | no |
| <a name="input_custom_parameters_private_subnet_network_security_group_association_id"></a> [custom\_parameters\_private\_subnet\_network\_security\_group\_association\_id](#input\_custom\_parameters\_private\_subnet\_network\_security\_group\_association\_id) | The resource ID of the azurerm\_subnet\_network\_security\_group\_association resource which is referred to by the private\_subnet\_name field. Required if virtual\_network\_id is set. | `string` | `null` | no |
| <a name="input_custom_parameters_public_ip_name"></a> [custom\_parameters\_public\_ip\_name](#input\_custom\_parameters\_public\_ip\_name) | Name of the Public IP for No Public IP workspace with managed vNet. | `string` | `"nat-gw-public-ip"` | no |
| <a name="input_custom_parameters_public_subnet_name"></a> [custom\_parameters\_public\_subnet\_name](#input\_custom\_parameters\_public\_subnet\_name) | The name of the Public Subnet within the Virtual Network. Required if virtual\_network\_id is set. | `string` | `null` | no |
| <a name="input_custom_parameters_public_subnet_network_security_group_association_id"></a> [custom\_parameters\_public\_subnet\_network\_security\_group\_association\_id](#input\_custom\_parameters\_public\_subnet\_network\_security\_group\_association\_id) | The resource ID of the azurerm\_subnet\_network\_security\_group\_association resource which is referred to by the public\_subnet\_name field. Required if virtual\_network\_id is set. | `string` | `null` | no |
| <a name="input_custom_parameters_storage_account_name"></a> [custom\_parameters\_storage\_account\_name](#input\_custom\_parameters\_storage\_account\_name) | Default Databricks File Storage account name. | `string` | `null` | no |
| <a name="input_custom_parameters_storage_account_sku_name"></a> [custom\_parameters\_storage\_account\_sku\_name](#input\_custom\_parameters\_storage\_account\_sku\_name) | Storage account SKU name. | `string` | `"Standard_GRS"` | no |
| <a name="input_custom_parameters_virtual_network_id"></a> [custom\_parameters\_virtual\_network\_id](#input\_custom\_parameters\_virtual\_network\_id) | The ID of a Virtual Network where this Databricks Cluster should be created. | `string` | `null` | no |
| <a name="input_custom_parameters_vnet_address_prefix"></a> [custom\_parameters\_vnet\_address\_prefix](#input\_custom\_parameters\_vnet\_address\_prefix) | Address prefix for Managed virtual network. | `string` | `"10.139"` | no |
| <a name="input_customer_managed_key_enabled"></a> [customer\_managed\_key\_enabled](#input\_customer\_managed\_key\_enabled) | Is the workspace enabled for customer managed key encryption? If true this enables the Managed Identity for the managed storage account. This field is only valid if the Databricks Workspace sku is set to premium. | `bool` | `false` | no |
| <a name="input_infrastructure_encryption_enabled"></a> [infrastructure\_encryption\_enabled](#input\_infrastructure\_encryption\_enabled) | Optional) Is the Databricks File System root file system enabled with a secondary layer of encryption with platform managed keys? This field is only valid if the Databricks Workspace sku is set to premium. | `bool` | `false` | no |
| <a name="input_load_balancer_backend_address_pool_id"></a> [load\_balancer\_backend\_address\_pool\_id](#input\_load\_balancer\_backend\_address\_pool\_id) | Resource ID of the Outbound Load balancer Backend Address Pool for Secure Cluster Connectivity (No Public IP) workspace. | `string` | `null` | no |
| <a name="input_location"></a> [location](#input\_location) | Specifies the supported Azure location where the resource has to be created. | `string` | n/a | yes |
| <a name="input_managed_resource_group_name"></a> [managed\_resource\_group\_name](#input\_managed\_resource\_group\_name) | The name of the resource group where Azure should place the managed Databricks resources. | `string` | `null` | no |
| <a name="input_managed_services_cmk_key_vault_key_id"></a> [managed\_services\_cmk\_key\_vault\_key\_id](#input\_managed\_services\_cmk\_key\_vault\_key\_id) | Customer managed encryption properties for the Databricks Workspace managed resources(e.g. Notebooks and Artifacts). | `string` | `null` | no |
| <a name="input_name"></a> [name](#input\_name) | Specifies the name of the Databricks Workspace resource. | `string` | n/a | yes |
| <a name="input_network_security_group_rules_required"></a> [network\_security\_group\_rules\_required](#input\_network\_security\_group\_rules\_required) | Does the data plane (clusters) to control plane communication happen over private link endpoint only or publicly? Required when public\_network\_access\_enabled is set to false. | `string` | `null` | no |
| <a name="input_public_network_access_enabled"></a> [public\_network\_access\_enabled](#input\_public\_network\_access\_enabled) | Allow public access for accessing workspace. Set value to false to access workspace only via private link endpoint. | `bool` | `true` | no |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | The name of the Resource Group in which the Databricks Workspace should exist. | `string` | n/a | yes |
| <a name="input_sku"></a> [sku](#input\_sku) | The sku to use for the Databricks Workspace. | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | A mapping of tags to assign to the resource. | `map(string)` | <pre>{<br>  "terraform": "true"<br>}</pre> | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_this"></a> [this](#output\_this) | The Databricks Workspace resource. |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
