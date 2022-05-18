# Observe Google module

This terraform module instantiates data from Google Cloud Platform as
and datasets, metrics, and boards in Observe.

## Usage

```hcl
provider "observe" {}

data "observe_workspace" "default" {
  name = "Default"
}

module "google" {
  source = "git@github.com:observeinc/terraform-observe-google.git"
  workspace = data.observe_workspace.default
}
```

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0 |
| <a name="requirement_observe"></a> [observe](#requirement\_observe) | ~> 0.6 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_observe"></a> [observe](#provider\_observe) | ~> 0.6 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_cloudfunctions"></a> [cloudfunctions](#module\_cloudfunctions) | ./service/cloudfunctions | n/a |

## Resources

| Name | Type |
|------|------|
| observe_dataset.audit_logs | resource |
| observe_dataset.base_asset_inventory_records | resource |
| observe_dataset.base_pubsub_events | resource |
| observe_dataset.distribution_metrics | resource |
| observe_dataset.iam_policy_asset_inventory_records | resource |
| observe_dataset.logs | resource |
| observe_dataset.metric_points | resource |
| observe_dataset.metrics | resource |
| observe_dataset.resource_asset_inventory_records | resource |
| observe_dataset.string_metrics | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_datastream"></a> [datastream](#input\_datastream) | Datastream to derive OTEL resources from. | `object({ dataset = string })` | n/a | yes |
| <a name="input_enable_service_all"></a> [enable\_service\_all](#input\_enable\_service\_all) | Enable all services.<br>If enabled, all services that are not explicitly set to false will be<br>configured. | `bool` | `false` | no |
| <a name="input_enable_service_cloudfunctions"></a> [enable\_service\_cloudfunctions](#input\_enable\_service\_cloudfunctions) | Enable Cloud Functions service. | `bool` | `null` | no |
| <a name="input_feature_flags"></a> [feature\_flags](#input\_feature\_flags) | Toggle features which are being rolled out or phased out. | `map(bool)` | `{}` | no |
| <a name="input_freshness_default"></a> [freshness\_default](#input\_freshness\_default) | Default dataset freshness. Can be overridden with freshness input | `string` | `"1m"` | no |
| <a name="input_max_expiry"></a> [max\_expiry](#input\_max\_expiry) | Maximum expiry time for resources. | `string` | `"4h"` | no |
| <a name="input_max_time_diff"></a> [max\_time\_diff](#input\_max\_time\_diff) | Maximum time difference for processing time window. | `string` | `"4h"` | no |
| <a name="input_name_format"></a> [name\_format](#input\_name\_format) | Format string to use for dataset names. Override to introduce a prefix or suffix. | `string` | `"%s"` | no |
| <a name="input_service_name_formats"></a> [service\_name\_formats](#input\_service\_name\_formats) | Override nested name\_format for enabled services | `map(string)` | `{}` | no |
| <a name="input_services"></a> [services](#input\_services) | Map of services to enable. | `map(bool)` | `{}` | no |
| <a name="input_workspace"></a> [workspace](#input\_workspace) | Workspace to apply module to. | `object({ oid = string })` | n/a | yes |

## Outputs

No outputs.
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## License

Apache 2 Licensed. See LICENSE for full details.