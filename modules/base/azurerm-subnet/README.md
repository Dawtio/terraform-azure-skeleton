# terraform-azurerm-subnet

Manages a subnet. Subnets represent network segments within the IP space defined by the virtual network.

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
| [azurerm_subnet.this](https://registry.terraform.io/providers/hashicorp/azurerm/2.54.0/docs/resources/subnet) | resource |
| [azurerm_resource_group.this](https://registry.terraform.io/providers/hashicorp/azurerm/2.54.0/docs/data-sources/resource_group) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_as_address_prefixes"></a> [as\_address\_prefixes](#input\_as\_address\_prefixes) | The address prefixes to use for the subnet. | `list(string)` | n/a | yes |
| <a name="input_as_delegation"></a> [as\_delegation](#input\_as\_delegation) | Delegation object to configure the subnet | <pre>list(object({<br>    name = string<br>    service_delegation = object({<br>      name    = string<br>      actions = list(string)<br>    })<br>  }))</pre> | `null` | no |
| <a name="input_as_enforce_private_link_endpoint_network_policies"></a> [as\_enforce\_private\_link\_endpoint\_network\_policies](#input\_as\_enforce\_private\_link\_endpoint\_network\_policies) | Enable or Disable network policies for the private link endpoint on the subnet. | `bool` | `false` | no |
| <a name="input_as_enforce_private_link_service_network_policies"></a> [as\_enforce\_private\_link\_service\_network\_policies](#input\_as\_enforce\_private\_link\_service\_network\_policies) | Enable or Disable network policies for the private link service on the subnet. | `bool` | `false` | no |
| <a name="input_as_name"></a> [as\_name](#input\_as\_name) | The name of the subnet. Changing this forces a new resource to be created. | `string` | n/a | yes |
| <a name="input_as_service_endpoint_policy_ids"></a> [as\_service\_endpoint\_policy\_ids](#input\_as\_service\_endpoint\_policy\_ids) | The list of IDs of Service Endpoint Policies to associate with the subnet. | `list(string)` | `null` | no |
| <a name="input_as_service_endpoints"></a> [as\_service\_endpoints](#input\_as\_service\_endpoints) | The list of Service endpoints to associate with the subnet. | `list(string)` | `null` | no |
| <a name="input_as_virtual_network_name"></a> [as\_virtual\_network\_name](#input\_as\_virtual\_network\_name) | The name of the virtual network to which to attach the subnet. Changing this forces a new resource to be created. | `string` | n/a | yes |
| <a name="input_d_rg"></a> [d\_rg](#input\_d\_rg) | The Name of this Resource Group. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_as_address_prefixes"></a> [as\_address\_prefixes](#output\_as\_address\_prefixes) | The address prefixes for the subnet |
| <a name="output_as_id"></a> [as\_id](#output\_as\_id) | The subnet ID. |
| <a name="output_as_name"></a> [as\_name](#output\_as\_name) | The name of the subnet. |
| <a name="output_as_resource_group_name"></a> [as\_resource\_group\_name](#output\_as\_resource\_group\_name) | The name of the resource group in which the subnet is created in. |
| <a name="output_as_virtual_network_name"></a> [as\_virtual\_network\_name](#output\_as\_virtual\_network\_name) | The name of the virtual network in which the subnet is created in |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
