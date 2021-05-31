locals {
  chart_repository = "https://mlopsworks.github.io/containerizer"
  chart_name       = "containerizer"
  chart_version    = "0.1.0"
  helm_values = {
    ingress = {
      enabled = false
    }
    env: [{
      name: "MINIO_ENDPOINT_URL",
      value: var.minio_address,
    }, {
      name: "MINIO_ACCESS_KEY_ID",
      value: var.minio_access_key,
    }, {
      name: "MINIO_SECRET_ACCESS_KEY",
      value: var.minio_secret_key
    }]
  }
}
