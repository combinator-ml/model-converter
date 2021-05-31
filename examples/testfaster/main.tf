variable "namespace" {
  description = "The namespace to install into."
  default     = "default"
  type        = string
}

locals {
  prefix           = "testfaster"
  create_namespace = var.namespace == "default" ? 0 : 1 # Create if not default
}

resource "kubernetes_namespace" "namespace" {
  count = local.create_namespace
  metadata {
    name = var.namespace
  }
}

module "modelconverter" {
  source    = "combinator-ml/modelconverter/k8s"
  namespace = var.namespace
  depends_on = [
    kubernetes_namespace.namespace
  ]
}

module "jupyter" {
  source    = "combinator-ml/jupyter/k8s"
  version   = "0.0.3"
  namespace = var.namespace
  depends_on = [
    kubernetes_namespace.namespace
  ]
}

resource "kubernetes_service" "jupyter" {
  metadata {
    name      = "${local.prefix}-jupyter"
    namespace = var.namespace
  }
  spec {
    selector = {
      app = "combinator-jupyter"
    }
    port {
      name        = "http"
      port        = 8888
      target_port = 8888
      node_port   = 30600
    }
    type = "NodePort"
  }
  depends_on = [
    module.jupyter
  ]
}
