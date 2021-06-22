# Create variables for anything you think might be used.
# Ensure all vars have defaults where possible
variable "name_prefix" {
  description = "Prefix to be used when naming the different k8s components"
  default     = "combinator"
}

variable "namespace" {
  description = "The namespace to install into."
  type        = string
  default     = "default"
}

variable "minio_access_key" {
  description = "The namespace to install into."
  type        = string
  default     = "minio"
}

variable "minio_secret_key" {
  description = "The namespace to install into."
  type        = string
  default     = "minio123"
}

variable "minio_address" {
  description = "The namespace to install into."
  type        = string
  default     = "http://minio.default.svc.cluster.local:9000"
}
