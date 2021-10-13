terraform {
  required_version = ">=1.0.3"
  required_providers {
    azurerm = {
      version = ">=2.79.0"
      source  = "hashicorp/azurerm"
    }
  }
}