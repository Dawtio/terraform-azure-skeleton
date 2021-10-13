variable "name" {
  description = "The name of application insights for the Function App."
  type        = string
}

variable "resource_group_name" {
  description = "The name of the  application insights resource group."
  type        = string
}

variable "resource_group_location" {
  description = "The location of the  application insights resource group."
  type        = string
}

variable "application_type" {
  description = "Specifies the type of Application Insights to create. Valid values are ios for iOS, java for Java web, MobileCenter for App Center, Node.JS for Node.js, other for General, phone for Windows Phone, store for Windows Store and web for ASP.NET. Please note these values are case sensitive; unmatched values are treated as ASP.NET by Azure. Changing this forces a new resource to be created."
  type        = string

  validation {
    condition     = can(regex("^(ios|java|MobileCenter|Node.JS|other|phone|store|web)$", var.application_type))
    error_message = "The variable application_type must be one of ios, java, MobileCenter, Node.JS, other, phone, store or web."
  }
}

variable "daily_data_cap_in_gb" {
  description = "Specifies the Application Insights component daily data volume cap in GB."
  type        = string
  default     = null
}

variable "daily_data_cap_notifications_disabled" {
  description = "Specifies if a notification email will be send when the daily data volume cap is met."
  type        = string
  default     = null
}

variable "retention_in_days" {
  description = "Specifies the retention period in days. Possible values are 30, 60, 90, 120, 180, 270, 365, 550 or 730."
  type        = string
  default     = "90"

  validation {
    condition     = can(regex("^(30|60|90|120|180|270|365|550|730)$", var.retention_in_days))
    error_message = "The variable retention_in_days must be one of 30, 60, 90, 120, 180, 270, 365, 550 or 730."
  }
}

variable "sampling_percentage" {
  description = "Specifies the percentage of the data produced by the monitored application that is sampled for Application Insights telemetry."
  type        = string
  default     = null
}

variable "disable_ip_masking" {
  description = "By default the real client ip is masked as 0.0.0.0 in the logs. Use this argument to disable masking and log the real client ip. Defaults to false."
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
