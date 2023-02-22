locals {
  name_format = var.name_format
  hack        = "${module.function_bigquery.bucket_object.md5hash}=123"
}

# Create a big query dataset and tables
module "bigquery" {
  source      = "./service_modules/bigquery"
  project_id  = var.project_id
  region      = var.region
  name_format = local.name_format
  # config_bucket_name = module.config_bucket[0].bucket_name
}

# create a compute based otel collector pointed at observe
module "compute_otel_collector" {
  source      = "./service_modules/compute_otel_collector"
  project_id  = var.project_id
  region      = var.region
  zone        = "${var.region}-a"
  name_format = format(var.name_format, "otel-%s")
  observe     = var.observe
}

# create function to read and write against big query
module "function_bigquery" {
  source     = "./service_modules/cloud_function"
  project_id = var.project_id
  region     = var.region
  # zone        = "${var.region}-a"
  name_format = format(var.name_format, "bq-%s")
  function_roles = [
    "roles/browser", # for viewing projects
    "roles/bigquery.jobUser",
    "roles/bigquery.dataViewer",
    "roles/bigquery.dataEditor"
  ]
  environment_variables = {
    CONSOLE_LOGGING    = "TRUE"
    COLLECTOR_LOGGING  = "TRUE"
    COLLECTOR_ENDPOINT = "http://${module.compute_otel_collector.gcp_ubuntu_box.compute_instances.UBUNTU_20_04_LTS_0.public_ip}:4317"
  }
  source_dir  = "./python_scripts/function_code/bigquery"
  output_path = "./python_scripts/function_code/bigquery/output_path/func_code.zip"
}

module "cloud_scheduler_bigquery_write" {
  depends_on = [
    module.function_bigquery
  ]
  source              = "./service_modules/cloud_scheduler"
  project_id          = var.project_id
  region              = var.region
  name_format         = format(var.name_format, "bqwrite-%s")
  schedule            = "* * * * *"
  cloud_function_uri  = module.function_bigquery.cloud_function_trigger
  cloud_function_name = module.function_bigquery.cloud_function_name
  body = base64encode(jsonencode({
    "method" : "write",
  "biq_query_table" : module.bigquery.bigquery_selflink2 }))
  md5hash = local.hack
}

module "cloud_scheduler_bigquery_read" {
  source              = "./service_modules/cloud_scheduler"
  project_id          = var.project_id
  region              = var.region
  name_format         = format(var.name_format, "bqread-%s")
  schedule            = "* * * * *"
  cloud_function_uri  = module.function_bigquery.cloud_function_trigger
  cloud_function_name = module.function_bigquery.cloud_function_name
  body = base64encode(jsonencode({
    "method" : "read",
  "biq_query_table" : module.bigquery.bigquery_selflink2 }))
  md5hash = local.hack
}

module "cloudsql" {
  source          = "./service_modules/cloudsql"
  project_id      = var.project_id
  region          = var.region
  name_format     = format(var.name_format, "sql-%s")
  DATABASE_FILTER = ["MYSQL_8_0", "POSTGRES_14"] # WARNING SQL SERVER IS EXPENSIVE "MYSQL_8_0", "POSTGRES_14", "SQLSERVER_2019_STANDARD"]
}

module "function_mysql" {
  source     = "./service_modules/cloud_function"
  project_id = var.project_id
  region     = var.region
  # zone        = "${var.region}-a"
  name_format = format(var.name_format, "mysql-%s")
  function_roles = [
    "roles/browser", # for viewing projects
  ]

  environment_variables = {
    MYSQL_HOST         = module.cloudsql.connection_string.MYSQL_8_0.host
    MYSQL_DBNAME       = module.cloudsql.connection_string.MYSQL_8_0.database_name
    MYSQL_USER         = module.cloudsql.connection_string.MYSQL_8_0.username
    MYSQL_PASSWORD     = module.cloudsql.connection_string.MYSQL_8_0.password
    CONSOLE_LOGGING    = "TRUE"
    COLLECTOR_LOGGING  = "TRUE"
    COLLECTOR_ENDPOINT = "http://${module.compute_otel_collector.gcp_ubuntu_box.compute_instances.UBUNTU_20_04_LTS_0.public_ip}:4317"
  }
  source_dir  = "./python_scripts/function_code/mysql"
  output_path = "./python_scripts/function_code/mysql/output_path/func_code.zip"
}

/*
tf output -json | jq -r '.cloudsql.value.connection_string'
export COLLECTOR_ENDPOINT=http://146.148.79.73:4317; 
export MYSQL_HOST=34.71.192.247; 
export MYSQL_DBNAME=cloud_freak; 
export MYSQL_USER=redfish; 
export MYSQL_PASSWORD=G0ZKH8qI; 
python3 main.py '{"method": "write"}'
*/
module "cloud_scheduler_mysql_write" {
  source              = "./service_modules/cloud_scheduler"
  project_id          = var.project_id
  region              = var.region
  name_format         = format(var.name_format, "mysqlwrite-%s")
  schedule            = "* * * * *"
  cloud_function_uri  = module.function_mysql.cloud_function_trigger
  cloud_function_name = module.function_mysql.cloud_function_name
  body = base64encode(jsonencode({
  "method" : "write" }))
  md5hash = local.hack
}

module "cloud_scheduler_mysql_read" {
  source              = "./service_modules/cloud_scheduler"
  project_id          = var.project_id
  region              = var.region
  name_format         = format(var.name_format, "mysqlread-%s")
  schedule            = "* * * * *"
  cloud_function_uri  = module.function_mysql.cloud_function_trigger
  cloud_function_name = module.function_mysql.cloud_function_name
  body = base64encode(jsonencode({
  "method" : "read" }))
  md5hash = local.hack
}

/* 
tf output -json | jq -r '.cloudsql.value.connection_string'
export COLLECTOR_ENDPOINT=http://146.148.79.73:4317; 
export POSTGRES_HOST=34.173.99.224; 
export POSTGRES_DBNAME=cloud_freak; 
export POSTGRES_USER=mutt; 
export POSTGRES_PASSWORD=IhYip5b9; 
python3 main.py '{"method": "write"}'
*/
module "function_postgres" {
  source      = "./service_modules/cloud_function"
  project_id  = var.project_id
  region      = var.region
  name_format = format(var.name_format, "postgres-%s")
  function_roles = [
    "roles/browser", # for viewing projects
  ]

  environment_variables = {
    POSTGRES_HOST      = module.cloudsql.connection_string.POSTGRES_14.host
    POSTGRES_DBNAME    = module.cloudsql.connection_string.POSTGRES_14.database_name
    POSTGRES_USER      = module.cloudsql.connection_string.POSTGRES_14.username
    POSTGRES_PASSWORD  = module.cloudsql.connection_string.POSTGRES_14.password
    CONSOLE_LOGGING    = "TRUE"
    COLLECTOR_LOGGING  = "TRUE"
    COLLECTOR_ENDPOINT = "http://${module.compute_otel_collector.gcp_ubuntu_box.compute_instances.UBUNTU_20_04_LTS_0.public_ip}:4317"
  }
  source_dir  = "./python_scripts/function_code/postgres"
  output_path = "./python_scripts/function_code/postgres/output_path/func_code.zip"
}

module "cloud_scheduler_postgres_write" {
  source              = "./service_modules/cloud_scheduler"
  project_id          = var.project_id
  region              = var.region
  name_format         = format(var.name_format, "pgwrite-%s")
  schedule            = "* * * * *"
  cloud_function_uri  = module.function_postgres.cloud_function_trigger
  cloud_function_name = module.function_postgres.cloud_function_name
  body = base64encode(jsonencode({
  "method" : "write" }))
  md5hash = local.hack
}

module "cloud_scheduler_postgres_read" {
  source              = "./service_modules/cloud_scheduler"
  project_id          = var.project_id
  region              = var.region
  name_format         = format(var.name_format, "pgread-%s")
  schedule            = "* * * * *"
  cloud_function_uri  = module.function_postgres.cloud_function_trigger
  cloud_function_name = module.function_postgres.cloud_function_name
  body = base64encode(jsonencode({
  "method" : "read" }))
  md5hash = local.hack
}

module "gke" {
  source      = "./service_modules/gke"
  project_id  = var.project_id
  region      = var.region
  name_format = var.name_format
}


resource "google_artifact_registry_repository" "my-repo" {
  location      = var.region
  project       = var.project_id
  repository_id = "sockshop-registry"
  description   = "sockshop docker repository"
  format        = "DOCKER"
}
