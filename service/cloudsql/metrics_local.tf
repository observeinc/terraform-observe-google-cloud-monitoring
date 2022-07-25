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
      label            = "Active Directory domain reachable"
      active           = false

      dataBase = "ALL"
      interval = "60s"



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
      label            = "Windows Authentication available"
      active           = false

      dataBase = "ALL"
      interval = "60s"



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
      label            = "Auto-failover Requests"
      active           = true

      dataBase = "ALL"
      interval = "60s"



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
      label            = "Available for failover"
      active           = true

      dataBase = "ALL"
      interval = "60s"



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
      label            = "CPU reserved cores"
      active           = true

      dataBase = "ALL"
      interval = "60s"



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
      label            = "CPU usage"
      active           = true

      dataBase = "ALL"
      interval = "60s"

      unit = "s{CPU}"

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
      label            = "CPU utilization"
      active           = true

      dataBase = "ALL"
      interval = "60s"

      unit = "10^2.%"

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
      label            = "Bytes used"
      active           = true

      dataBase = "ALL"
      interval = "60s"

      unit = "By"

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
      label            = "Bytes used"
      active           = false

      dataBase = "ALL"
      interval = "60s"

      unit = "By"

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
      label            = "Disk quota"
      active           = true

      dataBase = "ALL"
      interval = "60s"

      unit = "By"

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
      label            = "Disk read IO"
      active           = true

      dataBase = "ALL"
      interval = "60s"



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
      label            = "Disk utilization"
      active           = true

      dataBase = "ALL"
      interval = "60s"



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
      label            = "Disk write IO"
      active           = true

      dataBase = "ALL"
      interval = "60s"



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
      label            = "Instance state"
      active           = true

      dataBase = "ALL"
      interval = "60s"



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
      label            = "Memory quota"
      active           = true

      dataBase = "ALL"
      interval = "60s"

      unit = "By"

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
      label            = "Total memory usage"
      active           = true

      dataBase = "ALL"
      interval = "60s"

      unit = "By"

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
      label            = "Memory usage"
      active           = true

      dataBase = "ALL"
      interval = "60s"

      unit = "By"

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
      label            = "Memory utilization"
      active           = true

      dataBase = "ALL"
      interval = "60s"



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
      label            = "InnoDB dirty pages"
      active           = true

      dataBase = "mysql"
      interval = "60s"



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
      label            = "InnoDB free pages"
      active           = true

      dataBase = "mysql"
      interval = "60s"



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
      label            = "InnoDB total pages"
      active           = true

      dataBase = "mysql"
      interval = "60s"



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
      label            = "InnoDB fsync calls"
      active           = true

      dataBase = "mysql"
      interval = "60s"



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
      label            = "InnoDB log fsync calls"
      active           = true

      dataBase = "mysql"
      interval = "60s"



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
      label            = "InnoDB pages read"
      active           = true

      dataBase = "mysql"
      interval = "60s"



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
      label            = "InnoDB pages written"
      active           = true

      dataBase = "mysql"
      interval = "60s"



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
      label            = "Queries"
      active           = true

      dataBase = "mysql"
      interval = "60s"



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
      label            = "Questions"
      active           = true

      dataBase = "mysql"
      interval = "60s"



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
      label            = "Network bytes received by MySQL"
      active           = true

      dataBase = "mysql"
      interval = "60s"

      unit = "By"

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
      label            = "Available for failover Deprecated"
      active           = false

      dataBase = "mysql"
      interval = "60s"



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
      label            = "Last I/O thread error number."
      active           = true

      dataBase = "mysql"
      interval = "60s"



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
      label            = "Last SQL thread error number."
      active           = true

      dataBase = "mysql"
      interval = "60s"



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
      label            = "Replication lag"
      active           = true

      dataBase = "mysql"
      interval = "60s"

      unit = "s"

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
      label            = "Slave I/O thread running"
      active           = true

      dataBase = "mysql"
      interval = "60s"



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
      label            = "Slave I/O thread running state"
      active           = true

      dataBase = "mysql"
      interval = "60s"



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
      label            = "Slave SQL thread running"
      active           = true

      dataBase = "mysql"
      interval = "60s"



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
      label            = "Slave SQL thread running state"
      active           = true

      dataBase = "mysql"
      interval = "60s"



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
      label            = "Network bytes sent by MySQL"
      active           = true

      dataBase = "mysql"
      interval = "60s"

      unit = "By"

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
      label            = "Cloud SQL Connections"
      active           = true

      dataBase = "ALL"
      interval = "60s"



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
      label            = "Received bytes"
      active           = true

      dataBase = "ALL"
      interval = "60s"

      unit = "By"

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
      label            = "Sent bytes"
      active           = true

      dataBase = "ALL"
      interval = "60s"

      unit = "By"

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
      label            = "Number of disk blocks read."
      active           = false

      dataBase = "postgresql"
      interval = "60s"



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
      label            = "Deadlocks count"
      active           = false

      dataBase = "postgresql"
      interval = "60s"



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
      label            = "Initial sync complete"
      active           = false

      dataBase = "postgresql"
      interval = "60s"



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
      label            = "Max lag bytes"
      active           = false

      dataBase = "postgresql"
      interval = "60s"

      unit = "By"

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
      label            = "Execution time"
      active           = true

      dataBase = "postgresql"

      unit = "us{CPU}"

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
      label            = "IO time"
      active           = true

      dataBase = "postgresql"

      unit = "us"

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
      label            = "Latency"
      active           = true

      dataBase = "postgresql"

      unit = "us"

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
      label            = "Aggregated lock time"
      active           = true

      dataBase = "postgresql"

      unit = "us"

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
      label            = "Affected rows"
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
      label            = "Shared blocks cache access."
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
      label            = "Per query execution times"
      active           = true

      dataBase = "postgresql"

      unit = "us{CPU}"

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
      label            = "Per query IO time"
      active           = true

      dataBase = "postgresql"

      unit = "us"

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
      label            = "Per query latency"
      active           = true

      dataBase = "postgresql"

      unit = "us"

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
      label            = "Per query lock time"
      active           = true

      dataBase = "postgresql"

      unit = "us"

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
      label            = "Per query affected rows"
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
      label            = "Per query Shared blocks cache access"
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
      label            = "Per tag execution time"
      active           = true

      dataBase = "postgresql"

      unit = "us{CPU}"

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
      label            = "Per tag IO time"
      active           = true

      dataBase = "postgresql"

      unit = "us"

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
      label            = "Per tag latency"
      active           = true

      dataBase = "postgresql"

      unit = "us"

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
      label            = "Per tag lock time"
      active           = true

      dataBase = "postgresql"

      unit = "us"

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
      label            = "Per tag affected rows"
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
      label            = "Per tag shared blocks cache accessed"
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
      label            = "PostgreSQL Connections"
      active           = true

      dataBase = "postgresql"
      interval = "60s"



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
      label            = "PostgreSQL Connections by State"
      active           = false

      dataBase = "postgresql"
      interval = "60s"



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
      label            = "Lag bytes"
      active           = true

      dataBase = "postgresql"
      interval = "60s"

      unit = "By"

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
      label            = "Number of transactions"
      active           = true

      dataBase = "postgresql"
      interval = "60s"



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
      label            = "Transaction ID count"
      active           = true

      dataBase = "postgresql"
      interval = "60s"



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
      label            = "Transaction ID utilization"
      active           = true

      dataBase = "postgresql"
      interval = "60s"

      unit = "10^2.%"

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
      label            = "Number of tuples rows in the database."
      active           = false

      dataBase = "postgresql"
      interval = "60s"



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
      label            = "Number of rows processed"
      active           = false

      dataBase = "postgresql"
      interval = "60s"



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
      label            = "Oldest transaction age"
      active           = true

      dataBase = "postgresql"
      interval = "60s"



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
      label            = "Number of log archival failures."
      active           = false

      dataBase = "ALL"
      interval = "60s"



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
      label            = "Number of log archival successes."
      active           = false

      dataBase = "ALL"
      interval = "60s"



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
      label            = "Network lag"
      active           = true

      dataBase = "ALL"
      interval = "60s"

      unit = "s"

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
      label            = "Replication lag"
      active           = true

      dataBase = "ALL"
      interval = "60s"

      unit = "s"

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
      label            = "Replication state"
      active           = false

      dataBase = "ALL"
      interval = "60s"



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
      label            = "Size of latest uploaded SQLserver audit."
      active           = true

      dataBase = "sqlserver"
      interval = "60s"

      unit = "By"

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
      label            = "Number of SQLServer audit files in GCS bucket."
      active           = true

      dataBase = "sqlserver"
      interval = "60s"



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
      label            = "Primary to Replica connectivity"
      active           = false

      dataBase = "sqlserver"
      interval = "60s"



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
      label            = "State"
      active           = true

      dataBase = "ALL"
      interval = "60s"



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
      label            = "Server up"
      active           = true

      dataBase = "ALL"
      interval = "60s"



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
      label            = "Uptime"
      active           = true

      dataBase = "ALL"
      interval = "60s"

      unit = "s"

    },
  }
}
