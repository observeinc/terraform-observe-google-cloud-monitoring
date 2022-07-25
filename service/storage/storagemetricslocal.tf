locals {
  metrics_definitions = {
    "api_request_count" = {
      type             = "delta"
      description      = <<-EOF
          Delta count of API calls, grouped by the API method name and response code. Sampled every 60s and may take up to 120s to display.
      EOF
      launchStage      = "GA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "none"
      googleMetricPath = "storage.googleapis.com/api/request_count"
      active           = true

      interval = "60s"


    },
    "authn_authentication_count" = {
      type             = "delta"
      description      = <<-EOF
          Count of HMAC/RSA signed requests grouped by authentication method and access id. Sampled every 60s and may take up to 120s to display.
      EOF
      launchStage      = "BETA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "none"
      googleMetricPath = "storage.googleapis.com/authn/authentication_count"
      active           = false

      interval = "60s"


    },
    "authz_acl_based_object_access_count" = {
      type             = "delta"
      description      = <<-EOF
          Delta count of requests that result in an object being granted access solely due to object ACLs. Sampled every 60s and may take up to 120s to display.
      EOF
      launchStage      = "GA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "none"
      googleMetricPath = "storage.googleapis.com/authz/acl_based_object_access_count"
      active           = true

      interval = "60s"


    },
    "authz_acl_operations_count" = {
      type             = "delta"
      description      = <<-EOF
          Usage of ACL operations broken down by type. Sampled every 60s and may take up to 120s to display.
      EOF
      launchStage      = "GA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "none"
      googleMetricPath = "storage.googleapis.com/authz/acl_operations_count"
      active           = true

      interval = "60s"


    },
    "authz_object_specific_acl_mutation_count" = {
      type             = "delta"
      description      = <<-EOF
          Delta count of changes made to object specific ACLs. Sampled every 60s and may take up to 120s to display.
      EOF
      launchStage      = "GA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "none"
      googleMetricPath = "storage.googleapis.com/authz/object_specific_acl_mutation_count"
      active           = true

      interval = "60s"


    },
    "autoclass_transition_operation_count" = {
      type             = "delta"
      description      = <<-EOF
          Total number of storage class transition operations initiated by Autoclass. Sampled every 300s and may take up to 1200s to display.
      EOF
      launchStage      = "ALPHA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "none"
      googleMetricPath = "storage.googleapis.com/autoclass/transition_operation_count"
      active           = false

      interval = "60s"


    },
    "autoclass_transitioned_bytes_count" = {
      type             = "delta"
      description      = <<-EOF
          Total bytes transitioned by Autoclass. Sampled every 300s and may take up to 1200s to display.
      EOF
      launchStage      = "ALPHA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "none"
      googleMetricPath = "storage.googleapis.com/autoclass/transitioned_bytes_count"
      active           = false

      interval = "60s"


    },
    "network_received_bytes_count" = {
      type             = "delta"
      description      = <<-EOF
          Delta count of bytes received over the network, grouped by the API method name and response code. Sampled every 60s and may take up to 120s to display.
      EOF
      launchStage      = "GA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "none"
      googleMetricPath = "storage.googleapis.com/network/received_bytes_count"
      active           = true

      interval = "60s"


    },
    "network_sent_bytes_count" = {
      type             = "delta"
      description      = <<-EOF
          Delta count of bytes sent over the network, grouped by the API method name and response code. Sampled every 60s and may take up to 120s to display.
      EOF
      launchStage      = "GA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "none"
      googleMetricPath = "storage.googleapis.com/network/sent_bytes_count"
      active           = true

      interval = "60s"


    },
    "replication_missing_rpo_minutes_last_30d" = {
      type             = "gauge"
      description      = <<-EOF
          Total number of minutes where the Recovery Point Objective RPO was missed, as measured over the most recent 30 days. The metric is delayed by storage.googleapis.com/replication/time_since_metrics_updated. Sampled every 60s and may take up to 120s to display.
      EOF
      launchStage      = "BETA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "none"
      googleMetricPath = "storage.googleapis.com/replication/missing_rpo_minutes_last_30d"
      active           = false

      interval = "60s"


    },
    "replication_object_replications_last_30d" = {
      type             = "gauge"
      description      = <<-EOF
          Total number of object replications, as measured over the most recent 30 days. The metric can be broken down by whether each object replication was meeting or missing Recovery Point Objective RPO. The metric is delayed by storage.googleapis.com/replication/time_since_metrics_updated. Sampled every 60s and may take up to 120s to display.
      EOF
      launchStage      = "BETA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "none"
      googleMetricPath = "storage.googleapis.com/replication/object_replications_last_30d"
      active           = false

      interval = "60s"


    },
    "replication_time_since_metrics_updated" = {
      type             = "gauge"
      description      = <<-EOF
          Seconds since the last time when storage.googleapis.com/replication/* metrics were calculated. Sampled every 60s and may take up to 120s to display.
      EOF
      launchStage      = "BETA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "none"
      googleMetricPath = "storage.googleapis.com/replication/time_since_metrics_updated"
      active           = false

      interval = "60s"


    },
    "storage_object_count" = {
      type             = "gauge"
      description      = <<-EOF
          Total number of objects per bucket, grouped by storage class. This value is measured once per day, and there might be a delay after measuring before the value becomes available in Cloud Monitoring. Once available, the value is repeated at each sampling interval throughout the day. For this metric, the sampling period is a reporting period, not a measurement period. Sampled every 300s and may take up to 600s to display.
      EOF
      launchStage      = "GA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "none"
      googleMetricPath = "storage.googleapis.com/storage/object_count"
      active           = true

      interval = "60s"


    },
    "storage_total_byte_seconds" = {
      type             = "gauge"
      description      = <<-EOF
          Total daily storage in byte*seconds used by the bucket, grouped by storage class. This value is measured once per day, and there might be a delay after measuring before the value becomes available in Cloud Monitoring. Once available, the value is repeated at each sampling interval throughout the day. For this metric, the sampling period is a reporting period, not a measurement period. Sampled every 300s and may take up to 600s to display.
      EOF
      launchStage      = "GA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "none"
      googleMetricPath = "storage.googleapis.com/storage/total_byte_seconds"
      active           = true

      interval = "60s"


    },
    "storage_total_bytes" = {
      type             = "gauge"
      description      = <<-EOF
          Total size of all objects in the bucket, grouped by storage class. This value is measured once per day, and there might be a delay after measuring before the value becomes available in Cloud Monitoring. Once available, the value is repeated at each sampling interval throughout the day. For this metric, the sampling period is a reporting period, not a measurement period. Sampled every 300s and may take up to 600s to display.
      EOF
      launchStage      = "GA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "none"
      googleMetricPath = "storage.googleapis.com/storage/total_bytes"
      active           = true

      interval = "60s"


    },
    "agent_connected" = {
      type             = "gauge"
      description      = <<-EOF
          Indicates whether or not a Transfer Service agent is connected. Sampled every 60s and may take up to 60s to display.
      EOF
      launchStage      = "BETA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "none"
      googleMetricPath = "storagetransfer.googleapis.com/agent/connected"
      active           = false

      interval = "60s"


    },
    "agent_transferred_bytes_count" = {
      type             = "delta"
      description      = <<-EOF
          Delta of bytes transferred by a Transfer Service agent. Sampled every 60s and may take up to 60s to display.
      EOF
      launchStage      = "BETA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "none"
      googleMetricPath = "storagetransfer.googleapis.com/agent/transferred_bytes_count"
      active           = false

      interval = "60s"


    },
  }
}
