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
