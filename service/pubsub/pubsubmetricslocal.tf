locals {
  metrics_definitions = {
    "snapshot_backlog_bytes" = {
      type             = "gauge"
      description      = <<-EOF
          Total byte size of the messages retained in a snapshot. Sampled every 60s and may take up to 120s to display.
      EOF
      launchStage      = "GA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "none"
      googleMetricPath = "pubsub.googleapis.com/snapshot/backlog_bytes"
      label            = "Snapshot backlog bytes"
      active           = true


      interval = "60s"

      unit = "By"


    },
    "snapshot_backlog_bytes_by_region" = {
      type             = "gauge"
      description      = <<-EOF
          Total byte size of the messages retained in a snapshot, broken down by Cloud region. Sampled every 60s and may take up to 120s to display.
      EOF
      launchStage      = "GA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "none"
      googleMetricPath = "pubsub.googleapis.com/snapshot/backlog_bytes_by_region"
      label            = "Snapshot backlog bytes by region"
      active           = true


      interval = "60s"

      unit = "By"


    },
    "snapshot_config_updates_count" = {
      type             = "delta"
      description      = <<-EOF
          Cumulative count of configuration changes, grouped by operation type and result. Sampled every 60s and may take up to 240s to display.
      EOF
      launchStage      = "GA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "none"
      googleMetricPath = "pubsub.googleapis.com/snapshot/config_updates_count"
      label            = "Snapshot updates"
      active           = true


      interval = "60s"




    },
    "snapshot_num_messages" = {
      type             = "gauge"
      description      = <<-EOF
          Number of messages retained in a snapshot. Sampled every 60s and may take up to 120s to display.
      EOF
      launchStage      = "GA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "none"
      googleMetricPath = "pubsub.googleapis.com/snapshot/num_messages"
      label            = "Snapshot messages"
      active           = true


      interval = "60s"




    },
    "snapshot_num_messages_by_region" = {
      type             = "gauge"
      description      = <<-EOF
          Number of messages retained in a snapshot, broken down by Cloud region. Sampled every 60s and may take up to 120s to display.
      EOF
      launchStage      = "GA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "none"
      googleMetricPath = "pubsub.googleapis.com/snapshot/num_messages_by_region"
      label            = "Snapshot messages by region"
      active           = true


      interval = "60s"




    },
    "snapshot_oldest_message_age" = {
      type             = "gauge"
      description      = <<-EOF
          Age in seconds of the oldest message retained in a snapshot. Sampled every 60s and may take up to 120s to display.
      EOF
      launchStage      = "GA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "none"
      googleMetricPath = "pubsub.googleapis.com/snapshot/oldest_message_age"
      label            = "Oldest snapshot message age"
      active           = true


      interval = "60s"

      unit = "s"


    },
    "snapshot_oldest_message_age_by_region" = {
      type             = "gauge"
      description      = <<-EOF
          Age in seconds of the oldest message retained in a snapshot, broken down by Cloud region. Sampled every 60s and may take up to 120s to display.
      EOF
      launchStage      = "GA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "none"
      googleMetricPath = "pubsub.googleapis.com/snapshot/oldest_message_age_by_region"
      label            = "Oldest snapshot message age by region"
      active           = true


      interval = "60s"

      unit = "s"


    },
    "subscription_ack_latencies" = {
      type             = "delta"
      description      = <<-EOF
          Distribution of ack latencies in milliseconds. The ack latency is the time between when Cloud Pub/Sub sends a message to a subscriber client and when Cloud Pub/Sub receives an Acknowledge request for that message. Sampled every 60s and may take up to 240s to display.
      EOF
      launchStage      = "BETA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "none"
      googleMetricPath = "pubsub.googleapis.com/subscription/ack_latencies"
      label            = "Ack latency"
      active           = false


      interval = "60s"

      unit = "ms"


    },
    "subscription_ack_message_count" = {
      type             = "delta"
      description      = <<-EOF
          Cumulative count of messages acknowledged by Acknowledge requests, grouped by delivery type. Sampled every 60s and may take up to 240s to display.
      EOF
      launchStage      = "GA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "none"
      googleMetricPath = "pubsub.googleapis.com/subscription/ack_message_count"
      label            = "Ack message count"
      active           = true


      interval = "60s"




    },
    "subscription_backlog_bytes" = {
      type             = "gauge"
      description      = <<-EOF
          Total byte size of the unacknowledged messages a.k.a. backlog messages in a subscription. Sampled every 60s and may take up to 120s to display.
      EOF
      launchStage      = "GA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "none"
      googleMetricPath = "pubsub.googleapis.com/subscription/backlog_bytes"
      label            = "Backlog size"
      active           = true


      interval = "60s"

      unit = "By"


    },
    "subscription_byte_cost" = {
      type             = "delta"
      description      = <<-EOF
          Cumulative cost of operations, measured in bytes. This is used to measure quota utilization. Sampled every 60s and may take up to 240s to display.
      EOF
      launchStage      = "GA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "none"
      googleMetricPath = "pubsub.googleapis.com/subscription/byte_cost"
      label            = "Subscription byte cost"
      active           = true


      interval = "60s"

      unit = "By"


    },
    "subscription_config_updates_count" = {
      type             = "delta"
      description      = <<-EOF
          Cumulative count of configuration changes for each subscription, grouped by operation type and result. Sampled every 60s and may take up to 240s to display.
      EOF
      launchStage      = "GA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "none"
      googleMetricPath = "pubsub.googleapis.com/subscription/config_updates_count"
      label            = "Subscription updates"
      active           = true


      interval = "60s"




    },
    "subscription_dead_letter_message_count" = {
      type             = "delta"
      description      = <<-EOF
          Cumulative count of messages published to dead letter topic, grouped by result. Sampled every 60s and may take up to 240s to display.
      EOF
      launchStage      = "GA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "none"
      googleMetricPath = "pubsub.googleapis.com/subscription/dead_letter_message_count"
      label            = "Dead letter message count"
      active           = true


      interval = "60s"




    },
    "subscription_delivery_latency_health_score" = {
      type             = "gauge"
      description      = <<-EOF
          A score that measures the health of a subscription over a 10 minute rolling window. Sampled every 60s and may take up to 360s to display.
      EOF
      launchStage      = "BETA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "none"
      googleMetricPath = "pubsub.googleapis.com/subscription/delivery_latency_health_score"
      label            = "Delivery latency health score"
      active           = false


      interval = "60s"




    },
    "subscription_exactly_once_warning_count" = {
      type             = "delta"
      description      = <<-EOF
          Count of instances acks and modacks that may have failed that may lead to message redeliveries. Sampled every 60s and may take up to 240s to display.
      EOF
      launchStage      = "BETA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "none"
      googleMetricPath = "pubsub.googleapis.com/subscription/exactly_once_warning_count"
      label            = "Exactly once delivery warning"
      active           = false


      interval = "60s"




    },
    "subscription_expired_ack_deadlines_count" = {
      type             = "delta"
      description      = <<-EOF
          Cumulative count of messages whose ack deadline expired while the message was outstanding to a subscriber client. Sampled every 60s and may take up to 240s to display.
      EOF
      launchStage      = "BETA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "none"
      googleMetricPath = "pubsub.googleapis.com/subscription/expired_ack_deadlines_count"
      label            = "Expired ack deadlines count"
      active           = false


      interval = "60s"




    },
    "subscription_mod_ack_deadline_message_count" = {
      type             = "delta"
      description      = <<-EOF
          Cumulative count of messages whose deadline was updated by ModifyAckDeadline requests, grouped by delivery type. Sampled every 60s and may take up to 240s to display.
      EOF
      launchStage      = "GA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "none"
      googleMetricPath = "pubsub.googleapis.com/subscription/mod_ack_deadline_message_count"
      label            = "Mod ack deadline message count"
      active           = true


      interval = "60s"




    },
    "subscription_mod_ack_deadline_message_operation_count" = {
      type             = "delta"
      description      = <<-EOF
          Cumulative count of ModifyAckDeadline message operations, grouped by result. This metric is deprecated. Use subscription/mod_ack_deadline_request_count instead. Sampled every 60s and may take up to 240s to display.
      EOF
      launchStage      = "DEPRECATED"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "none"
      googleMetricPath = "pubsub.googleapis.com/subscription/mod_ack_deadline_message_operation_count"
      label            = "ModifyAckDeadline message operations"
      active           = false


      interval = "60s"




    },
    "subscription_mod_ack_deadline_request_count" = {
      type             = "delta"
      description      = <<-EOF
          Cumulative count of ModifyAckDeadline requests, grouped by result. Sampled every 60s and may take up to 120s to display.
      EOF
      launchStage      = "GA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "none"
      googleMetricPath = "pubsub.googleapis.com/subscription/mod_ack_deadline_request_count"
      label            = "ModifyAckDeadline requests"
      active           = true


      interval = "60s"




    },
    "subscription_num_outstanding_messages" = {
      type             = "gauge"
      description      = <<-EOF
          Number of messages delivered to a subscription's push endpoint, but not yet acknowledged. Sampled every 60s and may take up to 240s to display.
      EOF
      launchStage      = "GA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "none"
      googleMetricPath = "pubsub.googleapis.com/subscription/num_outstanding_messages"
      label            = "Outstanding push messages"
      active           = true


      interval = "60s"




    },
    "subscription_num_retained_acked_messages" = {
      type             = "gauge"
      description      = <<-EOF
          Number of acknowledged messages retained in a subscription. Sampled every 60s and may take up to 120s to display.
      EOF
      launchStage      = "ALPHA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "none"
      googleMetricPath = "pubsub.googleapis.com/subscription/num_retained_acked_messages"
      label            = "Retained acked messages"
      active           = false


      interval = "60s"




    },
    "subscription_num_retained_acked_messages_by_region" = {
      type             = "gauge"
      description      = <<-EOF
          Number of acknowledged messages retained in a subscription, broken down by Cloud region. Sampled every 60s and may take up to 120s to display.
      EOF
      launchStage      = "BETA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "none"
      googleMetricPath = "pubsub.googleapis.com/subscription/num_retained_acked_messages_by_region"
      label            = "Retained acked messages by region"
      active           = false


      interval = "60s"




    },
    "subscription_num_unacked_messages_by_region" = {
      type             = "gauge"
      description      = <<-EOF
          Number of unacknowledged messages in a subscription, broken down by Cloud region. Sampled every 60s and may take up to 120s to display.
      EOF
      launchStage      = "BETA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "none"
      googleMetricPath = "pubsub.googleapis.com/subscription/num_unacked_messages_by_region"
      label            = "Unacked messages by region"
      active           = false


      interval = "60s"




    },
    "subscription_num_undelivered_messages" = {
      type             = "gauge"
      description      = <<-EOF
          Number of unacknowledged messages a.k.a. backlog messages in a subscription. Sampled every 60s and may take up to 120s to display.
      EOF
      launchStage      = "GA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "none"
      googleMetricPath = "pubsub.googleapis.com/subscription/num_undelivered_messages"
      label            = "Unacked messages"
      active           = true


      interval = "60s"




    },
    "subscription_oldest_retained_acked_message_age" = {
      type             = "gauge"
      description      = <<-EOF
          Age in seconds of the oldest acknowledged message retained in a subscription. Sampled every 60s and may take up to 120s to display.
      EOF
      launchStage      = "GA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "none"
      googleMetricPath = "pubsub.googleapis.com/subscription/oldest_retained_acked_message_age"
      label            = "Oldest retained acked message age"
      active           = true


      interval = "60s"

      unit = "s"


    },
    "subscription_oldest_retained_acked_message_age_by_region" = {
      type             = "gauge"
      description      = <<-EOF
          Age in seconds of the oldest acknowledged message retained in a subscription, broken down by Cloud region. Sampled every 60s and may take up to 120s to display.
      EOF
      launchStage      = "GA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "none"
      googleMetricPath = "pubsub.googleapis.com/subscription/oldest_retained_acked_message_age_by_region"
      label            = "Oldest retained acked message age by region"
      active           = true


      interval = "60s"

      unit = "s"


    },
    "subscription_oldest_unacked_message_age" = {
      type             = "gauge"
      description      = <<-EOF
          Age in seconds of the oldest unacknowledged message a.k.a. backlog message in a subscription. Sampled every 60s and may take up to 120s to display.
      EOF
      launchStage      = "GA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "none"
      googleMetricPath = "pubsub.googleapis.com/subscription/oldest_unacked_message_age"
      label            = "Oldest unacked message age"
      active           = true


      interval = "60s"

      unit = "s"


    },
    "subscription_oldest_unacked_message_age_by_region" = {
      type             = "gauge"
      description      = <<-EOF
          Age in seconds of the oldest unacknowledged message in a subscription, broken down by Cloud region. Sampled every 60s and may take up to 120s to display.
      EOF
      launchStage      = "GA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "none"
      googleMetricPath = "pubsub.googleapis.com/subscription/oldest_unacked_message_age_by_region"
      label            = "Oldest unacked message age by region"
      active           = true


      interval = "60s"

      unit = "s"


    },
    "subscription_pull_ack_message_operation_count" = {
      type             = "delta"
      description      = <<-EOF
          Cumulative count of acknowledge message operations, grouped by result. This metric is deprecated. Use subscription/pull_ack_request_count instead. Sampled every 60s and may take up to 240s to display.
      EOF
      launchStage      = "DEPRECATED"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "none"
      googleMetricPath = "pubsub.googleapis.com/subscription/pull_ack_message_operation_count"
      label            = "Acknowledge message operations"
      active           = false


      interval = "60s"




    },
    "subscription_pull_ack_request_count" = {
      type             = "delta"
      description      = <<-EOF
          Cumulative count of acknowledge requests, grouped by result. Sampled every 60s and may take up to 120s to display.
      EOF
      launchStage      = "GA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "none"
      googleMetricPath = "pubsub.googleapis.com/subscription/pull_ack_request_count"
      label            = "Acknowledge requests"
      active           = true


      interval = "60s"




    },
    "subscription_pull_message_operation_count" = {
      type             = "delta"
      description      = <<-EOF
          Cumulative count of pull message operations, grouped by result. This metric is deprecated. Use subscription/pull_request_count instead. Sampled every 60s and may take up to 240s to display.
      EOF
      launchStage      = "DEPRECATED"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "none"
      googleMetricPath = "pubsub.googleapis.com/subscription/pull_message_operation_count"
      label            = "Pull operations"
      active           = false


      interval = "60s"




    },
    "subscription_pull_request_count" = {
      type             = "delta"
      description      = <<-EOF
          Cumulative count of pull requests, grouped by result. Sampled every 60s and may take up to 120s to display.
      EOF
      launchStage      = "GA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "none"
      googleMetricPath = "pubsub.googleapis.com/subscription/pull_request_count"
      label            = "Pull requests"
      active           = true


      interval = "60s"




    },
    "subscription_push_request_count" = {
      type             = "delta"
      description      = <<-EOF
          Cumulative count of push attempts, grouped by result. Unlike pulls, the push server implementation does not batch user messages. So each request only contains one user message. The push server retries on errors, so a given user message can appear multiple times. Sampled every 60s and may take up to 120s to display.
      EOF
      launchStage      = "GA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "none"
      googleMetricPath = "pubsub.googleapis.com/subscription/push_request_count"
      label            = "Push requests"
      active           = true


      interval = "60s"




    },
    "subscription_push_request_latencies" = {
      type             = "delta"
      description      = <<-EOF
          Distribution of push request latencies in microseconds, grouped by result. Sampled every 60s and may take up to 240s to display.
      EOF
      launchStage      = "GA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "none"
      googleMetricPath = "pubsub.googleapis.com/subscription/push_request_latencies"
      label            = "Push latency"
      active           = true


      interval = "60s"

      unit = "us"


    },
    "subscription_retained_acked_bytes" = {
      type             = "gauge"
      description      = <<-EOF
          Total byte size of the acknowledged messages retained in a subscription. Sampled every 60s and may take up to 120s to display.
      EOF
      launchStage      = "GA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "none"
      googleMetricPath = "pubsub.googleapis.com/subscription/retained_acked_bytes"
      label            = "Retained acked bytes"
      active           = true


      interval = "60s"

      unit = "By"


    },
    "subscription_retained_acked_bytes_by_region" = {
      type             = "gauge"
      description      = <<-EOF
          Total byte size of the acknowledged messages retained in a subscription, broken down by Cloud region. Sampled every 60s and may take up to 120s to display.
      EOF
      launchStage      = "GA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "none"
      googleMetricPath = "pubsub.googleapis.com/subscription/retained_acked_bytes_by_region"
      label            = "Retained acked bytes by region"
      active           = true


      interval = "60s"

      unit = "By"


    },
    "subscription_seek_request_count" = {
      type             = "delta"
      description      = <<-EOF
          Cumulative count of seek attempts, grouped by result. Sampled every 60s and may take up to 240s to display.
      EOF
      launchStage      = "GA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "none"
      googleMetricPath = "pubsub.googleapis.com/subscription/seek_request_count"
      label            = "Seek requests"
      active           = true


      interval = "60s"




    },
    "subscription_sent_message_count" = {
      type             = "delta"
      description      = <<-EOF
          Cumulative count of messages sent by Cloud Pub/Sub to subscriber clients, grouped by delivery type. Sampled every 60s and may take up to 240s to display.
      EOF
      launchStage      = "GA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "none"
      googleMetricPath = "pubsub.googleapis.com/subscription/sent_message_count"
      label            = "Sent message count"
      active           = true


      interval = "60s"




    },
    "subscription_streaming_pull_ack_message_operation_count" = {
      type             = "delta"
      description      = <<-EOF
          Cumulative count of StreamingPull acknowledge message operations, grouped by result. This metric is deprecated. Use subscription/streaming_pull_ack_request_count instead. Sampled every 60s and may take up to 120s to display.
      EOF
      launchStage      = "DEPRECATED"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "none"
      googleMetricPath = "pubsub.googleapis.com/subscription/streaming_pull_ack_message_operation_count"
      label            = "StreamingPull Acknowledge message operations"
      active           = false


      interval = "60s"




    },
    "subscription_streaming_pull_ack_request_count" = {
      type             = "delta"
      description      = <<-EOF
          Cumulative count of streaming pull requests with non-empty acknowledge ids, grouped by result. Sampled every 60s and may take up to 120s to display.
      EOF
      launchStage      = "GA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "none"
      googleMetricPath = "pubsub.googleapis.com/subscription/streaming_pull_ack_request_count"
      label            = "StreamingPull Acknowledge requests"
      active           = true


      interval = "60s"




    },
    "subscription_streaming_pull_message_operation_count" = {
      type             = "delta"
      description      = <<-EOF
          Cumulative count of streaming pull message operations, grouped by result. This metric is deprecated. Use subscription/streaming_pull_response_count instead. Sampled every 60s and may take up to 120s to display.
      EOF
      launchStage      = "DEPRECATED"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "none"
      googleMetricPath = "pubsub.googleapis.com/subscription/streaming_pull_message_operation_count"
      label            = "StreamingPull message operations"
      active           = false


      interval = "60s"




    },
    "subscription_streaming_pull_mod_ack_deadline_message_operation_count" = {
      type             = "delta"
      description      = <<-EOF
          Cumulative count of StreamingPull ModifyAckDeadline operations, grouped by result. This metric is deprecated. Use subscription/streaming_pull_mod_ack_deadline_request_count instead. Sampled every 60s and may take up to 120s to display.
      EOF
      launchStage      = "DEPRECATED"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "none"
      googleMetricPath = "pubsub.googleapis.com/subscription/streaming_pull_mod_ack_deadline_message_operation_count"
      label            = "StreamingPull ModifyAckDeadline message operations"
      active           = false


      interval = "60s"




    },
    "subscription_streaming_pull_mod_ack_deadline_request_count" = {
      type             = "delta"
      description      = <<-EOF
          Cumulative count of streaming pull requests with non-empty ModifyAckDeadline fields, grouped by result. Sampled every 60s and may take up to 120s to display.
      EOF
      launchStage      = "GA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "none"
      googleMetricPath = "pubsub.googleapis.com/subscription/streaming_pull_mod_ack_deadline_request_count"
      label            = "StreamingPull ModifyAckDeadline requests"
      active           = true


      interval = "60s"




    },
    "subscription_streaming_pull_response_count" = {
      type             = "delta"
      description      = <<-EOF
          Cumulative count of streaming pull responses, grouped by result. Sampled every 60s and may take up to 120s to display.
      EOF
      launchStage      = "GA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "none"
      googleMetricPath = "pubsub.googleapis.com/subscription/streaming_pull_response_count"
      label            = "StreamingPull responses"
      active           = true


      interval = "60s"




    },
    "subscription_unacked_bytes_by_region" = {
      type             = "gauge"
      description      = <<-EOF
          Total byte size of the unacknowledged messages in a subscription, broken down by Cloud region. Sampled every 60s and may take up to 120s to display.
      EOF
      launchStage      = "GA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "none"
      googleMetricPath = "pubsub.googleapis.com/subscription/unacked_bytes_by_region"
      label            = "Unacked bytes by region"
      active           = true


      interval = "60s"

      unit = "By"


    },
    "topic_byte_cost" = {
      type             = "delta"
      description      = <<-EOF
          Cost of operations, measured in bytes. This is used to measure utilization for quotas. Sampled every 60s and may take up to 240s to display.
      EOF
      launchStage      = "GA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "none"
      googleMetricPath = "pubsub.googleapis.com/topic/byte_cost"
      label            = "Topic byte cost"
      active           = true


      interval = "60s"

      unit = "By"


    },
    "topic_config_updates_count" = {
      type             = "delta"
      description      = <<-EOF
          Cumulative count of configuration changes, grouped by operation type and result. Sampled every 60s and may take up to 240s to display.
      EOF
      launchStage      = "GA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "none"
      googleMetricPath = "pubsub.googleapis.com/topic/config_updates_count"
      label            = "Topic updates"
      active           = true


      interval = "60s"




    },
    "topic_message_sizes" = {
      type             = "delta"
      description      = <<-EOF
          Distribution of publish message sizes in bytes. Sampled every 60s and may take up to 240s to display.
      EOF
      launchStage      = "GA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "none"
      googleMetricPath = "pubsub.googleapis.com/topic/message_sizes"
      label            = "Publish message size"
      active           = true


      interval = "60s"

      unit = "By"


    },
    "topic_num_retained_acked_messages_by_region" = {
      type             = "gauge"
      description      = <<-EOF
          Number of acknowledged messages retained in a topic, broken down by Cloud region. Sampled every 60s and may take up to 120s to display.
      EOF
      launchStage      = "BETA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "none"
      googleMetricPath = "pubsub.googleapis.com/topic/num_retained_acked_messages_by_region"
      label            = "Retained acked messages by region"
      active           = false


      interval = "60s"




    },
    "topic_num_retained_messages" = {
      type             = "gauge"
      description      = <<-EOF
          Number of messages retained in a topic. Sampled every 60s and may take up to 120s to display.
      EOF
      launchStage      = "BETA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "none"
      googleMetricPath = "pubsub.googleapis.com/topic/num_retained_messages"
      label            = "Retained messages"
      active           = false


      interval = "60s"




    },
    "topic_num_unacked_messages_by_region" = {
      type             = "gauge"
      description      = <<-EOF
          Number of unacknowledged messages in a topic, broken down by Cloud region. Sampled every 60s and may take up to 120s to display.
      EOF
      launchStage      = "BETA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "none"
      googleMetricPath = "pubsub.googleapis.com/topic/num_unacked_messages_by_region"
      label            = "Unacked messages by region"
      active           = false


      interval = "60s"




    },
    "topic_oldest_retained_acked_message_age_by_region" = {
      type             = "gauge"
      description      = <<-EOF
          Age in seconds of the oldest acknowledged message retained in a topic, broken down by Cloud region. Sampled every 60s and may take up to 120s to display.
      EOF
      launchStage      = "GA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "none"
      googleMetricPath = "pubsub.googleapis.com/topic/oldest_retained_acked_message_age_by_region"
      label            = "Oldest retained acked message age by region"
      active           = true


      interval = "60s"

      unit = "s"


    },
    "topic_oldest_retained_message_age" = {
      type             = "gauge"
      description      = <<-EOF
          Age in seconds of the oldest message retained in a topic. Sampled every 60s and may take up to 120s to display.
      EOF
      launchStage      = "BETA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "none"
      googleMetricPath = "pubsub.googleapis.com/topic/oldest_retained_message_age"
      label            = "Oldest retained message age"
      active           = false


      interval = "60s"

      unit = "s"


    },
    "topic_oldest_unacked_message_age_by_region" = {
      type             = "gauge"
      description      = <<-EOF
          Age in seconds of the oldest unacknowledged message in a topic, broken down by Cloud region. Sampled every 60s and may take up to 120s to display.
      EOF
      launchStage      = "GA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "none"
      googleMetricPath = "pubsub.googleapis.com/topic/oldest_unacked_message_age_by_region"
      label            = "Oldest unacked message age by region"
      active           = true


      interval = "60s"

      unit = "s"


    },
    "topic_retained_acked_bytes_by_region" = {
      type             = "gauge"
      description      = <<-EOF
          Total byte size of the acknowledged messages retained in a topic, broken down by Cloud region. Sampled every 60s and may take up to 120s to display.
      EOF
      launchStage      = "GA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "none"
      googleMetricPath = "pubsub.googleapis.com/topic/retained_acked_bytes_by_region"
      label            = "Retained acked bytes by region"
      active           = true


      interval = "60s"

      unit = "By"


    },
    "topic_retained_bytes" = {
      type             = "gauge"
      description      = <<-EOF
          Total byte size of the messages retained in a topic. Sampled every 60s and may take up to 120s to display.
      EOF
      launchStage      = "BETA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "none"
      googleMetricPath = "pubsub.googleapis.com/topic/retained_bytes"
      label            = "Retained bytes"
      active           = false


      interval = "60s"

      unit = "By"


    },
    "topic_send_message_operation_count" = {
      type             = "delta"
      description      = <<-EOF
          Cumulative count of publish message operations, grouped by result. This metric is deprecated. Apply a count aggregator on topic/message_sizes instead. Sampled every 60s and may take up to 240s to display.
      EOF
      launchStage      = "DEPRECATED"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "none"
      googleMetricPath = "pubsub.googleapis.com/topic/send_message_operation_count"
      label            = "Publish message operations"
      active           = false


      interval = "60s"




    },
    "topic_send_request_count" = {
      type             = "delta"
      description      = <<-EOF
          Cumulative count of publish requests, grouped by result. Sampled every 60s and may take up to 120s to display.
      EOF
      launchStage      = "GA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "none"
      googleMetricPath = "pubsub.googleapis.com/topic/send_request_count"
      label            = "Publish requests"
      active           = true


      interval = "60s"




    },
    "topic_unacked_bytes_by_region" = {
      type             = "gauge"
      description      = <<-EOF
          Total byte size of the unacknowledged messages in a topic, broken down by Cloud region. Sampled every 60s and may take up to 120s to display.
      EOF
      launchStage      = "GA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "none"
      googleMetricPath = "pubsub.googleapis.com/topic/unacked_bytes_by_region"
      label            = "Unacked bytes by region"
      active           = true


      interval = "60s"

      unit = "By"


    },
  }
}
