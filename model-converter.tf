resource "helm_release" "model-converter" {
  name             = var.name_prefix
  repository       = local.chart_repository
  chart            = local.chart_name
  version          = local.chart_version
  namespace        = var.namespace
  wait             = true
  create_namespace = true
  lint             = true
  values = [
    yamlencode(local.helm_values)
  ]
}
