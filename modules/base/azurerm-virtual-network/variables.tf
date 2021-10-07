variable "ddos_protection_plan_name" {
  description = "Specifies the name of the Network DDoS Protection Plan. Changing this forces a new resource to be created."
  type        = string
  default     = ""
}

variable "ddos_protection_plan_tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(string)
  default     = {}
}

variable "name" {
  description = "The name of the virtual network. Changing this forces a new resource to be created."
  type        = string
}

variable "resource_group_name" {
  description = "The name of the virtual network resource group."
  type        = string
}

variable "location" {
  description = "The location of the virtual network resource group."
  type        = string
}

variable "address_space" {
  description = "The address space that is used the virtual network. You can supply more than one address space."
  type        = list(string)
}

variable "bgp_community" {
  description = "The BGP community attribute in format <as-number>:<community-value>."
  type        = string
  default     = null
}

variable "ddos_protection_plan_enable" {
  description = "Enable/disable DDoS Protection Plan on Virtual Network."
  type        = bool
  default     = false
}

variable "dns_servers" {
  description = " List of IP addresses of DNS servers"
  type        = list(string)
  default     = null
}

variable "vm_protection_enabled" {
  description = "Whether to enable VM protection for all the subnets in this Virtual Network."
  type        = bool
  default     = false
}

variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(string)
  default     = {
    terraform="true",
  }
}
