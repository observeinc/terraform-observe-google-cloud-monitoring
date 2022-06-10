resource "observe_dataset" "compute_logs" {
  workspace = var.workspace.oid
  name      = format(var.name_format, "Logs")
  freshness = var.freshness_default

  inputs = {
    "audit_logs" = var.google.audit_logs.oid
  }

  stage {
    pipeline = <<-EOF
      filter resourceType = "gce_instance"

      extract_regex string(resourceLabels.zone), /(?P<region>[a-z]+[-]+[a-z,0-9]+)/

      pick_col 
         timestamp,
         request,
         response,
         requestMetadata,
         authenticationInfo,
         project_id: string(resourceLabels.project_id),
         region,
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
      fields = ["project_id", "region", "instance_id"]
    }
  }
}
