resource "azurerm_log_analytics_workspace" "this" {
  name                              = var.name
  location                          = var.location
  resource_group_name               = var.resource_group_name
  sku                               = var.sku
  retention_in_days                 = var.retention_in_days
  daily_quota_gb                    = var.sku == "Free" && (var.daily_quota_gb != "0.5" || var.daily_quota_gb > "0.5") ? "0.5" : var.daily_quota_gb
  internet_ingestion_enabled        = var.internet_ingestion_enabled
  internet_query_enabled            = var.internet_query_enabled
  reservation_capcity_in_gb_per_day = var.sku == "CapacityReservation" ? var.reservation_capcity_in_gb_per_day : null
  tags                              = var.tags
}
