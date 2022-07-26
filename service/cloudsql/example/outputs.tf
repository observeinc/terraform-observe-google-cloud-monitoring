output "observe_datastream_token" {
  value     = observe_datastream_token.gcp.secret
  sensitive = true
}

# output "service_account_key" {
#   value     = base64decode(module.observe_gcp_collection.service_account_key.private_key)
#   sensitive = true
# }

output "name_format" {
  value = local.name_format
}

output "dataset" {
  value = module.google.cloud_sql.cloudsql
}

##############################################################
# These are outputs used in creation of terraform for dashboard
##############################################################
# output "db_stages" {
#   value = data.observe_dashboard.db.stages
# }

# output "db_layout" {
#   value = data.observe_dashboard.db.layout
# }

# output "db_parameters" {
#   value = data.observe_dashboard.db.parameters
# }

# output "db_parameter_values" {
#   value = data.observe_dashboard.db.parameter_values
# }
##############################################################
# locals {
#   srch = "/"
#   rep  = "_"
# }

##############################################################
# These are outputs used to match values inside of generated json and are used by sed search replace function - See Makefile update_data_state
##############################################################
# Format we are trying to match

## This is format of dataset name produced by module
###  "name" = "gcp-101/Cloud SQL Instance"

## This is how observe transforms reference within JSON
###  "datasetId": "$dataset_gcp-101_cloudSQLInstance"
output "cloudsql_datasets_id" {
  value = {
    cloudsql_dataset_id         = module.google.cloud_sql.cloudsql.id
    cloudsql_logs_dataset_id    = module.google.cloud_sql.cloudsql_logs.id
    cloudsql_metrics_dataset_id = module.google.cloud_sql.cloudsql_metrics != null ? module.google.cloud_sql.cloudsql_metrics.id : null
  }
}
# output "cloudsql_datasets" {
#   value = {
#     cloudsql_dataset_string = "${
#       format("dataset_%s_%s%s",
#         split("/", module.google.cloud_sql.cloudsql.name)[0],
#         lower(substr(split("/", module.google.cloud_sql.cloudsql.name)[1], 0, 1)),
#         substr(
#           replace(
#             split("/", module.google.cloud_sql.cloudsql.name)[1],
#             " ",
#             ""
#           ),
#           1,
#           length(replace(split("/", module.google.cloud_sql.cloudsql.name)[1], " ", "")) - 1
#         )
#       )
#     }"

#     cloudsql_logs_dataset_string = "${
#       format("dataset_%s_%s%s",
#         split("/", module.google.cloud_sql.cloudsql_logs.name)[0],
#         lower(substr(split("/", module.google.cloud_sql.cloudsql_logs.name)[1], 0, 1)),
#         substr(
#           replace(
#             split("/", module.google.cloud_sql.cloudsql_logs.name)[1],
#             " ",
#             ""
#           ),
#           1,
#           length(replace(split("/", module.google.cloud_sql.cloudsql_logs.name)[1], " ", "")) - 1
#         )
#       )
#     }"

#     cloudsql_metrics_dataset_string = module.google.cloud_sql.cloudsql_metrics != null ? "${
#       format("dataset_%s_%s%s",
#         split("/", module.google.cloud_sql.cloudsql_metrics.name)[0],
#         lower(substr(split("/", module.google.cloud_sql.cloudsql_metrics.name)[1], 0, 1)),
#         substr(
#           replace(
#             split("/", module.google.cloud_sql.cloudsql_metrics.name)[1],
#             " ",
#             ""
#           ),
#           1,
#           length(replace(split("/", module.google.cloud_sql.cloudsql_metrics.name)[1], " ", "")) - 1
#         )
#       )
#     }" : module.google.cloud_sql.cloudsql_metrics
#   }

# }
##############################################################


