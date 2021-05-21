# terraform-k8s-modelconverter

{{ Insert brief overview here in the .header.md file - this file will be injected into the README by the github action }}

## Usage

```terraform
module "modelconverter" {
  source  = "combinator-ml/modelconverter/k8s"
}
```

See the full configuration options below.

## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| helm | n/a |

## Modules

No Modules.

## Resources

| Name |
|------|
| [helm_release](https://registry.terraform.io/providers/hashicorp/helm/latest/docs/resources/release) |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| name\_prefix | Prefix to be used when naming the different k8s components | `string` | `"combinator"` | no |
| namespace | The namespace to install into. | `string` | `"default"` | no |

## Outputs

No output.
