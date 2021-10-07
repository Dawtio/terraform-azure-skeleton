# terraform-azurerm-virtual-network

Manages a virtual network.

## Table of content
<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->
**Table of Contents**  *generated with [DocToc](https://github.com/thlorenz/doctoc)*

- [Provider configuration](#provider-configuration)
- [Requirements](#requirements)
- [Providers](#providers)
- [Modules](#modules)
- [Resources](#resources)
- [Inputs](#inputs)
- [Outputs](#outputs)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->

## Provider configuration
```sh
az login
az account list
az account set --subscription="SUBSCRIPTION_ID" # If multiple exist
```

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 0.14.0 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | =2.54.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | =2.54.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_network_ddos_protection_plan.this](https://registry.terraform.io/providers/hashicorp/azurerm/2.54.0/docs/resources/network_ddos_protection_plan) | resource |
| [azurerm_virtual_network.this](https://registry.terraform.io/providers/hashicorp/azurerm/2.54.0/docs/resources/virtual_network) | resource |
| [azurerm_resource_group.this](https://registry.terraform.io/providers/hashicorp/azurerm/2.54.0/docs/data-sources/resource_group) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_andpp_ddos_protection_plan_name"></a> [andpp\_ddos\_protection\_plan\_name](#input\_andpp\_ddos\_protection\_plan\_name) | Specifies the name of the Network DDoS Protection Plan. Changing this forces a new resource to be created. | `string` | `""` | no |
| <a name="input_andpp_ddos_protection_plan_tags"></a> [andpp\_ddos\_protection\_plan\_tags](#input\_andpp\_ddos\_protection\_plan\_tags) | A mapping of tags to assign to the resource. | `map(string)` | `{}` | no |
| <a name="input_avn_address_space"></a> [avn\_address\_space](#input\_avn\_address\_space) | The address space that is used the virtual network. You can supply more than one address space. | `list(string)` | n/a | yes |
| <a name="input_avn_bgp_community"></a> [avn\_bgp\_community](#input\_avn\_bgp\_community) | The BGP community attribute in format <as-number>:<community-value>. | `string` | `null` | no |
| <a name="input_avn_ddos_protection_plan_enable"></a> [avn\_ddos\_protection\_plan\_enable](#input\_avn\_ddos\_protection\_plan\_enable) | Enable/disable DDoS Protection Plan on Virtual Network. | `bool` | `false` | no |
| <a name="input_avn_dns_servers"></a> [avn\_dns\_servers](#input\_avn\_dns\_servers) | List of IP addresses of DNS servers | `list(string)` | `null` | no |
| <a name="input_avn_name"></a> [avn\_name](#input\_avn\_name) | The name of the virtual network. Changing this forces a new resource to be created. | `string` | n/a | yes |
| <a name="input_avn_tags"></a> [avn\_tags](#input\_avn\_tags) | A mapping of tags to assign to the resource. | `map(string)` | `{}` | no |
| <a name="input_avn_vm_protection_enabled"></a> [avn\_vm\_protection\_enabled](#input\_avn\_vm\_protection\_enabled) | Whether to enable VM protection for all the subnets in this Virtual Network. | `bool` | `false` | no |
| <a name="input_d_rg"></a> [d\_rg](#input\_d\_rg) | The Name of this Resource Group. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_andpp_id"></a> [andpp\_id](#output\_andpp\_id) | The ID of the DDoS Protection Plan |
| <a name="output_andpp_virtual_network_ids"></a> [andpp\_virtual\_network\_ids](#output\_andpp\_virtual\_network\_ids) | A list of Virtual Network ID's associated with the DDoS Protection Plan. |
| <a name="output_avn_address_space"></a> [avn\_address\_space](#output\_avn\_address\_space) | The list of address spaces used by the virtual network. |
| <a name="output_avn_guid"></a> [avn\_guid](#output\_avn\_guid) | The GUID of the virtual network. |
| <a name="output_avn_id"></a> [avn\_id](#output\_avn\_id) | The virtual NetworkConfiguration ID. |
| <a name="output_avn_location"></a> [avn\_location](#output\_avn\_location) | The location/region where the virtual network is created. |
| <a name="output_avn_name"></a> [avn\_name](#output\_avn\_name) | The name of the virtual network. |
| <a name="output_avn_resource_group_name"></a> [avn\_resource\_group\_name](#output\_avn\_resource\_group\_name) | The name of the resource group in which to create the virtual network. |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
