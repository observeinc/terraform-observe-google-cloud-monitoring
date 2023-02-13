
######################
# This file is autogenerated
# run serviceUtilities.py in service directory to create this file
# serviceUtilities.py -h for list of commands and options
######################
locals { metrics_definitions = {
  blocked = {
    type               = "gauge"
    description        = <<-EOF
                    Number of blocked clients.
                EOF
    launchStage        = "GA"
    rollup             = "avg"
    aggregate          = "sum"
    metricCategory     = "none"
    google_metric_path = "redis.googleapis.com/clients/blocked"
    label              = "Blocked Clients"
    unit               = "1"
    metricBin          = "clients"
    valuetype          = "INT64"

  }
  connected = {
    type               = "gauge"
    description        = <<-EOF
                    Number of client connections.
                EOF
    launchStage        = "GA"
    rollup             = "avg"
    aggregate          = "sum"
    metricCategory     = "none"
    google_metric_path = "redis.googleapis.com/clients/connected"
    label              = "Connected Clients"
    unit               = "1"
    metricBin          = "clients"
    valuetype          = "INT64"

  }
  calls = {
    type               = "delta"
    description        = <<-EOF
                    Total number of calls for this command in one minute.
                EOF
    launchStage        = "GA"
    rollup             = "avg"
    aggregate          = "sum"
    metricCategory     = "none"
    google_metric_path = "redis.googleapis.com/commands/calls"
    label              = "Calls"
    unit               = "1"
    metricBin          = "commands"
    valuetype          = "INT64"

  }
  total_time = {
    type               = "delta"
    description        = <<-EOF
                    The amount of time in microseconds that this command took in the last second.
                EOF
    launchStage        = "GA"
    rollup             = "avg"
    aggregate          = "sum"
    metricCategory     = "none"
    google_metric_path = "redis.googleapis.com/commands/total_time"
    label              = "Total Time of Calls"
    unit               = "us"
    metricBin          = "commands"
    valuetype          = "INT64"

  }
  usec_per_call = {
    type               = "gauge"
    description        = <<-EOF
                    Average time per call over 1 minute by command.
                EOF
    launchStage        = "GA"
    rollup             = "avg"
    aggregate          = "sum"
    metricCategory     = "none"
    google_metric_path = "redis.googleapis.com/commands/usec_per_call"
    label              = "Time per Call"
    unit               = "1"
    metricBin          = "commands"
    valuetype          = "DOUBLE"

  }
  avg_ttl = {
    type               = "gauge"
    description        = <<-EOF
                    Average TTL for keys in this database.
                EOF
    launchStage        = "GA"
    rollup             = "avg"
    aggregate          = "sum"
    metricCategory     = "none"
    google_metric_path = "redis.googleapis.com/keyspace/avg_ttl"
    label              = "Average TTL"
    unit               = "ms"
    metricBin          = "keyspace"
    valuetype          = "DOUBLE"

  }
  keys = {
    type               = "gauge"
    description        = <<-EOF
                    Number of keys stored in this database.
                EOF
    launchStage        = "GA"
    rollup             = "avg"
    aggregate          = "sum"
    metricCategory     = "none"
    google_metric_path = "redis.googleapis.com/keyspace/keys"
    label              = "Keys"
    unit               = "1"
    metricBin          = "keyspace"
    valuetype          = "INT64"

  }
  keys_with_expiration = {
    type               = "gauge"
    description        = <<-EOF
                    Number of keys with an expiration in this database.
                EOF
    launchStage        = "GA"
    rollup             = "avg"
    aggregate          = "sum"
    metricCategory     = "none"
    google_metric_path = "redis.googleapis.com/keyspace/keys_with_expiration"
    label              = "Expirable Keys"
    unit               = "1"
    metricBin          = "keyspace"
    valuetype          = "INT64"

  }
  rdb_bgsave_in_progress = {
    type               = "gauge"
    description        = <<-EOF
                    Flag indicating a RDB save is on-going.
                EOF
    launchStage        = "GA"
    rollup             = "avg"
    aggregate          = "sum"
    metricCategory     = "rdb"
    google_metric_path = "redis.googleapis.com/persistence/rdb/bgsave_in_progress"
    label              = "Persisting RDB"
    unit               = "1"
    metricBin          = "persistence"
    valuetype          = "BOOL"

  }
  enabled = {
    type               = "gauge"
    description        = <<-EOF
                    Indicates if the snapshot is in RDB mode.
                EOF
    launchStage        = "BETA"
    rollup             = "avg"
    aggregate          = "sum"
    metricCategory     = "none"
    google_metric_path = "redis.googleapis.com/rdb/enabled"
    label              = "Snapshot RDB mode enabled"
    unit               = ""
    metricBin          = "rdb"
    valuetype          = "BOOL"

  }
  recovery_attempts_since_last_success = {
    type               = "gauge"
    description        = <<-EOF
                    Indicates number of recovery attempts since the last successful recovery attempt.
                EOF
    launchStage        = "BETA"
    rollup             = "avg"
    aggregate          = "sum"
    metricCategory     = "recovery"
    google_metric_path = "redis.googleapis.com/rdb/recovery/attempts_since_last_success"
    label              = "RDB recovery attempts"
    unit               = "1"
    metricBin          = "rdb"
    valuetype          = "INT64"

  }
  recovery_elapsed_time = {
    type               = "gauge"
    description        = <<-EOF
                    Indicates increasing time elapsed for an in-progress recovery from an RDB snapshot. 0 means the recovery is idle or completed.
                EOF
    launchStage        = "BETA"
    rollup             = "avg"
    aggregate          = "sum"
    metricCategory     = "recovery"
    google_metric_path = "redis.googleapis.com/rdb/recovery/elapsed_time"
    label              = "RDB recovery elapsed time"
    unit               = "s"
    metricBin          = "rdb"
    valuetype          = "INT64"

  }
  recovery_estimated_recovery_time = {
    type               = "gauge"
    description        = <<-EOF
                    Indicates the expected recovery time when using the last successful snapshot for recovery.
                EOF
    launchStage        = "BETA"
    rollup             = "avg"
    aggregate          = "sum"
    metricCategory     = "recovery"
    google_metric_path = "redis.googleapis.com/rdb/recovery/estimated_recovery_time"
    label              = "RDB recovery estimated time"
    unit               = "s"
    metricBin          = "rdb"
    valuetype          = "INT64"

  }
  recovery_estimated_remaining_time = {
    type               = "gauge"
    description        = <<-EOF
                    Indicates remaining time to finish recovery from an RDB snapshot. 0 means the recovery is idle or completed.
                EOF
    launchStage        = "BETA"
    rollup             = "avg"
    aggregate          = "sum"
    metricCategory     = "recovery"
    google_metric_path = "redis.googleapis.com/rdb/recovery/estimated_remaining_time"
    label              = "RDB recovery remaining time"
    unit               = "s"
    metricBin          = "rdb"
    valuetype          = "INT64"

  }
  recovery_in_progress = {
    type               = "gauge"
    description        = <<-EOF
                    Indicates if recovery from an RDB snapshot is in progress. When the metric value is true, then a recovery is in progress.
                EOF
    launchStage        = "BETA"
    rollup             = "avg"
    aggregate          = "sum"
    metricCategory     = "recovery"
    google_metric_path = "redis.googleapis.com/rdb/recovery/in_progress"
    label              = "RDB recovery in progress"
    unit               = ""
    metricBin          = "rdb"
    valuetype          = "BOOL"

  }
  recovery_last_duration = {
    type               = "gauge"
    description        = <<-EOF
                    Indicates time it took to restore the last snapshot.
                EOF
    launchStage        = "BETA"
    rollup             = "avg"
    aggregate          = "sum"
    metricCategory     = "recovery"
    google_metric_path = "redis.googleapis.com/rdb/recovery/last_duration"
    label              = "RDB recovery last duration"
    unit               = "s"
    metricBin          = "rdb"
    valuetype          = "INT64"

  }
  recovery_last_status = {
    type               = "gauge"
    description        = <<-EOF
                    Indicates status of the most recent recovery.
                EOF
    launchStage        = "BETA"
    rollup             = "avg"
    aggregate          = "sum"
    metricCategory     = "recovery"
    google_metric_path = "redis.googleapis.com/rdb/recovery/last_status"
    label              = "RDB recovery last status"
    unit               = "1"
    metricBin          = "rdb"
    valuetype          = "INT64"

  }
  recovery_loaded_bytes_count = {
    type               = "delta"
    description        = <<-EOF
                    During a recovery, indicates how many bytes have loaded. 0 if the recovery is not active.
                EOF
    launchStage        = "BETA"
    rollup             = "avg"
    aggregate          = "sum"
    metricCategory     = "recovery"
    google_metric_path = "redis.googleapis.com/rdb/recovery/loaded_bytes_count"
    label              = "RDB loaded size"
    unit               = "By"
    metricBin          = "rdb"
    valuetype          = "INT64"

  }
  recovery_total_bytes_count = {
    type               = "delta"
    description        = <<-EOF
                    Indicates the size in bytes of the snapshot.
                EOF
    launchStage        = "BETA"
    rollup             = "avg"
    aggregate          = "sum"
    metricCategory     = "recovery"
    google_metric_path = "redis.googleapis.com/rdb/recovery/total_bytes_count"
    label              = "RDB snapshot size"
    unit               = "By"
    metricBin          = "rdb"
    valuetype          = "INT64"

  }
  snapshot_attempt_count = {
    type               = "delta"
    description        = <<-EOF
                    Indicates number of snapshot attempts every minute.
                EOF
    launchStage        = "BETA"
    rollup             = "avg"
    aggregate          = "sum"
    metricCategory     = "snapshot"
    google_metric_path = "redis.googleapis.com/rdb/snapshot/attempt_count"
    label              = "RDB snapshot attempts count"
    unit               = "1"
    metricBin          = "rdb"
    valuetype          = "INT64"

  }
  snapshot_elapsed_time = {
    type               = "gauge"
    description        = <<-EOF
                    Indicates increasing time elapsed while creating the current snapshot.
                EOF
    launchStage        = "BETA"
    rollup             = "avg"
    aggregate          = "sum"
    metricCategory     = "snapshot"
    google_metric_path = "redis.googleapis.com/rdb/snapshot/elapsed_time"
    label              = "RDB snapshot elapsed time"
    unit               = "s"
    metricBin          = "rdb"
    valuetype          = "INT64"

  }
  snapshot_in_progress = {
    type               = "gauge"
    description        = <<-EOF
                    Indicates if RDB snapshot is in progress. When the metric value is true, then an RDB snapshot is in progress.
                EOF
    launchStage        = "BETA"
    rollup             = "avg"
    aggregate          = "sum"
    metricCategory     = "snapshot"
    google_metric_path = "redis.googleapis.com/rdb/snapshot/in_progress"
    label              = "RDB snapshot in progress"
    unit               = ""
    metricBin          = "rdb"
    valuetype          = "BOOL"

  }
  snapshot_last_status = {
    type               = "gauge"
    description        = <<-EOF
                    Indicates status of the most recent snapshot attempt.
                EOF
    launchStage        = "BETA"
    rollup             = "avg"
    aggregate          = "sum"
    metricCategory     = "snapshot"
    google_metric_path = "redis.googleapis.com/rdb/snapshot/last_status"
    label              = "RDB snapshot last status"
    unit               = "1"
    metricBin          = "rdb"
    valuetype          = "INT64"

  }
  snapshot_last_success_age = {
    type               = "gauge"
    description        = <<-EOF
                    Indicates time elapsed since the start of the last successful snapshot.
                EOF
    launchStage        = "BETA"
    rollup             = "avg"
    aggregate          = "sum"
    metricCategory     = "snapshot"
    google_metric_path = "redis.googleapis.com/rdb/snapshot/last_success_age"
    label              = "RDB snapshot last success age"
    unit               = "s"
    metricBin          = "rdb"
    valuetype          = "INT64"

  }
  snapshot_last_success_duration = {
    type               = "gauge"
    description        = <<-EOF
                    Indicates the total time required to write the last successful snapshot, not including failed attempts.
                EOF
    launchStage        = "BETA"
    rollup             = "avg"
    aggregate          = "sum"
    metricCategory     = "snapshot"
    google_metric_path = "redis.googleapis.com/rdb/snapshot/last_success_duration"
    label              = "RDB snapshot last success duration"
    unit               = "s"
    metricBin          = "rdb"
    valuetype          = "INT64"

  }
  snapshot_time_until_next_run = {
    type               = "gauge"
    description        = <<-EOF
                    Seconds until the next scheduled snapshot.
                EOF
    launchStage        = "BETA"
    rollup             = "avg"
    aggregate          = "sum"
    metricCategory     = "snapshot"
    google_metric_path = "redis.googleapis.com/rdb/snapshot/time_until_next_run"
    label              = "Next snapshot time"
    unit               = "s"
    metricBin          = "rdb"
    valuetype          = "INT64"

  }
  lag = {
    type               = "gauge"
    description        = <<-EOF
                    The number of seconds that replica is lagging behind primary.
                EOF
    launchStage        = "GA"
    rollup             = "avg"
    aggregate          = "sum"
    metricCategory     = "none"
    google_metric_path = "redis.googleapis.com/replication/master/slaves/lag"
    label              = "Seconds lagging"
    unit               = "s"
    metricBin          = "none"
    valuetype          = "INT64"

  }
  offset = {
    type               = "gauge"
    description        = <<-EOF
                    The number of bytes that have been acknowledged by replicas.
                EOF
    launchStage        = "GA"
    rollup             = "avg"
    aggregate          = "sum"
    metricCategory     = "none"
    google_metric_path = "redis.googleapis.com/replication/master/slaves/offset"
    label              = "Replication byte offset Replica"
    unit               = "By"
    metricBin          = "none"
    valuetype          = "INT64"

  }
  master_repl_offset = {
    type               = "gauge"
    description        = <<-EOF
                    The number of bytes that master has produced and sent to replicas. To be compared with replication byte offset of replica.
                EOF
    launchStage        = "GA"
    rollup             = "avg"
    aggregate          = "sum"
    metricCategory     = "none"
    google_metric_path = "redis.googleapis.com/replication/master_repl_offset"
    label              = "Replication byte offset Master"
    unit               = "By"
    metricBin          = "replication"
    valuetype          = "INT64"

  }
  offset_diff = {
    type               = "gauge"
    description        = <<-EOF
                    The largest number of bytes that have not been replicated across all replicas. This is the biggest difference between replication byte offset master and replication byte offset replica of all replicas.
                EOF
    launchStage        = "GA"
    rollup             = "avg"
    aggregate          = "sum"
    metricCategory     = "none"
    google_metric_path = "redis.googleapis.com/replication/offset_diff"
    label              = "Bytes pending replication"
    unit               = "By"
    metricBin          = "replication"
    valuetype          = "INT64"

  }
  role = {
    type               = "gauge"
    description        = <<-EOF
                    Returns a value indicating the node role. 1 indicates primary and 0 indicates replica.
                EOF
    launchStage        = "GA"
    rollup             = "avg"
    aggregate          = "sum"
    metricCategory     = "none"
    google_metric_path = "redis.googleapis.com/replication/role"
    label              = "Node Role"
    unit               = "1"
    metricBin          = "replication"
    valuetype          = "INT64"

  }
  uptime = {
    type               = "gauge"
    description        = <<-EOF
                    Uptime in seconds.
                EOF
    launchStage        = "GA"
    rollup             = "avg"
    aggregate          = "sum"
    metricCategory     = "none"
    google_metric_path = "redis.googleapis.com/server/uptime"
    label              = "Uptime"
    unit               = "s"
    metricBin          = "server"
    valuetype          = "INT64"

  }
  cache_hit_ratio = {
    type               = "gauge"
    description        = <<-EOF
                    Cache Hit ratio as a fraction.
                EOF
    launchStage        = "GA"
    rollup             = "avg"
    aggregate          = "sum"
    metricCategory     = "none"
    google_metric_path = "redis.googleapis.com/stats/cache_hit_ratio"
    label              = "Cache Hit ratio"
    unit               = "1"
    metricBin          = "stats"
    valuetype          = "DOUBLE"

  }
  connections_total = {
    type               = "delta"
    description        = <<-EOF
                    Total number of connections accepted by the server.
                EOF
    launchStage        = "GA"
    rollup             = "avg"
    aggregate          = "sum"
    metricCategory     = "connections"
    google_metric_path = "redis.googleapis.com/stats/connections/total"
    label              = "Total Connections Received"
    unit               = "1"
    metricBin          = "stats"
    valuetype          = "INT64"

  }
  cpu_utilization = {
    type               = "delta"
    description        = <<-EOF
                    CPU-seconds consumed by the Redis server, broken down by system/user space and parent/child relationship.
                EOF
    launchStage        = "GA"
    rollup             = "rate"
    aggregate          = "sum"
    metricCategory     = "none"
    google_metric_path = "redis.googleapis.com/stats/cpu_utilization"
    label              = "CPU seconds"
    unit               = "s{CPU}"
    metricBin          = "stats"
    valuetype          = "DOUBLE"

  }
  evicted_keys = {
    type               = "delta"
    description        = <<-EOF
                    Number of evicted keys due to maxmemory limit.
                EOF
    launchStage        = "GA"
    rollup             = "avg"
    aggregate          = "sum"
    metricCategory     = "none"
    google_metric_path = "redis.googleapis.com/stats/evicted_keys"
    label              = "Evicted Keys"
    unit               = "1"
    metricBin          = "stats"
    valuetype          = "INT64"

  }
  expired_keys = {
    type               = "delta"
    description        = <<-EOF
                    Total number of key expiration events.
                EOF
    launchStage        = "GA"
    rollup             = "avg"
    aggregate          = "sum"
    metricCategory     = "none"
    google_metric_path = "redis.googleapis.com/stats/expired_keys"
    label              = "Expired Keys"
    unit               = "1"
    metricBin          = "stats"
    valuetype          = "INT64"

  }
  keyspace_hits = {
    type               = "delta"
    description        = <<-EOF
                    Number of successful lookup of keys in the main dictionary.
                EOF
    launchStage        = "GA"
    rollup             = "avg"
    aggregate          = "sum"
    metricCategory     = "none"
    google_metric_path = "redis.googleapis.com/stats/keyspace_hits"
    label              = "Hits"
    unit               = "1"
    metricBin          = "stats"
    valuetype          = "INT64"

  }
  keyspace_misses = {
    type               = "delta"
    description        = <<-EOF
                    Number of failed lookup of keys in the main dictionary.
                EOF
    launchStage        = "GA"
    rollup             = "avg"
    aggregate          = "sum"
    metricCategory     = "none"
    google_metric_path = "redis.googleapis.com/stats/keyspace_misses"
    label              = "Misses"
    unit               = "1"
    metricBin          = "stats"
    valuetype          = "INT64"

  }
  memory_maxmemory = {
    type               = "gauge"
    description        = <<-EOF
                    Maximum amount of memory Redis can consume.
                EOF
    launchStage        = "GA"
    rollup             = "avg"
    aggregate          = "sum"
    metricCategory     = "memory"
    google_metric_path = "redis.googleapis.com/stats/memory/maxmemory"
    label              = "Maximum Memory"
    unit               = "By"
    metricBin          = "stats"
    valuetype          = "INT64"

  }
  memory_system_memory_overload_duration = {
    type               = "delta"
    description        = <<-EOF
                    The amount of time in microseconds the instance is in system memory overload mode.
                EOF
    launchStage        = "GA"
    rollup             = "avg"
    aggregate          = "sum"
    metricCategory     = "memory"
    google_metric_path = "redis.googleapis.com/stats/memory/system_memory_overload_duration"
    label              = "Time in system memory overload"
    unit               = "us"
    metricBin          = "stats"
    valuetype          = "INT64"

  }
  memory_system_memory_usage_ratio = {
    type               = "gauge"
    description        = <<-EOF
                    Memory usage as a ratio of maximum system memory.
                EOF
    launchStage        = "GA"
    rollup             = "avg"
    aggregate          = "sum"
    metricCategory     = "memory"
    google_metric_path = "redis.googleapis.com/stats/memory/system_memory_usage_ratio"
    label              = "System Memory Usage Ratio"
    unit               = "1"
    metricBin          = "stats"
    valuetype          = "DOUBLE"

  }
  memory_usage = {
    type               = "gauge"
    description        = <<-EOF
                    Total number of bytes allocated by Redis.
                EOF
    launchStage        = "GA"
    rollup             = "avg"
    aggregate          = "sum"
    metricCategory     = "memory"
    google_metric_path = "redis.googleapis.com/stats/memory/usage"
    label              = "Used Memory"
    unit               = "By"
    metricBin          = "stats"
    valuetype          = "INT64"

  }
  memory_usage_ratio = {
    type               = "gauge"
    description        = <<-EOF
                    Memory usage as a ratio of maximum memory.
                EOF
    launchStage        = "GA"
    rollup             = "avg"
    aggregate          = "sum"
    metricCategory     = "memory"
    google_metric_path = "redis.googleapis.com/stats/memory/usage_ratio"
    label              = "Memory Usage Ratio"
    unit               = "1"
    metricBin          = "stats"
    valuetype          = "DOUBLE"

  }
  network_traffic = {
    type               = "delta"
    description        = <<-EOF
                    Total number of bytes sent to/from redis includes bytes from commands themselves, payload data, and delimiters.
                EOF
    launchStage        = "GA"
    rollup             = "avg"
    aggregate          = "sum"
    metricCategory     = "none"
    google_metric_path = "redis.googleapis.com/stats/network_traffic"
    label              = "Total traffic to Redis"
    unit               = "By"
    metricBin          = "stats"
    valuetype          = "INT64"

  }
  pubsub_channels = {
    type               = "gauge"
    description        = <<-EOF
                    Global number of pub/sub channels with client subscriptions.
                EOF
    launchStage        = "GA"
    rollup             = "avg"
    aggregate          = "sum"
    metricCategory     = "pubsub"
    google_metric_path = "redis.googleapis.com/stats/pubsub/channels"
    label              = "Pubsub Channels"
    unit               = "1"
    metricBin          = "stats"
    valuetype          = "INT64"

  }
  pubsub_patterns = {
    type               = "gauge"
    description        = <<-EOF
                    Global number of pub/sub pattern with client subscriptions.
                EOF
    launchStage        = "GA"
    rollup             = "avg"
    aggregate          = "sum"
    metricCategory     = "pubsub"
    google_metric_path = "redis.googleapis.com/stats/pubsub/patterns"
    label              = "Pubsub Patterns"
    unit               = "1"
    metricBin          = "stats"
    valuetype          = "INT64"

  }
  reject_connections_count = {
    type               = "delta"
    description        = <<-EOF
                    Number of connections rejected because of maxclients limit.
                EOF
    launchStage        = "GA"
    rollup             = "avg"
    aggregate          = "sum"
    metricCategory     = "none"
    google_metric_path = "redis.googleapis.com/stats/reject_connections_count"
    label              = "Rejected Connections"
    unit               = "1"
    metricBin          = "stats"
    valuetype          = "INT64"

  }
} }