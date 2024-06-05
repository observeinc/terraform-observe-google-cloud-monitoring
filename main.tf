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
    projects                           = observe_dataset.projects_collection_enabled
    distribution_metrics               = observe_dataset.process_distribution_metrics
  }
  # enable_metrics = lookup(local.feature_flags, "metrics", true)

}
resource "observe_dataset" "base_pubsub_events" {
  workspace   = local.datasets.base_pubsub_events.workspace
  name        = local.datasets.base_pubsub_events.name
  freshness   = local.datasets.base_pubsub_events.freshness
  description = local.datasets.base_pubsub_events.description
  inputs = {
    "observation" = var.datastream.dataset
  }

  # https://cloud.google.com/pubsub/docs/reference/rpc/google.pubsub.v1#pubsubmessage
  stage {
    input    = "observation"
    pipeline = <<-EOF
      filter OBSERVATION_KIND = "pubsub"
      make_col data:parse_json(FIELDS.message.Data)
      make_col data:if(is_null(data),decode_base64(FIELDS.message.Data),data)

      pick_col BUNDLE_TIMESTAMP,
        id:string(FIELDS.message.ID),
        attributes:object(FIELDS.message.Attributes),
        publishTime:parse_isotime(string(FIELDS.message.PublishTime)),
        orderingKey:string(FIELDS.message.OrderingKey),
        deliveryAttempt:int64(FIELDS.message.DeliveryAttempt),
        data,
        subscription:string(FIELDS.subscription)
    EOF
  }
}
