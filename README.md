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
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0.0 |
| <a name="requirement_observe"></a> [observe](#requirement\_observe) | 0.13.1 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_observe"></a> [observe](#provider\_observe) | 0.13.1 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_bigquery"></a> [bigquery](#module\_bigquery) | ./service/bigquery | n/a |
| <a name="module_billing"></a> [billing](#module\_billing) | ./service/billing | n/a |
| <a name="module_cloudfunctions"></a> [cloudfunctions](#module\_cloudfunctions) | ./service/cloudfunctions | n/a |
| <a name="module_cloudscheduler"></a> [cloudscheduler](#module\_cloudscheduler) | ./service/cloudscheduler | n/a |
| <a name="module_cloudsql"></a> [cloudsql](#module\_cloudsql) | ./service/cloudsql | n/a |
| <a name="module_compute"></a> [compute](#module\_compute) | ./service/compute | n/a |
| <a name="module_gke"></a> [gke](#module\_gke) | ./service/gke | n/a |
| <a name="module_iam"></a> [iam](#module\_iam) | ./service/iam | n/a |
| <a name="module_load_balancing"></a> [load\_balancing](#module\_load\_balancing) | ./service/loadbalancing | n/a |
| <a name="module_pubsub"></a> [pubsub](#module\_pubsub) | ./service/pubsub | n/a |
| <a name="module_storage"></a> [storage](#module\_storage) | ./service/storage | n/a |

## Resources

| Name | Type |
|------|------|
| observe_dashboard.app_home | resource |
| observe_dashboard.project_input | resource |
| observe_dashboard.resource_monitoring | resource |
| observe_dashboard.total_cost_of_ownership | resource |
| observe_dataset.audit_logs | resource |
| observe_dataset.base_asset_inventory_records | resource |
| observe_dataset.base_pubsub_events | resource |
| observe_dataset.distribution_metrics | resource |
| observe_dataset.iam_policy_asset_inventory_records | resource |
| observe_dataset.logs | resource |
| observe_dataset.metric_points | resource |
| observe_dataset.metrics | resource |
| observe_dataset.process_distribution_metrics | resource |
| observe_dataset.projects_collection_enabled | resource |
| observe_dataset.resource_asset_inventory_records | resource |
| observe_dataset.resources_asset_inventory | resource |
| observe_dataset.string_metrics | resource |
| observe_default_dashboard.default_project_dash | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_datastream"></a> [datastream](#input\_datastream) | Datastream to derive resources from. | <pre>object({<br>    oid     = string<br>    dataset = string<br>    name    = string<br>  })</pre> | n/a | yes |
| <a name="input_enable_service_bigquery"></a> [enable\_service\_bigquery](#input\_enable\_service\_bigquery) | Enable BigQuery service. | `bool` | `true` | no |
| <a name="input_enable_service_cloudfunctions"></a> [enable\_service\_cloudfunctions](#input\_enable\_service\_cloudfunctions) | Enable Cloud Functions service. | `bool` | `true` | no |
| <a name="input_enable_service_cloudscheduler"></a> [enable\_service\_cloudscheduler](#input\_enable\_service\_cloudscheduler) | Enable Cloud Scheduler service. | `bool` | `true` | no |
| <a name="input_enable_service_cloudsql"></a> [enable\_service\_cloudsql](#input\_enable\_service\_cloudsql) | Enable Cloud SQL service. | `bool` | `true` | no |
| <a name="input_enable_service_compute"></a> [enable\_service\_compute](#input\_enable\_service\_compute) | Enable Compute service. | `bool` | `true` | no |
| <a name="input_enable_service_gke"></a> [enable\_service\_gke](#input\_enable\_service\_gke) | Enable GKE service. | `bool` | `true` | no |
| <a name="input_enable_service_load_balancing"></a> [enable\_service\_load\_balancing](#input\_enable\_service\_load\_balancing) | Enable Cloud Load Balancing service. | `bool` | `true` | no |
| <a name="input_enable_service_pubsub"></a> [enable\_service\_pubsub](#input\_enable\_service\_pubsub) | Enable Pub Sub service. | `bool` | `true` | no |
| <a name="input_enable_service_storage"></a> [enable\_service\_storage](#input\_enable\_service\_storage) | Enable Cloud Storage service. | `bool` | `true` | no |
| <a name="input_feature_flags"></a> [feature\_flags](#input\_feature\_flags) | Toggle features which are being rolled out or phased out. | `map(bool)` | `{}` | no |
| <a name="input_freshness_default_duration"></a> [freshness\_default\_duration](#input\_freshness\_default\_duration) | Default dataset freshness. Can be overridden with freshness input | `string` | `"5m"` | no |
| <a name="input_freshness_overrides"></a> [freshness\_overrides](#input\_freshness\_overrides) | Freshness overrides by dataset. If absent, fall back to freshness\_duration\_default | `map(string)` | `{}` | no |
| <a name="input_max_expiry"></a> [max\_expiry](#input\_max\_expiry) | Maximum expiry time for resources. | `string` | `"4h"` | no |
| <a name="input_max_time_diff"></a> [max\_time\_diff](#input\_max\_time\_diff) | Maximum time difference for processing time window. | `string` | `"4h"` | no |
| <a name="input_name_format"></a> [name\_format](#input\_name\_format) | Format string to use for dataset names. Override to introduce a prefix or suffix. | `string` | `"GCP/%s"` | no |
| <a name="input_service_name_formats"></a> [service\_name\_formats](#input\_service\_name\_formats) | Override nested name\_format for enabled services | `map(string)` | `{}` | no |
| <a name="input_services"></a> [services](#input\_services) | Map of services to enable. | `map(bool)` | `{}` | no |
| <a name="input_workspace"></a> [workspace](#input\_workspace) | Workspace to apply module to. | `object({ oid = string, id = string })` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_asset_inventory_records"></a> [asset\_inventory\_records](#output\_asset\_inventory\_records) | n/a |
| <a name="output_audit_logs"></a> [audit\_logs](#output\_audit\_logs) | n/a |
| <a name="output_cloud_functions"></a> [cloud\_functions](#output\_cloud\_functions) | n/a |
| <a name="output_cloud_sql"></a> [cloud\_sql](#output\_cloud\_sql) | n/a |
| <a name="output_compute"></a> [compute](#output\_compute) | n/a |
| <a name="output_distribution_metrics"></a> [distribution\_metrics](#output\_distribution\_metrics) | n/a |
| <a name="output_gke"></a> [gke](#output\_gke) | n/a |
| <a name="output_iam_policy_asset_inventory_records"></a> [iam\_policy\_asset\_inventory\_records](#output\_iam\_policy\_asset\_inventory\_records) | n/a |
| <a name="output_loadbalancer"></a> [loadbalancer](#output\_loadbalancer) | n/a |
| <a name="output_logs"></a> [logs](#output\_logs) | n/a |
| <a name="output_metrics"></a> [metrics](#output\_metrics) | n/a |
| <a name="output_projects"></a> [projects](#output\_projects) | n/a |
| <a name="output_pubsub_events"></a> [pubsub\_events](#output\_pubsub\_events) | n/a |
| <a name="output_resource_asset_inventory_records"></a> [resource\_asset\_inventory\_records](#output\_resource\_asset\_inventory\_records) | n/a |
| <a name="output_storage"></a> [storage](#output\_storage) | n/a |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## License

Apache 2 Licensed. See LICENSE for full details.
