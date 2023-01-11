resource "observe_dataset" "compute_disk" {
  workspace   = local.datasets.compute_disk.workspace
  name        = local.datasets.compute_disk.name
  freshness   = local.datasets.compute_disk.freshness
  description = local.datasets.compute_disk.description

  inputs = {
    "events" = var.google.resource_asset_inventory_records.oid
  }

  stage {
    input    = "events"
    pipeline = <<-EOF


        filter asset_type = "compute.googleapis.com/Disk"

        make_col users: data.users

        make_col count_of_users: array_length(users)

        flatten_single users

        extract_regex string(_c_users_value), /projects\/(?P<compute_computeInstanceAssetKey_base>.*)/
        
        extract_regex name, /(?P<disk_instance_name>[^\/]+$)/

        make_col computeInstanceAssetKey: string_concat("//compute.googleapis.com/projects/",compute_computeInstanceAssetKey_base)
        // ex - //compute.googleapis.com/projects/content-testpproj-stage-1/zones/us-central1-b/instances/test-stg-instance-ubuntu-20-04-lts-57

        extract_regex name, /projects\/(?P<project_id>[^\/+]+)\/zones\/(?P<zone>[^\/+]+)\/disks\/(?P<disk_instance_name>[^\/+]+)/

        extract_regex zone, /(?P<region>[a-z]+[-]+[a-z,0-9]+)/

        extract_regex string(data.type), /(?P<type>[^\/]+$)/

        

        make_col
          computeDiskInstanceAssetKey:string(name), // ex - //compute.googleapis.com/projects/content-testpproj-stage-1/zones/us-west1-b/disks/gke-test-stg-gke-test-stg-gke-node-po-d4256cbb-1crf
          disk_id:string(data.id),
          status:if(deleted=true, "DELETED",string(data.status)),
          description: string(data.description),
          creationTime: format_time(parse_isotime(string(data.creationTimestamp)), 'MON DD, YYYY HH24:MI:SS'),
          labels: string(data.labels),
          tags: string(data.tags)


        make_col architecture:string(data.architecture),
            guestOsFeatures:data.guestOsFeatures,
            id:string(data.id),
            labelFingerprint:string(data.labelFingerprint),
            lastAttachTimestamp: format_time(parse_isotime(string(data.lastAttachTimestamp)), 'MON DD, YYYY HH24:MI:SS'),
            licenseCodes:data.licenseCodes,
            licenses:data.licenses,
            name: name,
            physicalBlockSizeBytes:string(data.physicalBlockSizeBytes),
            selfLink:string(data.selfLink),
            sizeGb:string(data.sizeGb),
            sourceImage:string(data.sourceImage),
            sourceImageId:string(data.sourceImageId),
            status:string(data.status)

    EOF
  }

  stage {
    pipeline = <<-EOF
      make_resource options(expiry:4h),
        disk_instance_name,
        disk_id,
        computeInstanceAssetKey,
        architecture,
        guestOsFeatures,
        licenses,
        status,
        creationTime,
        lastAttachTimestamp,
        physicalBlockSizeBytes,
        selfLink,
        sizeGb,
        sourceImage,
        sourceImageId,
        type,
        project_id, 
        region, 
        zone,
        labels,
        tags,
        ttl,
        deleted,
        primary_key(computeDiskInstanceAssetKey),
        valid_for(ttl)

      add_key computeInstanceAssetKey
      set_label disk_instance_name

      add_key project_id

    EOF
  }
}

