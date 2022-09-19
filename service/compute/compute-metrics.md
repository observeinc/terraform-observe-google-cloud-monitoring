# Compute metrics
<!---
This is an auto generated file.  Run ./serviceUtilities.py -h in terraform-observe-google/service for help.
-->
This page lists the compute metrics collected by the GCP Integration.

### FIREWALL

```{list-table}
:header-rows: 1
:widths: 35 65
:class: force-wrap-table

* - Metric
  - Description

* - `dropped_bytes_count`
  - Count of incoming bytes dropped by the firewall.
* - `dropped_packets_count`
  - Count of incoming packets dropped by the firewall.

```

### GUEST

```{list-table}
:header-rows: 1
:widths: 35 65
:class: force-wrap-table

* - Metric
  - Description

* - `dropped_bytes_count`
  - Count of incoming bytes dropped by the firewall.
* - `dropped_packets_count`
  - Count of incoming packets dropped by the firewall.
* - `runnable_task_count`
  - The average number of runnable tasks in the run-queue. For Container-Optimized OS, or Ubuntu running GKE.
* - `usage_time`
  - CPU usage, in seconds. For Container-Optimized OS, or Ubuntu running GKE.
* - `bytes_used`
  - Number of bytes used on disk for file systems. For Container-Optimized OS, or Ubuntu running GKE.
* - `io_time`
  - The cumulative time spent on the I/O operations that are in progress; that is, the actual time in queue and when disks were busy. Requests issued in parallel are counted as a single one. For Container-Optimized OS, or Ubuntu running GKE.
* - `merged_operation_count`
  - Merged disk operations count. Disk operations which are adjacent to each other may be merged by the kernel for efficiency. For Container-Optimized OS, or Ubuntu running GKE.
* - `operation_bytes_count`
  - Bytes transferred in disk operations. For Container-Optimized OS, or Ubuntu running GKE.
* - `operation_count`
  - Disk operations count. For Container-Optimized OS, or Ubuntu running GKE.
* - `operation_time`
  - Amount of time spent on the disk operations, by direction. This metric only includes time spent on completed operations. For Container-Optimized OS, or Ubuntu running GKE.
* - `queue_length`
  - The queue length on the disk averaged over the last 60 seconds. For Container-Optimized OS, or Ubuntu running GKE.
* - `weighted_io_time`
  - The cumulative weighted IO time spent on the disk. For Container-Optimized OS, or Ubuntu running GKE.
* - `anonymous_used`
  - Anonymous memory usage, in Bytes. Summing values of all states yields the total anonymous memory used. For Container-Optimized OS, or Ubuntu running GKE.
* - `bytes_used`
  - Memory usage by each memory state, in Bytes. Summing values of all states yields the total memory on the machine. For Container-Optimized OS, or Ubuntu running GKE.
* - `dirty_used`
  - Dirty pages usage, in Bytes. For Container-Optimized OS, or Ubuntu running GKE.
* - `page_cache_used`
  - Page cache memory usage, in Bytes. Summing values of all states yields the total anonymous memory used. For Container-Optimized OS, or Ubuntu running GKE.
* - `unevictable_used`
  - Unevictable memory usage, in Bytes. For Container-Optimized OS, or Ubuntu running GKE.
* - `os_feature_enabled`
  - OS Features like GPU support, KTD kernel, third party modules as unknown modules. 1 if the feature is enabled and 0, if disabled.  For Container-Optimized OS, or Ubuntu running GKE.
* - `problem_count`
  - Number of times a machine problem has happened. For Container-Optimized OS, or Ubuntu running GKE.
* - `problem_state`
  - Whether a problem is affecting the system or not. The problem is affecting the system when set to 1 and is not affecting the system when set to 0. For Container-Optimized OS, or Ubuntu running GKE.
* - `uptime`
  - Number of seconds that the operating system has been running for. For Container-Optimized OS, or Ubuntu running GKE.

```

### INSTANCE

```{list-table}
:header-rows: 1
:widths: 35 65
:class: force-wrap-table

* - Metric
  - Description

* - `dropped_bytes_count`
  - Count of incoming bytes dropped by the firewall.
* - `dropped_packets_count`
  - Count of incoming packets dropped by the firewall.
* - `runnable_task_count`
  - The average number of runnable tasks in the run-queue. For Container-Optimized OS, or Ubuntu running GKE.
* - `usage_time`
  - CPU usage, in seconds. For Container-Optimized OS, or Ubuntu running GKE.
* - `bytes_used`
  - Number of bytes used on disk for file systems. For Container-Optimized OS, or Ubuntu running GKE.
* - `io_time`
  - The cumulative time spent on the I/O operations that are in progress; that is, the actual time in queue and when disks were busy. Requests issued in parallel are counted as a single one. For Container-Optimized OS, or Ubuntu running GKE.
* - `merged_operation_count`
  - Merged disk operations count. Disk operations which are adjacent to each other may be merged by the kernel for efficiency. For Container-Optimized OS, or Ubuntu running GKE.
* - `operation_bytes_count`
  - Bytes transferred in disk operations. For Container-Optimized OS, or Ubuntu running GKE.
* - `operation_count`
  - Disk operations count. For Container-Optimized OS, or Ubuntu running GKE.
* - `operation_time`
  - Amount of time spent on the disk operations, by direction. This metric only includes time spent on completed operations. For Container-Optimized OS, or Ubuntu running GKE.
* - `queue_length`
  - The queue length on the disk averaged over the last 60 seconds. For Container-Optimized OS, or Ubuntu running GKE.
* - `weighted_io_time`
  - The cumulative weighted IO time spent on the disk. For Container-Optimized OS, or Ubuntu running GKE.
* - `anonymous_used`
  - Anonymous memory usage, in Bytes. Summing values of all states yields the total anonymous memory used. For Container-Optimized OS, or Ubuntu running GKE.
* - `bytes_used`
  - Memory usage by each memory state, in Bytes. Summing values of all states yields the total memory on the machine. For Container-Optimized OS, or Ubuntu running GKE.
* - `dirty_used`
  - Dirty pages usage, in Bytes. For Container-Optimized OS, or Ubuntu running GKE.
* - `page_cache_used`
  - Page cache memory usage, in Bytes. Summing values of all states yields the total anonymous memory used. For Container-Optimized OS, or Ubuntu running GKE.
* - `unevictable_used`
  - Unevictable memory usage, in Bytes. For Container-Optimized OS, or Ubuntu running GKE.
* - `os_feature_enabled`
  - OS Features like GPU support, KTD kernel, third party modules as unknown modules. 1 if the feature is enabled and 0, if disabled.  For Container-Optimized OS, or Ubuntu running GKE.
* - `problem_count`
  - Number of times a machine problem has happened. For Container-Optimized OS, or Ubuntu running GKE.
* - `problem_state`
  - Whether a problem is affecting the system or not. The problem is affecting the system when set to 1 and is not affecting the system when set to 0. For Container-Optimized OS, or Ubuntu running GKE.
* - `uptime`
  - Number of seconds that the operating system has been running for. For Container-Optimized OS, or Ubuntu running GKE.
* - `guest_visible_vcpus`
  - Number of vCPUs visible inside the guest. For many GCE machine types, the number of vCPUs visible inside the guest is equal to the `compute.googleapis.com/instance/cpu/reserved_cores` metric. For shared-core machine types, the number of guest-visible vCPUs differs from the number of resereved cores. For example, e2-small instances have two vCPUs visible inside the guest and 0.5 fractional vCPUs reserved. Therefore, for an e2-small instance,  `compute.googleapis.com/instance/cpu/guest_visible_vcpus` has a value of 2 and `compute.googleapis.com/instance/cpu/reserved_cores` has a value of 0.5.
* - `reserved_cores`
  - Number of vCPUs reserved on the host of the instance.
* - `scheduler_wait_time`
  - Wait time is the time a vCPU is ready to run, but unexpectedly not scheduled to run. The wait time returned here is the accumulated value for all vCPUs. The time interval for which the value was measured is returned by Monitoring in whole seconds as start_time and end_time. This metric is only available for VMs that belong to the e2 family or to overcommitted VMs on sole-tenant nodes.
* - `usage_time`
  - Delta vCPU usage for all vCPUs, in vCPU-seconds. To compute the per-vCPU utilization fraction, divide this value by (end-start)*N, where end and start define this value's time interval and N is `compute.googleapis.com/instance/cpu/reserved_cores` at the end of the interval. This value is reported by the hypervisor for the VM and can differ from `agent.googleapis.com/cpu/usage_time`, which is reported from inside the VM.
* - `utilization`
  - Fractional utilization of allocated CPU on this instance. Values are typically numbers between 0.0 and 1.0 (but some machine types allow bursting above 1.0). Charts display the values as a percentage between 0% and 100% (or more). This metric is reported by the hypervisor for the VM and can differ from `agent.googleapis.com/cpu/utilization`, which is reported from inside the VM.
* - `max_read_bytes_count`
  - Disk's maximum per-second read throughput over a period of time specified by the user. The period must be one minute or longer.
* - `max_read_ops_count`
  - Disk's maximum per-second read requests count over a period of time specified by the user. The period must be one minute or longer.
* - `max_write_bytes_count`
  - Disk's maximum per-second write throughput over a period of time specified by the user. The period must be one minute or longer.
* - `max_write_ops_count`
  - Disk's maximum per-second write requests count over a period of time specified by the user. The period must be one minute or longer.
* - `read_bytes_count`
  - Count of bytes read from disk.
* - `read_ops_count`
  - Count of disk read IO operations.
* - `write_bytes_count`
  - Count of bytes written to disk.
* - `write_ops_count`
  - Count of disk write IO operations.
* - `early_boot_validation_status`
  - The validation status of early boot integrity policy.
* - `late_boot_validation_status`
  - The validation status of late boot integrity policy.
* - `received_bytes_count`
  - Count of bytes received from the network.
* - `received_packets_count`
  - Count of packets received from the network.
* - `sent_bytes_count`
  - Count of bytes sent over the network.
* - `sent_packets_count`
  - Count of packets sent over the network.
* - `uptime`
  - Delta of how long the VM has been running, in seconds. Note: to get the total number of seconds since VM start, use compute.googleapis.com/instance/uptime_total.
* - `uptime_total`
  - Elapsed time since the VM was started, in seconds.

```

### NONE

```{list-table}
:header-rows: 1
:widths: 35 65
:class: force-wrap-table

* - Metric
  - Description

* - `dropped_bytes_count`
  - Count of incoming bytes dropped by the firewall.
* - `dropped_packets_count`
  - Count of incoming packets dropped by the firewall.
* - `runnable_task_count`
  - The average number of runnable tasks in the run-queue. For Container-Optimized OS, or Ubuntu running GKE.
* - `usage_time`
  - CPU usage, in seconds. For Container-Optimized OS, or Ubuntu running GKE.
* - `bytes_used`
  - Number of bytes used on disk for file systems. For Container-Optimized OS, or Ubuntu running GKE.
* - `io_time`
  - The cumulative time spent on the I/O operations that are in progress; that is, the actual time in queue and when disks were busy. Requests issued in parallel are counted as a single one. For Container-Optimized OS, or Ubuntu running GKE.
* - `merged_operation_count`
  - Merged disk operations count. Disk operations which are adjacent to each other may be merged by the kernel for efficiency. For Container-Optimized OS, or Ubuntu running GKE.
* - `operation_bytes_count`
  - Bytes transferred in disk operations. For Container-Optimized OS, or Ubuntu running GKE.
* - `operation_count`
  - Disk operations count. For Container-Optimized OS, or Ubuntu running GKE.
* - `operation_time`
  - Amount of time spent on the disk operations, by direction. This metric only includes time spent on completed operations. For Container-Optimized OS, or Ubuntu running GKE.
* - `queue_length`
  - The queue length on the disk averaged over the last 60 seconds. For Container-Optimized OS, or Ubuntu running GKE.
* - `weighted_io_time`
  - The cumulative weighted IO time spent on the disk. For Container-Optimized OS, or Ubuntu running GKE.
* - `anonymous_used`
  - Anonymous memory usage, in Bytes. Summing values of all states yields the total anonymous memory used. For Container-Optimized OS, or Ubuntu running GKE.
* - `bytes_used`
  - Memory usage by each memory state, in Bytes. Summing values of all states yields the total memory on the machine. For Container-Optimized OS, or Ubuntu running GKE.
* - `dirty_used`
  - Dirty pages usage, in Bytes. For Container-Optimized OS, or Ubuntu running GKE.
* - `page_cache_used`
  - Page cache memory usage, in Bytes. Summing values of all states yields the total anonymous memory used. For Container-Optimized OS, or Ubuntu running GKE.
* - `unevictable_used`
  - Unevictable memory usage, in Bytes. For Container-Optimized OS, or Ubuntu running GKE.
* - `os_feature_enabled`
  - OS Features like GPU support, KTD kernel, third party modules as unknown modules. 1 if the feature is enabled and 0, if disabled.  For Container-Optimized OS, or Ubuntu running GKE.
* - `problem_count`
  - Number of times a machine problem has happened. For Container-Optimized OS, or Ubuntu running GKE.
* - `problem_state`
  - Whether a problem is affecting the system or not. The problem is affecting the system when set to 1 and is not affecting the system when set to 0. For Container-Optimized OS, or Ubuntu running GKE.
* - `uptime`
  - Number of seconds that the operating system has been running for. For Container-Optimized OS, or Ubuntu running GKE.
* - `guest_visible_vcpus`
  - Number of vCPUs visible inside the guest. For many GCE machine types, the number of vCPUs visible inside the guest is equal to the `compute.googleapis.com/instance/cpu/reserved_cores` metric. For shared-core machine types, the number of guest-visible vCPUs differs from the number of resereved cores. For example, e2-small instances have two vCPUs visible inside the guest and 0.5 fractional vCPUs reserved. Therefore, for an e2-small instance,  `compute.googleapis.com/instance/cpu/guest_visible_vcpus` has a value of 2 and `compute.googleapis.com/instance/cpu/reserved_cores` has a value of 0.5.
* - `reserved_cores`
  - Number of vCPUs reserved on the host of the instance.
* - `scheduler_wait_time`
  - Wait time is the time a vCPU is ready to run, but unexpectedly not scheduled to run. The wait time returned here is the accumulated value for all vCPUs. The time interval for which the value was measured is returned by Monitoring in whole seconds as start_time and end_time. This metric is only available for VMs that belong to the e2 family or to overcommitted VMs on sole-tenant nodes.
* - `usage_time`
  - Delta vCPU usage for all vCPUs, in vCPU-seconds. To compute the per-vCPU utilization fraction, divide this value by (end-start)*N, where end and start define this value's time interval and N is `compute.googleapis.com/instance/cpu/reserved_cores` at the end of the interval. This value is reported by the hypervisor for the VM and can differ from `agent.googleapis.com/cpu/usage_time`, which is reported from inside the VM.
* - `utilization`
  - Fractional utilization of allocated CPU on this instance. Values are typically numbers between 0.0 and 1.0 (but some machine types allow bursting above 1.0). Charts display the values as a percentage between 0% and 100% (or more). This metric is reported by the hypervisor for the VM and can differ from `agent.googleapis.com/cpu/utilization`, which is reported from inside the VM.
* - `max_read_bytes_count`
  - Disk's maximum per-second read throughput over a period of time specified by the user. The period must be one minute or longer.
* - `max_read_ops_count`
  - Disk's maximum per-second read requests count over a period of time specified by the user. The period must be one minute or longer.
* - `max_write_bytes_count`
  - Disk's maximum per-second write throughput over a period of time specified by the user. The period must be one minute or longer.
* - `max_write_ops_count`
  - Disk's maximum per-second write requests count over a period of time specified by the user. The period must be one minute or longer.
* - `read_bytes_count`
  - Count of bytes read from disk.
* - `read_ops_count`
  - Count of disk read IO operations.
* - `write_bytes_count`
  - Count of bytes written to disk.
* - `write_ops_count`
  - Count of disk write IO operations.
* - `early_boot_validation_status`
  - The validation status of early boot integrity policy.
* - `late_boot_validation_status`
  - The validation status of late boot integrity policy.
* - `received_bytes_count`
  - Count of bytes received from the network.
* - `received_packets_count`
  - Count of packets received from the network.
* - `sent_bytes_count`
  - Count of bytes sent over the network.
* - `sent_packets_count`
  - Count of packets sent over the network.
* - `uptime`
  - Delta of how long the VM has been running, in seconds. Note: to get the total number of seconds since VM start, use compute.googleapis.com/instance/uptime_total.
* - `uptime_total`
  - Elapsed time since the VM was started, in seconds.
* - `ram_size`
  - The total amount of memory in the VM. This metric is only available for VMs that belong to the e2 family.
* - `ram_used`
  - Memory currently used in the VM. This metric is only available for VMs that belong to the e2 family.
* - `swap_in_bytes_count`
  - The amount of memory read into the guest from its own swap space. This metric is only available for VMs that belong to the e2 family.
* - `swap_out_bytes_count`
  - The amount of memory written from the guest to its own swap space. This metric is only available for VMs that belong to the e2 family.

```

### INSTANCE_GROUP

```{list-table}
:header-rows: 1
:widths: 35 65
:class: force-wrap-table

* - Metric
  - Description

* - `dropped_bytes_count`
  - Count of incoming bytes dropped by the firewall.
* - `dropped_packets_count`
  - Count of incoming packets dropped by the firewall.
* - `runnable_task_count`
  - The average number of runnable tasks in the run-queue. For Container-Optimized OS, or Ubuntu running GKE.
* - `usage_time`
  - CPU usage, in seconds. For Container-Optimized OS, or Ubuntu running GKE.
* - `bytes_used`
  - Number of bytes used on disk for file systems. For Container-Optimized OS, or Ubuntu running GKE.
* - `io_time`
  - The cumulative time spent on the I/O operations that are in progress; that is, the actual time in queue and when disks were busy. Requests issued in parallel are counted as a single one. For Container-Optimized OS, or Ubuntu running GKE.
* - `merged_operation_count`
  - Merged disk operations count. Disk operations which are adjacent to each other may be merged by the kernel for efficiency. For Container-Optimized OS, or Ubuntu running GKE.
* - `operation_bytes_count`
  - Bytes transferred in disk operations. For Container-Optimized OS, or Ubuntu running GKE.
* - `operation_count`
  - Disk operations count. For Container-Optimized OS, or Ubuntu running GKE.
* - `operation_time`
  - Amount of time spent on the disk operations, by direction. This metric only includes time spent on completed operations. For Container-Optimized OS, or Ubuntu running GKE.
* - `queue_length`
  - The queue length on the disk averaged over the last 60 seconds. For Container-Optimized OS, or Ubuntu running GKE.
* - `weighted_io_time`
  - The cumulative weighted IO time spent on the disk. For Container-Optimized OS, or Ubuntu running GKE.
* - `anonymous_used`
  - Anonymous memory usage, in Bytes. Summing values of all states yields the total anonymous memory used. For Container-Optimized OS, or Ubuntu running GKE.
* - `bytes_used`
  - Memory usage by each memory state, in Bytes. Summing values of all states yields the total memory on the machine. For Container-Optimized OS, or Ubuntu running GKE.
* - `dirty_used`
  - Dirty pages usage, in Bytes. For Container-Optimized OS, or Ubuntu running GKE.
* - `page_cache_used`
  - Page cache memory usage, in Bytes. Summing values of all states yields the total anonymous memory used. For Container-Optimized OS, or Ubuntu running GKE.
* - `unevictable_used`
  - Unevictable memory usage, in Bytes. For Container-Optimized OS, or Ubuntu running GKE.
* - `os_feature_enabled`
  - OS Features like GPU support, KTD kernel, third party modules as unknown modules. 1 if the feature is enabled and 0, if disabled.  For Container-Optimized OS, or Ubuntu running GKE.
* - `problem_count`
  - Number of times a machine problem has happened. For Container-Optimized OS, or Ubuntu running GKE.
* - `problem_state`
  - Whether a problem is affecting the system or not. The problem is affecting the system when set to 1 and is not affecting the system when set to 0. For Container-Optimized OS, or Ubuntu running GKE.
* - `uptime`
  - Number of seconds that the operating system has been running for. For Container-Optimized OS, or Ubuntu running GKE.
* - `guest_visible_vcpus`
  - Number of vCPUs visible inside the guest. For many GCE machine types, the number of vCPUs visible inside the guest is equal to the `compute.googleapis.com/instance/cpu/reserved_cores` metric. For shared-core machine types, the number of guest-visible vCPUs differs from the number of resereved cores. For example, e2-small instances have two vCPUs visible inside the guest and 0.5 fractional vCPUs reserved. Therefore, for an e2-small instance,  `compute.googleapis.com/instance/cpu/guest_visible_vcpus` has a value of 2 and `compute.googleapis.com/instance/cpu/reserved_cores` has a value of 0.5.
* - `reserved_cores`
  - Number of vCPUs reserved on the host of the instance.
* - `scheduler_wait_time`
  - Wait time is the time a vCPU is ready to run, but unexpectedly not scheduled to run. The wait time returned here is the accumulated value for all vCPUs. The time interval for which the value was measured is returned by Monitoring in whole seconds as start_time and end_time. This metric is only available for VMs that belong to the e2 family or to overcommitted VMs on sole-tenant nodes.
* - `usage_time`
  - Delta vCPU usage for all vCPUs, in vCPU-seconds. To compute the per-vCPU utilization fraction, divide this value by (end-start)*N, where end and start define this value's time interval and N is `compute.googleapis.com/instance/cpu/reserved_cores` at the end of the interval. This value is reported by the hypervisor for the VM and can differ from `agent.googleapis.com/cpu/usage_time`, which is reported from inside the VM.
* - `utilization`
  - Fractional utilization of allocated CPU on this instance. Values are typically numbers between 0.0 and 1.0 (but some machine types allow bursting above 1.0). Charts display the values as a percentage between 0% and 100% (or more). This metric is reported by the hypervisor for the VM and can differ from `agent.googleapis.com/cpu/utilization`, which is reported from inside the VM.
* - `max_read_bytes_count`
  - Disk's maximum per-second read throughput over a period of time specified by the user. The period must be one minute or longer.
* - `max_read_ops_count`
  - Disk's maximum per-second read requests count over a period of time specified by the user. The period must be one minute or longer.
* - `max_write_bytes_count`
  - Disk's maximum per-second write throughput over a period of time specified by the user. The period must be one minute or longer.
* - `max_write_ops_count`
  - Disk's maximum per-second write requests count over a period of time specified by the user. The period must be one minute or longer.
* - `read_bytes_count`
  - Count of bytes read from disk.
* - `read_ops_count`
  - Count of disk read IO operations.
* - `write_bytes_count`
  - Count of bytes written to disk.
* - `write_ops_count`
  - Count of disk write IO operations.
* - `early_boot_validation_status`
  - The validation status of early boot integrity policy.
* - `late_boot_validation_status`
  - The validation status of late boot integrity policy.
* - `received_bytes_count`
  - Count of bytes received from the network.
* - `received_packets_count`
  - Count of packets received from the network.
* - `sent_bytes_count`
  - Count of bytes sent over the network.
* - `sent_packets_count`
  - Count of packets sent over the network.
* - `uptime`
  - Delta of how long the VM has been running, in seconds. Note: to get the total number of seconds since VM start, use compute.googleapis.com/instance/uptime_total.
* - `uptime_total`
  - Elapsed time since the VM was started, in seconds.
* - `ram_size`
  - The total amount of memory in the VM. This metric is only available for VMs that belong to the e2 family.
* - `ram_used`
  - Memory currently used in the VM. This metric is only available for VMs that belong to the e2 family.
* - `swap_in_bytes_count`
  - The amount of memory read into the guest from its own swap space. This metric is only available for VMs that belong to the e2 family.
* - `swap_out_bytes_count`
  - The amount of memory written from the guest to its own swap space. This metric is only available for VMs that belong to the e2 family.
* - `predicted_capacity`
  - Estimated capacity that the instance group will have if predictive autoscaling is enabled. Currently available only for autoscaled instance groups and equal to the predicted number of serving VMs multiplied by utilization target.
* - `predicted_size`
  - Estimated number of VMs that the instance group will have if predictive autoscaling is enabled. Currently available only for autoscaled instance groups.
* - `predicted_utilization`
  - The sum of the estimated values of the scaling metric for all serving VMs if predictive autoscaling is enabled. Currently available only for autoscaled instance groups.
* - `size`
  - The number of VMs in the instance group.

```

### MIRRORING

```{list-table}
:header-rows: 1
:widths: 35 65
:class: force-wrap-table

* - Metric
  - Description

* - `dropped_bytes_count`
  - Count of incoming bytes dropped by the firewall.
* - `dropped_packets_count`
  - Count of incoming packets dropped by the firewall.
* - `runnable_task_count`
  - The average number of runnable tasks in the run-queue. For Container-Optimized OS, or Ubuntu running GKE.
* - `usage_time`
  - CPU usage, in seconds. For Container-Optimized OS, or Ubuntu running GKE.
* - `bytes_used`
  - Number of bytes used on disk for file systems. For Container-Optimized OS, or Ubuntu running GKE.
* - `io_time`
  - The cumulative time spent on the I/O operations that are in progress; that is, the actual time in queue and when disks were busy. Requests issued in parallel are counted as a single one. For Container-Optimized OS, or Ubuntu running GKE.
* - `merged_operation_count`
  - Merged disk operations count. Disk operations which are adjacent to each other may be merged by the kernel for efficiency. For Container-Optimized OS, or Ubuntu running GKE.
* - `operation_bytes_count`
  - Bytes transferred in disk operations. For Container-Optimized OS, or Ubuntu running GKE.
* - `operation_count`
  - Disk operations count. For Container-Optimized OS, or Ubuntu running GKE.
* - `operation_time`
  - Amount of time spent on the disk operations, by direction. This metric only includes time spent on completed operations. For Container-Optimized OS, or Ubuntu running GKE.
* - `queue_length`
  - The queue length on the disk averaged over the last 60 seconds. For Container-Optimized OS, or Ubuntu running GKE.
* - `weighted_io_time`
  - The cumulative weighted IO time spent on the disk. For Container-Optimized OS, or Ubuntu running GKE.
* - `anonymous_used`
  - Anonymous memory usage, in Bytes. Summing values of all states yields the total anonymous memory used. For Container-Optimized OS, or Ubuntu running GKE.
* - `bytes_used`
  - Memory usage by each memory state, in Bytes. Summing values of all states yields the total memory on the machine. For Container-Optimized OS, or Ubuntu running GKE.
* - `dirty_used`
  - Dirty pages usage, in Bytes. For Container-Optimized OS, or Ubuntu running GKE.
* - `page_cache_used`
  - Page cache memory usage, in Bytes. Summing values of all states yields the total anonymous memory used. For Container-Optimized OS, or Ubuntu running GKE.
* - `unevictable_used`
  - Unevictable memory usage, in Bytes. For Container-Optimized OS, or Ubuntu running GKE.
* - `os_feature_enabled`
  - OS Features like GPU support, KTD kernel, third party modules as unknown modules. 1 if the feature is enabled and 0, if disabled.  For Container-Optimized OS, or Ubuntu running GKE.
* - `problem_count`
  - Number of times a machine problem has happened. For Container-Optimized OS, or Ubuntu running GKE.
* - `problem_state`
  - Whether a problem is affecting the system or not. The problem is affecting the system when set to 1 and is not affecting the system when set to 0. For Container-Optimized OS, or Ubuntu running GKE.
* - `uptime`
  - Number of seconds that the operating system has been running for. For Container-Optimized OS, or Ubuntu running GKE.
* - `guest_visible_vcpus`
  - Number of vCPUs visible inside the guest. For many GCE machine types, the number of vCPUs visible inside the guest is equal to the `compute.googleapis.com/instance/cpu/reserved_cores` metric. For shared-core machine types, the number of guest-visible vCPUs differs from the number of resereved cores. For example, e2-small instances have two vCPUs visible inside the guest and 0.5 fractional vCPUs reserved. Therefore, for an e2-small instance,  `compute.googleapis.com/instance/cpu/guest_visible_vcpus` has a value of 2 and `compute.googleapis.com/instance/cpu/reserved_cores` has a value of 0.5.
* - `reserved_cores`
  - Number of vCPUs reserved on the host of the instance.
* - `scheduler_wait_time`
  - Wait time is the time a vCPU is ready to run, but unexpectedly not scheduled to run. The wait time returned here is the accumulated value for all vCPUs. The time interval for which the value was measured is returned by Monitoring in whole seconds as start_time and end_time. This metric is only available for VMs that belong to the e2 family or to overcommitted VMs on sole-tenant nodes.
* - `usage_time`
  - Delta vCPU usage for all vCPUs, in vCPU-seconds. To compute the per-vCPU utilization fraction, divide this value by (end-start)*N, where end and start define this value's time interval and N is `compute.googleapis.com/instance/cpu/reserved_cores` at the end of the interval. This value is reported by the hypervisor for the VM and can differ from `agent.googleapis.com/cpu/usage_time`, which is reported from inside the VM.
* - `utilization`
  - Fractional utilization of allocated CPU on this instance. Values are typically numbers between 0.0 and 1.0 (but some machine types allow bursting above 1.0). Charts display the values as a percentage between 0% and 100% (or more). This metric is reported by the hypervisor for the VM and can differ from `agent.googleapis.com/cpu/utilization`, which is reported from inside the VM.
* - `max_read_bytes_count`
  - Disk's maximum per-second read throughput over a period of time specified by the user. The period must be one minute or longer.
* - `max_read_ops_count`
  - Disk's maximum per-second read requests count over a period of time specified by the user. The period must be one minute or longer.
* - `max_write_bytes_count`
  - Disk's maximum per-second write throughput over a period of time specified by the user. The period must be one minute or longer.
* - `max_write_ops_count`
  - Disk's maximum per-second write requests count over a period of time specified by the user. The period must be one minute or longer.
* - `read_bytes_count`
  - Count of bytes read from disk.
* - `read_ops_count`
  - Count of disk read IO operations.
* - `write_bytes_count`
  - Count of bytes written to disk.
* - `write_ops_count`
  - Count of disk write IO operations.
* - `early_boot_validation_status`
  - The validation status of early boot integrity policy.
* - `late_boot_validation_status`
  - The validation status of late boot integrity policy.
* - `received_bytes_count`
  - Count of bytes received from the network.
* - `received_packets_count`
  - Count of packets received from the network.
* - `sent_bytes_count`
  - Count of bytes sent over the network.
* - `sent_packets_count`
  - Count of packets sent over the network.
* - `uptime`
  - Delta of how long the VM has been running, in seconds. Note: to get the total number of seconds since VM start, use compute.googleapis.com/instance/uptime_total.
* - `uptime_total`
  - Elapsed time since the VM was started, in seconds.
* - `ram_size`
  - The total amount of memory in the VM. This metric is only available for VMs that belong to the e2 family.
* - `ram_used`
  - Memory currently used in the VM. This metric is only available for VMs that belong to the e2 family.
* - `swap_in_bytes_count`
  - The amount of memory read into the guest from its own swap space. This metric is only available for VMs that belong to the e2 family.
* - `swap_out_bytes_count`
  - The amount of memory written from the guest to its own swap space. This metric is only available for VMs that belong to the e2 family.
* - `predicted_capacity`
  - Estimated capacity that the instance group will have if predictive autoscaling is enabled. Currently available only for autoscaled instance groups and equal to the predicted number of serving VMs multiplied by utilization target.
* - `predicted_size`
  - Estimated number of VMs that the instance group will have if predictive autoscaling is enabled. Currently available only for autoscaled instance groups.
* - `predicted_utilization`
  - The sum of the estimated values of the scaling metric for all serving VMs if predictive autoscaling is enabled. Currently available only for autoscaled instance groups.
* - `size`
  - The number of VMs in the instance group.
* - `dropped_packets_count`
  - Count of dropped mirrored packets.
* - `mirrored_bytes_count`
  - Count of mirrored bytes.
* - `mirrored_packets_count`
  - Count of mirrored packets.

```

### NAT

```{list-table}
:header-rows: 1
:widths: 35 65
:class: force-wrap-table

* - Metric
  - Description

* - `dropped_bytes_count`
  - Count of incoming bytes dropped by the firewall.
* - `dropped_packets_count`
  - Count of incoming packets dropped by the firewall.
* - `runnable_task_count`
  - The average number of runnable tasks in the run-queue. For Container-Optimized OS, or Ubuntu running GKE.
* - `usage_time`
  - CPU usage, in seconds. For Container-Optimized OS, or Ubuntu running GKE.
* - `bytes_used`
  - Number of bytes used on disk for file systems. For Container-Optimized OS, or Ubuntu running GKE.
* - `io_time`
  - The cumulative time spent on the I/O operations that are in progress; that is, the actual time in queue and when disks were busy. Requests issued in parallel are counted as a single one. For Container-Optimized OS, or Ubuntu running GKE.
* - `merged_operation_count`
  - Merged disk operations count. Disk operations which are adjacent to each other may be merged by the kernel for efficiency. For Container-Optimized OS, or Ubuntu running GKE.
* - `operation_bytes_count`
  - Bytes transferred in disk operations. For Container-Optimized OS, or Ubuntu running GKE.
* - `operation_count`
  - Disk operations count. For Container-Optimized OS, or Ubuntu running GKE.
* - `operation_time`
  - Amount of time spent on the disk operations, by direction. This metric only includes time spent on completed operations. For Container-Optimized OS, or Ubuntu running GKE.
* - `queue_length`
  - The queue length on the disk averaged over the last 60 seconds. For Container-Optimized OS, or Ubuntu running GKE.
* - `weighted_io_time`
  - The cumulative weighted IO time spent on the disk. For Container-Optimized OS, or Ubuntu running GKE.
* - `anonymous_used`
  - Anonymous memory usage, in Bytes. Summing values of all states yields the total anonymous memory used. For Container-Optimized OS, or Ubuntu running GKE.
* - `bytes_used`
  - Memory usage by each memory state, in Bytes. Summing values of all states yields the total memory on the machine. For Container-Optimized OS, or Ubuntu running GKE.
* - `dirty_used`
  - Dirty pages usage, in Bytes. For Container-Optimized OS, or Ubuntu running GKE.
* - `page_cache_used`
  - Page cache memory usage, in Bytes. Summing values of all states yields the total anonymous memory used. For Container-Optimized OS, or Ubuntu running GKE.
* - `unevictable_used`
  - Unevictable memory usage, in Bytes. For Container-Optimized OS, or Ubuntu running GKE.
* - `os_feature_enabled`
  - OS Features like GPU support, KTD kernel, third party modules as unknown modules. 1 if the feature is enabled and 0, if disabled.  For Container-Optimized OS, or Ubuntu running GKE.
* - `problem_count`
  - Number of times a machine problem has happened. For Container-Optimized OS, or Ubuntu running GKE.
* - `problem_state`
  - Whether a problem is affecting the system or not. The problem is affecting the system when set to 1 and is not affecting the system when set to 0. For Container-Optimized OS, or Ubuntu running GKE.
* - `uptime`
  - Number of seconds that the operating system has been running for. For Container-Optimized OS, or Ubuntu running GKE.
* - `guest_visible_vcpus`
  - Number of vCPUs visible inside the guest. For many GCE machine types, the number of vCPUs visible inside the guest is equal to the `compute.googleapis.com/instance/cpu/reserved_cores` metric. For shared-core machine types, the number of guest-visible vCPUs differs from the number of resereved cores. For example, e2-small instances have two vCPUs visible inside the guest and 0.5 fractional vCPUs reserved. Therefore, for an e2-small instance,  `compute.googleapis.com/instance/cpu/guest_visible_vcpus` has a value of 2 and `compute.googleapis.com/instance/cpu/reserved_cores` has a value of 0.5.
* - `reserved_cores`
  - Number of vCPUs reserved on the host of the instance.
* - `scheduler_wait_time`
  - Wait time is the time a vCPU is ready to run, but unexpectedly not scheduled to run. The wait time returned here is the accumulated value for all vCPUs. The time interval for which the value was measured is returned by Monitoring in whole seconds as start_time and end_time. This metric is only available for VMs that belong to the e2 family or to overcommitted VMs on sole-tenant nodes.
* - `usage_time`
  - Delta vCPU usage for all vCPUs, in vCPU-seconds. To compute the per-vCPU utilization fraction, divide this value by (end-start)*N, where end and start define this value's time interval and N is `compute.googleapis.com/instance/cpu/reserved_cores` at the end of the interval. This value is reported by the hypervisor for the VM and can differ from `agent.googleapis.com/cpu/usage_time`, which is reported from inside the VM.
* - `utilization`
  - Fractional utilization of allocated CPU on this instance. Values are typically numbers between 0.0 and 1.0 (but some machine types allow bursting above 1.0). Charts display the values as a percentage between 0% and 100% (or more). This metric is reported by the hypervisor for the VM and can differ from `agent.googleapis.com/cpu/utilization`, which is reported from inside the VM.
* - `max_read_bytes_count`
  - Disk's maximum per-second read throughput over a period of time specified by the user. The period must be one minute or longer.
* - `max_read_ops_count`
  - Disk's maximum per-second read requests count over a period of time specified by the user. The period must be one minute or longer.
* - `max_write_bytes_count`
  - Disk's maximum per-second write throughput over a period of time specified by the user. The period must be one minute or longer.
* - `max_write_ops_count`
  - Disk's maximum per-second write requests count over a period of time specified by the user. The period must be one minute or longer.
* - `read_bytes_count`
  - Count of bytes read from disk.
* - `read_ops_count`
  - Count of disk read IO operations.
* - `write_bytes_count`
  - Count of bytes written to disk.
* - `write_ops_count`
  - Count of disk write IO operations.
* - `early_boot_validation_status`
  - The validation status of early boot integrity policy.
* - `late_boot_validation_status`
  - The validation status of late boot integrity policy.
* - `received_bytes_count`
  - Count of bytes received from the network.
* - `received_packets_count`
  - Count of packets received from the network.
* - `sent_bytes_count`
  - Count of bytes sent over the network.
* - `sent_packets_count`
  - Count of packets sent over the network.
* - `uptime`
  - Delta of how long the VM has been running, in seconds. Note: to get the total number of seconds since VM start, use compute.googleapis.com/instance/uptime_total.
* - `uptime_total`
  - Elapsed time since the VM was started, in seconds.
* - `ram_size`
  - The total amount of memory in the VM. This metric is only available for VMs that belong to the e2 family.
* - `ram_used`
  - Memory currently used in the VM. This metric is only available for VMs that belong to the e2 family.
* - `swap_in_bytes_count`
  - The amount of memory read into the guest from its own swap space. This metric is only available for VMs that belong to the e2 family.
* - `swap_out_bytes_count`
  - The amount of memory written from the guest to its own swap space. This metric is only available for VMs that belong to the e2 family.
* - `predicted_capacity`
  - Estimated capacity that the instance group will have if predictive autoscaling is enabled. Currently available only for autoscaled instance groups and equal to the predicted number of serving VMs multiplied by utilization target.
* - `predicted_size`
  - Estimated number of VMs that the instance group will have if predictive autoscaling is enabled. Currently available only for autoscaled instance groups.
* - `predicted_utilization`
  - The sum of the estimated values of the scaling metric for all serving VMs if predictive autoscaling is enabled. Currently available only for autoscaled instance groups.
* - `size`
  - The number of VMs in the instance group.
* - `dropped_packets_count`
  - Count of dropped mirrored packets.
* - `mirrored_bytes_count`
  - Count of mirrored bytes.
* - `mirrored_packets_count`
  - Count of mirrored packets.
* - `allocated_ports`
  - Number of ports allocated to a VM by the NAT gateway.
* - `closed_connections_count`
  - Count of connections closed over the NAT gateway.
* - `dropped_received_packets_count`
  - Count of received packets dropped by the NAT gateway.
* - `dropped_sent_packets_count`
  - Count of sent packets dropped by the NAT gateway.
* - `new_connections_count`
  - Count of new connections created over the NAT gateway.
* - `open_connections`
  - Number of connections currently open on the NAT gateway.
* - `port_usage`
  - Maximum number of connections from a VM to a single internet endpoint (IP:port).
* - `received_bytes_count`
  - Count of bytes received (Internet -> VM) via the NAT gateway.
* - `received_packets_count`
  - Count of packets received (Internet -> VM) via the NAT gateway.
* - `sent_bytes_count`
  - Count of bytes sent (VM -> Internet) over the NAT gateway.
* - `sent_packets_count`
  - Count of packets sent (VM -> Internet) over the NAT gateway.

```

### PRIVATE_SERVICE_CONNECT

```{list-table}
:header-rows: 1
:widths: 35 65
:class: force-wrap-table

* - Metric
  - Description

* - `dropped_bytes_count`
  - Count of incoming bytes dropped by the firewall.
* - `dropped_packets_count`
  - Count of incoming packets dropped by the firewall.
* - `runnable_task_count`
  - The average number of runnable tasks in the run-queue. For Container-Optimized OS, or Ubuntu running GKE.
* - `usage_time`
  - CPU usage, in seconds. For Container-Optimized OS, or Ubuntu running GKE.
* - `bytes_used`
  - Number of bytes used on disk for file systems. For Container-Optimized OS, or Ubuntu running GKE.
* - `io_time`
  - The cumulative time spent on the I/O operations that are in progress; that is, the actual time in queue and when disks were busy. Requests issued in parallel are counted as a single one. For Container-Optimized OS, or Ubuntu running GKE.
* - `merged_operation_count`
  - Merged disk operations count. Disk operations which are adjacent to each other may be merged by the kernel for efficiency. For Container-Optimized OS, or Ubuntu running GKE.
* - `operation_bytes_count`
  - Bytes transferred in disk operations. For Container-Optimized OS, or Ubuntu running GKE.
* - `operation_count`
  - Disk operations count. For Container-Optimized OS, or Ubuntu running GKE.
* - `operation_time`
  - Amount of time spent on the disk operations, by direction. This metric only includes time spent on completed operations. For Container-Optimized OS, or Ubuntu running GKE.
* - `queue_length`
  - The queue length on the disk averaged over the last 60 seconds. For Container-Optimized OS, or Ubuntu running GKE.
* - `weighted_io_time`
  - The cumulative weighted IO time spent on the disk. For Container-Optimized OS, or Ubuntu running GKE.
* - `anonymous_used`
  - Anonymous memory usage, in Bytes. Summing values of all states yields the total anonymous memory used. For Container-Optimized OS, or Ubuntu running GKE.
* - `bytes_used`
  - Memory usage by each memory state, in Bytes. Summing values of all states yields the total memory on the machine. For Container-Optimized OS, or Ubuntu running GKE.
* - `dirty_used`
  - Dirty pages usage, in Bytes. For Container-Optimized OS, or Ubuntu running GKE.
* - `page_cache_used`
  - Page cache memory usage, in Bytes. Summing values of all states yields the total anonymous memory used. For Container-Optimized OS, or Ubuntu running GKE.
* - `unevictable_used`
  - Unevictable memory usage, in Bytes. For Container-Optimized OS, or Ubuntu running GKE.
* - `os_feature_enabled`
  - OS Features like GPU support, KTD kernel, third party modules as unknown modules. 1 if the feature is enabled and 0, if disabled.  For Container-Optimized OS, or Ubuntu running GKE.
* - `problem_count`
  - Number of times a machine problem has happened. For Container-Optimized OS, or Ubuntu running GKE.
* - `problem_state`
  - Whether a problem is affecting the system or not. The problem is affecting the system when set to 1 and is not affecting the system when set to 0. For Container-Optimized OS, or Ubuntu running GKE.
* - `uptime`
  - Number of seconds that the operating system has been running for. For Container-Optimized OS, or Ubuntu running GKE.
* - `guest_visible_vcpus`
  - Number of vCPUs visible inside the guest. For many GCE machine types, the number of vCPUs visible inside the guest is equal to the `compute.googleapis.com/instance/cpu/reserved_cores` metric. For shared-core machine types, the number of guest-visible vCPUs differs from the number of resereved cores. For example, e2-small instances have two vCPUs visible inside the guest and 0.5 fractional vCPUs reserved. Therefore, for an e2-small instance,  `compute.googleapis.com/instance/cpu/guest_visible_vcpus` has a value of 2 and `compute.googleapis.com/instance/cpu/reserved_cores` has a value of 0.5.
* - `reserved_cores`
  - Number of vCPUs reserved on the host of the instance.
* - `scheduler_wait_time`
  - Wait time is the time a vCPU is ready to run, but unexpectedly not scheduled to run. The wait time returned here is the accumulated value for all vCPUs. The time interval for which the value was measured is returned by Monitoring in whole seconds as start_time and end_time. This metric is only available for VMs that belong to the e2 family or to overcommitted VMs on sole-tenant nodes.
* - `usage_time`
  - Delta vCPU usage for all vCPUs, in vCPU-seconds. To compute the per-vCPU utilization fraction, divide this value by (end-start)*N, where end and start define this value's time interval and N is `compute.googleapis.com/instance/cpu/reserved_cores` at the end of the interval. This value is reported by the hypervisor for the VM and can differ from `agent.googleapis.com/cpu/usage_time`, which is reported from inside the VM.
* - `utilization`
  - Fractional utilization of allocated CPU on this instance. Values are typically numbers between 0.0 and 1.0 (but some machine types allow bursting above 1.0). Charts display the values as a percentage between 0% and 100% (or more). This metric is reported by the hypervisor for the VM and can differ from `agent.googleapis.com/cpu/utilization`, which is reported from inside the VM.
* - `max_read_bytes_count`
  - Disk's maximum per-second read throughput over a period of time specified by the user. The period must be one minute or longer.
* - `max_read_ops_count`
  - Disk's maximum per-second read requests count over a period of time specified by the user. The period must be one minute or longer.
* - `max_write_bytes_count`
  - Disk's maximum per-second write throughput over a period of time specified by the user. The period must be one minute or longer.
* - `max_write_ops_count`
  - Disk's maximum per-second write requests count over a period of time specified by the user. The period must be one minute or longer.
* - `read_bytes_count`
  - Count of bytes read from disk.
* - `read_ops_count`
  - Count of disk read IO operations.
* - `write_bytes_count`
  - Count of bytes written to disk.
* - `write_ops_count`
  - Count of disk write IO operations.
* - `early_boot_validation_status`
  - The validation status of early boot integrity policy.
* - `late_boot_validation_status`
  - The validation status of late boot integrity policy.
* - `received_bytes_count`
  - Count of bytes received from the network.
* - `received_packets_count`
  - Count of packets received from the network.
* - `sent_bytes_count`
  - Count of bytes sent over the network.
* - `sent_packets_count`
  - Count of packets sent over the network.
* - `uptime`
  - Delta of how long the VM has been running, in seconds. Note: to get the total number of seconds since VM start, use compute.googleapis.com/instance/uptime_total.
* - `uptime_total`
  - Elapsed time since the VM was started, in seconds.
* - `ram_size`
  - The total amount of memory in the VM. This metric is only available for VMs that belong to the e2 family.
* - `ram_used`
  - Memory currently used in the VM. This metric is only available for VMs that belong to the e2 family.
* - `swap_in_bytes_count`
  - The amount of memory read into the guest from its own swap space. This metric is only available for VMs that belong to the e2 family.
* - `swap_out_bytes_count`
  - The amount of memory written from the guest to its own swap space. This metric is only available for VMs that belong to the e2 family.
* - `predicted_capacity`
  - Estimated capacity that the instance group will have if predictive autoscaling is enabled. Currently available only for autoscaled instance groups and equal to the predicted number of serving VMs multiplied by utilization target.
* - `predicted_size`
  - Estimated number of VMs that the instance group will have if predictive autoscaling is enabled. Currently available only for autoscaled instance groups.
* - `predicted_utilization`
  - The sum of the estimated values of the scaling metric for all serving VMs if predictive autoscaling is enabled. Currently available only for autoscaled instance groups.
* - `size`
  - The number of VMs in the instance group.
* - `dropped_packets_count`
  - Count of dropped mirrored packets.
* - `mirrored_bytes_count`
  - Count of mirrored bytes.
* - `mirrored_packets_count`
  - Count of mirrored packets.
* - `allocated_ports`
  - Number of ports allocated to a VM by the NAT gateway.
* - `closed_connections_count`
  - Count of connections closed over the NAT gateway.
* - `dropped_received_packets_count`
  - Count of received packets dropped by the NAT gateway.
* - `dropped_sent_packets_count`
  - Count of sent packets dropped by the NAT gateway.
* - `new_connections_count`
  - Count of new connections created over the NAT gateway.
* - `open_connections`
  - Number of connections currently open on the NAT gateway.
* - `port_usage`
  - Maximum number of connections from a VM to a single internet endpoint (IP:port).
* - `received_bytes_count`
  - Count of bytes received (Internet -> VM) via the NAT gateway.
* - `received_packets_count`
  - Count of packets received (Internet -> VM) via the NAT gateway.
* - `sent_bytes_count`
  - Count of bytes sent (VM -> Internet) over the NAT gateway.
* - `sent_packets_count`
  - Count of packets sent (VM -> Internet) over the NAT gateway.
* - `connected_consumer_forwarding_rules`
  - Number of Consumer Forwarding Rules connected to a PSC Attachment ID.
* - `used_nat_ip_addresses`
  - IP usage of the monitored service attachment.

```

### QUOTA

```{list-table}
:header-rows: 1
:widths: 35 65
:class: force-wrap-table

* - Metric
  - Description

* - `dropped_bytes_count`
  - Count of incoming bytes dropped by the firewall.
* - `dropped_packets_count`
  - Count of incoming packets dropped by the firewall.
* - `runnable_task_count`
  - The average number of runnable tasks in the run-queue. For Container-Optimized OS, or Ubuntu running GKE.
* - `usage_time`
  - CPU usage, in seconds. For Container-Optimized OS, or Ubuntu running GKE.
* - `bytes_used`
  - Number of bytes used on disk for file systems. For Container-Optimized OS, or Ubuntu running GKE.
* - `io_time`
  - The cumulative time spent on the I/O operations that are in progress; that is, the actual time in queue and when disks were busy. Requests issued in parallel are counted as a single one. For Container-Optimized OS, or Ubuntu running GKE.
* - `merged_operation_count`
  - Merged disk operations count. Disk operations which are adjacent to each other may be merged by the kernel for efficiency. For Container-Optimized OS, or Ubuntu running GKE.
* - `operation_bytes_count`
  - Bytes transferred in disk operations. For Container-Optimized OS, or Ubuntu running GKE.
* - `operation_count`
  - Disk operations count. For Container-Optimized OS, or Ubuntu running GKE.
* - `operation_time`
  - Amount of time spent on the disk operations, by direction. This metric only includes time spent on completed operations. For Container-Optimized OS, or Ubuntu running GKE.
* - `queue_length`
  - The queue length on the disk averaged over the last 60 seconds. For Container-Optimized OS, or Ubuntu running GKE.
* - `weighted_io_time`
  - The cumulative weighted IO time spent on the disk. For Container-Optimized OS, or Ubuntu running GKE.
* - `anonymous_used`
  - Anonymous memory usage, in Bytes. Summing values of all states yields the total anonymous memory used. For Container-Optimized OS, or Ubuntu running GKE.
* - `bytes_used`
  - Memory usage by each memory state, in Bytes. Summing values of all states yields the total memory on the machine. For Container-Optimized OS, or Ubuntu running GKE.
* - `dirty_used`
  - Dirty pages usage, in Bytes. For Container-Optimized OS, or Ubuntu running GKE.
* - `page_cache_used`
  - Page cache memory usage, in Bytes. Summing values of all states yields the total anonymous memory used. For Container-Optimized OS, or Ubuntu running GKE.
* - `unevictable_used`
  - Unevictable memory usage, in Bytes. For Container-Optimized OS, or Ubuntu running GKE.
* - `os_feature_enabled`
  - OS Features like GPU support, KTD kernel, third party modules as unknown modules. 1 if the feature is enabled and 0, if disabled.  For Container-Optimized OS, or Ubuntu running GKE.
* - `problem_count`
  - Number of times a machine problem has happened. For Container-Optimized OS, or Ubuntu running GKE.
* - `problem_state`
  - Whether a problem is affecting the system or not. The problem is affecting the system when set to 1 and is not affecting the system when set to 0. For Container-Optimized OS, or Ubuntu running GKE.
* - `uptime`
  - Number of seconds that the operating system has been running for. For Container-Optimized OS, or Ubuntu running GKE.
* - `guest_visible_vcpus`
  - Number of vCPUs visible inside the guest. For many GCE machine types, the number of vCPUs visible inside the guest is equal to the `compute.googleapis.com/instance/cpu/reserved_cores` metric. For shared-core machine types, the number of guest-visible vCPUs differs from the number of resereved cores. For example, e2-small instances have two vCPUs visible inside the guest and 0.5 fractional vCPUs reserved. Therefore, for an e2-small instance,  `compute.googleapis.com/instance/cpu/guest_visible_vcpus` has a value of 2 and `compute.googleapis.com/instance/cpu/reserved_cores` has a value of 0.5.
* - `reserved_cores`
  - Number of vCPUs reserved on the host of the instance.
* - `scheduler_wait_time`
  - Wait time is the time a vCPU is ready to run, but unexpectedly not scheduled to run. The wait time returned here is the accumulated value for all vCPUs. The time interval for which the value was measured is returned by Monitoring in whole seconds as start_time and end_time. This metric is only available for VMs that belong to the e2 family or to overcommitted VMs on sole-tenant nodes.
* - `usage_time`
  - Delta vCPU usage for all vCPUs, in vCPU-seconds. To compute the per-vCPU utilization fraction, divide this value by (end-start)*N, where end and start define this value's time interval and N is `compute.googleapis.com/instance/cpu/reserved_cores` at the end of the interval. This value is reported by the hypervisor for the VM and can differ from `agent.googleapis.com/cpu/usage_time`, which is reported from inside the VM.
* - `utilization`
  - Fractional utilization of allocated CPU on this instance. Values are typically numbers between 0.0 and 1.0 (but some machine types allow bursting above 1.0). Charts display the values as a percentage between 0% and 100% (or more). This metric is reported by the hypervisor for the VM and can differ from `agent.googleapis.com/cpu/utilization`, which is reported from inside the VM.
* - `max_read_bytes_count`
  - Disk's maximum per-second read throughput over a period of time specified by the user. The period must be one minute or longer.
* - `max_read_ops_count`
  - Disk's maximum per-second read requests count over a period of time specified by the user. The period must be one minute or longer.
* - `max_write_bytes_count`
  - Disk's maximum per-second write throughput over a period of time specified by the user. The period must be one minute or longer.
* - `max_write_ops_count`
  - Disk's maximum per-second write requests count over a period of time specified by the user. The period must be one minute or longer.
* - `read_bytes_count`
  - Count of bytes read from disk.
* - `read_ops_count`
  - Count of disk read IO operations.
* - `write_bytes_count`
  - Count of bytes written to disk.
* - `write_ops_count`
  - Count of disk write IO operations.
* - `early_boot_validation_status`
  - The validation status of early boot integrity policy.
* - `late_boot_validation_status`
  - The validation status of late boot integrity policy.
* - `received_bytes_count`
  - Count of bytes received from the network.
* - `received_packets_count`
  - Count of packets received from the network.
* - `sent_bytes_count`
  - Count of bytes sent over the network.
* - `sent_packets_count`
  - Count of packets sent over the network.
* - `uptime`
  - Delta of how long the VM has been running, in seconds. Note: to get the total number of seconds since VM start, use compute.googleapis.com/instance/uptime_total.
* - `uptime_total`
  - Elapsed time since the VM was started, in seconds.
* - `ram_size`
  - The total amount of memory in the VM. This metric is only available for VMs that belong to the e2 family.
* - `ram_used`
  - Memory currently used in the VM. This metric is only available for VMs that belong to the e2 family.
* - `swap_in_bytes_count`
  - The amount of memory read into the guest from its own swap space. This metric is only available for VMs that belong to the e2 family.
* - `swap_out_bytes_count`
  - The amount of memory written from the guest to its own swap space. This metric is only available for VMs that belong to the e2 family.
* - `predicted_capacity`
  - Estimated capacity that the instance group will have if predictive autoscaling is enabled. Currently available only for autoscaled instance groups and equal to the predicted number of serving VMs multiplied by utilization target.
* - `predicted_size`
  - Estimated number of VMs that the instance group will have if predictive autoscaling is enabled. Currently available only for autoscaled instance groups.
* - `predicted_utilization`
  - The sum of the estimated values of the scaling metric for all serving VMs if predictive autoscaling is enabled. Currently available only for autoscaled instance groups.
* - `size`
  - The number of VMs in the instance group.
* - `dropped_packets_count`
  - Count of dropped mirrored packets.
* - `mirrored_bytes_count`
  - Count of mirrored bytes.
* - `mirrored_packets_count`
  - Count of mirrored packets.
* - `allocated_ports`
  - Number of ports allocated to a VM by the NAT gateway.
* - `closed_connections_count`
  - Count of connections closed over the NAT gateway.
* - `dropped_received_packets_count`
  - Count of received packets dropped by the NAT gateway.
* - `dropped_sent_packets_count`
  - Count of sent packets dropped by the NAT gateway.
* - `new_connections_count`
  - Count of new connections created over the NAT gateway.
* - `open_connections`
  - Number of connections currently open on the NAT gateway.
* - `port_usage`
  - Maximum number of connections from a VM to a single internet endpoint (IP:port).
* - `received_bytes_count`
  - Count of bytes received (Internet -> VM) via the NAT gateway.
* - `received_packets_count`
  - Count of packets received (Internet -> VM) via the NAT gateway.
* - `sent_bytes_count`
  - Count of bytes sent (VM -> Internet) over the NAT gateway.
* - `sent_packets_count`
  - Count of packets sent (VM -> Internet) over the NAT gateway.
* - `connected_consumer_forwarding_rules`
  - Number of Consumer Forwarding Rules connected to a PSC Attachment ID.
* - `used_nat_ip_addresses`
  - IP usage of the monitored service attachment.
* - `exceeded`
  - Number of attempts to exceed the limit on quota metric compute.googleapis.com/instances_per_vpc_network.
* - `limit`
  - Current limit on quota metric compute.googleapis.com/instances_per_vpc_network.
* - `usage`
  - Current usage on quota metric compute.googleapis.com/instances_per_vpc_network.
* - `exceeded`
  - Number of attempts to exceed the limit on quota metric compute.googleapis.com/internal_lb_forwarding_rules_per_vpc_network.
* - `limit`
  - Current limit on quota metric compute.googleapis.com/internal_lb_forwarding_rules_per_vpc_network.
* - `usage`
  - Current usage on quota metric compute.googleapis.com/internal_lb_forwarding_rules_per_vpc_network.
* - `exceeded`
  - Number of attempts to exceed the limit on quota metric compute.googleapis.com/internal_managed_forwarding_rules_per_vpc_network.
* - `limit`
  - Current limit on quota metric compute.googleapis.com/internal_managed_forwarding_rules_per_vpc_network.
* - `usage`
  - Current usage on quota metric compute.googleapis.com/internal_managed_forwarding_rules_per_vpc_network.
* - `exceeded`
  - Number of attempts to exceed the limit on quota metric compute.googleapis.com/internal_protocol_forwarding_rules_per_vpc_network.
* - `limit`
  - Current limit on quota metric compute.googleapis.com/internal_protocol_forwarding_rules_per_vpc_network.
* - `usage`
  - Current usage on quota metric compute.googleapis.com/internal_protocol_forwarding_rules_per_vpc_network.
* - `exceeded`
  - Number of attempts to exceed the limit on quota metric compute.googleapis.com/ip_aliases_per_vpc_network.
* - `limit`
  - Current limit on quota metric compute.googleapis.com/ip_aliases_per_vpc_network.
* - `usage`
  - Current usage on quota metric compute.googleapis.com/ip_aliases_per_vpc_network.
* - `exceeded`
  - Number of attempts to exceed the limit on quota metric compute.googleapis.com/psc_google_apis_forwarding_rules_per_vpc_network.
* - `limit`
  - Current limit on quota metric compute.googleapis.com/psc_google_apis_forwarding_rules_per_vpc_network.
* - `usage`
  - Current usage on quota metric compute.googleapis.com/psc_google_apis_forwarding_rules_per_vpc_network.
* - `exceeded`
  - Number of attempts to exceed the limit on quota metric compute.googleapis.com/psc_ilb_consumer_forwarding_rules_per_producer_vpc_network.
* - `limit`
  - Current limit on quota metric compute.googleapis.com/psc_ilb_consumer_forwarding_rules_per_producer_vpc_network.
* - `usage`
  - Current usage on quota metric compute.googleapis.com/psc_ilb_consumer_forwarding_rules_per_producer_vpc_network.
* - `exceeded`
  - Number of attempts to exceed the limit on quota metric compute.googleapis.com/subnet_ranges_per_vpc_network.
* - `limit`
  - Current limit on quota metric compute.googleapis.com/subnet_ranges_per_vpc_network.
* - `usage`
  - Current usage on quota metric compute.googleapis.com/subnet_ranges_per_vpc_network.

```
