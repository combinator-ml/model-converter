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
    file("../../conf/minio_values.yaml")
    # file("conf/minio_values.yaml")
  ]

  set = [
    {
      name  = "accessKey"
      value = var.minio_access_key
    },{
      name  = "secretKey"
      value = var.minio_secret_key
    },{
      name  = "generate-name"
      value = "minio/minio"
    },{
      name  = "service.port"
      value = 9000
    }
  ]
}
