variable "name" {
  description = "Specifies the name of the Log Analytics Workspace."
  type        = string

  validation {
    condition     = length(var.name) > 4 && length(var.name) < 64 && can(regex("^[^\\-][a-zA-Z0-9\\-]*[^\\-]$", var.name))
    error_message = "Workspace name should include 4-63 letters, digits or '-'. The '-' shouldn't be the first or the last symbol."
  }
}

variable "location" {
  description = "Specifies the supported Azure location where the resource exists."
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group in which the Log Analytics workspace is created."
  type        = string
}

variable "sku" {
  description = "Specifies the Sku of the Log Analytics Workspace."
  type        = string
  default     = "PerGB2018"

  validation {
    condition     = can(regex("^(Free|PerNode|Premium|Standard|Standalone|Unlimited|CapacityReservation|PerGB2018)$", var.sku))
    error_message = "Possible values are Free, PerNode, Premium, Standard, Standalone, Unlimited, CapacityReservation, and PerGB2018."
  }
}

variable "retention_in_days" {
  description = "The workspace data retention in days."
  type        = number
  default     = null

  validation {
    condition     = var.retention_in_days == null || can(var.retention_in_days == 7 || var.retention_in_days >= 30 && var.retention_in_days <= 730)
    error_message = "Possible values are either 7 (Free Tier only) or range between 30 and 730."
  }
}

variable "daily_quota_gb" {
  description = "The workspace daily quota for ingestion in GB."
  type        = string
  default     = "-1"
}

variable "internet_ingestion_enabled" {
  description = "Should the Log Analytics Workflow support ingestion over the Public Internet?"
  type        = bool
  default     = true
}

variable "internet_query_enabled" {
  description = "Should the Log Analytics Workflow support querying over the Public Internet?"
  type        = bool
  default     = true
}

variable "reservation_capcity_in_gb_per_day" {
  description = "The capacity reservation level in GB for this workspace."
  type        = number
  default     = null

  validation {
    condition     = var.reservation_capcity_in_gb_per_day == null || can(var.reservation_capcity_in_gb_per_day >= 100 && var.reservation_capcity_in_gb_per_day <= 5000 && var.reservation_capcity_in_gb_per_day % 100 == 0)
    error_message = "Must be in increments of 100 between 100 and 5000."
  }
}

variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(string)
  default = {
    terraform = "true"
  }
}
