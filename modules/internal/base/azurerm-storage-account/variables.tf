variable "name" {
  description = "The name of the Storage Account."
  type        = string
}

variable "resource_group_name" {
  description = "The name of the Storage Account resource group."
  type        = string
}

variable "location" {
  description = "Specifies the supported Azure location where the resource exists."
  type        = string
}

variable "account_kind" {
  description = "Defines the Kind of account. Valid options are BlobStorage, BlockBlobStorage, FileStorage, Storage and StorageV2."
  type        = string
  default     = "StorageV2"

  validation {
    condition     = can(regex("^(BlobStorage|BlockBlobStorage|FileStorage|Storage|StorageV2)$", var.account_kind))
    error_message = "The variable account_kind must be one of `BlobStorage`, `BlockBlobStorage`, `FileStorage`, `Storage` or `StorageV2`."
  }
}

variable "account_tier" {
  description = "Defines the Tier to use for this storage account. Valid options are Standard and Premium. For BlockBlobStorage and FileStorage accounts only Premium is valid."
  type        = string
  default     = "Standard"

  validation {
    condition     = can(regex("^(Standard|Premium)$", var.account_tier))
    error_message = "The variable account_kind must be one of `Standard` or `Premium`."
  }
}

variable "account_replication_type" {
  description = "Defines the type of replication to use for this storage account. Valid options are LRS, GRS, RAGRS, ZRS, GZRS and RAGZRS."
  type        = string
  default     = "LRS"

  validation {
    condition     = can(regex("^(LRS|GRS|RAGRS|ZRS|GZRS|RAGZRS)$", var.account_replication_type))
    error_message = "The variable account_replication_type must be one of `LRS`, `GRS`, `RAGRS`, `ZRS`, `GZRS` or `RAGZRS`."
  }
}

variable "access_tier" {
  description = "Defines the access tier for BlobStorage, FileStorage and StorageV2 accounts. Valid options are Hot and Cool."
  type        = string
  default     = "Hot"

  validation {
    condition     = can(regex("^(Hot|Cool)$", var.access_tier))
    error_message = "The variable account_kind must be one of `Hot` or `Cool`."
  }
}

variable "enable_https_traffic_only" {
  description = "Boolean flag which forces HTTPS if enabled, see here for more information."
  type        = bool
  default     = true
}

variable "min_tls_version" {
  description = "The minimum supported TLS version for the storage account. Possible values are TLS1_0, TLS1_1, and TLS1_2."
  type        = string
  default     = "TLS1_2"

  validation {
    condition     = can(regex("^(TLS1_0|TLS1_1|TLS1_2)$", var.min_tls_version))
    error_message = "The variable account_kind must be one of `TLS1_0`, `TLS1_1` or `TLS1_2`."
  }
}

variable "allow_blob_public_access" {
  description = "Allow or disallow public access to all blobs or containers in the storage account."
  type        = bool
  default     = false
}

variable "shared_access_key_enabled" {
  description = "Indicates whether the storage account permits requests to be authorized with the account access key via Shared Key. If false, then all requests, including shared access signatures, must be authorized with Azure Active Directory (Azure AD)."
  type        = bool
  default     = true
}

variable "is_hns_enabled" {
  description = "Is Hierarchical Namespace enabled? This can be used with Azure Data Lake Storage Gen 2."
  type        = bool
  default     = false
}

variable "nfsv3_enabled" {
  description = "Is NFSv3 protocol enabled?"
  type        = bool
  default     = false
}

variable "large_file_share_enabled" {
  description = "Is Large File Share Enabled?"
  type        = bool
  default     = false
}

variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(string)
  default = {
    terraform : "true"
  }
}

variable "custom_domain_name" {
  description = "The Custom Domain Name to use for the Storage Account, which will be validated by Azure."
  type        = string
  default     = null
}
variable "custom_domain_use_subdomain" {
  description = "Should the Custom Domain Name be validated by using indirect CNAME validation?"
  type        = bool
  default     = false
}

variable "identity_type" {
  description = "Specifies the identity type of the Storage Account. Possible values are SystemAssigned, UserAssigned, SystemAssigned,UserAssigned (to enable both)."
  type        = string
  default     = null

  validation {
    condition     = var.identity_type == null || can(regex("^(SystemAssigned|UserAssigned|SystemAssigned,UserAssigned)$", var.identity_type))
    error_message = "The variable identity_type must be one of SystemAssigned, UserAssigned, SystemAssigned,UserAssigned (to enable both)."
  }
}
variable "identity_identies_ids" {
  description = "A list of IDs for User Assigned Managed Identity resources to be assigned."
  type        = list(string)
  default     = null
}

variable "blob_properties_cors" {
  description = "CORS block configuration for blob_properties."
  type = object({
    allowed_headers    = list(string)
    allowed_methods    = list(string)
    allowed_origins    = list(string)
    exposed_headers    = list(string)
    max_age_in_seconds = number
  })
  default = null

  validation {
    condition     = var.blob_properties_cors == null || can(regex("^(DELETE|GET|HEAD|MERGE|POST|OPTIONS|PUT|PATCH)$", var.blob_properties_cors.allowed_methods))
    error_message = "The parameters allowed_methods on variable blob_properties_cors must be one of `DELETE`, `GET`, `HEAD`, `MERGE`, `POST`, `OPTIONS`, `PUT` or `PATCH`."
  }
}

variable "blob_properties_delete_retention_policy_days" {
  description = "Specifies the number of days that the blob should be retained, between 1 and 365 days. "
  type        = number
  default     = 7
}

variable "blob_properties_versioning_enabled" {
  description = "Is versioning enabled?"
  type        = bool
  default     = false
}

variable "blob_properties_change_feed_enabled" {
  description = "Is the blob service properties for change feed events enabled?"
  type        = bool
  default     = false
}

variable "blob_properties_default_service_version" {
  description = "The API Version which should be used by default for requests to the Data Plane API if an incoming request doesn't specify an API Version."
  type        = string
  default     = "2020-06-12"
}

variable "blob_properties_last_access_time_enabled" {
  description = "Is the last access time based tracking enabled?"
  type        = bool
  default     = false
}

variable "blob_properties_container_delete_retention_policy_days" {
  description = "Specifies the number of days that the container should be retained, between 1 and 365 days."
  type        = number
  default     = 7
}

variable "routing_enabled" {
  description = "Is routing enabled?"
  type        = bool
  default     = false
}

variable "routing_publish_internet_endpoints" {
  description = "Should internet routing storage endpoints be published?"
  type        = bool
  default     = false
}

variable "routing_publish_microsoft_endpoints" {
  description = "Should microsoft routing storage endpoints be published?"
  type        = bool
  default     = false
}

variable "routing_choice" {
  description = "Specifies the kind of network routing opted by the user. Possible values are InternetRouting and MicrosoftRouting."
  type        = string
  default     = "MicrosoftRouting"

  validation {
    condition     = can(regex("^(InternetRouting|MicrosoftRouting)$", var.routing_choice))
    error_message = "The variable routing_choice must be one of `InternetRouting` or `MicrosoftRouting`."
  }
}

variable "static_website_enabled" {
  description = "Is storage account a static website?"
  type        = bool
  default     = false
}

variable "static_website_index_document" {
  description = "The webpage that Azure Storage serves for requests to the root of a website or any subfolder."
  type        = string
  default     = null
}

variable "static_website_error_404_document" {
  description = "The absolute path to a custom webpage that should be used when a request is made which does not correspond to an existing file."
  type        = string
  default     = null
}

variable "queue_properties_cors" {
  description = "CORS block configuration for queue_properties."
  type = object({
    allowed_headers    = list(string)
    allowed_methods    = list(string)
    allowed_origins    = list(string)
    exposed_headers    = list(string)
    max_age_in_seconds = number
  })
  default = null
}

variable "queue_properties_logging" {
  description = "Logging block configuration for queue_properties."
  type = object({
    delete                = bool
    read                  = bool
    version               = string
    write                 = bool
    retention_policy_days = number
  })
  default = null
}

variable "queue_properties_minute_metrics" {
  description = "Minute metrics block configuration for queue_properties."
  type = object({
    enabled               = bool
    version               = string
    include_apis          = string
    retention_policy_days = number
  })
  default = null
}

variable "queue_properties_hour_metrics" {
  description = "Hour metrics block configuration for queue_properties."
  type = object({
    enabled               = bool
    version               = string
    include_apis          = string
    retention_policy_days = number
  })
  default = null
}

variable "azure_files_authentication_directory_type" {
  description = "Specifies the directory service used. Possible values are AADDS and AD."
  type        = string
  default     = null

  validation {
    condition     = var.azure_files_authentication_directory_type == null || can(regex("^(AADDS|AD)$", var.azure_files_authentication_directory_type))
    error_message = "The variable azure_files_authentication_directory_type must be one of `AADDS` or `AD`."
  }
}

variable "azure_files_authentication_active_directory_enabled" {
  description = "Is active directory configuration present?"
  type        = bool
  default     = false
}

variable "azure_files_authentication_active_directory_storage_sid" {
  description = "Specifies the security identifier (SID) for Azure Storage."
  type        = string
  default     = null
}

variable "azure_files_authentication_active_directory_domain_guid" {
  description = "Specifies the domain GUID."
  type        = string
  default     = null
}

variable "azure_files_authentication_active_directory_domain_name" {
  description = "Specifies the primary domain that the AD DNS server is authoritative for."
  type        = string
  default     = null
}

variable "azure_files_authentication_active_directory_domain_sid" {
  description = "Specifies the security identifier (SID)."
  type        = string
  default     = null
}

variable "azure_files_authentication_active_directory_forest_name" {
  description = "Specifies the Active Directory forest."
  type        = string
  default     = null
}

variable "azure_files_authentication_active_directory_netbios_domain_name" {
  description = "Specifies the NetBIOS domain name."
  type        = string
  default     = null
}

variable "network_rules_default_action" {
  description = "Specifies the default action of allow or deny when no other rules match. Valid options are Deny or Allow."
  type        = string
  default     = "Deny"

  validation {
    condition     = can(regex("^(Deny|Allow)$", var.network_rules_default_action))
    error_message = "The variable network_rules_default_action must be one of `Deny` or `Allow`."
  }
}

variable "network_rules_bypass" {
  description = " Specifies whether traffic is bypassed for Logging/Metrics/AzureServices. Valid options are any combination of Logging, Metrics, AzureServices, or None."
  type        = list(string)
  default     = ["AzureServices"]

  validation {
    condition     = var.network_rules_bypass == null || can(contains(var.network_rules_bypass, "Logging") || contains(var.network_rules_bypass, "Metrics") || contains(var.network_rules_bypass, "AzureServices") || contains(var.network_rules_bypass, "None"))
    error_message = "The variable network_rules_bypass must be one of `Logging`, `Metrics`, `AzureServices` or `None`."
  }
}

variable "network_rules_ip_rules" {
  description = "List of public IP or IP ranges in CIDR Format. Only IPV4 addresses are allowed."
  type        = list(string)
  default     = null
}

variable "network_rules_virtual_network_subnet_ids" {
  description = "A list of resource ids for subnets."
  type        = list(string)
  default     = null
}

variable "network_rules_private_link_access_endpoint" {
  description = "One or More private_link_access block as defined below."
  type = list(object({
    endpoint_resource_id = string
    endpoint_tenant_id   = string
  }))
  default = null
}
