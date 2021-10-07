# terraform-azurerm-subnet

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

> Manages a subnet. Subnets represent network segments within the IP space defined by the virtual network.

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
| [azurerm_subnet.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/subnet) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_address_prefixes"></a> [address\_prefixes](#input\_address\_prefixes) | The address prefixes to use for the subnet. | `list(string)` | n/a | yes |
| <a name="input_delegation"></a> [delegation](#input\_delegation) | Delegation object to configure the subnet | <pre>list(object({<br>    name = string<br>    service_delegation = object({<br>      name    = string<br>      actions = list(string)<br>    })<br>  }))</pre> | `null` | no |
| <a name="input_enforce_private_link_endpoint_network_policies"></a> [enforce\_private\_link\_endpoint\_network\_policies](#input\_enforce\_private\_link\_endpoint\_network\_policies) | Enable or Disable network policies for the private link endpoint on the subnet. | `bool` | `false` | no |
| <a name="input_enforce_private_link_service_network_policies"></a> [enforce\_private\_link\_service\_network\_policies](#input\_enforce\_private\_link\_service\_network\_policies) | Enable or Disable network policies for the private link service on the subnet. | `bool` | `false` | no |
| <a name="input_name"></a> [name](#input\_name) | The name of the subnet. Changing this forces a new resource to be created. | `string` | n/a | yes |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | The name of the virtual network resource group. | `string` | n/a | yes |
| <a name="input_service_endpoint_policy_ids"></a> [service\_endpoint\_policy\_ids](#input\_service\_endpoint\_policy\_ids) | The list of IDs of Service Endpoint Policies to associate with the subnet. | `list(string)` | `null` | no |
| <a name="input_service_endpoints"></a> [service\_endpoints](#input\_service\_endpoints) | The list of Service endpoints to associate with the subnet. | `list(string)` | `null` | no |
| <a name="input_virtual_network_name"></a> [virtual\_network\_name](#input\_virtual\_network\_name) | The name of the virtual network to which to attach the subnet. Changing this forces a new resource to be created. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_this"></a> [this](#output\_this) | The Subnet resource. |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
