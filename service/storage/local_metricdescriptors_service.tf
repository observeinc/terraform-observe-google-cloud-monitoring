
######################
# This file is autogenerated
# run serviceUtilities.py in service directory to create this file
# serviceUtilities.py -h for list of commands and options
######################
locals { metrics_definitions = {
  request_count = {
    type               = "delta"
    description        = <<-EOF
                    Delta count of API calls, grouped by the API method name and response code.
                EOF
    launchStage        = "GA"
    rollup             = "avg"
    aggregate          = "sum"
    metricCategory     = "none"
    google_metric_path = "storage.googleapis.com/api/request_count"
    label              = "Request count"
    unit               = "1"
    metricBin          = "api"
    valuetype          = "INT64"

  }
  authentication_count = {
    type               = "delta"
    description        = <<-EOF
                    Count of HMAC/RSA signed requests grouped by authentication method and access id.
                EOF
    launchStage        = "BETA"
    rollup             = "avg"
    aggregate          = "sum"
    metricCategory     = "none"
    google_metric_path = "storage.googleapis.com/authn/authentication_count"
    label              = "Authentication count"
    unit               = "1"
    metricBin          = "authn"
    valuetype          = "INT64"

  }
  acl_based_object_access_count = {
    type               = "delta"
    description        = <<-EOF
                    Delta count of requests that result in an object being granted access solely due to object ACLs.
                EOF
    launchStage        = "GA"
    rollup             = "avg"
    aggregate          = "sum"
    metricCategory     = "none"
    google_metric_path = "storage.googleapis.com/authz/acl_based_object_access_count"
    label              = "Object-ACL based access count"
    unit               = "1"
    metricBin          = "authz"
    valuetype          = "INT64"

  }
  acl_operations_count = {
    type               = "delta"
    description        = <<-EOF
                    Usage of ACL operations broken down by type.
                EOF
    launchStage        = "GA"
    rollup             = "avg"
    aggregate          = "sum"
    metricCategory     = "none"
    google_metric_path = "storage.googleapis.com/authz/acl_operations_count"
    label              = "ACLs usage"
    unit               = "1"
    metricBin          = "authz"
    valuetype          = "INT64"

  }
  object_specific_acl_mutation_count = {
    type               = "delta"
    description        = <<-EOF
                    Delta count of changes made to object specific ACLs.
                EOF
    launchStage        = "GA"
    rollup             = "avg"
    aggregate          = "sum"
    metricCategory     = "none"
    google_metric_path = "storage.googleapis.com/authz/object_specific_acl_mutation_count"
    label              = "Object ACL changes"
    unit               = "1"
    metricBin          = "authz"
    valuetype          = "INT64"

  }
  transition_operation_count = {
    type               = "delta"
    description        = <<-EOF
                    Total number of storage class transition operations initiated by Autoclass.
                EOF
    launchStage        = "GA"
    rollup             = "avg"
    aggregate          = "sum"
    metricCategory     = "none"
    google_metric_path = "storage.googleapis.com/autoclass/transition_operation_count"
    label              = "Autoclass transition count"
    unit               = "1"
    metricBin          = "autoclass"
    valuetype          = "INT64"

  }
  transitioned_bytes_count = {
    type               = "delta"
    description        = <<-EOF
                    Total bytes transitioned by Autoclass.
                EOF
    launchStage        = "GA"
    rollup             = "avg"
    aggregate          = "sum"
    metricCategory     = "none"
    google_metric_path = "storage.googleapis.com/autoclass/transitioned_bytes_count"
    label              = "Autoclass transitioned bytes count"
    unit               = "By"
    metricBin          = "autoclass"
    valuetype          = "INT64"

  }
  received_bytes_count = {
    type               = "delta"
    description        = <<-EOF
                    Delta count of bytes received over the network, grouped by the API method name and response code.
                EOF
    launchStage        = "GA"
    rollup             = "avg"
    aggregate          = "sum"
    metricCategory     = "none"
    google_metric_path = "storage.googleapis.com/network/received_bytes_count"
    label              = "Received bytes"
    unit               = "By"
    metricBin          = "network"
    valuetype          = "INT64"

  }
  sent_bytes_count = {
    type               = "delta"
    description        = <<-EOF
                    Delta count of bytes sent over the network, grouped by the API method name and response code.
                EOF
    launchStage        = "GA"
    rollup             = "avg"
    aggregate          = "sum"
    metricCategory     = "none"
    google_metric_path = "storage.googleapis.com/network/sent_bytes_count"
    label              = "Sent bytes"
    unit               = "By"
    metricBin          = "network"
    valuetype          = "INT64"

  }
  missing_rpo_minutes_last_30d = {
    type               = "gauge"
    description        = <<-EOF
                    Total number of minutes where the Recovery Point Objective RPO was missed, as measured over the most recent 30 days. The metric is delayed by storage.googleapis.com/replication/time_since_metrics_updated.
                EOF
    launchStage        = "BETA"
    rollup             = "avg"
    aggregate          = "sum"
    metricCategory     = "none"
    google_metric_path = "storage.googleapis.com/replication/missing_rpo_minutes_last_30d"
    label              = "Minutes missing Recovery Point Objective RPO in last 30d"
    unit               = "1"
    metricBin          = "replication"
    valuetype          = "INT64"

  }
  object_replications_last_30d = {
    type               = "gauge"
    description        = <<-EOF
                    Total number of object replications, as measured over the most recent 30 days. The metric can be broken down by whether each object replication was meeting or missing Recovery Point Objective RPO. The metric is delayed by storage.googleapis.com/replication/time_since_metrics_updated.
                EOF
    launchStage        = "BETA"
    rollup             = "avg"
    aggregate          = "sum"
    metricCategory     = "none"
    google_metric_path = "storage.googleapis.com/replication/object_replications_last_30d"
    label              = "Object replications in last 30d"
    unit               = "1"
    metricBin          = "replication"
    valuetype          = "INT64"

  }
  time_since_metrics_updated = {
    type               = "gauge"
    description        = <<-EOF
                    Seconds since the last time when storage.googleapis.com/replication/* metrics were calculated.
                EOF
    launchStage        = "BETA"
    rollup             = "avg"
    aggregate          = "sum"
    metricCategory     = "none"
    google_metric_path = "storage.googleapis.com/replication/time_since_metrics_updated"
    label              = "Time since replication metrics were updated"
    unit               = "s"
    metricBin          = "replication"
    valuetype          = "INT64"

  }
  object_count = {
    type               = "gauge"
    description        = <<-EOF
                    Total number of objects per bucket, grouped by storage class. This value is measured once per day, and there might be a delay after measuring before the value becomes available in Cloud Monitoring. Once available, the value is repeated at each sampling interval throughout the day. Buckets with no objects in them are not tracked by this metric. For this metric, the sampling period is a reporting period, not a measurement period.
                EOF
    launchStage        = "GA"
    rollup             = "avg"
    aggregate          = "sum"
    metricCategory     = "none"
    google_metric_path = "storage.googleapis.com/storage/object_count"
    label              = "Object count"
    unit               = "1"
    metricBin          = "storage"
    valuetype          = "INT64"

  }
  total_byte_seconds = {
    type               = "gauge"
    description        = <<-EOF
                    Total daily storage in byte*seconds used by the bucket, grouped by storage class. This value is measured once per day, and there might be a delay after measuring before the value becomes available in Cloud Monitoring. Once available, the value is repeated at each sampling interval throughout the day. Buckets with no objects in them are not tracked by this metric. For this metric, the sampling period is a reporting period, not a measurement period.
                EOF
    launchStage        = "GA"
    rollup             = "avg"
    aggregate          = "sum"
    metricCategory     = "none"
    google_metric_path = "storage.googleapis.com/storage/total_byte_seconds"
    label              = "Total byte seconds"
    unit               = "By.s"
    metricBin          = "storage"
    valuetype          = "DOUBLE"

  }
  total_bytes = {
    type               = "gauge"
    description        = <<-EOF
                    Total size of all objects in the bucket, grouped by storage class. This value is measured once per day, and there might be a delay after measuring before the value becomes available in Cloud Monitoring. Once available, the value is repeated at each sampling interval throughout the day. Buckets with no objects in them are not tracked by this metric. For this metric, the sampling period is a reporting period, not a measurement period.
                EOF
    launchStage        = "GA"
    rollup             = "avg"
    aggregate          = "sum"
    metricCategory     = "none"
    google_metric_path = "storage.googleapis.com/storage/total_bytes"
    label              = "Total bytes"
    unit               = "By"
    metricBin          = "storage"
    valuetype          = "DOUBLE"

  }
} }