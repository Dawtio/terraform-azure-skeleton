# terraform-azurerm-application-insights

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

> Create a new Application Insights.

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >=1.0.3 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | >=2.79.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | 2.80.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_application_insights.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/application_insights) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_application_type"></a> [application\_type](#input\_application\_type) | Specifies the type of Application Insights to create. Valid values are ios for iOS, java for Java web, MobileCenter for App Center, Node.JS for Node.js, other for General, phone for Windows Phone, store for Windows Store and web for ASP.NET. Please note these values are case sensitive; unmatched values are treated as ASP.NET by Azure. Changing this forces a new resource to be created. | `string` | n/a | yes |
| <a name="input_daily_data_cap_in_gb"></a> [daily\_data\_cap\_in\_gb](#input\_daily\_data\_cap\_in\_gb) | Specifies the Application Insights component daily data volume cap in GB. | `string` | `null` | no |
| <a name="input_daily_data_cap_notifications_disabled"></a> [daily\_data\_cap\_notifications\_disabled](#input\_daily\_data\_cap\_notifications\_disabled) | Specifies if a notification email will be send when the daily data volume cap is met. | `string` | `null` | no |
| <a name="input_disable_ip_masking"></a> [disable\_ip\_masking](#input\_disable\_ip\_masking) | By default the real client ip is masked as 0.0.0.0 in the logs. Use this argument to disable masking and log the real client ip. Defaults to false. | `bool` | `false` | no |
| <a name="input_name"></a> [name](#input\_name) | The name of application insights for the Function App. | `string` | n/a | yes |
| <a name="input_resource_group_location"></a> [resource\_group\_location](#input\_resource\_group\_location) | The location of the  application insights resource group. | `string` | n/a | yes |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | The name of the  application insights resource group. | `string` | n/a | yes |
| <a name="input_retention_in_days"></a> [retention\_in\_days](#input\_retention\_in\_days) | Specifies the retention period in days. Possible values are 30, 60, 90, 120, 180, 270, 365, 550 or 730. | `string` | `"90"` | no |
| <a name="input_sampling_percentage"></a> [sampling\_percentage](#input\_sampling\_percentage) | Specifies the percentage of the data produced by the monitored application that is sampled for Application Insights telemetry. | `string` | `null` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | A mapping of tags to assign to the resource. | `map(string)` | <pre>{<br>  "terraform": "true"<br>}</pre> | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_this"></a> [this](#output\_this) | The Application Insights resource. |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
