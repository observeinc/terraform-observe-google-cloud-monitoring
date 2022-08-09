resource "observe_dataset" "compute_logs" {
  workspace = var.workspace.oid
  name      = format(var.name_format, "Logs")
  freshness = lookup(local.freshness, "metrics", var.freshness_default)

  inputs = {
    "audit_logs" = var.google.audit_logs.oid
  }

  stage {
    pipeline = <<-EOF
      filter resourceType = "gce_instance"

      make_col
        instance_name: split_part(resourceName, '/', 6),
        project_id: split_part(resourceName, '/', 2)

      make_col
        instance_key: strcat(project_id,":",instance_name)

      extract_regex string(resourceLabels.zone), /(?P<region>[a-z]+[-]+[a-z,0-9]+)/
    EOF
  }

  stage {
    pipeline = <<-EOF
      pick_col 
         timestamp,
         instance_key,
         instance_name,
         request,
         response,
         requestMetadata,
         authenticationInfo,
         region,
         project_id,
         instance_id: string(resourceLabels.instance_id),
         zone: string(resourceLabels.zone)
    EOF
  }
}

resource "observe_link" "compute_logs" {
  workspace = var.workspace.oid
  source    = observe_dataset.compute_logs.oid
  target    = each.value.target
  fields    = each.value.fields
  label     = each.key

  for_each = {
    "Compute" = {
      target = observe_dataset.compute.oid
      fields = ["instance_key"]
    }
  }
}
