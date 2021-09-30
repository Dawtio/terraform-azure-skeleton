terraform {
  required_version = ">=1.0.3"
  required_providers {
    azurerm = {
      version = "=2.77.0"
      source  = "hashicorp/azurerm"
    }
  }
  backend "remote" {
    organization = "Dawtio"
    workspaces {
      name = "infra-dev"
    }
  }
}
