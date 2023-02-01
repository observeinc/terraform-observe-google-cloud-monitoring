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

  # The terraform below dynamically writes set_metric statements in opal
  # This loops through the local.metrics_definitions map using for
  # [for metric, options in local.metrics_definitions :

  # metric is the key (avg_ttl) and options is the value (all the stuff between {})
  /* Example metric in local.metrics_definitions
        avg_ttl = {
            type               = "gauge"
            description        = <<-EOF
                            Average TTL for keys in this database.
                        EOF
            launchStage        = "GA"
            rollup             = "avg"
            aggregate          = "sum"
            metricCategory     = "none"
            google_metric_path = "redis.googleapis.com/keyspace/avg_ttl"
            label              = "Average TTL"
            unit               = "ms"
            metricBin          = "keyspace"
            valuetype          = "DOUBLE"

        }
        */

  # We filter the outer for loop checking whether options.launchStage is in the array defined by var.metric_launch_stages 
  # in the inner for loop we iterate through the fields in the options objects and check if the field is in the array defined by var.metric_interface_fields
  ##  and if so 
  /* Example output
  set_metric options(
    aggregate: "sum",
    description: "Average TTL for keys in this database.\n",
    rollup: "avg",
    type: "gauge",
    unit: "ms"
    ), "avg_ttl"
    
  */

  stage {
    pipeline = <<-EOF
      interface "metric", metric:metric, value:value
      ${join("\n\n",
    [for metric, options in local.metrics_definitions :
      indent(2,
        # format takes result of join / forloop and metric as inputs
        format("set_metric options(\n%s\n), %q",
          join(",\n",
            [for optionFieldName, optionFieldNameValue in options :
              optionFieldName == "interval" ? format("%s: %s", optionFieldName, optionFieldNameValue) :
              # format takes optionFieldName and optionFieldNameValue as inputs
              format("%s: %q", optionFieldName, optionFieldNameValue)
              if contains(var.metric_interface_fields, optionFieldName) # filters inner for loop
            ]                                                           # end of inner for loop
          ),                                                            # end of inner join statement
      replace(replace(options.google_metric_path, "compute.googleapis.com/", ""), "/", "_")))
      if contains(var.metric_launch_stages, options.launchStage) # filters outer for loop
    ]                                                            # end of outer for loop and join statement
)}  

    EOF
}
}

