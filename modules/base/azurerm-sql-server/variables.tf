variable "administrator_login" {
  description = "The administrator login name for the new server."
  type        = string
}

variable "administrator_login_password" {
  description = "The password associated with the administrator_login user."
  type        = string
  sensitive   = true
}

variable "connection_policy" {
  description = "The connection policy the server will use."
  type        = string
  default     = "Default"

  validation {
    condition     = can(regex("^(Default|Proxy|Redirect)$", var.connection_policy))
    error_message = "Possible values are Default, Proxy, and Redirect."
  }
}

variable "extended_auditing_policies" {
  description = "A ipsec_policy block which is documented below. Only a single policy can be defined for a connection."
  type = list(object({
    storage_endpoint                        = string
    storage_account_access_key              = string
    storage_account_access_key_is_secondary = bool
    retention_in_days                       = number
  }))
  default = null
}

variable "identities" {
  description = "Specifies the identity type of the Microsoft SQL Server. At this time the only allowed value is SystemAssigned."
  type = list(object({
    type = string
  }))
  default = null
}

variable "location" {
  description = "Specifies the supported Azure location where the resource exists."
  type        = string
}

variable "name" {
  description = "The name of the Microsoft SQL Server."
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group in which to create the Microsoft SQL Server."
  type        = string
}

variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(string)
  default = {
    Terraform = "true"
  }
}

variable "threat_detection_policies" {
  description = "Threat detection policy configuration."
  type = list(object({
    state                      = string
    disabled_alerts            = string
    email_account_admins       = list(string)
    email_addresses            = list(string)
    retention_days             = number
    storage_account_access_key = string
    storage_endpoint           = string
  }))
  default = null
}

variable "sql_version" {
  description = "The version for the new server."
  type        = string

  validation {
    condition     = can(regex("^(2.0|12.0)$", var.sql_version))
    error_message = "Valid values are: 2.0 (for v11 server) and 12.0 (for v12 server)."
  }
}