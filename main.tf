locals {
  base_module = {
    datastream                         = var.datastream
    pubsub_events                      = observe_dataset.base_pubsub_events
    asset_inventory_records            = observe_dataset.base_asset_inventory_records
    resource_asset_inventory_records   = observe_dataset.resource_asset_inventory_records
    iam_policy_asset_inventory_records = observe_dataset.iam_policy_asset_inventory_records
    logs                               = observe_dataset.logs
    audit_logs                         = observe_dataset.audit_logs
    metrics                            = observe_dataset.metrics
    string_metrics                     = observe_dataset.string_metrics
    projects                           = observe_dataset.projects
  }
}
resource "observe_dataset" "base_pubsub_events" {
  workspace = var.workspace.oid
  name      = format(var.name_format, "PubSub Events")
  freshness = var.freshness_default

  inputs = {
    "observation" = var.datastream.dataset
  }

  # https://cloud.google.com/pubsub/docs/reference/rpc/google.pubsub.v1#pubsubmessage
  stage {
    input    = "observation"
    pipeline = <<-EOF
      filter OBSERVATION_KIND = "pubsub"
    EOF
  }

  stage {
    pipeline = <<-EOF
      pick_col BUNDLE_TIMESTAMP,
        id:string(FIELDS.message.ID),
        attributes:object(FIELDS.message.Attributes),
        publishTime:parse_isotime(string(FIELDS.message.PublishTime)),
        orderingKey:string(FIELDS.message.OrderingKey),
        deliveryAttempt:int64(FIELDS.message.DeliveryAttempt),
        data:decode_base64(string(FIELDS.message.Data)),
        subscription:string(FIELDS.subscription)
    EOF
  }
}

resource "observe_dataset" "projects" {
  workspace = var.workspace.oid
  name      = format(var.name_format, "Projects")
  freshness = lookup(var.freshness_overrides, "projects", var.freshness_default)

  inputs = {
    "events" = observe_dataset.base_asset_inventory_records.oid
  }

  stage {
    pipeline = <<-EOF
      make_col project:coalesce(string(resource.data.project),string(resource.data.projectId))
      filter not is_null(project)
      extract_regex string(ancestors), /\[(.*)"projects\/(?P<projectNumber>\d+)"(.*)/

      pick_col 
        time,
        projectNumber,
        project
    EOF
  }

  stage {
    pipeline = <<-EOF
      make_resource 
        project,
        primary_key(projectNumber)
      add_key project
    EOF
  }
}
