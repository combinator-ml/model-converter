resource "helm_release" "docker-registry" {
  name             = "docker-registry"
  repository       = "https://helm.twun.io"
  chart            = "docker-registry"
  version          = "1.10.1"
  namespace        = var.namespace
  wait             = true
  create_namespace = true
  lint             = true
}
