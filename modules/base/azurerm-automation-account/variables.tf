variable "location" {
  description = "Specifies the supported Azure location where the resource exists."
  type        = string
}

variable "name" {
  description = "Specifies the name of the Automation Account."
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group in which the Automation Account is created."
  type        = string
}

variable "sku_name" {
  description = "Specifies the supported Azure location where the resource exists."
  type        = string

  validation {
    condition     = can(regex("^Basic$", var.sku_name))
    error_message = "The SKU name of the account - only Basic is supported at this time."
  }
}

variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(string)
  default = {
    Terraform = "true"
  }
}
