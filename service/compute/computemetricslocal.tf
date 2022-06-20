locals {
  metrics_definitions = {
    "compute.googleapis.com/firewall/dropped_bytes_count" = {
      type        = "delta"
      description = <<-EOF
          Count of incoming bytes dropped by the firewall. Sampled every 60s and may take up to 240s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true
    },
    "compute.googleapis.com/firewall/dropped_packets_count" = {
      type        = "delta"
      description = <<-EOF
          Count of incoming packets dropped by the firewall. Sampled every 60s and may take up to 240s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true
    },
    "compute.googleapis.com/guest/cpu/load_15m" = {
      type        = "gauge"
      description = <<-EOF
          CPU Load 15 minute intervals. For Container-Optimized OS, or Ubuntu running GKE.
      EOF
      launchStage = "ALPHA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = false
    },
    "compute.googleapis.com/guest/cpu/load_1m" = {
      type        = "gauge"
      description = <<-EOF
          CPU Load 1 minute intervals. For Container-Optimized OS, or Ubuntu running GKE.
      EOF
      launchStage = "ALPHA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = false
    },
    "compute.googleapis.com/guest/cpu/load_5m" = {
      type        = "gauge"
      description = <<-EOF
          CPU Load 5 minute intervals.  For Container-Optimized OS, or Ubuntu running GKE.
      EOF
      launchStage = "ALPHA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = false
    },
    "compute.googleapis.com/guest/cpu/runnable_task_count" = {
      type        = "gauge"
      description = <<-EOF
          The average number of runnable tasks in the run-queue. For Container-Optimized OS, or Ubuntu running GKE.
      EOF
      launchStage = "BETA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = false
    },
    "compute.googleapis.com/guest/cpu/usage_time" = {
      type        = "cumulativeCounter"
      description = <<-EOF
          CPU usage, in seconds. For Container-Optimized OS, or Ubuntu running GKE.
      EOF
      launchStage = "BETA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = false
    },
    "compute.googleapis.com/guest/disk/bytes_used" = {
      type        = "gauge"
      description = <<-EOF
          Number of bytes used on disk for file systems. For Container-Optimized OS, or Ubuntu running GKE.
      EOF
      launchStage = "BETA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = false
    },
    "compute.googleapis.com/guest/disk/io_time" = {
      type        = "cumulativeCounter"
      description = <<-EOF
          The cumulative time spent on the I/O operations that are in progress; that is, the actual time in queue and when disks were busy. Requests issued in parallel are counted as a single one. For Container-Optimized OS, or Ubuntu running GKE. Sampled every 60s and may take up to  to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true
    },
    "compute.googleapis.com/guest/disk/merged_operation_count" = {
      type        = "cumulativeCounter"
      description = <<-EOF
          Merged disk operations count. Disk operations which are adjacent to each other may be merged by the kernel for efficiency. For Container-Optimized OS, or Ubuntu running GKE.
      EOF
      launchStage = "BETA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = false
    },
    "compute.googleapis.com/guest/disk/operation_bytes_count" = {
      type        = "cumulativeCounter"
      description = <<-EOF
          Bytes transferred in disk operations. For Container-Optimized OS, or Ubuntu running GKE.
      EOF
      launchStage = "BETA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = false
    },
    "compute.googleapis.com/guest/disk/operation_count" = {
      type        = "cumulativeCounter"
      description = <<-EOF
          Disk operations count. For Container-Optimized OS, or Ubuntu running GKE.
      EOF
      launchStage = "BETA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = false
    },
    "compute.googleapis.com/guest/disk/operation_time" = {
      type        = "cumulativeCounter"
      description = <<-EOF
          Amount of time spent on the disk operations, by direction. This metric only includes time spent on completed operations. For Container-Optimized OS, or Ubuntu running GKE.
      EOF
      launchStage = "BETA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = false
    },
    "compute.googleapis.com/guest/disk/queue_length" = {
      type        = "gauge"
      description = <<-EOF
          The queue length on the disk averaged over the last 60 seconds. For Container-Optimized OS, or Ubuntu running GKE. Sampled every 60s and may take up to  to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true
    },
    "compute.googleapis.com/guest/disk/weighted_io_time" = {
      type        = "cumulativeCounter"
      description = <<-EOF
          The cumulative weighted IO time spent on the disk. For Container-Optimized OS, or Ubuntu running GKE. Sampled every 60s and may take up to  to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true
    },
    "compute.googleapis.com/guest/memory/anonymous_used" = {
      type        = "gauge"
      description = <<-EOF
          Anonymous memory usage, in Bytes. Summing values of all states yields the total anonymous memory used. For Container-Optimized OS, or Ubuntu running GKE.
      EOF
      launchStage = "BETA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = false
    },
    "compute.googleapis.com/guest/memory/bytes_used" = {
      type        = "gauge"
      description = <<-EOF
          Memory usage by each memory state, in Bytes. Summing values of all states yields the total memory on the machine. For Container-Optimized OS, or Ubuntu running GKE.
      EOF
      launchStage = "BETA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = false
    },
    "compute.googleapis.com/guest/memory/dirty_used" = {
      type        = "gauge"
      description = <<-EOF
          Dirty pages usage, in Bytes. For Container-Optimized OS, or Ubuntu running GKE.
      EOF
      launchStage = "BETA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = false
    },
    "compute.googleapis.com/guest/memory/page_cache_used" = {
      type        = "gauge"
      description = <<-EOF
          Page cache memory usage, in Bytes. Summing values of all states yields the total anonymous memory used. For Container-Optimized OS, or Ubuntu running GKE.
      EOF
      launchStage = "BETA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = false
    },
    "compute.googleapis.com/guest/memory/unevictable_used" = {
      type        = "gauge"
      description = <<-EOF
          Unevictable memory usage, in Bytes. For Container-Optimized OS, or Ubuntu running GKE.
      EOF
      launchStage = "BETA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = false
    },
    "compute.googleapis.com/guest/system/os_feature_enabled" = {
      type        = "gauge"
      description = <<-EOF
          OS Features like GPU support, KTD kernel, third party modules as unknown modules. 1 if the feature is enabled and 0, if disabled.  For Container-Optimized OS, or Ubuntu running GKE. Sampled every 60s and may take up to  to display.
      EOF
      launchStage = "BETA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = false
    },
    "compute.googleapis.com/guest/system/problem_count" = {
      type        = "cumulativeCounter"
      description = <<-EOF
          Number of times a machine problem has happened. For Container-Optimized OS, or Ubuntu running GKE. Sampled every 60s and may take up to  to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true
    },
    "compute.googleapis.com/guest/system/problem_state" = {
      type        = "gauge"
      description = <<-EOF
          Whether a problem is affecting the system or not. The problem is affecting the system when set to 1 and is not affecting the system when set to 0. For Container-Optimized OS, or Ubuntu running GKE. Sampled every 60s and may take up to  to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true
    },
    "compute.googleapis.com/guest/system/uptime" = {
      type        = "gauge"
      description = <<-EOF
          Number of seconds that the operating system has been running for. For Container-Optimized OS, or Ubuntu running GKE. Sampled every 60s and may take up to  to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true
    },
    "compute.googleapis.com/instance/cpu/guest_visible_vcpus" = {
      type        = "gauge"
      description = <<-EOF
          Number of vCPUs visible inside the guest. For many GCE machine types, the number of vCPUs visible inside the guest is equal to the `compute.googleapis.com/instance/cpu/reserved_cores` metric. For shared-core machine types, the number of guest-visible vCPUs differs from the number of resereved cores. For example, e2-small instances have two vCPUs visible inside the guest and 0.5 fractional vCPUs reserved. Therefore, for an e2-small instance,  `compute.googleapis.com/instance/cpu/guest_visible_vcpus` has a value of 2 and `compute.googleapis.com/instance/cpu/reserved_cores` has a value of 0.5. Sampled every 60s and may take up to 240s to display.
      EOF
      launchStage = "BETA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = false
    },
    "compute.googleapis.com/instance/cpu/reserved_cores" = {
      type        = "gauge"
      description = <<-EOF
          Number of vCPUs reserved on the host of the instance. Sampled every 60s and may take up to 240s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true
    },
    "compute.googleapis.com/instance/cpu/scheduler_wait_time" = {
      type        = "delta"
      description = <<-EOF
          Wait time is the time a vCPU is ready to run, but unexpectedly not scheduled to run. The wait time returned here is the accumulated value for all vCPUs. The time interval for which the value was measured is returned by Monitoring in whole seconds as start_time and end_time. This metric is only available for VMs that belong to the e2 family or to overcommitted VMs on sole-tenant nodes. Sampled every 60s and may take up to 240s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true
    },
    "compute.googleapis.com/instance/cpu/usage_time" = {
      type        = "delta"
      description = <<-EOF
          Delta vCPU usage for all vCPUs, in vCPU-seconds. To compute the per-vCPU utilization fraction, divide this value by end-start*N, where end and start define this value's time interval and N is `compute.googleapis.com/instance/cpu/reserved_cores` at the end of the interval. This value is reported by the hypervisor for the VM and can differ from `agent.googleapis.com/cpu/usage_time`, which is reported from inside the VM. Sampled every 60s and may take up to 240s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true
    },
    "compute.googleapis.com/instance/cpu/utilization" = {
      type        = "gauge"
      description = <<-EOF
          Fractional utilization of allocated CPU on this instance. Values are typically numbers between 0.0 and 1.0 but some machine types allow bursting above 1.0. Charts display the values as a percentage between 0% and 100% or more. This metric is reported by the hypervisor for the VM and can differ from `agent.googleapis.com/cpu/utilization`, which is reported from inside the VM. Sampled every 60s and may take up to 240s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true
    },
    "compute.googleapis.com/instance/disk/max_read_bytes_count" = {
      type        = "gauge"
      description = <<-EOF
          Disk's maximum per-second read throughput over a period of time specified by the user. The period must be one minute or longer. Sampled every 60s and may take up to 120s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true
    },
    "compute.googleapis.com/instance/disk/max_read_ops_count" = {
      type        = "gauge"
      description = <<-EOF
          Disk's maximum per-second read requests count over a period of time specified by the user. The period must be one minute or longer. Sampled every 60s and may take up to 120s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true
    },
    "compute.googleapis.com/instance/disk/max_write_bytes_count" = {
      type        = "gauge"
      description = <<-EOF
          Disk's maximum per-second write throughput over a period of time specified by the user. The period must be one minute or longer. Sampled every 60s and may take up to 120s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true
    },
    "compute.googleapis.com/instance/disk/max_write_ops_count" = {
      type        = "gauge"
      description = <<-EOF
          Disk's maximum per-second write requests count over a period of time specified by the user. The period must be one minute or longer. Sampled every 60s and may take up to 120s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true
    },
    "compute.googleapis.com/instance/disk/read_bytes_count" = {
      type        = "delta"
      description = <<-EOF
          Count of bytes read from disk. Sampled every 60s and may take up to 240s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true
    },
    "compute.googleapis.com/instance/disk/read_ops_count" = {
      type        = "delta"
      description = <<-EOF
          Count of disk read IO operations. Sampled every 60s and may take up to 240s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true
    },
    "compute.googleapis.com/instance/disk/throttled_read_bytes_count" = {
      type        = "delta"
      description = <<-EOF
          Count of bytes in throttled read operations. Sampled every 60s and may take up to 240s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true
    },
    "compute.googleapis.com/instance/disk/throttled_read_ops_count" = {
      type        = "delta"
      description = <<-EOF
          Count of throttled read operations. Sampled every 60s and may take up to 240s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true
    },
    "compute.googleapis.com/instance/disk/throttled_write_bytes_count" = {
      type        = "delta"
      description = <<-EOF
          Count of bytes in throttled write operations. Sampled every 60s and may take up to 240s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true
    },
    "compute.googleapis.com/instance/disk/throttled_write_ops_count" = {
      type        = "delta"
      description = <<-EOF
          Count of throttled write operations. Sampled every 60s and may take up to 240s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true
    },
    "compute.googleapis.com/instance/disk/write_bytes_count" = {
      type        = "delta"
      description = <<-EOF
          Count of bytes written to disk. Sampled every 60s and may take up to 240s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true
    },
    "compute.googleapis.com/instance/disk/write_ops_count" = {
      type        = "delta"
      description = <<-EOF
          Count of disk write IO operations. Sampled every 60s and may take up to 240s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true
    },
    "compute.googleapis.com/instance/integrity/early_boot_validation_status" = {
      type        = "gauge"
      description = <<-EOF
          The validation status of early boot integrity policy. Sampled every 60s and may take up to 240s to display.
      EOF
      launchStage = "BETA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = false
    },
    "compute.googleapis.com/instance/integrity/late_boot_validation_status" = {
      type        = "gauge"
      description = <<-EOF
          The validation status of late boot integrity policy. Sampled every 60s and may take up to 240s to display.
      EOF
      launchStage = "BETA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = false
    },
    "compute.googleapis.com/instance/memory/balloon/ram_size" = {
      type        = "gauge"
      description = <<-EOF
          The total amount of memory in the VM. This metric is only available for VMs that belong to the e2 family. Sampled every 60s and may take up to 240s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true
    },
    "compute.googleapis.com/instance/memory/balloon/ram_used" = {
      type        = "gauge"
      description = <<-EOF
          Memory currently used in the VM. This metric is only available for VMs that belong to the e2 family. Sampled every 60s and may take up to 240s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true
    },
    "compute.googleapis.com/instance/memory/balloon/swap_in_bytes_count" = {
      type        = "delta"
      description = <<-EOF
          The amount of memory read into the guest from its own swap space. This metric is only available for VMs that belong to the e2 family. Sampled every 60s and may take up to 240s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true
    },
    "compute.googleapis.com/instance/memory/balloon/swap_out_bytes_count" = {
      type        = "delta"
      description = <<-EOF
          The amount of memory written from the guest to its own swap space. This metric is only available for VMs that belong to the e2 family. Sampled every 60s and may take up to 240s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true
    },
    "compute.googleapis.com/instance/network/received_bytes_count" = {
      type        = "delta"
      description = <<-EOF
          Count of bytes received from the network. Sampled every 60s and may take up to 240s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true
    },
    "compute.googleapis.com/instance/network/received_packets_count" = {
      type        = "delta"
      description = <<-EOF
          Count of packets received from the network. Sampled every 60s and may take up to 240s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true
    },
    "compute.googleapis.com/instance/network/sent_bytes_count" = {
      type        = "delta"
      description = <<-EOF
          Count of bytes sent over the network. Sampled every 60s and may take up to 240s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true
    },
    "compute.googleapis.com/instance/network/sent_packets_count" = {
      type        = "delta"
      description = <<-EOF
          Count of packets sent over the network. Sampled every 60s and may take up to 240s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true
    },
    "compute.googleapis.com/instance/uptime" = {
      type        = "delta"
      description = <<-EOF
          Delta of how long the VM has been running, in seconds. Note: to get the total number of seconds since VM start, use compute.googleapis.com/instance/uptime_total. Sampled every 60s and may take up to 240s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true
    },
    "compute.googleapis.com/instance/uptime_total" = {
      type        = "gauge"
      description = <<-EOF
          Elapsed time since the VM was started, in seconds. Sampled every 60s and may take up to 120s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true
    },
    "compute.googleapis.com/instance_group/predicted_capacity" = {
      type        = "gauge"
      description = <<-EOF
          Estimated capacity that the instance group will have if predictive autoscaling is enabled. Currently available only for autoscaled instance groups and equal to the predicted number of serving VMs multiplied by utilization target. Sampled every 60s and may take up to 240s to display.
      EOF
      launchStage = "BETA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = false
    },
    "compute.googleapis.com/instance_group/predicted_size" = {
      type        = "gauge"
      description = <<-EOF
          Estimated number of VMs that the instance group will have if predictive autoscaling is enabled. Currently available only for autoscaled instance groups. Sampled every 60s and may take up to 240s to display.
      EOF
      launchStage = "BETA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = false
    },
    "compute.googleapis.com/instance_group/predicted_utilization" = {
      type        = "gauge"
      description = <<-EOF
          The sum of the estimated values of the scaling metric for all serving VMs if predictive autoscaling is enabled. Currently available only for autoscaled instance groups. Sampled every 60s and may take up to 240s to display.
      EOF
      launchStage = "BETA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = false
    },
    "compute.googleapis.com/instance_group/size" = {
      type        = "gauge"
      description = <<-EOF
          The number of VMs in the instance group. Sampled every 60s and may take up to 240s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true
    },
    "compute.googleapis.com/mirroring/dropped_packets_count" = {
      type        = "delta"
      description = <<-EOF
          Count of dropped mirrored packets. Sampled every 60s and may take up to 240s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true
    },
    "compute.googleapis.com/mirroring/mirrored_bytes_count" = {
      type        = "delta"
      description = <<-EOF
          Count of mirrored bytes. Sampled every 60s and may take up to 240s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true
    },
    "compute.googleapis.com/mirroring/mirrored_packets_count" = {
      type        = "delta"
      description = <<-EOF
          Count of mirrored packets. Sampled every 60s and may take up to 240s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true
    },
    "compute.googleapis.com/nat/allocated_ports" = {
      type        = "gauge"
      description = <<-EOF
          Number of ports allocated to a VM by the NAT gateway. Sampled every 60s and may take up to 165s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true
    },
    "compute.googleapis.com/nat/closed_connections_count" = {
      type        = "delta"
      description = <<-EOF
          Count of connections closed over the NAT gateway. Sampled every 60s and may take up to 165s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true
    },
    "compute.googleapis.com/nat/dropped_received_packets_count" = {
      type        = "delta"
      description = <<-EOF
          Count of received packets dropped by the NAT gateway. Sampled every 60s and may take up to 165s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true
    },
    "compute.googleapis.com/nat/dropped_sent_packets_count" = {
      type        = "delta"
      description = <<-EOF
          Count of sent packets dropped by the NAT gateway. Sampled every 60s and may take up to 165s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true
    },
    "compute.googleapis.com/nat/new_connections_count" = {
      type        = "delta"
      description = <<-EOF
          Count of new connections created over the NAT gateway. Sampled every 60s and may take up to 165s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true
    },
    "compute.googleapis.com/nat/open_connections" = {
      type        = "gauge"
      description = <<-EOF
          Number of connections currently open on the NAT gateway. Sampled every 60s and may take up to 165s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true
    },
    "compute.googleapis.com/nat/port_usage" = {
      type        = "gauge"
      description = <<-EOF
          Maximum number of connections from a VM to a single internet endpoint IP:port. Sampled every 60s and may take up to 165s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true
    },
    "compute.googleapis.com/nat/received_bytes_count" = {
      type        = "delta"
      description = <<-EOF
          Count of bytes received Internet -greater than VM via the NAT gateway. Sampled every 60s and may take up to 165s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true
    },
    "compute.googleapis.com/nat/received_packets_count" = {
      type        = "delta"
      description = <<-EOF
          Count of packets received Internet -greater than VM via the NAT gateway. Sampled every 60s and may take up to 165s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true
    },
    "compute.googleapis.com/nat/sent_bytes_count" = {
      type        = "delta"
      description = <<-EOF
          Count of bytes sent VM -greater than Internet over the NAT gateway. Sampled every 60s and may take up to 165s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true
    },
    "compute.googleapis.com/nat/sent_packets_count" = {
      type        = "delta"
      description = <<-EOF
          Count of packets sent VM -greater than Internet over the NAT gateway. Sampled every 60s and may take up to 165s to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true
    },
    "compute.googleapis.com/quota/instances_per_vpc_network/exceeded" = {
      type        = "delta"
      description = <<-EOF
          Number of attempts to exceed the limit on quota metric compute.googleapis.com/instances_per_vpc_network.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true
    },
    "compute.googleapis.com/quota/instances_per_vpc_network/limit" = {
      type        = "gauge"
      description = <<-EOF
          Current limit on quota metric compute.googleapis.com/instances_per_vpc_network. Sampled every 60s and may take up to  to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true
    },
    "compute.googleapis.com/quota/instances_per_vpc_network/usage" = {
      type        = "gauge"
      description = <<-EOF
          Current usage on quota metric compute.googleapis.com/instances_per_vpc_network.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true
    },
    "compute.googleapis.com/quota/internal_lb_forwarding_rules_per_vpc_network/exceeded" = {
      type        = "delta"
      description = <<-EOF
          Number of attempts to exceed the limit on quota metric compute.googleapis.com/internal_lb_forwarding_rules_per_vpc_network.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true
    },
    "compute.googleapis.com/quota/internal_lb_forwarding_rules_per_vpc_network/limit" = {
      type        = "gauge"
      description = <<-EOF
          Current limit on quota metric compute.googleapis.com/internal_lb_forwarding_rules_per_vpc_network. Sampled every 60s and may take up to  to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true
    },
    "compute.googleapis.com/quota/internal_lb_forwarding_rules_per_vpc_network/usage" = {
      type        = "gauge"
      description = <<-EOF
          Current usage on quota metric compute.googleapis.com/internal_lb_forwarding_rules_per_vpc_network.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true
    },
    "compute.googleapis.com/quota/internal_managed_forwarding_rules_per_vpc_network/exceeded" = {
      type        = "delta"
      description = <<-EOF
          Number of attempts to exceed the limit on quota metric compute.googleapis.com/internal_managed_forwarding_rules_per_vpc_network.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true
    },
    "compute.googleapis.com/quota/internal_managed_forwarding_rules_per_vpc_network/limit" = {
      type        = "gauge"
      description = <<-EOF
          Current limit on quota metric compute.googleapis.com/internal_managed_forwarding_rules_per_vpc_network. Sampled every 60s and may take up to  to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true
    },
    "compute.googleapis.com/quota/internal_managed_forwarding_rules_per_vpc_network/usage" = {
      type        = "gauge"
      description = <<-EOF
          Current usage on quota metric compute.googleapis.com/internal_managed_forwarding_rules_per_vpc_network.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true
    },
    "compute.googleapis.com/quota/internal_protocol_forwarding_rules_per_vpc_network/exceeded" = {
      type        = "delta"
      description = <<-EOF
          Number of attempts to exceed the limit on quota metric compute.googleapis.com/internal_protocol_forwarding_rules_per_vpc_network.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true
    },
    "compute.googleapis.com/quota/internal_protocol_forwarding_rules_per_vpc_network/limit" = {
      type        = "gauge"
      description = <<-EOF
          Current limit on quota metric compute.googleapis.com/internal_protocol_forwarding_rules_per_vpc_network. Sampled every 60s and may take up to  to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true
    },
    "compute.googleapis.com/quota/internal_protocol_forwarding_rules_per_vpc_network/usage" = {
      type        = "gauge"
      description = <<-EOF
          Current usage on quota metric compute.googleapis.com/internal_protocol_forwarding_rules_per_vpc_network.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true
    },
    "compute.googleapis.com/quota/ip_aliases_per_vpc_network/exceeded" = {
      type        = "delta"
      description = <<-EOF
          Number of attempts to exceed the limit on quota metric compute.googleapis.com/ip_aliases_per_vpc_network.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true
    },
    "compute.googleapis.com/quota/ip_aliases_per_vpc_network/limit" = {
      type        = "gauge"
      description = <<-EOF
          Current limit on quota metric compute.googleapis.com/ip_aliases_per_vpc_network. Sampled every 60s and may take up to  to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true
    },
    "compute.googleapis.com/quota/ip_aliases_per_vpc_network/usage" = {
      type        = "gauge"
      description = <<-EOF
          Current usage on quota metric compute.googleapis.com/ip_aliases_per_vpc_network.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true
    },
    "compute.googleapis.com/quota/psc_google_apis_forwarding_rules_per_vpc_network/exceeded" = {
      type        = "delta"
      description = <<-EOF
          Number of attempts to exceed the limit on quota metric compute.googleapis.com/psc_google_apis_forwarding_rules_per_vpc_network.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true
    },
    "compute.googleapis.com/quota/psc_google_apis_forwarding_rules_per_vpc_network/limit" = {
      type        = "gauge"
      description = <<-EOF
          Current limit on quota metric compute.googleapis.com/psc_google_apis_forwarding_rules_per_vpc_network. Sampled every 60s and may take up to  to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true
    },
    "compute.googleapis.com/quota/psc_google_apis_forwarding_rules_per_vpc_network/usage" = {
      type        = "gauge"
      description = <<-EOF
          Current usage on quota metric compute.googleapis.com/psc_google_apis_forwarding_rules_per_vpc_network.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true
    },
    "compute.googleapis.com/quota/psc_ilb_consumer_forwarding_rules_per_producer_vpc_network/exceeded" = {
      type        = "delta"
      description = <<-EOF
          Number of attempts to exceed the limit on quota metric compute.googleapis.com/psc_ilb_consumer_forwarding_rules_per_producer_vpc_network.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true
    },
    "compute.googleapis.com/quota/psc_ilb_consumer_forwarding_rules_per_producer_vpc_network/limit" = {
      type        = "gauge"
      description = <<-EOF
          Current limit on quota metric compute.googleapis.com/psc_ilb_consumer_forwarding_rules_per_producer_vpc_network. Sampled every 60s and may take up to  to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true
    },
    "compute.googleapis.com/quota/psc_ilb_consumer_forwarding_rules_per_producer_vpc_network/usage" = {
      type        = "gauge"
      description = <<-EOF
          Current usage on quota metric compute.googleapis.com/psc_ilb_consumer_forwarding_rules_per_producer_vpc_network.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true
    },
    "compute.googleapis.com/quota/subnet_ranges_per_vpc_network/exceeded" = {
      type        = "delta"
      description = <<-EOF
          Number of attempts to exceed the limit on quota metric compute.googleapis.com/subnet_ranges_per_vpc_network.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true
    },
    "compute.googleapis.com/quota/subnet_ranges_per_vpc_network/limit" = {
      type        = "gauge"
      description = <<-EOF
          Current limit on quota metric compute.googleapis.com/subnet_ranges_per_vpc_network. Sampled every 60s and may take up to  to display.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true
    },
    "compute.googleapis.com/quota/subnet_ranges_per_vpc_network/usage" = {
      type        = "gauge"
      description = <<-EOF
          Current usage on quota metric compute.googleapis.com/subnet_ranges_per_vpc_network.
      EOF
      launchStage = "GA"
      rollup      = "avg"
      aggregate   = "sum"
      active      = true
    },
  }
}