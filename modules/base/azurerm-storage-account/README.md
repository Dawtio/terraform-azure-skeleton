# terraform-azurerm-storage-account

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

> Create a new storage account

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
| [azurerm_storage_account.this](https://registry.terraform.io/providers/hashicorp/azurerm/2.77.0/docs/resources/storage_account) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_access_tier"></a> [access\_tier](#input\_access\_tier) | Defines the access tier for BlobStorage, FileStorage and StorageV2 accounts. Valid options are Hot and Cool. | `string` | `"Hot"` | no |
| <a name="input_account_kind"></a> [account\_kind](#input\_account\_kind) | Defines the Kind of account. Valid options are BlobStorage, BlockBlobStorage, FileStorage, Storage and StorageV2. | `string` | `"StorageV2"` | no |
| <a name="input_account_replication_type"></a> [account\_replication\_type](#input\_account\_replication\_type) | Defines the type of replication to use for this storage account. Valid options are LRS, GRS, RAGRS, ZRS, GZRS and RAGZRS. | `string` | `"LRS"` | no |
| <a name="input_account_tier"></a> [account\_tier](#input\_account\_tier) | Defines the Tier to use for this storage account. Valid options are Standard and Premium. For BlockBlobStorage and FileStorage accounts only Premium is valid. | `string` | `"Standard"` | no |
| <a name="input_allow_blob_public_access"></a> [allow\_blob\_public\_access](#input\_allow\_blob\_public\_access) | Allow or disallow public access to all blobs or containers in the storage account. | `bool` | `false` | no |
| <a name="input_azure_files_authentication_active_directory_domain_guid"></a> [azure\_files\_authentication\_active\_directory\_domain\_guid](#input\_azure\_files\_authentication\_active\_directory\_domain\_guid) | Specifies the domain GUID. | `string` | `null` | no |
| <a name="input_azure_files_authentication_active_directory_domain_name"></a> [azure\_files\_authentication\_active\_directory\_domain\_name](#input\_azure\_files\_authentication\_active\_directory\_domain\_name) | Specifies the primary domain that the AD DNS server is authoritative for. | `string` | `null` | no |
| <a name="input_azure_files_authentication_active_directory_domain_sid"></a> [azure\_files\_authentication\_active\_directory\_domain\_sid](#input\_azure\_files\_authentication\_active\_directory\_domain\_sid) | Specifies the security identifier (SID). | `string` | `null` | no |
| <a name="input_azure_files_authentication_active_directory_enabled"></a> [azure\_files\_authentication\_active\_directory\_enabled](#input\_azure\_files\_authentication\_active\_directory\_enabled) | Is active directory configuration present? | `bool` | `false` | no |
| <a name="input_azure_files_authentication_active_directory_forest_name"></a> [azure\_files\_authentication\_active\_directory\_forest\_name](#input\_azure\_files\_authentication\_active\_directory\_forest\_name) | Specifies the Active Directory forest. | `string` | `null` | no |
| <a name="input_azure_files_authentication_active_directory_netbios_domain_name"></a> [azure\_files\_authentication\_active\_directory\_netbios\_domain\_name](#input\_azure\_files\_authentication\_active\_directory\_netbios\_domain\_name) | Specifies the NetBIOS domain name. | `string` | `null` | no |
| <a name="input_azure_files_authentication_active_directory_storage_sid"></a> [azure\_files\_authentication\_active\_directory\_storage\_sid](#input\_azure\_files\_authentication\_active\_directory\_storage\_sid) | Specifies the security identifier (SID) for Azure Storage. | `string` | `null` | no |
| <a name="input_azure_files_authentication_directory_type"></a> [azure\_files\_authentication\_directory\_type](#input\_azure\_files\_authentication\_directory\_type) | Specifies the directory service used. Possible values are AADDS and AD. | `string` | `null` | no |
| <a name="input_blob_properties_change_feed_enabled"></a> [blob\_properties\_change\_feed\_enabled](#input\_blob\_properties\_change\_feed\_enabled) | Is the blob service properties for change feed events enabled? | `bool` | `false` | no |
| <a name="input_blob_properties_container_delete_retention_policy_days"></a> [blob\_properties\_container\_delete\_retention\_policy\_days](#input\_blob\_properties\_container\_delete\_retention\_policy\_days) | Specifies the number of days that the container should be retained, between 1 and 365 days. | `number` | `7` | no |
| <a name="input_blob_properties_cors"></a> [blob\_properties\_cors](#input\_blob\_properties\_cors) | CORS block configuration for blob\_properties. | <pre>object({<br>    allowed_headers    = list(string)<br>    allowed_methods    = list(string)<br>    allowed_origins    = list(string)<br>    exposed_headers    = list(string)<br>    max_age_in_seconds = number<br>  })</pre> | `null` | no |
| <a name="input_blob_properties_default_service_version"></a> [blob\_properties\_default\_service\_version](#input\_blob\_properties\_default\_service\_version) | The API Version which should be used by default for requests to the Data Plane API if an incoming request doesn't specify an API Version. | `string` | `"2020-06-12"` | no |
| <a name="input_blob_properties_delete_retention_policy_days"></a> [blob\_properties\_delete\_retention\_policy\_days](#input\_blob\_properties\_delete\_retention\_policy\_days) | Specifies the number of days that the blob should be retained, between 1 and 365 days. | `number` | `7` | no |
| <a name="input_blob_properties_last_access_time_enabled"></a> [blob\_properties\_last\_access\_time\_enabled](#input\_blob\_properties\_last\_access\_time\_enabled) | Is the last access time based tracking enabled? | `bool` | `false` | no |
| <a name="input_blob_properties_versioning_enabled"></a> [blob\_properties\_versioning\_enabled](#input\_blob\_properties\_versioning\_enabled) | Is versioning enabled? | `bool` | `false` | no |
| <a name="input_custom_domain_name"></a> [custom\_domain\_name](#input\_custom\_domain\_name) | The Custom Domain Name to use for the Storage Account, which will be validated by Azure. | `string` | `null` | no |
| <a name="input_custom_domain_use_subdomain"></a> [custom\_domain\_use\_subdomain](#input\_custom\_domain\_use\_subdomain) | Should the Custom Domain Name be validated by using indirect CNAME validation? | `bool` | `false` | no |
| <a name="input_enable_https_traffic_only"></a> [enable\_https\_traffic\_only](#input\_enable\_https\_traffic\_only) | Boolean flag which forces HTTPS if enabled, see here for more information. | `bool` | `true` | no |
| <a name="input_identity_identies_ids"></a> [identity\_identies\_ids](#input\_identity\_identies\_ids) | A list of IDs for User Assigned Managed Identity resources to be assigned. | `list(string)` | `null` | no |
| <a name="input_identity_type"></a> [identity\_type](#input\_identity\_type) | Specifies the identity type of the Storage Account. Possible values are SystemAssigned, UserAssigned, SystemAssigned,UserAssigned (to enable both). | `string` | `null` | no |
| <a name="input_is_hns_enabled"></a> [is\_hns\_enabled](#input\_is\_hns\_enabled) | Is Hierarchical Namespace enabled? This can be used with Azure Data Lake Storage Gen 2. | `bool` | `false` | no |
| <a name="input_large_file_share_enabled"></a> [large\_file\_share\_enabled](#input\_large\_file\_share\_enabled) | Is Large File Share Enabled? | `bool` | `false` | no |
| <a name="input_location"></a> [location](#input\_location) | Specifies the supported Azure location where the resource exists. | `string` | n/a | yes |
| <a name="input_min_tls_version"></a> [min\_tls\_version](#input\_min\_tls\_version) | The minimum supported TLS version for the storage account. Possible values are TLS1\_0, TLS1\_1, and TLS1\_2. | `string` | `"TLS1_2"` | no |
| <a name="input_name"></a> [name](#input\_name) | The name of the Storage Account. | `string` | n/a | yes |
| <a name="input_network_rules_bypass"></a> [network\_rules\_bypass](#input\_network\_rules\_bypass) | Specifies whether traffic is bypassed for Logging/Metrics/AzureServices. Valid options are any combination of Logging, Metrics, AzureServices, or None. | `list(string)` | <pre>[<br>  "AzureServices"<br>]</pre> | no |
| <a name="input_network_rules_default_action"></a> [network\_rules\_default\_action](#input\_network\_rules\_default\_action) | Specifies the default action of allow or deny when no other rules match. Valid options are Deny or Allow. | `string` | `"Deny"` | no |
| <a name="input_network_rules_ip_rules"></a> [network\_rules\_ip\_rules](#input\_network\_rules\_ip\_rules) | List of public IP or IP ranges in CIDR Format. Only IPV4 addresses are allowed. | `list(string)` | `null` | no |
| <a name="input_network_rules_private_link_access_endpoint"></a> [network\_rules\_private\_link\_access\_endpoint](#input\_network\_rules\_private\_link\_access\_endpoint) | One or More private\_link\_access block as defined below. | <pre>list(object({<br>    endpoint_resource_id = string<br>    endpoint_tenant_id   = string<br>  }))</pre> | `null` | no |
| <a name="input_network_rules_virtual_network_subnet_ids"></a> [network\_rules\_virtual\_network\_subnet\_ids](#input\_network\_rules\_virtual\_network\_subnet\_ids) | A list of resource ids for subnets. | `list(string)` | `null` | no |
| <a name="input_nfsv3_enabled"></a> [nfsv3\_enabled](#input\_nfsv3\_enabled) | Is NFSv3 protocol enabled? | `bool` | `false` | no |
| <a name="input_queue_properties_cors"></a> [queue\_properties\_cors](#input\_queue\_properties\_cors) | CORS block configuration for queue\_properties. | <pre>object({<br>    allowed_headers    = list(string)<br>    allowed_methods    = list(string)<br>    allowed_origins    = list(string)<br>    exposed_headers    = list(string)<br>    max_age_in_seconds = number<br>  })</pre> | `null` | no |
| <a name="input_queue_properties_hour_metrics"></a> [queue\_properties\_hour\_metrics](#input\_queue\_properties\_hour\_metrics) | Hour metrics block configuration for queue\_properties. | <pre>object({<br>    enabled               = bool<br>    version               = string<br>    include_apis          = string<br>    retention_policy_days = number<br>  })</pre> | `null` | no |
| <a name="input_queue_properties_logging"></a> [queue\_properties\_logging](#input\_queue\_properties\_logging) | Logging block configuration for queue\_properties. | <pre>object({<br>    delete                = bool<br>    read                  = bool<br>    version               = string<br>    write                 = bool<br>    retention_policy_days = number<br>  })</pre> | `null` | no |
| <a name="input_queue_properties_minute_metrics"></a> [queue\_properties\_minute\_metrics](#input\_queue\_properties\_minute\_metrics) | Minute metrics block configuration for queue\_properties. | <pre>object({<br>    enabled               = bool<br>    version               = string<br>    include_apis          = string<br>    retention_policy_days = number<br>  })</pre> | `null` | no |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | The name of the Storage Account resource group. | `string` | n/a | yes |
| <a name="input_routing_choice"></a> [routing\_choice](#input\_routing\_choice) | Specifies the kind of network routing opted by the user. Possible values are InternetRouting and MicrosoftRouting. | `string` | `"MicrosoftRouting"` | no |
| <a name="input_routing_enabled"></a> [routing\_enabled](#input\_routing\_enabled) | Is routing enabled? | `bool` | `false` | no |
| <a name="input_routing_publish_internet_endpoints"></a> [routing\_publish\_internet\_endpoints](#input\_routing\_publish\_internet\_endpoints) | Should internet routing storage endpoints be published? | `bool` | `false` | no |
| <a name="input_routing_publish_microsoft_endpoints"></a> [routing\_publish\_microsoft\_endpoints](#input\_routing\_publish\_microsoft\_endpoints) | Should microsoft routing storage endpoints be published? | `bool` | `false` | no |
| <a name="input_shared_access_key_enabled"></a> [shared\_access\_key\_enabled](#input\_shared\_access\_key\_enabled) | Indicates whether the storage account permits requests to be authorized with the account access key via Shared Key. If false, then all requests, including shared access signatures, must be authorized with Azure Active Directory (Azure AD). | `bool` | `true` | no |
| <a name="input_static_website_enabled"></a> [static\_website\_enabled](#input\_static\_website\_enabled) | Is storage account a static website? | `bool` | `false` | no |
| <a name="input_static_website_error_404_document"></a> [static\_website\_error\_404\_document](#input\_static\_website\_error\_404\_document) | The absolute path to a custom webpage that should be used when a request is made which does not correspond to an existing file. | `string` | `null` | no |
| <a name="input_static_website_index_document"></a> [static\_website\_index\_document](#input\_static\_website\_index\_document) | The webpage that Azure Storage serves for requests to the root of a website or any subfolder. | `string` | `null` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | A mapping of tags to assign to the resource. | `map(string)` | <pre>{<br>  "terraform": "true"<br>}</pre> | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_this"></a> [this](#output\_this) | The Storage Account resource. |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
