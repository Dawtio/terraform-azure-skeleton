terraform {
  required_version = "~> 1.0.3"

  required_providers {
    helm = {
      source  = "hashicorp/helm"
      version = ">=2.3.0"
    }
  }
}
