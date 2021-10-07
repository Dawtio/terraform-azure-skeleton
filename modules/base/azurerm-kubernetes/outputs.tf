output "this" {
  description = "The AKS resource."
  value       = data.azurerm_kubernetes_cluster.this
}
