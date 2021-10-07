# terraform-azurerm-virtual-network

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

> Manages a virtual network.

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.0.3 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | >=2.79.1 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | 2.78.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_network_ddos_protection_plan.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/network_ddos_protection_plan) | resource |
| [azurerm_virtual_network.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/virtual_network) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_address_space"></a> [address\_space](#input\_address\_space) | The address space that is used the virtual network. You can supply more than one address space. | `list(string)` | n/a | yes |
| <a name="input_bgp_community"></a> [bgp\_community](#input\_bgp\_community) | The BGP community attribute in format <as-number>:<community-value>. | `string` | `null` | no |
| <a name="input_ddos_protection_plan_enable"></a> [ddos\_protection\_plan\_enable](#input\_ddos\_protection\_plan\_enable) | Enable/disable DDoS Protection Plan on Virtual Network. | `bool` | `false` | no |
| <a name="input_ddos_protection_plan_name"></a> [ddos\_protection\_plan\_name](#input\_ddos\_protection\_plan\_name) | Specifies the name of the Network DDoS Protection Plan. Changing this forces a new resource to be created. | `string` | `""` | no |
| <a name="input_ddos_protection_plan_tags"></a> [ddos\_protection\_plan\_tags](#input\_ddos\_protection\_plan\_tags) | A mapping of tags to assign to the resource. | `map(string)` | `{}` | no |
| <a name="input_dns_servers"></a> [dns\_servers](#input\_dns\_servers) | List of IP addresses of DNS servers | `list(string)` | `null` | no |
| <a name="input_location"></a> [location](#input\_location) | The location of the virtual network resource group. | `string` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | The name of the virtual network. Changing this forces a new resource to be created. | `string` | n/a | yes |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | The name of the virtual network resource group. | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | A mapping of tags to assign to the resource. | `map(string)` | `{}` | no |
| <a name="input_vm_protection_enabled"></a> [vm\_protection\_enabled](#input\_vm\_protection\_enabled) | Whether to enable VM protection for all the subnets in this Virtual Network. | `bool` | `false` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_this"></a> [this](#output\_this) | The Virtual Network resource. |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
