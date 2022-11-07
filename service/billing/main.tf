locals {
  # enable_metrics = lookup(var.feature_flags, "metrics", true)
  # tflint-ignore: terraform_unused_declarations
  # enable_monitors = lookup(var.feature_flags, "monitors", true)

  freshness = merge({
    billing = "12h",
  }, var.freshness_overrides)

}
resource "observe_dataset" "billing_events" {
  workspace   = var.workspace.oid
  name        = format(var.name_format, "Events")
  freshness   = lookup(local.freshness, "billing", var.freshness_duration_default)
  description = "This dataset contains events for GCP Billing"
  inputs = {
    "events" = var.google.pubsub_events.oid
  }

  stage {
    input    = "events"
    pipeline = <<-EOF
      filter attributes.OBSERVATION_KIND = "gcpBillingData"

      make_col data2: parse_json(data), queryID: attributes.QUERY_ID
      
      flatten_single data2
      
      make_col cost:float64(_c_data2_value.cost),
          cost_type:string(_c_data2_value.cost_type),
          credits:float64(_c_data2_value.credits),
          adjusted_cost:float64(_c_data2_value.adjusted_cost),
          description:string(_c_data2_value.description),
          project_id:string(_c_data2_value.id),
          id_1_1:string(_c_data2_value.id_1),
          location:string(_c_data2_value.location),
          part:int64(_c_data2_value.part),
          region:string(_c_data2_value.region),
          sku_description:string(_c_data2_value.sku_description),
          partition_date: parse_isotime(string(_c_data2_value.part_converted)),
          usage_end_date:from_milliseconds(int64(_c_data2_value.usage_end_date)),
          usage_start_date:from_milliseconds(int64(_c_data2_value.usage_start_date))
    EOF
  }

  stage {
    pipeline = <<-EOF
      pick_col 
        BUNDLE_TIMESTAMP,
        cost,
        credits,
        adjusted_cost,
        cost_type,
        description,
        project_id,
        sku_id: id_1_1,
        location,
        region,
        sku_description,
        partition_date,
        usage_end_date,
        usage_start_date,
        queryID

      set_valid_from options(max_time_diff:30d), usage_end_date
    EOF
  }
}

