locals {
  agent_metrics_definitions = {
    "agent.googleapis.com/agent/api_request_count" = {
      type        = "cumulativeCounter"
      description = <<-EOF
          Count of API requests from the Monitoring agent. Linux only. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "agent"

    },
    "agent.googleapis.com/agent/log_entry_count" = {
      type        = "cumulativeCounter"
      description = <<-EOF
          Count of log entries written by the Logging agent. Linux only. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "agent"

    },
    "agent.googleapis.com/agent/log_entry_retry_count" = {
      type        = "cumulativeCounter"
      description = <<-EOF
          Count of log-entry writes that were retried by the Logging agent. Linux only. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "agent"

    },
    "agent.googleapis.com/agent/memory_usage" = {
      type        = "gauge"
      description = <<-EOF
          Memory in use by the Monitoring agent. Linux only. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "agent"

    },
    "agent.googleapis.com/agent/monitoring/point_count" = {
      type        = "cumulativeCounter"
      description = <<-EOF
          Count of metric points written by the agent to Cloud Monitoring. Linux only. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "agent"

    },
    "agent.googleapis.com/agent/request_count" = {
      type        = "cumulativeCounter"
      description = <<-EOF
          Count of API requests from the Logging agent. Linux only. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "agent"

    },
    "agent.googleapis.com/agent/streamspace_size" = {
      type        = "gauge"
      description = <<-EOF
          Estimated total size of process labels written by the Monitoring agent over a 24-hour window. Linux only. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "agent"

    },
    "agent.googleapis.com/agent/streamspace_size_throttling" = {
      type        = "gauge"
      description = <<-EOF
          Whether the Monitoring agent is currently throttling process metrics. Linux only. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "agent"

    },
    "agent.googleapis.com/agent/uptime" = {
      type        = "cumulativeCounter"
      description = <<-EOF
          Uptime of Monitoring agent or Logging agent. Linux only. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "agent"

    },
    "agent.googleapis.com/apache/connections" = {
      type        = "gauge"
      description = <<-EOF
          The number of active connections currently attached to the HTTP server. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "apache"

    },
    "agent.googleapis.com/apache/idle_workers" = {
      type        = "gauge"
      description = <<-EOF
          The number of idle workers currently attached to the HTTP server. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "apache"

    },
    "agent.googleapis.com/apache/request_count" = {
      type        = "cumulativeCounter"
      description = <<-EOF
          Total requests serviced by the HTTP server. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "apache"

    },
    "agent.googleapis.com/apache/scoreboard" = {
      type        = "gauge"
      description = <<-EOF
          Apache HTTP server scoreboard values. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "apache"

    },
    "agent.googleapis.com/apache/traffic" = {
      type        = "cumulativeCounter"
      description = <<-EOF
          Total HTTP server traffic. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "apache"

    },
    "agent.googleapis.com/cassandra/cache/hits" = {
      type        = "cumulativeCounter"
      description = <<-EOF
          Key cache hit count for the table. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "cassandra"

    },
    "agent.googleapis.com/cassandra/client_request/latency/50p" = {
      type        = "gauge"
      description = <<-EOF
          Latency of standard read requests. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "cassandra"

    },
    "agent.googleapis.com/cassandra/client_request/latency/95p" = {
      type        = "gauge"
      description = <<-EOF
          Latency of standard read requests. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "cassandra"

    },
    "agent.googleapis.com/cassandra/client_request/latency/99p" = {
      type        = "gauge"
      description = <<-EOF
          Latency of standard read requests. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "cassandra"

    },
    "agent.googleapis.com/cassandra/client_request/latency/max" = {
      type        = "gauge"
      description = <<-EOF
          Latency of standard read requests. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "cassandra"

    },
    "agent.googleapis.com/cassandra/column_family/compression_ratio" = {
      type        = "gauge"
      description = <<-EOF
          Current compression ratio for all SSTables. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "cassandra"

    },
    "agent.googleapis.com/cassandra/column_family/max_row_size" = {
      type        = "gauge"
      description = <<-EOF
          Size of the largest compacted row. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "cassandra"

    },
    "agent.googleapis.com/cassandra/commitlog_total_size" = {
      type        = "gauge"
      description = <<-EOF
          Current data size of all commit log segments. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "cassandra"

    },
    "agent.googleapis.com/cassandra/completed_tasks" = {
      type        = "cumulativeCounter"
      description = <<-EOF
          Number of completed tasks in queue. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "cassandra"

    },
    "agent.googleapis.com/cassandra/current_tasks" = {
      type        = "gauge"
      description = <<-EOF
          Number of tasks in queue with the given task status. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "cassandra"

    },
    "agent.googleapis.com/cassandra/dropped_message/dropped_count" = {
      type        = "cumulativeCounter"
      description = <<-EOF
          Total number of dropped messages for the mutation. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "cassandra"

    },
    "agent.googleapis.com/cassandra/storage_service_exception_count" = {
      type        = "cumulativeCounter"
      description = <<-EOF
          The number of exceptions thrown by the storage operations. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "cassandra"

    },
    "agent.googleapis.com/cassandra/storage_service_load" = {
      type        = "gauge"
      description = <<-EOF
          Total disk space used for this node. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "cassandra"

    },
    "agent.googleapis.com/couchdb/average_request_time" = {
      type        = "gauge"
      description = <<-EOF
          Average request time. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "couchdb"

    },
    "agent.googleapis.com/couchdb/httpd/bulk_request_count" = {
      type        = "cumulativeCounter"
      description = <<-EOF
          Bulk requests count. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "couchdb"

    },
    "agent.googleapis.com/couchdb/httpd/request_count" = {
      type        = "cumulativeCounter"
      description = <<-EOF
          Requests count. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "couchdb"

    },
    "agent.googleapis.com/couchdb/httpd/request_method_count" = {
      type        = "cumulativeCounter"
      description = <<-EOF
          HTTP request method count. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "couchdb"

    },
    "agent.googleapis.com/couchdb/httpd/response_code_count" = {
      type        = "cumulativeCounter"
      description = <<-EOF
          HTTP response status code count. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "couchdb"

    },
    "agent.googleapis.com/couchdb/httpd/temporary_view_read_count" = {
      type        = "cumulativeCounter"
      description = <<-EOF
          Temporary view reads count. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "couchdb"

    },
    "agent.googleapis.com/couchdb/httpd/view_read_count" = {
      type        = "cumulativeCounter"
      description = <<-EOF
          View reads count. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "couchdb"

    },
    "agent.googleapis.com/couchdb/open_databases" = {
      type        = "gauge"
      description = <<-EOF
          Number of open databases. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "couchdb"

    },
    "agent.googleapis.com/couchdb/open_files" = {
      type        = "gauge"
      description = <<-EOF
          Number of open files. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "couchdb"

    },
    "agent.googleapis.com/couchdb/read_count" = {
      type        = "cumulativeCounter"
      description = <<-EOF
          Database read count. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "couchdb"

    },
    "agent.googleapis.com/couchdb/write_count" = {
      type        = "cumulativeCounter"
      description = <<-EOF
          Database write count. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "couchdb"

    },
    "agent.googleapis.com/cpu/load_15m" = {
      type        = "gauge"
      description = <<-EOF
          Load average over the last 15 minutes. Linux only. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "cpu"

    },
    "agent.googleapis.com/cpu/load_1m" = {
      type        = "gauge"
      description = <<-EOF
          Load average over the last 1 minute. Linux only. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "cpu"

    },
    "agent.googleapis.com/cpu/load_5m" = {
      type        = "gauge"
      description = <<-EOF
          Load average over the last 5 minutes. Linux only. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "cpu"

    },
    "agent.googleapis.com/cpu/usage_time" = {
      type        = "cumulativeCounter"
      description = <<-EOF
          Total time the CPU spent in different states. This value is reported from inside the VM and can differ from `compute.googleapis.com/instance/cpu/usage_time`, which is reported by the hypervisor for the VM. Linux only. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "cpu"

    },
    "agent.googleapis.com/cpu/utilization" = {
      type        = "gauge"
      description = <<-EOF
          Percentage of the total CPU capacity spent in different states. This value is reported from inside the VM and can differ from `compute.googleapis.com/instance/cpu/utilization`, which is reported by the hypervisor for the VM. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "cpu"

    },
    "agent.googleapis.com/disk/bytes_used" = {
      type        = "gauge"
      description = <<-EOF
          Current number of disk bytes used by state. Summing the values of all states yields the total available disk space. Linux only. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "disk"

    },
    "agent.googleapis.com/disk/io_time" = {
      type        = "cumulativeCounter"
      description = <<-EOF
          Cumulative time spent while I/O operations are in queue and when the disks are busy. The value of this metric increases when there is at least one I/O operation pending or in progress. This value corresponds to Field 10 in the https://www.kernel.org/doc/Documentation/iostats.txt documentation. Linux only. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "disk"

    },
    "agent.googleapis.com/disk/merged_operations" = {
      type        = "cumulativeCounter"
      description = <<-EOF
          Total count of merged disk operations by direction. Linux only. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "disk"

    },
    "agent.googleapis.com/disk/operation_count" = {
      type        = "cumulativeCounter"
      description = <<-EOF
          Total count of disk operations by direction. Linux only. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "disk"

    },
    "agent.googleapis.com/disk/operation_time" = {
      type        = "cumulativeCounter"
      description = <<-EOF
          Average time to complete a disk operation multiplied by wall clock time. When aligned as a rate, the value is the average time to complete a disk operation. Linux only. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "disk"

    },
    "agent.googleapis.com/disk/pending_operations" = {
      type        = "gauge"
      description = <<-EOF
          Current count of pending disk operations. Linux only. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "disk"

    },
    "agent.googleapis.com/disk/percent_used" = {
      type        = "gauge"
      description = <<-EOF
          Current percentage of the disk used by state. The utilization is between 0.0 and 100.0. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "disk"

    },
    "agent.googleapis.com/disk/read_bytes_count" = {
      type        = "cumulativeCounter"
      description = <<-EOF
          Total number of disk bytes that have been read. Linux only. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "disk"

    },
    "agent.googleapis.com/disk/weighted_io_time" = {
      type        = "cumulativeCounter"
      description = <<-EOF
          Total time spent on disk I/O operations weighted by the number of in-progress I/Os. This metric provides a measure of the I/O completion time and of the size of the backlog that might be accumulating. Linux only. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "disk"

    },
    "agent.googleapis.com/disk/write_bytes_count" = {
      type        = "cumulativeCounter"
      description = <<-EOF
          Total number of disk bytes that have been written. Linux only. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "disk"

    },
    "agent.googleapis.com/elasticsearch/cache_memory_usage" = {
      type        = "gauge"
      description = <<-EOF
          Size in bytes of the caches. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "elasticsearch"

    },
    "agent.googleapis.com/elasticsearch/field_eviction_count" = {
      type        = "cumulativeCounter"
      description = <<-EOF
          Evictions from field cache. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "elasticsearch"

    },
    "agent.googleapis.com/elasticsearch/filter_cache_eviction_count" = {
      type        = "cumulativeCounter"
      description = <<-EOF
          Evictions from filter cache. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "elasticsearch"

    },
    "agent.googleapis.com/elasticsearch/gc_collection_count" = {
      type        = "cumulativeCounter"
      description = <<-EOF
          Garbage collection count. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "elasticsearch"

    },
    "agent.googleapis.com/elasticsearch/memory_usage" = {
      type        = "gauge"
      description = <<-EOF
          Size in bytes of memory. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "elasticsearch"

    },
    "agent.googleapis.com/elasticsearch/network" = {
      type        = "cumulativeCounter"
      description = <<-EOF
          Number of bytes transmitted and received on the network. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "elasticsearch"

    },
    "agent.googleapis.com/elasticsearch/num_current_documents" = {
      type        = "gauge"
      description = <<-EOF
          Number of documents in the indexes on this node. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "elasticsearch"

    },
    "agent.googleapis.com/elasticsearch/num_data_nodes" = {
      type        = "gauge"
      description = <<-EOF
          Number of data nodes in the cluster. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "elasticsearch"

    },
    "agent.googleapis.com/elasticsearch/num_http_connections" = {
      type        = "gauge"
      description = <<-EOF
          Number of open HTTP connections to this node. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "elasticsearch"

    },
    "agent.googleapis.com/elasticsearch/num_nodes" = {
      type        = "gauge"
      description = <<-EOF
          Number of nodes in the cluster. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "elasticsearch"

    },
    "agent.googleapis.com/elasticsearch/num_open_files" = {
      type        = "gauge"
      description = <<-EOF
          Number of open file descriptors held by the server process. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "elasticsearch"

    },
    "agent.googleapis.com/elasticsearch/num_server_connections" = {
      type        = "gauge"
      description = <<-EOF
          Number of open network connections to the server. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "elasticsearch"

    },
    "agent.googleapis.com/elasticsearch/num_shards" = {
      type        = "gauge"
      description = <<-EOF
          Number of shards. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "elasticsearch"

    },
    "agent.googleapis.com/elasticsearch/operation_count" = {
      type        = "cumulativeCounter"
      description = <<-EOF
          Number of operations completed. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "elasticsearch"

    },
    "agent.googleapis.com/elasticsearch/operation_time" = {
      type        = "cumulativeCounter"
      description = <<-EOF
          Time in ms spent on operations. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "elasticsearch"

    },
    "agent.googleapis.com/elasticsearch/peak_threads" = {
      type        = "gauge"
      description = <<-EOF
          Maximum number of open threads that have been open concurrently in the server JVM process. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "elasticsearch"

    },
    "agent.googleapis.com/elasticsearch/storage_size" = {
      type        = "gauge"
      description = <<-EOF
          Size in bytes of the document storage on this node. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "elasticsearch"

    },
    "agent.googleapis.com/elasticsearch/threads" = {
      type        = "gauge"
      description = <<-EOF
          Number of open threads in the server JVM process. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "elasticsearch"

    },
    "agent.googleapis.com/hbase/ipc/connections" = {
      type        = "gauge"
      description = <<-EOF
          The number of open connections. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "hbase"

    },
    "agent.googleapis.com/hbase/ipc/queue_length" = {
      type        = "gauge"
      description = <<-EOF
          The current size of the IPC queue. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "hbase"

    },
    "agent.googleapis.com/hbase/ipc/traffic_count" = {
      type        = "cumulativeCounter"
      description = <<-EOF
          The number of bytes transmitted and received via IPC. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "hbase"

    },
    "agent.googleapis.com/hbase/master/average_load" = {
      type        = "gauge"
      description = <<-EOF
          The average master load. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "hbase"

    },
    "agent.googleapis.com/hbase/master/dead_region_servers" = {
      type        = "gauge"
      description = <<-EOF
          The number of dead region servers. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "hbase"

    },
    "agent.googleapis.com/hbase/master/live_region_servers" = {
      type        = "gauge"
      description = <<-EOF
          The number of live region servers. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "hbase"

    },
    "agent.googleapis.com/hbase/regionserver/block_cache/access_count" = {
      type        = "cumulativeCounter"
      description = <<-EOF
          The number of blocks of StoreFiles HFiles requested from the cache. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "hbase"

    },
    "agent.googleapis.com/hbase/regionserver/block_cache/evicted_blocks_count" = {
      type        = "cumulativeCounter"
      description = <<-EOF
          The number of blocks that had to be evicted from the block cache due to heap size constraints. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "hbase"

    },
    "agent.googleapis.com/hbase/regionserver/block_cache/hit_ratio_percent" = {
      type        = "gauge"
      description = <<-EOF
          The running block cache hit ratio 0 to 100. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "hbase"

    },
    "agent.googleapis.com/hbase/regionserver/block_cache/memory" = {
      type        = "gauge"
      description = <<-EOF
          Memory usage by the block cache. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "hbase"

    },
    "agent.googleapis.com/hbase/regionserver/block_cache/num_items" = {
      type        = "gauge"
      description = <<-EOF
          The number of blocks of StoreFiles HFiles in the cache. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "hbase"

    },
    "agent.googleapis.com/hbase/regionserver/call_queue/length" = {
      type        = "gauge"
      description = <<-EOF
          The length of the call queue. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "hbase"

    },
    "agent.googleapis.com/hbase/regionserver/compaction_queue/length" = {
      type        = "gauge"
      description = <<-EOF
          The length of the compaction queue the number of stores that have been targeted for compaction. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "hbase"

    },
    "agent.googleapis.com/hbase/regionserver/flush_queue/length" = {
      type        = "gauge"
      description = <<-EOF
          The number of enqueued regions in the MemStore awaiting flush. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "hbase"

    },
    "agent.googleapis.com/hbase/regionserver/memory/heap_usage" = {
      type        = "gauge"
      description = <<-EOF
          Heap space used by the regionserver. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "hbase"

    },
    "agent.googleapis.com/hbase/regionserver/memstore/files" = {
      type        = "gauge"
      description = <<-EOF
          The number of store files on the regionserver. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "hbase"

    },
    "agent.googleapis.com/hbase/regionserver/memstore/index_size" = {
      type        = "gauge"
      description = <<-EOF
          The size of the store file index on the regionserver. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "hbase"

    },
    "agent.googleapis.com/hbase/regionserver/memstore/open_stores" = {
      type        = "gauge"
      description = <<-EOF
          The number of stores open on the regionserver. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "hbase"

    },
    "agent.googleapis.com/hbase/regionserver/memstore/size" = {
      type        = "gauge"
      description = <<-EOF
          The sum of all the memstore sizes in the regionserver. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "hbase"

    },
    "agent.googleapis.com/hbase/regionserver/online_regions" = {
      type        = "gauge"
      description = <<-EOF
          The number of active regions in the regionserver. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "hbase"

    },
    "agent.googleapis.com/hbase/regionserver/request_count" = {
      type        = "cumulativeCounter"
      description = <<-EOF
          The number of requests. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "hbase"

    },
    "agent.googleapis.com/hbase/regionserver/requests/total_rate" = {
      type        = "gauge"
      description = <<-EOF
          The point-in-time number of RegionServer RPC calls. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "hbase"

    },
    "agent.googleapis.com/hbase/regionserver/slow_operation_count" = {
      type        = "cumulativeCounter"
      description = <<-EOF
          The number of slow log operations. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "hbase"

    },
    "agent.googleapis.com/hbase/thrift/batch_latency/average" = {
      type        = "gauge"
      description = <<-EOF
          Thrift latency for batch operations. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "hbase"

    },
    "agent.googleapis.com/hbase/thrift/call_latency/average" = {
      type        = "gauge"
      description = <<-EOF
          Thrift latency for all calls. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "hbase"

    },
    "agent.googleapis.com/hbase/thrift/call_queue/length" = {
      type        = "gauge"
      description = <<-EOF
          Thrift call queue length. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "hbase"

    },
    "agent.googleapis.com/hbase/thrift/slow_call_latency/average" = {
      type        = "gauge"
      description = <<-EOF
          Thrift latency for slow calls. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "hbase"

    },
    "agent.googleapis.com/hbase/thrift/time_in_queue/average" = {
      type        = "gauge"
      description = <<-EOF
          Thrift time spent in queue. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "hbase"

    },
    "agent.googleapis.com/iis/current_connections" = {
      type        = "gauge"
      description = <<-EOF
          Currently open connections to IIS. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "iis"

    },
    "agent.googleapis.com/iis/network/transferred_bytes_count" = {
      type        = "cumulativeCounter"
      description = <<-EOF
          Network bytes transferred by IIS. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "iis"

    },
    "agent.googleapis.com/iis/new_connection_count" = {
      type        = "cumulativeCounter"
      description = <<-EOF
          Connections opened to IIS. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "iis"

    },
    "agent.googleapis.com/iis/request_count" = {
      type        = "cumulativeCounter"
      description = <<-EOF
          Requests made to IIS. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "iis"

    },
    "agent.googleapis.com/interface/errors" = {
      type        = "cumulativeCounter"
      description = <<-EOF
          Total count of network errors. Linux only. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "interface"

    },
    "agent.googleapis.com/interface/packets" = {
      type        = "cumulativeCounter"
      description = <<-EOF
          Total count of packets sent over the network. Linux only. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "interface"

    },
    "agent.googleapis.com/interface/traffic" = {
      type        = "cumulativeCounter"
      description = <<-EOF
          Total number of bytes sent over the network. Linux only. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "interface"

    },
    "agent.googleapis.com/jvm/gc/count" = {
      type        = "cumulativeCounter"
      description = <<-EOF
          The total number of collections that have occurred. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "jvm"

    },
    "agent.googleapis.com/jvm/gc/time" = {
      type        = "cumulativeCounter"
      description = <<-EOF
          The accumulated collection elapsed time in milliseconds. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "jvm"

    },
    "agent.googleapis.com/jvm/memory/usage" = {
      type        = "gauge"
      description = <<-EOF
          The memory usage. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "jvm"

    },
    "agent.googleapis.com/jvm/os/cpu_time" = {
      type        = "cumulativeCounter"
      description = <<-EOF
          The CPU time used by the process on which the Java virtual machine is running. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "jvm"

    },
    "agent.googleapis.com/jvm/os/open_files" = {
      type        = "gauge"
      description = <<-EOF
          The number of open file descriptors. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "jvm"

    },
    "agent.googleapis.com/jvm/thread/num_daemon" = {
      type        = "gauge"
      description = <<-EOF
          The current number of live daemon threads. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "jvm"

    },
    "agent.googleapis.com/jvm/thread/num_live" = {
      type        = "gauge"
      description = <<-EOF
          The current number of live threads. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "jvm"

    },
    "agent.googleapis.com/jvm/thread/peak" = {
      type        = "gauge"
      description = <<-EOF
          The peak number of live threads. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "jvm"

    },
    "agent.googleapis.com/jvm/uptime" = {
      type        = "cumulativeCounter"
      description = <<-EOF
          The uptime of the Java virtual machine. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "jvm"

    },
    "agent.googleapis.com/kafka/broker/topics/failed_request_count" = {
      type        = "cumulativeCounter"
      description = <<-EOF
          The number of failed requests. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "kafka"

    },
    "agent.googleapis.com/kafka/broker/topics/incoming_message_count" = {
      type        = "cumulativeCounter"
      description = <<-EOF
          The number of incoming messages in all topics. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "kafka"

    },
    "agent.googleapis.com/kafka/broker/topics/traffic" = {
      type        = "cumulativeCounter"
      description = <<-EOF
          The number of bytes sent and received in all topics. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "kafka"

    },
    "agent.googleapis.com/kafka/controller/kafka/active" = {
      type        = "gauge"
      description = <<-EOF
          The number of active controllers in the cluster. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "kafka"

    },
    "agent.googleapis.com/kafka/controller/kafka/offline_partitions" = {
      type        = "gauge"
      description = <<-EOF
          The number of partitions that don’t have an active leader and are hence not writable or readable. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "kafka"

    },
    "agent.googleapis.com/kafka/controller/leader_elections/election_count" = {
      type        = "cumulativeCounter"
      description = <<-EOF
          The total number of leader elections. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "kafka"

    },
    "agent.googleapis.com/kafka/controller/leader_elections/unclean_count" = {
      type        = "cumulativeCounter"
      description = <<-EOF
          The total number of leader elections where the leader is out-of-sync. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "kafka"

    },
    "agent.googleapis.com/kafka/log/flush_count" = {
      type        = "cumulativeCounter"
      description = <<-EOF
          The number of log flushes. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "kafka"

    },
    "agent.googleapis.com/kafka/network/request_count" = {
      type        = "cumulativeCounter"
      description = <<-EOF
          The number of requests. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "kafka"

    },
    "agent.googleapis.com/kafka/purgatory/num_delayed_requests" = {
      type        = "gauge"
      description = <<-EOF
          The current number of delayed requests in purgatory. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "kafka"

    },
    "agent.googleapis.com/kafka/purgatory/size" = {
      type        = "gauge"
      description = <<-EOF
          The current number of requests in purgatory. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "kafka"

    },
    "agent.googleapis.com/kafka/replica_fetcher/max_lag" = {
      type        = "gauge"
      description = <<-EOF
          The maximum lag in messages between the follower and leader replicas. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "kafka"

    },
    "agent.googleapis.com/kafka/replica_fetcher/min_fetch_rate" = {
      type        = "gauge"
      description = <<-EOF
          The minimum rate at which the follower replicas send fetch requests to the leaders. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "kafka"

    },
    "agent.googleapis.com/kafka/replica_manager/isr/expand_count" = {
      type        = "cumulativeCounter"
      description = <<-EOF
          The number of replicas catching up ISR = in-sync replica. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "kafka"

    },
    "agent.googleapis.com/kafka/replica_manager/isr/shrink_count" = {
      type        = "cumulativeCounter"
      description = <<-EOF
          The number of replicas lagging behind ISR = in-sync replica. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "kafka"

    },
    "agent.googleapis.com/kafka/replica_manager/leaders" = {
      type        = "gauge"
      description = <<-EOF
          The current number of leaders on this broker. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "kafka"

    },
    "agent.googleapis.com/kafka/replica_manager/partitions" = {
      type        = "gauge"
      description = <<-EOF
          The current number of partitions on this broker. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "kafka"

    },
    "agent.googleapis.com/kafka/replica_manager/under_replicated_partitions" = {
      type        = "gauge"
      description = <<-EOF
          The current number of under-replicated partitions. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "kafka"

    },
    "agent.googleapis.com/memcached/command_count" = {
      type        = "cumulativeCounter"
      description = <<-EOF
          Commands executed. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "memcached"

    },
    "agent.googleapis.com/memcached/current_connections" = {
      type        = "gauge"
      description = <<-EOF
          Number of current connections to the cache. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "memcached"

    },
    "agent.googleapis.com/memcached/current_items" = {
      type        = "gauge"
      description = <<-EOF
          Number of items currently stored in the cache. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "memcached"

    },
    "agent.googleapis.com/memcached/eviction_count" = {
      type        = "cumulativeCounter"
      description = <<-EOF
          Cache item evictions. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "memcached"

    },
    "agent.googleapis.com/memcached/memory" = {
      type        = "gauge"
      description = <<-EOF
          Memory usage. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "memcached"

    },
    "agent.googleapis.com/memcached/network" = {
      type        = "cumulativeCounter"
      description = <<-EOF
          Bytes transferred over the network. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "memcached"

    },
    "agent.googleapis.com/memcached/operation_count" = {
      type        = "cumulativeCounter"
      description = <<-EOF
          Memcached operation hit/miss counts. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "memcached"

    },
    "agent.googleapis.com/memcached/operation_hitratio" = {
      type        = "gauge"
      description = <<-EOF
          Hit ratio for memcached operations, expressed as a percentage value between 0.0 and 100.0. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "memcached"

    },
    "agent.googleapis.com/memcached/rusage" = {
      type        = "cumulativeCounter"
      description = <<-EOF
          Accumulated user and system time. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "memcached"

    },
    "agent.googleapis.com/memcached/threads" = {
      type        = "gauge"
      description = <<-EOF
          Number of threads used by the memcached instance. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "memcached"

    },
    "agent.googleapis.com/memory/bytes_used" = {
      type        = "gauge"
      description = <<-EOF
          Current memory usage by memory state. Summing the values of all states yields the total memory on the machine. Linux only. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "memory"

    },
    "agent.googleapis.com/memory/percent_used" = {
      type        = "gauge"
      description = <<-EOF
          Current percentage of memory used by memory state. Summing percentages over all states yields 100 percent. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "memory"

    },
    "agent.googleapis.com/mongodb/cache/hits" = {
      type        = "cumulativeCounter"
      description = <<-EOF
          The number of cache hits. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "mongodb"

    },
    "agent.googleapis.com/mongodb/cache/misses" = {
      type        = "cumulativeCounter"
      description = <<-EOF
          The number of cache misses. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "mongodb"

    },
    "agent.googleapis.com/mongodb/collections" = {
      type        = "gauge"
      description = <<-EOF
          The number of collections. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "mongodb"

    },
    "agent.googleapis.com/mongodb/connections" = {
      type        = "gauge"
      description = <<-EOF
          The number of active server connections. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "mongodb"

    },
    "agent.googleapis.com/mongodb/data_size" = {
      type        = "gauge"
      description = <<-EOF
          The data size, in bytes. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "mongodb"

    },
    "agent.googleapis.com/mongodb/extents" = {
      type        = "gauge"
      description = <<-EOF
          The number of extents. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "mongodb"

    },
    "agent.googleapis.com/mongodb/global_lock_hold_time" = {
      type        = "cumulativeCounter"
      description = <<-EOF
          The time the global lock has been held. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "mongodb"

    },
    "agent.googleapis.com/mongodb/index_size" = {
      type        = "gauge"
      description = <<-EOF
          The index size, in bytes. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "mongodb"

    },
    "agent.googleapis.com/mongodb/indexes" = {
      type        = "gauge"
      description = <<-EOF
          The number of indexes. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "mongodb"

    },
    "agent.googleapis.com/mongodb/memory_usage" = {
      type        = "gauge"
      description = <<-EOF
          Mebibytes of memory used. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "mongodb"

    },
    "agent.googleapis.com/mongodb/objects" = {
      type        = "gauge"
      description = <<-EOF
          The number of objects. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "mongodb"

    },
    "agent.googleapis.com/mongodb/operation_count" = {
      type        = "cumulativeCounter"
      description = <<-EOF
          The number of operations executed. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "mongodb"

    },
    "agent.googleapis.com/mongodb/storage_size" = {
      type        = "gauge"
      description = <<-EOF
          The storage size, in bytes. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "mongodb"

    },
    "agent.googleapis.com/mssql/connections/user" = {
      type        = "gauge"
      description = <<-EOF
          Currently open connections to SQL server. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "mssql"

    },
    "agent.googleapis.com/mssql/transaction_rate" = {
      type        = "gauge"
      description = <<-EOF
          SQL server total transactions per second. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "mssql"

    },
    "agent.googleapis.com/mssql/write_transaction_rate" = {
      type        = "gauge"
      description = <<-EOF
          SQL server write transactions per second. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "mssql"

    },
    "agent.googleapis.com/mysql/buffer_pool/num_pages" = {
      type        = "gauge"
      description = <<-EOF
          Buffer pool page count. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "mysql"

    },
    "agent.googleapis.com/mysql/buffer_pool/operation_count" = {
      type        = "cumulativeCounter"
      description = <<-EOF
          Buffer pool operation count. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "mysql"

    },
    "agent.googleapis.com/mysql/buffer_pool_size" = {
      type        = "gauge"
      description = <<-EOF
          Buffer pool size. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "mysql"

    },
    "agent.googleapis.com/mysql/command_count" = {
      type        = "cumulativeCounter"
      description = <<-EOF
          MySQL command count. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "mysql"

    },
    "agent.googleapis.com/mysql/handler_count" = {
      type        = "cumulativeCounter"
      description = <<-EOF
          MySQL handler count. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "mysql"

    },
    "agent.googleapis.com/mysql/innodb/doublewrite_count" = {
      type        = "cumulativeCounter"
      description = <<-EOF
          InnoDB doublewrite buffer count. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "mysql"

    },
    "agent.googleapis.com/mysql/innodb/log_operation_count" = {
      type        = "cumulativeCounter"
      description = <<-EOF
          InnoDB log operation count. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "mysql"

    },
    "agent.googleapis.com/mysql/innodb/operation_count" = {
      type        = "cumulativeCounter"
      description = <<-EOF
          InnoDB operation count. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "mysql"

    },
    "agent.googleapis.com/mysql/innodb/page_operation_count" = {
      type        = "cumulativeCounter"
      description = <<-EOF
          InnoDB page operation count. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "mysql"

    },
    "agent.googleapis.com/mysql/innodb/row_lock_count" = {
      type        = "cumulativeCounter"
      description = <<-EOF
          InnoDB row lock count. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "mysql"

    },
    "agent.googleapis.com/mysql/innodb/row_operation_count" = {
      type        = "cumulativeCounter"
      description = <<-EOF
          InnoDB row operation count. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "mysql"

    },
    "agent.googleapis.com/mysql/lock_count" = {
      type        = "cumulativeCounter"
      description = <<-EOF
          MySQL lock count. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "mysql"

    },
    "agent.googleapis.com/mysql/qcache/operation_count" = {
      type        = "cumulativeCounter"
      description = <<-EOF
          QCache operation count. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "mysql"

    },
    "agent.googleapis.com/mysql/qcache/query_count" = {
      type        = "gauge"
      description = <<-EOF
          QCache query count. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "mysql"

    },
    "agent.googleapis.com/mysql/slave_replication_lag" = {
      type        = "gauge"
      description = <<-EOF
          Seconds behind master. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "mysql"

    },
    "agent.googleapis.com/mysql/sort_count" = {
      type        = "cumulativeCounter"
      description = <<-EOF
          MySQL sort count. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "mysql"

    },
    "agent.googleapis.com/mysql/thread_count" = {
      type        = "gauge"
      description = <<-EOF
          Thread count. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "mysql"

    },
    "agent.googleapis.com/network/tcp_connections" = {
      type        = "gauge"
      description = <<-EOF
          Current count of TCP connections. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "network"

    },
    "agent.googleapis.com/nginx/connections/accepted_count" = {
      type        = "cumulativeCounter"
      description = <<-EOF
          Total connections accepted. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "nginx"

    },
    "agent.googleapis.com/nginx/connections/current" = {
      type        = "gauge"
      description = <<-EOF
          The number of connections currently attached to Nginx. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "nginx"

    },
    "agent.googleapis.com/nginx/connections/handled_count" = {
      type        = "cumulativeCounter"
      description = <<-EOF
          Total connections handled. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "nginx"

    },
    "agent.googleapis.com/nginx/request_count" = {
      type        = "cumulativeCounter"
      description = <<-EOF
          The number of requests Nginx has serviced. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "nginx"

    },
    "agent.googleapis.com/pagefile/percent_used" = {
      type        = "gauge"
      description = <<-EOF
          Current percentage of pagefile used by state. Values are between 0.0 and 100.0. Windows only. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "pagefile"

    },
    "agent.googleapis.com/postgresql/blocks_read_count" = {
      type        = "cumulativeCounter"
      description = <<-EOF
          Number of blocks read. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "postgresql"

    },
    "agent.googleapis.com/postgresql/commit_count" = {
      type        = "cumulativeCounter"
      description = <<-EOF
          Number of commits. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "postgresql"

    },
    "agent.googleapis.com/postgresql/db_size" = {
      type        = "gauge"
      description = <<-EOF
          Database disk usage. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "postgresql"

    },
    "agent.googleapis.com/postgresql/num_backends" = {
      type        = "gauge"
      description = <<-EOF
          Number of backends. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "postgresql"

    },
    "agent.googleapis.com/postgresql/num_tuples" = {
      type        = "gauge"
      description = <<-EOF
          Number of tuples rows in the database. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "postgresql"

    },
    "agent.googleapis.com/postgresql/operation_count" = {
      type        = "cumulativeCounter"
      description = <<-EOF
          Number of db row operations. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "postgresql"

    },
    "agent.googleapis.com/postgresql/rollback_count" = {
      type        = "cumulativeCounter"
      description = <<-EOF
          Number of rollbacks. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "postgresql"

    },
    "agent.googleapis.com/processes/count_by_state" = {
      type        = "gauge"
      description = <<-EOF
          Count of processes in the given state. Linux only. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "processes"

    },
    "agent.googleapis.com/processes/cpu_time" = {
      type        = "cumulativeCounter"
      description = <<-EOF
          CPU time of the given process. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "processes"

    },
    "agent.googleapis.com/processes/disk/read_bytes_count" = {
      type        = "cumulativeCounter"
      description = <<-EOF
          Process disk read I/O. Linux only. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "processes"

    },
    "agent.googleapis.com/processes/disk/write_bytes_count" = {
      type        = "cumulativeCounter"
      description = <<-EOF
          Process disk write I/O. Linux only. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "processes"

    },
    "agent.googleapis.com/processes/fork_count" = {
      type        = "cumulativeCounter"
      description = <<-EOF
          Total number of processes forked. Linux only. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "processes"

    },
    "agent.googleapis.com/processes/rss_usage" = {
      type        = "gauge"
      description = <<-EOF
          Resident memory usage of the given process. Linux only. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "processes"

    },
    "agent.googleapis.com/processes/vm_usage" = {
      type        = "gauge"
      description = <<-EOF
          VM Usage of the given process. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "processes"

    },
    "agent.googleapis.com/rabbitmq/consumers" = {
      type        = "gauge"
      description = <<-EOF
          The number of consumers reading from the specified queue. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "rabbitmq"

    },
    "agent.googleapis.com/rabbitmq/delivery_rate" = {
      type        = "gauge"
      description = <<-EOF
          The rate per second at which messages are being delivered. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "rabbitmq"

    },
    "agent.googleapis.com/rabbitmq/num_messages" = {
      type        = "gauge"
      description = <<-EOF
          The number of messages in a queue. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "rabbitmq"

    },
    "agent.googleapis.com/rabbitmq/publish_rate" = {
      type        = "gauge"
      description = <<-EOF
          The rate per second at which messages are being published. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "rabbitmq"

    },
    "agent.googleapis.com/redis/changes_since_last_save" = {
      type        = "gauge"
      description = <<-EOF
          Change count since last save. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "redis"

    },
    "agent.googleapis.com/redis/clients/blocked" = {
      type        = "gauge"
      description = <<-EOF
          Number of blocked clients. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "redis"

    },
    "agent.googleapis.com/redis/clients/connected" = {
      type        = "gauge"
      description = <<-EOF
          Number of client connections. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "redis"

    },
    "agent.googleapis.com/redis/commands_processed" = {
      type        = "cumulativeCounter"
      description = <<-EOF
          The total number of commands processed. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "redis"

    },
    "agent.googleapis.com/redis/connections/slaves" = {
      type        = "gauge"
      description = <<-EOF
          Number of slave connections. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "redis"

    },
    "agent.googleapis.com/redis/connections/total" = {
      type        = "cumulativeCounter"
      description = <<-EOF
          The total number of connections accepted. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "redis"

    },
    "agent.googleapis.com/redis/expired_keys" = {
      type        = "cumulativeCounter"
      description = <<-EOF
          The total number of key expirations. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "redis"

    },
    "agent.googleapis.com/redis/memory/usage" = {
      type        = "gauge"
      description = <<-EOF
          Memory usage in bytes. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "redis"

    },
    "agent.googleapis.com/redis/memory/usage_lua" = {
      type        = "gauge"
      description = <<-EOF
          Lua memory usage in bytes. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "redis"

    },
    "agent.googleapis.com/redis/pubsub/channels" = {
      type        = "gauge"
      description = <<-EOF
          Number of global pub/sub channels with subscribed clients. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "redis"

    },
    "agent.googleapis.com/redis/pubsub/patterns" = {
      type        = "gauge"
      description = <<-EOF
          Number of global pub/sub patterns with subscribed clients. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "redis"

    },
    "agent.googleapis.com/redis/uptime" = {
      type        = "gauge"
      description = <<-EOF
          Uptime in seconds. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "redis"

    },
    "agent.googleapis.com/riak/latency/95th_percentile" = {
      type        = "gauge"
      description = <<-EOF
          Time between reception of client read request and subsequent response to client 95th percentile. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "riak"

    },
    "agent.googleapis.com/riak/latency/average" = {
      type        = "gauge"
      description = <<-EOF
          Time between reception of client read request and subsequent response to client mean. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "riak"

    },
    "agent.googleapis.com/riak/latency/maximum" = {
      type        = "gauge"
      description = <<-EOF
          Time between reception of client read request and subsequent response to client maximum. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "riak"

    },
    "agent.googleapis.com/riak/memory_usage" = {
      type        = "gauge"
      description = <<-EOF
          Memory usage. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "riak"

    },
    "agent.googleapis.com/riak/num_siblings/95th_percentile" = {
      type        = "gauge"
      description = <<-EOF
          Number of siblings encountered during all GET operations by this node within the last minute 95th percentile. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "riak"

    },
    "agent.googleapis.com/riak/num_siblings/average" = {
      type        = "gauge"
      description = <<-EOF
          Number of siblings encountered during all GET operations by this node within the last minute mean. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "riak"

    },
    "agent.googleapis.com/riak/num_siblings/maximum" = {
      type        = "gauge"
      description = <<-EOF
          Number of siblings encountered during all GET operations by this node within the last minute maximum. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "riak"

    },
    "agent.googleapis.com/riak/object_size/95th_percentile" = {
      type        = "gauge"
      description = <<-EOF
          Size of objects encountered by this node within the last minute 95th percentile. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "riak"

    },
    "agent.googleapis.com/riak/object_size/average" = {
      type        = "gauge"
      description = <<-EOF
          Size of objects encountered by this node within the last minute mean. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "riak"

    },
    "agent.googleapis.com/riak/object_size/maximum" = {
      type        = "gauge"
      description = <<-EOF
          Size of objects encountered by this node within the last minute maximum. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "riak"

    },
    "agent.googleapis.com/riak/operation_count" = {
      type        = "cumulativeCounter"
      description = <<-EOF
          Coordinated operation count. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "riak"

    },
    "agent.googleapis.com/swap/bytes_used" = {
      type        = "gauge"
      description = <<-EOF
          Current number of swap bytes used by state. For this metric to be available, swap must be enabled on the instance. Linux only. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "swap"

    },
    "agent.googleapis.com/swap/io" = {
      type        = "cumulativeCounter"
      description = <<-EOF
          Total count of swap I/O operations by direction. For this metric to be available, swap must be enabled on the instance. Linux only. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "swap"

    },
    "agent.googleapis.com/swap/percent_used" = {
      type        = "gauge"
      description = <<-EOF
          Current percentage of swap used by state. Values are between 0.0 and 100.0. For this metric to be available, swap must be enabled on the instance. Linux only. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "swap"

    },
    "agent.googleapis.com/tomcat/manager/sessions" = {
      type        = "gauge"
      description = <<-EOF
          The number of active sessions. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "tomcat"

    },
    "agent.googleapis.com/tomcat/request_processor/error_count" = {
      type        = "cumulativeCounter"
      description = <<-EOF
          The number of errors encountered. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "tomcat"

    },
    "agent.googleapis.com/tomcat/request_processor/processing_time" = {
      type        = "cumulativeCounter"
      description = <<-EOF
          The total processing time. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "tomcat"

    },
    "agent.googleapis.com/tomcat/request_processor/request_count" = {
      type        = "cumulativeCounter"
      description = <<-EOF
          The total number of requests. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "tomcat"

    },
    "agent.googleapis.com/tomcat/request_processor/traffic_count" = {
      type        = "cumulativeCounter"
      description = <<-EOF
          The number of bytes transmitted and received. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "tomcat"

    },
    "agent.googleapis.com/tomcat/threads/busy" = {
      type        = "gauge"
      description = <<-EOF
          The current number of busy threads. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "tomcat"

    },
    "agent.googleapis.com/tomcat/threads/current" = {
      type        = "gauge"
      description = <<-EOF
          The current number of threads. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "tomcat"

    },
    "agent.googleapis.com/varnish/backend_connection_count" = {
      type        = "cumulativeCounter"
      description = <<-EOF
          Backend connection success count. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "varnish"

    },
    "agent.googleapis.com/varnish/cache_operation_count" = {
      type        = "cumulativeCounter"
      description = <<-EOF
          Cache operation count. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "varnish"

    },
    "agent.googleapis.com/varnish/client_connection_count" = {
      type        = "cumulativeCounter"
      description = <<-EOF
          Client connection count. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "varnish"

    },
    "agent.googleapis.com/zookeeper/connections_count" = {
      type        = "gauge"
      description = <<-EOF
          Number of connections currently alive. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "zookeeper"

    },
    "agent.googleapis.com/zookeeper/data_size" = {
      type        = "gauge"
      description = <<-EOF
          Bytes of data on this ZooKeeper server. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "zookeeper"

    },
    "agent.googleapis.com/zookeeper/followers/count" = {
      type        = "gauge"
      description = <<-EOF
          Number of followers. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "zookeeper"

    },
    "agent.googleapis.com/zookeeper/followers/synced_count" = {
      type        = "gauge"
      description = <<-EOF
          Number of synchronized followers. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "zookeeper"

    },
    "agent.googleapis.com/zookeeper/network/received_packets_count" = {
      type        = "cumulativeCounter"
      description = <<-EOF
          Packets received. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "zookeeper"

    },
    "agent.googleapis.com/zookeeper/network/sent_packets_count" = {
      type        = "cumulativeCounter"
      description = <<-EOF
          Packets sent. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "zookeeper"

    },
    "agent.googleapis.com/zookeeper/nodes/count" = {
      type        = "gauge"
      description = <<-EOF
          ZooKeeper node count. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "zookeeper"

    },
    "agent.googleapis.com/zookeeper/nodes/ephemeral_count" = {
      type        = "gauge"
      description = <<-EOF
          Number of ephemeral nodes. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "zookeeper"

    },
    "agent.googleapis.com/zookeeper/nodes/watches_count" = {
      type        = "gauge"
      description = <<-EOF
          Number of watches on ZooKeeper nodes. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "zookeeper"

    },
    "agent.googleapis.com/zookeeper/requests/latency/average" = {
      type        = "gauge"
      description = <<-EOF
          Average request latency. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "zookeeper"

    },
    "agent.googleapis.com/zookeeper/requests/latency/maximum" = {
      type        = "gauge"
      description = <<-EOF
          Maximum request latency. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "zookeeper"

    },
    "agent.googleapis.com/zookeeper/requests/latency/minimum" = {
      type        = "gauge"
      description = <<-EOF
          Minimum request latency. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "zookeeper"

    },
    "agent.googleapis.com/zookeeper/requests/outstanding_count" = {
      type        = "gauge"
      description = <<-EOF
          Number of outstanding requests. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "zookeeper"

    },
    "agent.googleapis.com/zookeeper/sync_operations/pending_count" = {
      type        = "gauge"
      description = <<-EOF
          Number of pending synchronization operations. Sampled every 60s and may take up to 0s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true

      interval  = "60s"
      metricBin = "zookeeper"

    },
  }
}
