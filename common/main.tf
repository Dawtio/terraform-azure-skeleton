module "resource_group" {
  source = "../modules/base/azurerm-resource-group"

  name     = "RG-DAWTIO-COMMON"
  location = "northeurope"
}
# Dashboard FinOps

# Grafana
