locals {
  metrics_definitions = {
    "database_active_directory_domain_reachable" = {
      type             = "gauge"
      description      = <<-EOF
          Indicates whether the instance is able to ping a domain controller from the connected Managed Active Directory domain. If false, Windows Authentication may not work as expected. Sampled every 60s and may take up to 210s to display.
      EOF
      launchStage      = "ALPHA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "active_directory"
      googleMetricPath = "cloudsql.googleapis.com/database/active_directory/domain_reachable"
      label            = "domain_reachable"
      active           = false

      dataBase = "ALL"

    },
    "database_active_directory_instance_available" = {
      type             = "gauge"
      description      = <<-EOF
          Indicates whether the instance is currently available using Windows Authentication. Sampled every 60s and may take up to 210s to display.
      EOF
      launchStage      = "ALPHA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "active_directory"
      googleMetricPath = "cloudsql.googleapis.com/database/active_directory/instance_available"
      label            = "instance_available"
      active           = false

      dataBase = "ALL"

    },
    "database_auto_failover_request_count" = {
      type             = "delta"
      description      = <<-EOF
          Delta of number of instance auto-failover requests. Sampled every 60s and may take up to 210s to display.
      EOF
      launchStage      = "GA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "auto_failover_request_count"
      googleMetricPath = "cloudsql.googleapis.com/database/auto_failover_request_count"
      label            = "auto_failover_request_count"
      active           = true

      dataBase = "ALL"

    },
    "database_available_for_failover" = {
      type             = "gauge"
      description      = <<-EOF
          This is greater than 0 if the failover operation is available on the instance. Sampled every 60s and may take up to 210s to display.
      EOF
      launchStage      = "GA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "available_for_failover"
      googleMetricPath = "cloudsql.googleapis.com/database/available_for_failover"
      label            = "available_for_failover"
      active           = true

      dataBase = "ALL"

    },
    "database_cpu_reserved_cores" = {
      type             = "gauge"
      description      = <<-EOF
          Number of cores reserved for the database. Sampled every 60s and may take up to 210s to display.
      EOF
      launchStage      = "GA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "cpu"
      googleMetricPath = "cloudsql.googleapis.com/database/cpu/reserved_cores"
      label            = "reserved_cores"
      active           = true

      dataBase = "ALL"

    },
    "database_cpu_usage_time" = {
      type             = "delta"
      description      = <<-EOF
          Cumulative CPU usage time in seconds. Sampled every 60s and may take up to 210s to display.
      EOF
      launchStage      = "GA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "cpu"
      googleMetricPath = "cloudsql.googleapis.com/database/cpu/usage_time"
      label            = "usage_time"
      active           = true

      dataBase = "ALL"

    },
    "database_cpu_utilization" = {
      type             = "gauge"
      description      = <<-EOF
          Current CPU utilization represented as a percentage of the reserved CPU that is currently in use. Values are typically numbers between 0.0 and 1.0 but might exceed 1.0. Charts display the values as a percentage between 0% and 100% or more. Sampled every 60s and may take up to 210s to display.
      EOF
      launchStage      = "GA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "cpu"
      googleMetricPath = "cloudsql.googleapis.com/database/cpu/utilization"
      label            = "utilization"
      active           = true

      dataBase = "ALL"

    },
    "database_disk_bytes_used" = {
      type             = "gauge"
      description      = <<-EOF
          Data utilization in bytes. Sampled every 60s and may take up to 210s to display.
      EOF
      launchStage      = "GA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "disk"
      googleMetricPath = "cloudsql.googleapis.com/database/disk/bytes_used"
      label            = "bytes_used"
      active           = true

      dataBase = "ALL"

    },
    "database_disk_bytes_used_by_data_type" = {
      type             = "gauge"
      description      = <<-EOF
          Data utilization in bytes. Sampled every 60s and may take up to 210s to display.
      EOF
      launchStage      = "BETA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "disk"
      googleMetricPath = "cloudsql.googleapis.com/database/disk/bytes_used_by_data_type"
      label            = "bytes_used_by_data_type"
      active           = false

      dataBase = "ALL"

    },
    "database_disk_quota" = {
      type             = "gauge"
      description      = <<-EOF
          Maximum data disk size in bytes. Sampled every 60s and may take up to 210s to display.
      EOF
      launchStage      = "GA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "disk"
      googleMetricPath = "cloudsql.googleapis.com/database/disk/quota"
      label            = "quota"
      active           = true

      dataBase = "ALL"

    },
    "database_disk_read_ops_count" = {
      type             = "delta"
      description      = <<-EOF
          Delta count of data disk read IO operations. Sampled every 60s and may take up to 210s to display.
      EOF
      launchStage      = "GA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "disk"
      googleMetricPath = "cloudsql.googleapis.com/database/disk/read_ops_count"
      label            = "read_ops_count"
      active           = true

      dataBase = "ALL"

    },
    "database_disk_utilization" = {
      type             = "gauge"
      description      = <<-EOF
          The fraction of the disk quota that is currently in use. Sampled every 60s and may take up to 210s to display.
      EOF
      launchStage      = "GA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "disk"
      googleMetricPath = "cloudsql.googleapis.com/database/disk/utilization"
      label            = "utilization"
      active           = true

      dataBase = "ALL"

    },
    "database_disk_write_ops_count" = {
      type             = "delta"
      description      = <<-EOF
          Delta count of data disk write IO operations. Sampled every 60s and may take up to 210s to display.
      EOF
      launchStage      = "GA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "disk"
      googleMetricPath = "cloudsql.googleapis.com/database/disk/write_ops_count"
      label            = "write_ops_count"
      active           = true

      dataBase = "ALL"

    },
    "database_instance_state" = {
      type             = "gauge"
      description      = <<-EOF
          The current serving state of the Cloud SQL instance.
Because there are seven possible states, seven data points are returned.
Each of them has a different field value representing each state.
Only the one that matches the current state of the instance is TRUE. All the others are FALSE.
The state can be one of the following:
RUNNING:  The instance is running, or is ready to run when accessed.
SUSPENDED: The instance is not available, for example due to problems with billing.
RUNNABLE: The instance has been stopped by owner. It is not currently running, but it's ready to be restarted.
PENDING_CREATE: The instance is being created.
MAINTENANCE: The instance is down for maintenance.
FAILED: The instance creation failed.
UNKNOWN_STATE: The state of the instance is unknown. Sampled every 60s and may take up to 210s to display.
      EOF
      launchStage      = "GA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "instance_state"
      googleMetricPath = "cloudsql.googleapis.com/database/instance_state"
      label            = "instance_state"
      active           = true

      dataBase = "ALL"

    },
    "database_memory_quota" = {
      type             = "gauge"
      description      = <<-EOF
          Maximum RAM size in bytes. Sampled every 60s and may take up to 210s to display.
      EOF
      launchStage      = "GA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "memory"
      googleMetricPath = "cloudsql.googleapis.com/database/memory/quota"
      label            = "quota"
      active           = true

      dataBase = "ALL"

    },
    "database_memory_total_usage" = {
      type             = "gauge"
      description      = <<-EOF
          Total RAM usage in bytes including buffer cache. Sampled every 60s and may take up to 210s to display.
      EOF
      launchStage      = "GA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "memory"
      googleMetricPath = "cloudsql.googleapis.com/database/memory/total_usage"
      label            = "total_usage"
      active           = true

      dataBase = "ALL"

    },
    "database_memory_usage" = {
      type             = "gauge"
      description      = <<-EOF
          RAM usage in bytes. Sampled every 60s and may take up to 210s to display.
      EOF
      launchStage      = "GA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "memory"
      googleMetricPath = "cloudsql.googleapis.com/database/memory/usage"
      label            = "usage"
      active           = true

      dataBase = "ALL"

    },
    "database_memory_utilization" = {
      type             = "gauge"
      description      = <<-EOF
          The fraction of the memory quota that is currently in use. Sampled every 60s and may take up to 210s to display.
      EOF
      launchStage      = "GA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "memory"
      googleMetricPath = "cloudsql.googleapis.com/database/memory/utilization"
      label            = "utilization"
      active           = true

      dataBase = "ALL"

    },
    "database_mysql_innodb_buffer_pool_pages_dirty" = {
      type             = "gauge"
      description      = <<-EOF
          Number of unflushed pages in the InnoDB buffer pool. Sampled every 60s and may take up to 210s to display.
      EOF
      launchStage      = "GA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "mysql"
      googleMetricPath = "cloudsql.googleapis.com/database/mysql/innodb_buffer_pool_pages_dirty"
      label            = "innodb_buffer_pool_pages_dirty"
      active           = true

      dataBase = "mysql"

    },
    "database_mysql_innodb_buffer_pool_pages_free" = {
      type             = "gauge"
      description      = <<-EOF
          Number of unused pages in the InnoDB buffer pool. Sampled every 60s and may take up to 210s to display.
      EOF
      launchStage      = "GA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "mysql"
      googleMetricPath = "cloudsql.googleapis.com/database/mysql/innodb_buffer_pool_pages_free"
      label            = "innodb_buffer_pool_pages_free"
      active           = true

      dataBase = "mysql"

    },
    "database_mysql_innodb_buffer_pool_pages_total" = {
      type             = "gauge"
      description      = <<-EOF
          Total number of pages in the InnoDB buffer pool. Sampled every 60s and may take up to 210s to display.
      EOF
      launchStage      = "GA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "mysql"
      googleMetricPath = "cloudsql.googleapis.com/database/mysql/innodb_buffer_pool_pages_total"
      label            = "innodb_buffer_pool_pages_total"
      active           = true

      dataBase = "mysql"

    },
    "database_mysql_innodb_data_fsyncs" = {
      type             = "delta"
      description      = <<-EOF
          Delta count of InnoDB fsync calls. Sampled every 60s and may take up to 210s to display.
      EOF
      launchStage      = "GA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "mysql"
      googleMetricPath = "cloudsql.googleapis.com/database/mysql/innodb_data_fsyncs"
      label            = "innodb_data_fsyncs"
      active           = true

      dataBase = "mysql"

    },
    "database_mysql_innodb_os_log_fsyncs" = {
      type             = "delta"
      description      = <<-EOF
          Delta count of InnoDB fsync calls to the log file. Sampled every 60s and may take up to 210s to display.
      EOF
      launchStage      = "GA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "mysql"
      googleMetricPath = "cloudsql.googleapis.com/database/mysql/innodb_os_log_fsyncs"
      label            = "innodb_os_log_fsyncs"
      active           = true

      dataBase = "mysql"

    },
    "database_mysql_innodb_pages_read" = {
      type             = "delta"
      description      = <<-EOF
          Delta count of InnoDB pages read. Sampled every 60s and may take up to 210s to display.
      EOF
      launchStage      = "GA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "mysql"
      googleMetricPath = "cloudsql.googleapis.com/database/mysql/innodb_pages_read"
      label            = "innodb_pages_read"
      active           = true

      dataBase = "mysql"

    },
    "database_mysql_innodb_pages_written" = {
      type             = "delta"
      description      = <<-EOF
          Delta count of InnoDB pages written. Sampled every 60s and may take up to 210s to display.
      EOF
      launchStage      = "GA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "mysql"
      googleMetricPath = "cloudsql.googleapis.com/database/mysql/innodb_pages_written"
      label            = "innodb_pages_written"
      active           = true

      dataBase = "mysql"

    },
    "database_mysql_queries" = {
      type             = "delta"
      description      = <<-EOF
          Delta count of statements executed by the server. Sampled every 60s and may take up to 210s to display.
      EOF
      launchStage      = "GA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "mysql"
      googleMetricPath = "cloudsql.googleapis.com/database/mysql/queries"
      label            = "queries"
      active           = true

      dataBase = "mysql"

    },
    "database_mysql_questions" = {
      type             = "delta"
      description      = <<-EOF
          Delta count of statements executed by the server sent by the client. Sampled every 60s and may take up to 210s to display.
      EOF
      launchStage      = "GA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "mysql"
      googleMetricPath = "cloudsql.googleapis.com/database/mysql/questions"
      label            = "questions"
      active           = true

      dataBase = "mysql"

    },
    "database_mysql_received_bytes_count" = {
      type             = "delta"
      description      = <<-EOF
          Delta count of bytes received by MySQL process. Sampled every 60s and may take up to 210s to display.
      EOF
      launchStage      = "GA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "mysql"
      googleMetricPath = "cloudsql.googleapis.com/database/mysql/received_bytes_count"
      label            = "received_bytes_count"
      active           = true

      dataBase = "mysql"

    },
    "database_mysql_replication_available_for_failover" = {
      type             = "gauge"
      description      = <<-EOF
          This is greater than 0 if the failover operation is available on the master instance.master. The metric is deprecated.  Please use cloudsql.googleapis.com/database/available_for_failover instead Sampled every 60s and may take up to 210s to display.
      EOF
      launchStage      = "DEPRECATED"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "mysql"
      googleMetricPath = "cloudsql.googleapis.com/database/mysql/replication/available_for_failover"
      label            = "available_for_failover"
      active           = false

      dataBase = "mysql"

    },
    "database_mysql_replication_last_io_errno" = {
      type             = "gauge"
      description      = <<-EOF
          The error number of the most recent error that caused the I/O thread to stop. Sampled every 60s and may take up to 210s to display.
      EOF
      launchStage      = "GA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "mysql"
      googleMetricPath = "cloudsql.googleapis.com/database/mysql/replication/last_io_errno"
      label            = "last_io_errno"
      active           = true

      dataBase = "mysql"

    },
    "database_mysql_replication_last_sql_errno" = {
      type             = "gauge"
      description      = <<-EOF
          The error number of the most recent error that caused the SQL thread to stop. Sampled every 60s and may take up to 210s to display.
      EOF
      launchStage      = "GA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "mysql"
      googleMetricPath = "cloudsql.googleapis.com/database/mysql/replication/last_sql_errno"
      label            = "last_sql_errno"
      active           = true

      dataBase = "mysql"

    },
    "database_mysql_replication_seconds_behind_master" = {
      type             = "gauge"
      description      = <<-EOF
          Number of seconds the read replica is behind its primary approximation. Sampled every 60s and may take up to 210s to display.
      EOF
      launchStage      = "GA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "mysql"
      googleMetricPath = "cloudsql.googleapis.com/database/mysql/replication/seconds_behind_master"
      label            = "seconds_behind_master"
      active           = true

      dataBase = "mysql"

    },
    "database_mysql_replication_slave_io_running" = {
      type             = "gauge"
      description      = <<-EOF
          Indicates whether the I/O thread for reading the primary's binary log is running. Possible values are Yes, No and Connecting. Sampled every 60s and may take up to 60s to display.
      EOF
      launchStage      = "GA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "mysql"
      googleMetricPath = "cloudsql.googleapis.com/database/mysql/replication/slave_io_running"
      label            = "slave_io_running"
      active           = true

      dataBase = "mysql"

    },
    "database_mysql_replication_slave_io_running_state" = {
      type             = "gauge"
      description      = <<-EOF
          Indicates whether the I/O thread for reading the primary's binary log is running. Possible values are Yes, No and Connecting, and the values are exposed through the 'state' field. Sampled every 60s and may take up to 210s to display.
      EOF
      launchStage      = "GA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "mysql"
      googleMetricPath = "cloudsql.googleapis.com/database/mysql/replication/slave_io_running_state"
      label            = "slave_io_running_state"
      active           = true

      dataBase = "mysql"

    },
    "database_mysql_replication_slave_sql_running" = {
      type             = "gauge"
      description      = <<-EOF
          Indicates whether the SQL thread for executing events in the relay log is running. Sampled every 60s and may take up to 60s to display.
      EOF
      launchStage      = "GA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "mysql"
      googleMetricPath = "cloudsql.googleapis.com/database/mysql/replication/slave_sql_running"
      label            = "slave_sql_running"
      active           = true

      dataBase = "mysql"

    },
    "database_mysql_replication_slave_sql_running_state" = {
      type             = "gauge"
      description      = <<-EOF
          Indicates whether the SQL thread for executing events in the relay log is running. Possible values are Yes / No, and the values are exposed through the 'state' field. Sampled every 60s and may take up to 210s to display.
      EOF
      launchStage      = "GA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "mysql"
      googleMetricPath = "cloudsql.googleapis.com/database/mysql/replication/slave_sql_running_state"
      label            = "slave_sql_running_state"
      active           = true

      dataBase = "mysql"

    },
    "database_mysql_sent_bytes_count" = {
      type             = "delta"
      description      = <<-EOF
          Delta count of bytes sent by MySQL process. Sampled every 60s and may take up to 210s to display.
      EOF
      launchStage      = "GA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "mysql"
      googleMetricPath = "cloudsql.googleapis.com/database/mysql/sent_bytes_count"
      label            = "sent_bytes_count"
      active           = true

      dataBase = "mysql"

    },
    "database_network_connections" = {
      type             = "gauge"
      description      = <<-EOF
          Number of connections to databases on the Cloud SQL instance. Only applicable to MySQL and SQL Server. Sampled every 60s and may take up to 210s to display.
      EOF
      launchStage      = "GA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "network"
      googleMetricPath = "cloudsql.googleapis.com/database/network/connections"
      label            = "connections"
      active           = true

      dataBase = "ALL"

    },
    "database_network_received_bytes_count" = {
      type             = "delta"
      description      = <<-EOF
          Delta count of bytes received through the network. Sampled every 60s and may take up to 210s to display.
      EOF
      launchStage      = "GA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "network"
      googleMetricPath = "cloudsql.googleapis.com/database/network/received_bytes_count"
      label            = "received_bytes_count"
      active           = true

      dataBase = "ALL"

    },
    "database_network_sent_bytes_count" = {
      type             = "delta"
      description      = <<-EOF
          Delta count of bytes sent through the network. Sampled every 60s and may take up to 210s to display.
      EOF
      launchStage      = "GA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "network"
      googleMetricPath = "cloudsql.googleapis.com/database/network/sent_bytes_count"
      label            = "sent_bytes_count"
      active           = true

      dataBase = "ALL"

    },
    "database_postgresql_blocks_read_count" = {
      type             = "delta"
      description      = <<-EOF
          Number of disk blocks read by this database. The source field distingushes actual reads from disk versus reads from buffer cache. Sampled every 60s and may take up to 210s to display.
      EOF
      launchStage      = "BETA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "postgresql"
      googleMetricPath = "cloudsql.googleapis.com/database/postgresql/blocks_read_count"
      label            = "blocks_read_count"
      active           = false

      dataBase = "postgresql"

    },
    "database_postgresql_deadlock_count" = {
      type             = "delta"
      description      = <<-EOF
          Number of deadlocks detected for this database. Sampled every 60s and may take up to 210s to display.
      EOF
      launchStage      = "BETA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "postgresql"
      googleMetricPath = "cloudsql.googleapis.com/database/postgresql/deadlock_count"
      label            = "deadlock_count"
      active           = false

      dataBase = "postgresql"

    },
    "database_postgresql_external_sync_initial_sync_complete" = {
      type             = "gauge"
      description      = <<-EOF
          Whether all databases on the Postgres External Server ES replica have completed the initial sync and are replicating changes from the source. Sampled every 60s and may take up to 210s to display.
      EOF
      launchStage      = "ALPHA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "postgresql"
      googleMetricPath = "cloudsql.googleapis.com/database/postgresql/external_sync/initial_sync_complete"
      label            = "initial_sync_complete"
      active           = false

      dataBase = "postgresql"

    },
    "database_postgresql_external_sync_max_replica_byte_lag" = {
      type             = "gauge"
      description      = <<-EOF
          Replication lag in bytes for Postgres External Server ES replicas. Aggregated across all DBs on the replica. Sampled every 60s and may take up to 210s to display.
      EOF
      launchStage      = "ALPHA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "postgresql"
      googleMetricPath = "cloudsql.googleapis.com/database/postgresql/external_sync/max_replica_byte_lag"
      label            = "max_replica_byte_lag"
      active           = false

      dataBase = "postgresql"

    },
    "database_postgresql_insights_aggregate_execution_time" = {
      type             = "cumulativeCounter"
      description      = <<-EOF
          Accumulated query execution time per user per database. This is the sum of cpu time, io wait time, lock wait time, process context switch, and scheduling for all the processes involved in the query execution.
      EOF
      launchStage      = "GA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "postgresql"
      googleMetricPath = "cloudsql.googleapis.com/database/postgresql/insights/aggregate/execution_time"
      label            = "execution_time"
      active           = true

      dataBase = "postgresql"

    },
    "database_postgresql_insights_aggregate_io_time" = {
      type             = "cumulativeCounter"
      description      = <<-EOF
          Accumulated IO time per user per database.
      EOF
      launchStage      = "GA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "postgresql"
      googleMetricPath = "cloudsql.googleapis.com/database/postgresql/insights/aggregate/io_time"
      label            = "io_time"
      active           = true

      dataBase = "postgresql"

    },
    "database_postgresql_insights_aggregate_latencies" = {
      type             = "cumulativeCounter"
      description      = <<-EOF
          Query latency distribution per user per database.
      EOF
      launchStage      = "GA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "postgresql"
      googleMetricPath = "cloudsql.googleapis.com/database/postgresql/insights/aggregate/latencies"
      label            = "latencies"
      active           = true

      dataBase = "postgresql"

    },
    "database_postgresql_insights_aggregate_lock_time" = {
      type             = "cumulativeCounter"
      description      = <<-EOF
          Accumulated lock wait time per user per database.
      EOF
      launchStage      = "GA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "postgresql"
      googleMetricPath = "cloudsql.googleapis.com/database/postgresql/insights/aggregate/lock_time"
      label            = "lock_time"
      active           = true

      dataBase = "postgresql"

    },
    "database_postgresql_insights_aggregate_row_count" = {
      type             = "cumulativeCounter"
      description      = <<-EOF
          Total number of rows affected during query execution.
      EOF
      launchStage      = "GA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "postgresql"
      googleMetricPath = "cloudsql.googleapis.com/database/postgresql/insights/aggregate/row_count"
      label            = "row_count"
      active           = true

      dataBase = "postgresql"

    },
    "database_postgresql_insights_aggregate_shared_blk_access_count" = {
      type             = "cumulativeCounter"
      description      = <<-EOF
          Shared blocks regular tables and indexed accessed by statement execution.
      EOF
      launchStage      = "GA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "postgresql"
      googleMetricPath = "cloudsql.googleapis.com/database/postgresql/insights/aggregate/shared_blk_access_count"
      label            = "shared_blk_access_count"
      active           = true

      dataBase = "postgresql"

    },
    "database_postgresql_insights_perquery_execution_time" = {
      type             = "cumulativeCounter"
      description      = <<-EOF
          Accumulated execution times per user per database per query.This is the sum of cpu time, io wait time, lock wait time, process context switch, and scheduling for all the processes involved in the query execution.
      EOF
      launchStage      = "GA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "postgresql"
      googleMetricPath = "cloudsql.googleapis.com/database/postgresql/insights/perquery/execution_time"
      label            = "execution_time"
      active           = true

      dataBase = "postgresql"

    },
    "database_postgresql_insights_perquery_io_time" = {
      type             = "cumulativeCounter"
      description      = <<-EOF
          Accumulated IO time per user per database per query.
      EOF
      launchStage      = "GA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "postgresql"
      googleMetricPath = "cloudsql.googleapis.com/database/postgresql/insights/perquery/io_time"
      label            = "io_time"
      active           = true

      dataBase = "postgresql"

    },
    "database_postgresql_insights_perquery_latencies" = {
      type             = "cumulativeCounter"
      description      = <<-EOF
          Query latency distribution per user per database per query.
      EOF
      launchStage      = "GA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "postgresql"
      googleMetricPath = "cloudsql.googleapis.com/database/postgresql/insights/perquery/latencies"
      label            = "latencies"
      active           = true

      dataBase = "postgresql"

    },
    "database_postgresql_insights_perquery_lock_time" = {
      type             = "cumulativeCounter"
      description      = <<-EOF
          Accumulated lock wait time per user per database per query.
      EOF
      launchStage      = "GA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "postgresql"
      googleMetricPath = "cloudsql.googleapis.com/database/postgresql/insights/perquery/lock_time"
      label            = "lock_time"
      active           = true

      dataBase = "postgresql"

    },
    "database_postgresql_insights_perquery_row_count" = {
      type             = "cumulativeCounter"
      description      = <<-EOF
          Total number of rows affected during query execution.
      EOF
      launchStage      = "GA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "postgresql"
      googleMetricPath = "cloudsql.googleapis.com/database/postgresql/insights/perquery/row_count"
      label            = "row_count"
      active           = true

      dataBase = "postgresql"

    },
    "database_postgresql_insights_perquery_shared_blk_access_count" = {
      type             = "cumulativeCounter"
      description      = <<-EOF
          Shared blocks regular tables and indexed accesssed by statement execution.
      EOF
      launchStage      = "GA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "postgresql"
      googleMetricPath = "cloudsql.googleapis.com/database/postgresql/insights/perquery/shared_blk_access_count"
      label            = "shared_blk_access_count"
      active           = true

      dataBase = "postgresql"

    },
    "database_postgresql_insights_pertag_execution_time" = {
      type             = "cumulativeCounter"
      description      = <<-EOF
          Accumulated execution times per user per database per tag.This is the sum of cpu time, io wait time, lock wait time, process context switch, and scheduling for all the processes involved in the query execution.
      EOF
      launchStage      = "GA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "postgresql"
      googleMetricPath = "cloudsql.googleapis.com/database/postgresql/insights/pertag/execution_time"
      label            = "execution_time"
      active           = true

      dataBase = "postgresql"

    },
    "database_postgresql_insights_pertag_io_time" = {
      type             = "cumulativeCounter"
      description      = <<-EOF
          Accumulated IO write time per user per database per tag.
      EOF
      launchStage      = "GA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "postgresql"
      googleMetricPath = "cloudsql.googleapis.com/database/postgresql/insights/pertag/io_time"
      label            = "io_time"
      active           = true

      dataBase = "postgresql"

    },
    "database_postgresql_insights_pertag_latencies" = {
      type             = "cumulativeCounter"
      description      = <<-EOF
          Query latency distribution per user per database per tag.
      EOF
      launchStage      = "GA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "postgresql"
      googleMetricPath = "cloudsql.googleapis.com/database/postgresql/insights/pertag/latencies"
      label            = "latencies"
      active           = true

      dataBase = "postgresql"

    },
    "database_postgresql_insights_pertag_lock_time" = {
      type             = "cumulativeCounter"
      description      = <<-EOF
          Accumulated lock wait time per user per database per tag.
      EOF
      launchStage      = "GA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "postgresql"
      googleMetricPath = "cloudsql.googleapis.com/database/postgresql/insights/pertag/lock_time"
      label            = "lock_time"
      active           = true

      dataBase = "postgresql"

    },
    "database_postgresql_insights_pertag_row_count" = {
      type             = "cumulativeCounter"
      description      = <<-EOF
          Total number of rows affected during query execution.
      EOF
      launchStage      = "GA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "postgresql"
      googleMetricPath = "cloudsql.googleapis.com/database/postgresql/insights/pertag/row_count"
      label            = "row_count"
      active           = true

      dataBase = "postgresql"

    },
    "database_postgresql_insights_pertag_shared_blk_access_count" = {
      type             = "cumulativeCounter"
      description      = <<-EOF
          Shared blocks regular tables and indexed accessed by statement execution.
      EOF
      launchStage      = "GA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "postgresql"
      googleMetricPath = "cloudsql.googleapis.com/database/postgresql/insights/pertag/shared_blk_access_count"
      label            = "shared_blk_access_count"
      active           = true

      dataBase = "postgresql"

    },
    "database_postgresql_num_backends" = {
      type             = "gauge"
      description      = <<-EOF
          Number of connections to the Cloud SQL PostgreSQL instance. Sampled every 60s and may take up to 210s to display.
      EOF
      launchStage      = "GA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "postgresql"
      googleMetricPath = "cloudsql.googleapis.com/database/postgresql/num_backends"
      label            = "num_backends"
      active           = true

      dataBase = "postgresql"

    },
    "database_postgresql_num_backends_by_state" = {
      type             = "gauge"
      description      = <<-EOF
          Number of connections to the Cloud SQL PostgreSQL instance, grouped by its state. Sampled every 60s and may take up to 210s to display.
      EOF
      launchStage      = "BETA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "postgresql"
      googleMetricPath = "cloudsql.googleapis.com/database/postgresql/num_backends_by_state"
      label            = "num_backends_by_state"
      active           = false

      dataBase = "postgresql"

    },
    "database_postgresql_replication_replica_byte_lag" = {
      type             = "gauge"
      description      = <<-EOF
          Replication lag in bytes. Reported from the master per replica. Sampled every 60s and may take up to 210s to display.
      EOF
      launchStage      = "GA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "postgresql"
      googleMetricPath = "cloudsql.googleapis.com/database/postgresql/replication/replica_byte_lag"
      label            = "replica_byte_lag"
      active           = true

      dataBase = "postgresql"

    },
    "database_postgresql_transaction_count" = {
      type             = "delta"
      description      = <<-EOF
          Delta count of number of transactions. Sampled every 60s and may take up to 210s to display.
      EOF
      launchStage      = "GA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "postgresql"
      googleMetricPath = "cloudsql.googleapis.com/database/postgresql/transaction_count"
      label            = "transaction_count"
      active           = true

      dataBase = "postgresql"

    },
    "database_postgresql_transaction_id_count" = {
      type             = "delta"
      description      = <<-EOF
          Delta count of transaction ID. Sampled every 60s and may take up to 210s to display.
      EOF
      launchStage      = "GA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "postgresql"
      googleMetricPath = "cloudsql.googleapis.com/database/postgresql/transaction_id_count"
      label            = "transaction_id_count"
      active           = true

      dataBase = "postgresql"

    },
    "database_postgresql_transaction_id_utilization" = {
      type             = "gauge"
      description      = <<-EOF
          Current utilization represented as a percentage of transaction IDs consumed by the Cloud SQL PostgreSQL instance. Values are typically numbers between 0.0 and 1.0. Charts display the values as a percentage between 0% and 100%. Sampled every 60s and may take up to 210s to display.
      EOF
      launchStage      = "GA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "postgresql"
      googleMetricPath = "cloudsql.googleapis.com/database/postgresql/transaction_id_utilization"
      label            = "transaction_id_utilization"
      active           = true

      dataBase = "postgresql"

    },
    "database_postgresql_tuple_size" = {
      type             = "gauge"
      description      = <<-EOF
          Number of tuples rows in the database. Sampled every 60s and may take up to 210s to display.
      EOF
      launchStage      = "BETA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "postgresql"
      googleMetricPath = "cloudsql.googleapis.com/database/postgresql/tuple_size"
      label            = "tuple_size"
      active           = false

      dataBase = "postgresql"

    },
    "database_postgresql_tuples_processed_count" = {
      type             = "delta"
      description      = <<-EOF
          Number of tuplesrows processed for a given database for operations like  insert, update or delete. Sampled every 60s and may take up to 210s to display.
      EOF
      launchStage      = "BETA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "postgresql"
      googleMetricPath = "cloudsql.googleapis.com/database/postgresql/tuples_processed_count"
      label            = "tuples_processed_count"
      active           = false

      dataBase = "postgresql"

    },
    "database_postgresql_vacuum_oldest_transaction_age" = {
      type             = "gauge"
      description      = <<-EOF
          Age of the oldest transaction yet to be vacuumed in the Cloud SQL PostgreSQL instance, measured in number of transactions that have happened since the oldest transaction. Sampled every 60s and may take up to 210s to display.
      EOF
      launchStage      = "GA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "postgresql"
      googleMetricPath = "cloudsql.googleapis.com/database/postgresql/vacuum/oldest_transaction_age"
      label            = "oldest_transaction_age"
      active           = true

      dataBase = "postgresql"

    },
    "database_replication_log_archive_failure_count" = {
      type             = "delta"
      description      = <<-EOF
          Number of failed attempts for archiving replication log files. Sampled every 60s and may take up to 210s to display.
      EOF
      launchStage      = "BETA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "replication"
      googleMetricPath = "cloudsql.googleapis.com/database/replication/log_archive_failure_count"
      label            = "log_archive_failure_count"
      active           = false

      dataBase = "ALL"

    },
    "database_replication_log_archive_success_count" = {
      type             = "delta"
      description      = <<-EOF
          Number of successful attempts for archiving replication log files. Sampled every 60s and may take up to 210s to display.
      EOF
      launchStage      = "BETA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "replication"
      googleMetricPath = "cloudsql.googleapis.com/database/replication/log_archive_success_count"
      label            = "log_archive_success_count"
      active           = false

      dataBase = "ALL"

    },
    "database_replication_network_lag" = {
      type             = "gauge"
      description      = <<-EOF
          Indicates time taken from primary binary log to IO thread on replica. Only applicable to replicas. Sampled every 60s and may take up to 210s to display.
      EOF
      launchStage      = "GA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "replication"
      googleMetricPath = "cloudsql.googleapis.com/database/replication/network_lag"
      label            = "network_lag"
      active           = true

      dataBase = "ALL"

    },
    "database_replication_replica_lag" = {
      type             = "gauge"
      description      = <<-EOF
          Number of seconds the read replica is behind its primary approximation. Sampled every 60s and may take up to 210s to display.
      EOF
      launchStage      = "GA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "replication"
      googleMetricPath = "cloudsql.googleapis.com/database/replication/replica_lag"
      label            = "replica_lag"
      active           = true

      dataBase = "ALL"

    },
    "database_replication_state" = {
      type             = "gauge"
      description      = <<-EOF
          The current serving state of replication. Sampled every 60s and may take up to 210s to display.
      EOF
      launchStage      = "BETA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "replication"
      googleMetricPath = "cloudsql.googleapis.com/database/replication/state"
      label            = "state"
      active           = false

      dataBase = "ALL"

    },
    "database_sqlserver_audits_size" = {
      type             = "gauge"
      description      = <<-EOF
          Tracks the size in bytes of stored SQLServer audit files on an instance. Sampled every 60s and may take up to 210s to display.
      EOF
      launchStage      = "GA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "sqlserver"
      googleMetricPath = "cloudsql.googleapis.com/database/sqlserver/audits_size"
      label            = "audits_size"
      active           = true

      dataBase = "sqlserver"

    },
    "database_sqlserver_audits_upload_count" = {
      type             = "delta"
      description      = <<-EOF
          Counts total number of SQLServer audit file uploads to a GCS bucket and whether or not an upload was successful. Sampled every 60s and may take up to 210s to display.
      EOF
      launchStage      = "GA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "sqlserver"
      googleMetricPath = "cloudsql.googleapis.com/database/sqlserver/audits_upload_count"
      label            = "audits_upload_count"
      active           = true

      dataBase = "sqlserver"

    },
    "database_sqlserver_external_sync_primary_to_replica_connection_health" = {
      type             = "gauge"
      description      = <<-EOF
          Indicates whether there is connectivity from Primary to the Replica to push replication updates. Sampled every 60s and may take up to 210s to display.
      EOF
      launchStage      = "ALPHA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "sqlserver"
      googleMetricPath = "cloudsql.googleapis.com/database/sqlserver/external_sync/primary_to_replica_connection_health"
      label            = "primary_to_replica_connection_health"
      active           = false

      dataBase = "sqlserver"

    },
    "database_state" = {
      type             = "gauge"
      description      = <<-EOF
          The current serving state of the Cloud SQL instance. This can be one of the following:
RUNNING:  The instance is *expected* to be running. If an instance experiences unplanned non-maintenance downtime, the state will still be RUNNING, but the database/up metric will report 0.
SUSPENDED: The instance is not available, for example due to problems with billing.
RUNNABLE: The instance has been stopped by owner. It is not currently running, but it's ready to be restarted.
PENDING_CREATE: The instance is being created.
MAINTENANCE: The instance is down for maintenance.
FAILED: The instance creation failed or an operation left the instance in an unknown bad state.
UNKNOWN_STATE: The state of the instance is unknown. Sampled every 60s and may take up to 210s to display.
      EOF
      launchStage      = "GA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "state"
      googleMetricPath = "cloudsql.googleapis.com/database/state"
      label            = "state"
      active           = true

      dataBase = "ALL"

    },
    "database_up" = {
      type             = "gauge"
      description      = <<-EOF
          Indicates if the server is up or not. Sampled every 60s and may take up to 210s to display.
      EOF
      launchStage      = "GA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "up"
      googleMetricPath = "cloudsql.googleapis.com/database/up"
      label            = "up"
      active           = true

      dataBase = "ALL"

    },
    "database_uptime" = {
      type             = "delta"
      description      = <<-EOF
          Delta count of the time in seconds the instance has been running. Sampled every 60s and may take up to 210s to display.
      EOF
      launchStage      = "GA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "uptime"
      googleMetricPath = "cloudsql.googleapis.com/database/uptime"
      label            = "uptime"
      active           = true

      dataBase = "ALL"

    },
  }
}
