resource "observe_dataset" "compute_disk" {
  workspace = var.workspace.oid
  name      = format(var.name_format, "Disk")

  freshness = lookup(local.freshness, "compute", var.freshness_default)

  description = "This dataset is used to create Disk Resources"

  inputs = {
    "events" = var.google.resource_asset_inventory_records.oid
  }

  stage {
    input    = "events"
    pipeline = <<-EOF

      filter asset_type = "compute.googleapis.com/Disk"

      extract_regex name, /projects\/(?P<project_id>[^\/+]+)\/zones\/(?P<zone>[^\/+]+)\/disks\/(?P<instance_name>[^\/+]+)/

      extract_regex zone, /(?P<region>[a-z]+[-]+[a-z,0-9]+)/

      extract_regex string(data.type), /(?P<type>[^\/]+$)/

      make_col
        assetInventoryName:string(name),
        instance_id:string(data.id),
        instance_key: strcat(project_id,":",instance_name),
        status:if(deleted=true, "DELETED",string(data.status)),
        description: string(data.description),
        creationTime: format_time(parse_isotime(string(data.creationTimestamp)), 'MON DD, YYYY HH24:MI:SS'),
        labels: string(data.labels),
        tags: string(data.tags)


      //make_col name_parts: split (instance_name, '-')

      //make_col length_last_part: strlen(string(get_item(name_parts,array_length(name_parts)-1)))

      //make_col baseInstanceNameGroup: left(instance_name, strlen(instance_name) - (length_last_part+1))

      //add_key baseInstanceNameGroup


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
          status:string(data.status),
          users:data.users

    EOF
  }

  stage {
    pipeline = <<-EOF
      make_resource options(expiry:${var.max_expiry}),
        instance_name,
        instance_id,
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
        users,
        project_id, 
        region, 
        zone,
        labels,
        tags,
        ttl,
        deleted,
        primary_key(id),
        valid_for(ttl)

      add_key instance_id
      set_label id

      add_key project_id, region, zone
    EOF
  }
}

resource "observe_link" "project_disk" {
  for_each = {
    "Projects" = {
      target = var.google.projects.oid
      fields = ["project_id"]
    }
    "Compute" = {
      target = observe_dataset.compute.oid
      fields = ["instance_id"]
    }
  }

  workspace = var.workspace.oid
  source    = observe_dataset.compute_disk.oid
  target    = each.value.target
  fields    = each.value.fields
  label     = each.key
}
