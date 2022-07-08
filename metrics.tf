resource "observe_dataset" "metric_points" {
  workspace = var.workspace.oid
  name      = format(var.name_format, "Metric Points")
  freshness = var.freshness_default

  inputs = {
    "observation" = var.datastream.dataset
  }


  stage {
    pipeline = <<-EOF
      filter OBSERVATION_KIND = "gcpmetrics"

      make_col metric:object(FIELDS.timeseries.metric),
        metric_kind:int64(FIELDS.timeseries.metric_kind),
        resource_type:string(FIELDS.timeseries.resource.type),
        resource_labels:object(FIELDS.timeseries.resource.labels),
        value_type:int64(FIELDS.timeseries.value_type),
        points:array(FIELDS.timeseries.points)
          
      make_col 
        metric_type:string(metric.type),
        metric_labels:object(metric.labels)
      flatten_single points
      make_col start_time:timestamp_s(int64(@."_c_points_value".interval.start_time.seconds)) + duration(if_null(int64(@."_c_points_value".interval.start_time.nanos), 0)),
        end_time:timestamp_s(int64(@."_c_points_value".interval.end_time.seconds)) + duration(if_null(int64(@."_c_points_value".interval.end_time.nanos), 0)),
        value:@."_c_points_value".value
      set_valid_from options(max_time_diff:${var.max_time_diff}), start_time
    EOF
  }
}

resource "observe_dataset" "metrics" {
  workspace = var.workspace.oid
  name      = format(var.name_format, "Metrics")
  freshness = var.freshness_default

  inputs = {
    "points" = observe_dataset.metric_points.oid
  }

  stage {
    pipeline = <<-EOF
      // Note that value is null for String metrics
      make_col value:coalesce(
          float64(value.Value.Int64Value),
          float64(value.Value.DoubleValue),
          float64(case(bool(value.Value.BoolValue) = true, 1, bool(value.Value.BoolValue) = false, 0)),
          float64(value.Value.DistributionValue.mean)),
          value_type_text: case (value_type=1, 'BOOL', value_type=2, 'INT64', value_type=3, 'DOUBLE', value_type=4, 'STRING', value_type=5, 'DISTRIBUTION'),
          metric_kind_text: case (metric_kind=1, 'GAUGE', metric_kind=2, 'DELTA', metric_kind=3, 'CUMULATIVE')
    EOF
  }

  stage {
    pipeline = <<-EOF
      pick_col
        start_time,
        end_time,
        metric_type,
        metric_kind,
        metric_kind_text,
        metric_labels,
        resource_type,
        resource_labels,
        value,
        value_type,
        value_type_text
    EOF
  }
}

resource "observe_dataset" "string_metrics" {
  workspace = var.workspace.oid
  name      = format(var.name_format, "String Metric Points")
  freshness = var.freshness_default

  inputs = {
    "points" = observe_dataset.metric_points.oid
  }

  stage {
    pipeline = <<-EOF
      filter value_type = 4
      make_col value:string(value.Value.StringValue)
      pick_col
        start_time,
        end_time,
        metric_type,
        metric_kind,
        metric_labels,
        resource_type,
        resource_labels,
        value
    EOF
  }
}

resource "observe_dataset" "distribution_metrics" {
  workspace = var.workspace.oid
  name      = format(var.name_format, "Distribution Metric Points")
  freshness = var.freshness_default

  inputs = {
    "points" = observe_dataset.metric_points.oid
  }

  # https://cloud.google.com/monitoring/api/ref_v3/rest/v3/TypedValue#Distribution
  stage {
    pipeline = <<-EOF
      filter value_type = 5
      make_col value:object(value.Value.DistributionValue)
      pick_col
        start_time,
        end_time,
        metric_type,
        metric_kind,
        metric_labels,
        resource_type,
        resource_labels,
        count:int64(value.count),
        mean:float64(value.mean),
        range:object(value.range),
        sum_of_squared_deviation:float64(value.sum_of_squared_deviation),
        bucket_options:object(value.bucket_options),
        bucket_counts:array(value.bucket_counts),
        exemplars:object(value.exemplars)
    EOF
  }
}
