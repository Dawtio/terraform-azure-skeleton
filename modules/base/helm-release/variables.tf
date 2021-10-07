variable "name" {
  description = "The name for the Helm Release."
  type        = string
}

variable "namespace" {
  description = "The namespace for the Helm Release."
  type        = string
}

variable "repository" {
  description = "The repository name for the Helm Release."
  type        = string
  default     = null
}

variable "chart_name" {
  description = "The chart name for the Helm Release."
  type        = string
}

variable "values" {
  description = "The value to configure the Helm Release."
  type = list(object({
    name  = string
    value = string
  }))
  default = []
}
