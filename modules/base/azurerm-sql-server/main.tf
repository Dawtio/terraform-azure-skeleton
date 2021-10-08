resource "azurerm_sql_server" "this" {
  name                         = var.name
  resource_group_name          = var.resource_group_name
  location                     = var.location
  version                      = var.sql_version
  administrator_login          = var.administrator_login
  administrator_login_password = var.administrator_login_password

  connection_policy = var.connection_policy

  dynamic "identity" {
    for_each = var.identities != null ? var.identities : []
    content {
      type = identity.value["type"]
    }
  }

  dynamic "extended_auditing_policy" {
    for_each = var.extended_auditing_policies != null ? var.extended_auditing_policies : []
    content {
      storage_endpoint                        = extended_auditing_policy.value["storage_endpoint"]
      storage_account_access_key              = extended_auditing_policy.value["storage_account_access_key"]
      storage_account_access_key_is_secondary = extended_auditing_policy.value["storage_account_access_key_is_secondary"]
      retention_in_days                       = extended_auditing_policy.value["retention_in_days"]
    }
  }

  dynamic "threat_detection_policy" {
    for_each = var.threat_detection_policies != null ? var.threat_detection_policies : []
    content {
      state                      = threat_detection_policy.value["state"]
      disabled_alerts            = threat_detection_policy.value["disabled_alerts"]
      email_account_admins       = threat_detection_policy.value["email_account_admins"]
      email_addresses            = threat_detection_policy.value["email_addresses"]
      retention_days             = threat_detection_policy.value["retention_days"]
      storage_account_access_key = threat_detection_policy.value["storage_account_access_key"]
      storage_endpoint           = threat_detection_policy.value["storage_endpoint "]
    }
  }

  tags = var.tags
}
