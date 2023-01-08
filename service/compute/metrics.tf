resource "observe_dataset" "compute_metrics" {
  count = local.enable_metrics ? 1 : 0

  workspace   = local.datasets.compute_metrics.workspace
  name        = local.datasets.compute_metrics.name
  freshness   = local.datasets.compute_metrics.freshness
  description = local.datasets.compute_metrics.description

  inputs = {
    "metrics" = var.google.metrics.oid
  }

  stage {
    pipeline = <<-EOF
      filter resource_type = "gce_instance"

      make_col 
        instance_id:string(resource_labels.instance_id),
        project_id:string(resource_labels.project_id),
        zone:string(resource_labels.zone),
        metric_subject: split_part(metric_type, '/', 2),
        metric_category: split_part(metric_type, '/', 3),
        metric: replace(replace(metric_type,'compute.googleapis.com/',''),'/','_')

      filter metric_subject = "instance" 

      make_col compute_instance_name: string(metric_labels.instance_name)
      make_col disk_device_name: string(metric_labels.device_name)

      make_col computeInstanceAssetKey: case(not is_null(compute_instance_name), string_concat("//compute.googleapis.com/projects/",project_id,"/zones/",zone,"/instances/",compute_instance_name), true, compute_instance_name) 
      // ex - //compute.googleapis.com/projects/content-testpproj-stage-1/zones/us-central1-b/instances/test-stg-instance-ubuntu-20-04-lts-57
   
      make_col computeDiskInstanceAssetKey: case(not is_null(disk_device_name), string_concat("//compute.googleapis.com/projects/",project_id,"/zones/",zone,"/disks/",disk_device_name), true, disk_device_name) 
      // ex - //compute.googleapis.com/projects/content-testpproj-stage-1/zones/us-west1-b/disks/gke-test-stg-gke-test-stg-gke-node-po-d4256cbb-1crf


      extract_regex zone, /(?P<region>[a-z]+[-]+[a-z,0-9]+)/

      extract_regex metric_type, /(?P<label>[^\/]+$)/

      EOF
  }
  stage {
    pipeline = <<-EOF
      pick_col
        end_time,
        metric,
        value,
        metric_category,
        label,
        metric_labels,
        value_type_text,
        zone,
        metric_type,
        metric_kind,
        metric_kind_text,
        value_type,
        project_id,
        region,
        computeInstanceAssetKey,
        computeDiskInstanceAssetKey,
        compute_instance_name

      add_key computeInstanceAssetKey
      add_key computeDiskInstanceAssetKey
      EOF
  }

  stage {
    pipeline = <<-EOF
      interface "metric", metric:metric, value:value
      ${join("\n\n",
    [for metric, options in local.metrics_definitions :
      indent(2,
        format("set_metric options(\n%s\n), %q",
          join(",\n",
      [for k, v in options : k == "interval" ? format("%s: %s", k, v) : format("%s: %q", k, v) if contains(var.metric_interface_fields, k)]), metric))
if contains(var.metric_launch_stages, options.launchStage)])}

    EOF
}
}

