# terraform-azurerm-resource-group

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

> Create a new resource group.

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >=1.0.3 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | =2.77.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | =2.77.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_resource_group.this](https://registry.terraform.io/providers/hashicorp/azurerm/2.77.0/docs/resources/resource_group) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_location"></a> [location](#input\_location) | The Azure Region where the Resource Group should exist. | `string` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | The Name which should be used for this Resource Group. | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | A mapping of tags which should be assigned to the Resource Group. | `map(string)` | <pre>{<br>  "foo": "bar",<br>  "terraform": "true"<br>}</pre> | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_this"></a> [this](#output\_this) | The Resource Group resource. |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
