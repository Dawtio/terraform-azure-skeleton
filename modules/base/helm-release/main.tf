resource "helm_release" "this" {
  chart      = var.chart_name
  name       = var.name
  namespace  = var.namespace
  repository = var.repository

  dynamic "set" {
    for_each = var.values
    content {
      name  = set.value.name
      value = set.value.value
    }
  }
}