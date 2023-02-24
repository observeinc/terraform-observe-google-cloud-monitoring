locals {
  workspace                    = var.workspace.oid
  workspace_id                 = var.workspace.id
  datastream_dataset_id        = regex("[^:]+$", var.datastream.dataset)
  datastream_name              = regex("[^//]+$", var.datastream.name)
  asset_inventory              = observe_dataset.base_asset_inventory_records.id
  logs                         = observe_dataset.logs.id
  dashboard_name_home          = format(var.name_format, "App Home")
  dashboard_name_resources     = format(var.name_format, "Resource Monitoring")
  dashboard_name_projects      = format(var.name_format, "Project Monitoring")
  resources_asset_inventory    = observe_dataset.resources_asset_inventory.id
  metrics                      = observe_dataset.metrics.id
  projects_collection_enabled  = resource.observe_dataset.projects_collection_enabled.id
  pubsub_service_quota_metrics = one(module.pubsub[*].pubsub_service_quota_metrics.id)
  pubsub_topics                = one(module.pubsub[*].pubsub.id)
  compute_instance             = one(module.compute[*].compute.id)
  compute_metrics              = one(module.compute[*].compute_metrics.id)
  cloud_functions_metrics      = one(module.cloudfunctions[*].function_metrics.id)
  cloud_functions_instances    = one(module.cloudfunctions[*].function.id)
  cloud_functions_logs         = one(module.cloudfunctions[*].function_logs.id)
  storage_buckets              = one(module.storage[*].storage.id)
  storage_metrics              = one(module.storage[*].storage_metrics.id)
  cloud_sql_instance           = one(module.cloudsql[*].cloudsql.id)
  cloud_sql_metrics            = one(module.cloudsql[*].cloudsql_metrics.id)
  cloud_sql_metrics_combo      = one(module.cloudsql[*].cloudsql_metrics_combo.id)
  cloud_scheduler_jobs         = one(module.cloudscheduler[*].cloud_scheduler_jobs.id)
  # bigquery_dataset             = one(module.bigquery[*].bigquery_dataset.id)

  base_datasets = <<-EOT
                          ### Base Datasets
                        
                        - [Datastream](/workspace/${local.workspace_id}/dataset/event/${local.datastream_name}-${local.datastream_dataset_id}) - All other pre-built data sets for the GCP application are derived from here.
                        
                        - [Asset Inventory](/workspace/${local.workspace_id}/dataset/event/Asset-Inventory-Records-${local.asset_inventory})  - This shows a list of all GCP for each project you are collecting data for. Pre-built Resources are derived from this dataset. 
                        
                        - [Metrics](/workspace/${local.workspace_id}/dataset/event/Metrics-${local.metrics})  - This shows incoming data of all metrics you are collecting from GCP for each project you are collecting data for. Pre-built Resources metrics are derived from this dataset. 
                        
                        - [Logs](/workspace/${local.workspace_id}/dataset/event/Logs-${local.logs}) - This shows incoming log data for all logs you are collecting from GCP for each project you are collecting data for. Pre-built Resources logs are derived from this dataset.
                                                                                                                                                                                        
                    EOT

  pre_built_content = <<-EOT
                        ### Pre-built Content
                        
                        ${local.enable_service_bigquery == true ? "- [Big Query Resources](/workspace/${local.workspace_id}/dataset/resource/BigQuery-Dataset-${one(module.bigquery[*].bigquery_dataset.id)}) - Big Query dataset that GraphLinks to metrics and logs." : ""} 

                        ${local.enable_service_cloudfunctions == true ? "- [CloudFunction Resources](/workspace/${local.workspace_id}/dataset/resource/Cloud-Functions-Instances-${one(module.cloudfunctions[*].function.id)}) - Cloud Function Resource dataset that GraphLinks to metrics and logs." : ""} 
                        
                        ${local.enable_service_cloudsql == true ? "- [CloudSQL Resources](/workspace/${local.workspace_id}/dataset/resource/Cloud-SQL-Instance-${one(module.cloudsql[*].cloudsql.id)}) - CloudSQL Resource dataset that GraphLinks to metrics and logs." : ""} 
                        
                        ${local.enable_service_compute == true ? "- [Compute Resources](/workspace/${local.workspace_id}/dataset/resource/Compute-Instance-${one(module.compute[*].compute.id)}) - Compute Resource dataset that GraphLinks to metrics and logs." : ""} 
                        
                        ${local.enable_service_gke == true ? "- [GKE Resources](/workspace/${local.workspace_id}/dataset/resource/GKE-Cluster-${one(module.gke[*].gke_cluster.id)}) - Google Kubernetes Engine Resource dataset that GraphLinks to compute resources and Kubernetes App resources." : ""}

                        ${local.enable_service_load_balancing == true ? "- [LoadBalancing Resources](/workspace/${local.workspace_id}/dataset/resource/Load-Balancing-Load-Balancers-${one(module.load_balancing[*].load_balancers.id)}) - Load Balancer Resource dataset that GraphLinks to metrics and logs." : ""}
                        
                        ${local.enable_service_redis == true ? "- [Redis Resources](/workspace/${local.workspace_id}/dataset/resource/Redis-Instance-${one(module.redis[*].instance.id)}) - Redis Resource dataset that GraphLinks to metrics and logs." : ""}

                        ${local.enable_service_storage == true ? "- [Storage Resources](/workspace/${local.workspace_id}/dataset/resource/Storage-Buckets-${one(module.storage[*].storage.id)}) - Storage Bucket Resource dataset that GraphLinks to metrics and logs." : ""}
                                                                                                                                                                                                                                                                                                                                                                      
                    EOT

  inventory_description = <<-EOT
                    # Google Cloud Platform Application
                                                                                                                                                                                                                                                                                                            
                    See Inventory section for count of resources within your monitored projects and metrics being collected.
                                                                                                                                                                                                                                                                                                            
                                                                                                                                                                                                                                                                                                            
                    - [Observe GCP Documentation](https://docs.observeinc.com/en/latest/content/integrations/gcp/gcp.html)
                                                                                                                                                                                                                                                                                                            
                    - [Google Metrics Documentation](https://cloud.google.com/monitoring/api/metrics_gcp)
                EOT
}
