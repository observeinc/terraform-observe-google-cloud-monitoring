resource "observe_dataset" "compute_logs_raw" {
  workspace   = var.workspace.oid
  name        = format(var.name_format, "Raw Logs")
  freshness   = lookup(local.freshness, "metrics", var.freshness_duration_default)
  description = "This dataset contains all logs generated for compute service which include compute instances, disks, routers, load balancers and more"
  inputs = {
    "audit_logs" = var.google.audit_logs.oid
  }

  stage {
    pipeline = <<-EOF
      filter serviceName = "compute.googleapis.com"
      
      extract_regex  resourceName, /instances\/(?P<compute_instance_name>.*)/

      extract_regex  resourceName, /disks\/(?P<disk_instance_name>.*)/

      extract_regex  resourceName, /routers\/(?P<router_instance_name>.*)/

      extract_regex  resourceName, /firewalls\/(?P<firewall_instance_name>.*)/

      extract_regex  resourceName, /instanceGroups\/(?P<instance_group_instance_name>.*)/

      extract_regex  resourceName, /projects\/(?P<project_id>[^\/]+)/
      
      extract_regex string(resourceLabels.zone), /(?P<region_alt2>[a-z]+[-]+[a-z,0-9]+)/

      extract_regex resourceName, /(?P<asset_name>[^\/]+$)/

      make_col
        zone: string(resourceLabels.zone),
        region_alt1:string(resourceLabels.region)

      make_col region:coalesce(region_alt1,region_alt2,"none")

      make_col computeInstanceAssetKey: case(not is_null(compute_instance_name), string_concat("//compute.googleapis.com/projects/",project_id,"/zones/",zone,"/instances/",compute_instance_name), true, compute_instance_name) 
      // ex - //compute.googleapis.com/projects/content-testpproj-stage-1/zones/us-central1-b/instances/test-stg-instance-ubuntu-20-04-lts-57
      make_col computeDiskInstanceAssetKey: case(not is_null(disk_instance_name), string_concat("//compute.googleapis.com/projects/",project_id,"/zones/",zone,"/disks/",disk_instance_name), true, disk_instance_name) 
      // ex - //compute.googleapis.com/projects/content-testpproj-stage-1/zones/us-west1-b/disks/gke-test-stg-gke-test-stg-gke-node-po-d4256cbb-1crf
    EOF
  }

  stage {
    pipeline = <<-EOF
      pick_col 
         timestamp,
         asset_name,
         request,
         response,
         requestMetadata,
         authenticationInfo,
         project_id,
         region,
         zone: string(resourceLabels.zone),
         computeInstanceAssetKey,
         computeDiskInstanceAssetKey

      add_key computeInstanceAssetKey
      add_key computeDiskInstanceAssetKey
        
    EOF
  }
}

