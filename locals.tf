locals {
  chart_repository = "https://feast-helm-charts.storage.googleapis.com" # TODO
  chart_name       = "feast"                                            # TODO
  chart_version    = "0.100.4"                                          # TODO
  helm_values = {                                                       # TODO
    redis = {
      enabled = true
    }
  }
}
