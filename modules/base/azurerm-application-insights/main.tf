resource "azurerm_application_insights" "this" {
  application_type                      = var.application_type
  daily_data_cap_in_gb                  = var.daily_data_cap_in_gb
  daily_data_cap_notifications_disabled = var.daily_data_cap_notifications_disabled
  disable_ip_masking                    = var.disable_ip_masking
  location                              = var.resource_group_location
  name                                  = var.name
  resource_group_name                   = var.resource_group_name
  retention_in_days                     = var.retention_in_days
  sampling_percentage                   = var.sampling_percentage
  tags                                  = var.tags
}
