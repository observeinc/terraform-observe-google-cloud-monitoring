
######################
# This file is autogenerated
# run serviceUtilities.py in service directory to create this file
# serviceUtilities.py -h for list of commands and options
######################
locals { metrics_definitions = {
  billable_instance_time = {
    type               = "delta"
    description        = <<-EOF
                    Billable time aggregated across all container instances. For a given container instance, billable time occurs when the container instance is starting or at least one request is being processed. Billable time is rounded up to the nearest 100 milliseconds. Examples: If a revision with 2 container instances has been continuously serving traffic in the last minute, the value is 2s/s with the default "rate" aligner. If a single request lasting 30ms was received by a revision in the past minute, it is rounded up to 100ms and averaged to 1.7ms/s over the minute with the default "rate" aligner.
                EOF
    launchStage        = "GA"
    rollup             = "avg"
    aggregate          = "sum"
    metricCategory     = "none"
    google_metric_path = "run.googleapis.com/container/billable_instance_time"
    label              = "Billable Instance Time"
    unit               = "s"
    metricBin          = "container"
    valuetype          = "DOUBLE"

  }
  cpu_allocation_time = {
    type               = "delta"
    description        = <<-EOF
                    Container CPU allocation in seconds.
                EOF
    launchStage        = "GA"
    rollup             = "avg"
    aggregate          = "sum"
    metricCategory     = "cpu"
    google_metric_path = "run.googleapis.com/container/cpu/allocation_time"
    label              = "Container CPU Allocation"
    unit               = "s{CPU}"
    metricBin          = "container"
    valuetype          = "DOUBLE"

  }
  cpu_utilizations = {
    type               = "delta"
    description        = <<-EOF
                    Container CPU utilization distribution across all container instances.
                EOF
    launchStage        = "GA"
    rollup             = "avg"
    aggregate          = "sum"
    metricCategory     = "cpu"
    google_metric_path = "run.googleapis.com/container/cpu/utilizations"
    label              = "Container CPU Utilization"
    unit               = "10^2.%"
    metricBin          = "container"
    valuetype          = "DISTRIBUTION"

  }
  instance_count = {
    type               = "gauge"
    description        = <<-EOF
                    Number of container instances that exist, broken down by state.
                EOF
    launchStage        = "GA"
    rollup             = "avg"
    aggregate          = "sum"
    metricCategory     = "none"
    google_metric_path = "run.googleapis.com/container/instance_count"
    label              = "Instance Count"
    unit               = "1"
    metricBin          = "container"
    valuetype          = "INT64"

  }
  max_request_concurrencies = {
    type               = "delta"
    description        = <<-EOF
                    Distribution of the maximum number number of concurrent requests being served by each container instance over a minute. Filter by 'state' = 'active' only get the concurrency of active container instances.
                EOF
    launchStage        = "GA"
    rollup             = "avg"
    aggregate          = "sum"
    metricCategory     = "none"
    google_metric_path = "run.googleapis.com/container/max_request_concurrencies"
    label              = "Max Concurrent Requests"
    unit               = "1"
    metricBin          = "container"
    valuetype          = "DISTRIBUTION"

  }
  memory_allocation_time = {
    type               = "delta"
    description        = <<-EOF
                    Container memory allocation in Gigabytes-seconds.
                EOF
    launchStage        = "GA"
    rollup             = "avg"
    aggregate          = "sum"
    metricCategory     = "memory"
    google_metric_path = "run.googleapis.com/container/memory/allocation_time"
    label              = "Container Memory Allocation"
    unit               = "GiBy.s"
    metricBin          = "container"
    valuetype          = "DOUBLE"

  }
  memory_utilizations = {
    type               = "delta"
    description        = <<-EOF
                    Container memory utilization distribution across all container instances.
                EOF
    launchStage        = "GA"
    rollup             = "avg"
    aggregate          = "sum"
    metricCategory     = "memory"
    google_metric_path = "run.googleapis.com/container/memory/utilizations"
    label              = "Container Memory Utilization"
    unit               = "10^2.%"
    metricBin          = "container"
    valuetype          = "DISTRIBUTION"

  }
  network_received_bytes_count = {
    type               = "delta"
    description        = <<-EOF
                    Incoming socket and HTTP response traffic, in bytes.
                EOF
    launchStage        = "GA"
    rollup             = "avg"
    aggregate          = "sum"
    metricCategory     = "network"
    google_metric_path = "run.googleapis.com/container/network/received_bytes_count"
    label              = "Received Bytes"
    unit               = "By"
    metricBin          = "container"
    valuetype          = "INT64"

  }
  network_sent_bytes_count = {
    type               = "delta"
    description        = <<-EOF
                    Outgoing socket and HTTP response traffic, in bytes.
                EOF
    launchStage        = "GA"
    rollup             = "avg"
    aggregate          = "sum"
    metricCategory     = "network"
    google_metric_path = "run.googleapis.com/container/network/sent_bytes_count"
    label              = "Sent Bytes"
    unit               = "By"
    metricBin          = "container"
    valuetype          = "INT64"

  }
  network_throttled_inbound_bytes_count = {
    type               = "delta"
    description        = <<-EOF
                    Inbound bytes dropped due to network throttling.
                EOF
    launchStage        = "BETA"
    rollup             = "avg"
    aggregate          = "sum"
    metricCategory     = "network"
    google_metric_path = "run.googleapis.com/container/network/throttled_inbound_bytes_count"
    label              = "Inbound bytes throttled"
    unit               = "By"
    metricBin          = "container"
    valuetype          = "INT64"

  }
  network_throttled_inbound_packets_count = {
    type               = "delta"
    description        = <<-EOF
                    Inbound packets dropped due to network throttling.
                EOF
    launchStage        = "BETA"
    rollup             = "avg"
    aggregate          = "sum"
    metricCategory     = "network"
    google_metric_path = "run.googleapis.com/container/network/throttled_inbound_packets_count"
    label              = "Inbound packets throttled"
    unit               = "By"
    metricBin          = "container"
    valuetype          = "INT64"

  }
  network_throttled_outbound_bytes_count = {
    type               = "delta"
    description        = <<-EOF
                    Outbound bytes dropped due to network throttling.
                EOF
    launchStage        = "BETA"
    rollup             = "avg"
    aggregate          = "sum"
    metricCategory     = "network"
    google_metric_path = "run.googleapis.com/container/network/throttled_outbound_bytes_count"
    label              = "Outbound bytes throttled"
    unit               = "By"
    metricBin          = "container"
    valuetype          = "INT64"

  }
  network_throttled_outbound_packets_count = {
    type               = "delta"
    description        = <<-EOF
                    Outbound packets dropped due to network throttling.
                EOF
    launchStage        = "BETA"
    rollup             = "avg"
    aggregate          = "sum"
    metricCategory     = "network"
    google_metric_path = "run.googleapis.com/container/network/throttled_outbound_packets_count"
    label              = "Outbound packets throttled"
    unit               = "By"
    metricBin          = "container"
    valuetype          = "INT64"

  }
  startup_latencies = {
    type               = "delta"
    description        = <<-EOF
                    Distribution of time spent starting a new container instance in milliseconds.
                EOF
    launchStage        = "BETA"
    rollup             = "avg"
    aggregate          = "sum"
    metricCategory     = "none"
    google_metric_path = "run.googleapis.com/container/startup_latencies"
    label              = "Container startup latency"
    unit               = "ms"
    metricBin          = "container"
    valuetype          = "DISTRIBUTION"

  }
  completed_execution_count = {
    type               = "delta"
    description        = <<-EOF
                    Number of completed job executions and their result.
                EOF
    launchStage        = "GA"
    rollup             = "avg"
    aggregate          = "sum"
    metricCategory     = "none"
    google_metric_path = "run.googleapis.com/job/completed_execution_count"
    label              = "Completed Executions"
    unit               = "1"
    metricBin          = "job"
    valuetype          = "INT64"

  }
  completed_task_attempt_count = {
    type               = "delta"
    description        = <<-EOF
                    Number of completed task attempts and its corresponding exit result.
                EOF
    launchStage        = "GA"
    rollup             = "avg"
    aggregate          = "sum"
    metricCategory     = "none"
    google_metric_path = "run.googleapis.com/job/completed_task_attempt_count"
    label              = "Completed exit result and task attempts"
    unit               = "1"
    metricBin          = "job"
    valuetype          = "INT64"

  }
  running_executions = {
    type               = "gauge"
    description        = <<-EOF
                    Number of running job executions.
                EOF
    launchStage        = "GA"
    rollup             = "avg"
    aggregate          = "sum"
    metricCategory     = "none"
    google_metric_path = "run.googleapis.com/job/running_executions"
    label              = "Running Executions"
    unit               = "1"
    metricBin          = "job"
    valuetype          = "INT64"

  }
  running_task_attempts = {
    type               = "gauge"
    description        = <<-EOF
                    Number of running task attempts.
                EOF
    launchStage        = "GA"
    rollup             = "avg"
    aggregate          = "sum"
    metricCategory     = "none"
    google_metric_path = "run.googleapis.com/job/running_task_attempts"
    label              = "Running task attempts"
    unit               = "1"
    metricBin          = "job"
    valuetype          = "INT64"

  }
  request_count = {
    type               = "delta"
    description        = <<-EOF
                    Number of requests reaching the revision. Excludes requests that are not reaching your container instances for example, unauthorized requests or when maximum number of instances is reached. Captured at the end of the request lifecycle.
                EOF
    launchStage        = "GA"
    rollup             = "avg"
    aggregate          = "sum"
    metricCategory     = "none"
    google_metric_path = "run.googleapis.com/request_count"
    label              = "Request Count"
    unit               = "1"
    metricBin          = "none"
    valuetype          = "INT64"

  }
  request_latencies = {
    type               = "delta"
    description        = <<-EOF
                    Distribution of request latency in milliseconds reaching the revision. Latency is measured from when the request reaches the running container to when it exits. Notably, it does not include container startup latency.
                EOF
    launchStage        = "GA"
    rollup             = "avg"
    aggregate          = "sum"
    metricCategory     = "none"
    google_metric_path = "run.googleapis.com/request_latencies"
    label              = "Request Latency"
    unit               = "ms"
    metricBin          = "none"
    valuetype          = "DISTRIBUTION"

  }
} }