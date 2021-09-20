resource "azurerm_storage_account" "this" {
  name                      = var.name
  resource_group_name       = var.resource_group_name
  location                  = var.location
  account_kind              = var.account_kind
  account_tier              = var.account_kind == "BlockBlobStorage" || var.account_kind == "FileStorage" ? "Premium" : var.account_tier
  account_replication_type  = var.account_replication_type
  access_tier               = var.access_tier
  enable_https_traffic_only = var.enable_https_traffic_only
  min_tls_version           = var.min_tls_version
  allow_blob_public_access  = var.allow_blob_public_access
  shared_access_key_enabled = var.shared_access_key_enabled
  is_hns_enabled            = var.account_tier == "Standard" || var.account_tier == "Premium" && var.account_kind == "BlockBlobStorage" ? var.is_hns_enabled : false
  nfsv3_enabled             = var.account_tier == "Standard" && var.account_kind == "StorageV2" || var.account_tier == "Premium" && var.account_kind == "BlockBlobStorage" ? var.nfsv3_enabled : false
  dynamic "custom_domain" {
    for_each = var.custom_domain_name != null ? [1] : []
    content {
      name          = var.custom_domain_name
      use_subdomain = var.custom_domain_use_subdomain
    }
  }
  dynamic "identity" {
    for_each = var.identity_type != null ? [1] : []
    content {
      type         = var.identity_type
      identity_ids = var.identity_identies_ids
    }
  }
  blob_properties {
    dynamic "cors_rule" {
      for_each = var.blob_properties_cors != null ? [1] : []
      content {
        allowed_headers    = var.blob_properties_cors.allowed_headers
        allowed_methods    = var.blob_properties_cors.allowed_methods
        allowed_origins    = var.blob_properties_cors.allowed_origins
        exposed_headers    = var.blob_properties_cors.exposed_headers
        max_age_in_seconds = var.blob_properties_cors.max_age_in_seconds
      }
    }
    delete_retention_policy {
      days = var.blob_properties_delete_retention_policy_days
    }
    versioning_enabled       = var.blob_properties_versioning_enabled
    change_feed_enabled      = var.blob_properties_change_feed_enabled
    default_service_version  = var.blob_properties_default_service_version
    last_access_time_enabled = var.blob_properties_last_access_time_enabled
    container_delete_retention_policy {
      days = var.blob_properties_container_delete_retention_policy_days
    }
  }
  dynamic "queue_properties" {
    for_each = []
    content {
      dynamic "cors_rule" {
        for_each = var.queue_properties_cors != null ? [1] : []
        content {
          allowed_headers    = var.queue_properties_cors.allowed_headers
          allowed_methods    = var.queue_properties_cors.allowed_methods
          allowed_origins    = var.queue_properties_cors.allowed_origins
          exposed_headers    = var.queue_properties_cors.exposed_headers
          max_age_in_seconds = var.queue_properties_cors.max_age_in_seconds
        }
      }
      dynamic "logging" {
        for_each = var.queue_properties_logging != null ? [1] : []
        content {
          delete                = var.queue_properties_logging.delete
          read                  = var.queue_properties_logging.read
          version               = var.queue_properties_logging.version
          write                 = var.queue_properties_logging.write
          retention_policy_days = var.queue_properties_logging.retention_policy_days
        }
      }
      dynamic "minute_metrics" {
        for_each = var.queue_properties_minute_metrics != null ? [1] : []
        content {
          enabled               = var.queue_properties_minute_metrics.enabled
          version               = var.queue_properties_minute_metrics.version
          include_apis          = var.queue_properties_minute_metrics.include_apis
          retention_policy_days = var.queue_properties_minute_metrics.retention_policy_days
        }
      }
      dynamic "hour_metrics" {
        for_each = var.queue_properties_hour_metrics != null ? [1] : []
        content {
          enabled               = var.queue_properties_hour_metrics.enabled
          version               = var.queue_properties_hour_metrics.version
          include_apis          = var.queue_properties_hour_metrics.include_apis
          retention_policy_days = var.queue_properties_hour_metrics.retention_policy_days
        }
      }
    }
  }
  dynamic "static_website" {
    for_each = var.static_website_enabled == false ? [] : [1]
    content {
      index_document     = var.static_website_index_document
      error_404_document = var.static_website_error_404_document
    }
  }
  dynamic "network_rules" {
    for_each = var.network_rules_default_action != null ? [1] : []
    content {
      default_action             = var.network_rules_default_action
      bypass                     = var.network_rules_bypass
      ip_rules                   = var.network_rules_ip_rules
      virtual_network_subnet_ids = var.network_rules_virtual_network_subnet_ids
      dynamic "private_link_access" { # multiple here
        for_each = var.network_rules_private_link_access_endpoint != null ? var.network_rules_private_link_access_endpoint : []
        content {
          endpoint_resource_id = private_link_access.value.endpoint_resource_id
          endpoint_tenant_id   = private_link_access.value.endpoint_tenant_id
        }
      }
    }
  }
  large_file_share_enabled = var.large_file_share_enabled
  dynamic "azure_files_authentication" {
    for_each = var.azure_files_authentication_directory_type != null ? [1] : []
    content {
      directory_type = var.azure_files_authentication_directory_type
      dynamic "active_directory" {
        for_each = var.azure_files_authentication_active_directory_enabled == false ? [] : [1]
        content {
          storage_sid         = var.azure_files_authentication_active_directory_storage_sid
          domain_guid         = var.azure_files_authentication_active_directory_domain_guid
          domain_name         = var.azure_files_authentication_active_directory_domain_name
          domain_sid          = var.azure_files_authentication_active_directory_domain_sid
          forest_name         = var.azure_files_authentication_active_directory_forest_name
          netbios_domain_name = var.azure_files_authentication_active_directory_netbios_domain_name
        }
      }
    }
  }
  dynamic "routing" {
    for_each = var.routing_enabled == false ? [] : [1]
    content {
      publish_internet_endpoints  = var.routing_publish_internet_endpoints
      publish_microsoft_endpoints = var.routing_publish_microsoft_endpoints
      choice                      = var.routing_choice
    }
  }
  tags = var.tags
}
