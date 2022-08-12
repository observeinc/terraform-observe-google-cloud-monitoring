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

      make_col 
        metric:object(FIELDS.timeseries.metric),
        metric_kind:int64(FIELDS.timeseries.metric_kind),
        resource_type:string(FIELDS.timeseries.resource.type),
        resource_labels:object(FIELDS.timeseries.resource.labels),
        value_type:int64(FIELDS.timeseries.value_type),
        points:array(FIELDS.timeseries.points)
          
      make_col 
        metric_type:string(metric.type),
        metric_labels:object(metric.labels),
        value_type_text: case (value_type=1, 'BOOL', value_type=2, 'INT64', value_type=3, 'DOUBLE', value_type=4, 'STRING', value_type=5, 'DISTRIBUTION'),
        metric_kind_text: case (metric_kind=1, 'GAUGE', metric_kind=2, 'DELTA', metric_kind=3, 'CUMULATIVE')
      
      make_col
        metric_namespace: split_part(metric_type, '/', 1)
      EOF
  }

  stage {
    pipeline = <<-EOF
      pick_col
        BUNDLE_TIMESTAMP,
        metric_namespace,
        metric,
        metric_kind,
        metric_kind_text,
        metric_labels,
        metric_type,
        resource_type,
        resource_labels,
        value_type,
        value_type_text,
        points
    EOF
  }
  stage {
    pipeline = <<-EOF
      flatten_single points

      make_col 
        start_time:timestamp_s(int64(@."_c_points_value".interval.start_time.seconds)) + duration(if_null(int64(@."_c_points_value".interval.start_time.nanos), 0)),
        end_time:timestamp_s(int64(@."_c_points_value".interval.end_time.seconds)) + duration(if_null(int64(@."_c_points_value".interval.end_time.nanos), 0)),
        value:@."_c_points_value".value

      make_col
        metric_collection_period: end_time - start_time

      set_valid_from options(max_time_diff:${var.max_time_diff}), end_time

      drop_col BUNDLE_TIMESTAMP, start_time
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
      //make_col value_buckets:value.Value.DistributionValue.bucket_counts
      //flatten_single value_buckets
      make_col 
        value:coalesce(
          float64(value.Value.Int64Value),
          float64(value.Value.DoubleValue),
          float64(case(bool(value.Value.BoolValue) = true, 1, bool(value.Value.BoolValue) = false, 0)),
          float64(value.Value.DistributionValue.mean))
    EOF
  }

  stage {
    pipeline = <<-EOF
      pick_col
        end_time,
        metric_type,
        metric_namespace,
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

resource "observe_dataset" "process_distribution_metrics" {
  workspace = var.workspace.oid
  name      = format(var.name_format, "Distribution Metrics")
  freshness = var.freshness_default

  inputs = {
    "points" = observe_dataset.metric_points.oid
  }

  # https://cloud.google.com/monitoring/api/v3/distribution-metrics
  stage {
    pipeline = <<-EOF
      filter not is_null(value.Value.DistributionValue.bucket_counts)

      // get bucket_low/up values
      make_col 
        value_buckets:array(value.Value.DistributionValue.bucket_counts),
        total_count:int64(value.Value.DistributionValue.count)

      flatten_single value_buckets

      make_col 
        _c_value_buckets_path: int64(substring(@."_c_value_buckets_path",1, strlen(@."_c_value_buckets_path")-2))
      
      filter @."_c_value_buckets_value" > 0
      
      make_col 
        bucket_low:if(_c_value_buckets_path=0,0,int64(value.Value.DistributionValue.bucket_options.Options.ExponentialBuckets.scale)*pow(float64(value.Value.DistributionValue.bucket_options.Options.ExponentialBuckets.growth_factor),_c_value_buckets_path-1)),
        bucket_up:int64(value.Value.DistributionValue.bucket_options.Options.ExponentialBuckets.scale)*pow(float64(value.Value.DistributionValue.bucket_options.Options.ExponentialBuckets.growth_factor),_c_value_buckets_path),
        value_buckets_for_p_low:array(value.Value.DistributionValue.bucket_counts)

      // get p_low/up values
      flatten_single value_buckets_for_p_low

      make_col 
        _c_value_buckets_for_p_low_path: int64(substring(@."_c_value_buckets_for_p_low_path",1, strlen(@."_c_value_buckets_for_p_low_path")-2))

      filter _c_value_buckets_for_p_low_path <= _c_value_buckets_path

      statsby counts_to_now:sum(int64(_c_value_buckets_for_p_low_value)), group_by(
        value,
        end_time,
        metric_type,
        metric_labels,
        metric_kind,
        resource_type,
        value_type,
        resource_labels,
        _c_value_buckets_value, 
        bucket_low,
        bucket_up,
        total_count)

      make_col
        value:float64(value.Value.DistributionValue.mean),
        distribution_metadata:make_object(
          p_up:float64(counts_to_now/total_count),
          p_low:float64((counts_to_now - _c_value_buckets_value)/total_count),
          bucket_up:bucket_up,
          bucket_low:bucket_low)

      /*
      // example of how to calculate pN
      make_col 
        p99:if(p_low<=0.99 and 0.99<p_up, bucket_low + ((bucket_up - bucket_low)*(0.99-p_low)/(p_up-p_low)), float64_null()),
        p50:if(p_low<=0.50 and 0.50<p_up, bucket_low + ((bucket_up - bucket_low)*(0.50-p_low)/(p_up-p_low)), float64_null())
      */
    EOF
  }
}
