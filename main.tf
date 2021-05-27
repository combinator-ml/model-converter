module "minio" {
  source  = "terraform-module/release/helm"
  repository = "https://helm.min.io/"
  namespace  = var.namespace

  app = {
    chart      = "minio"
    version    = "8.0.9"
    name       = "minio"
    force_update  = true
    wait          = false
    recreate_pods = false
    deploy        = 1
  }

  values = [
    file("conf/minio_values.yaml")
  ]

  set = [
    {
      name  = "accessKey"
      value = "minio"
    },{
      name  = "secretKey"
      value = "minio123"
    },{
      name  = "generate-name"
      value = "minio/minio"
    },{
      name  = "service.port"
      value = 9000
    }
  ]
}
