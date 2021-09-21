variable "context" {
  description = "Context for the environment."
  type = object({
    project_name     = string
    environment      = string
    environment_code = string
    resource_group = object({
      name     = string
      location = string
    })
  })
}
