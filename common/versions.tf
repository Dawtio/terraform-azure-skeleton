terraform {
  required_version = "~> 1.0.3"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">=2.79.1"
    }
  }
}
