### Notes

Here I should give the end user some information about how ot implment this

### Freshness

Defaults:

 - cloudsql: 5m
 - metrics:  1m 
 - logging:  1m

### Metric Types

A gauge metric, in which the value measures a specific instant in time. For example, metrics measuring CPU utilization are gauge metrics; each point records the CPU utilization at the time of measurement. Another example of a gauge metric is the current temperature.

A delta metric, in which the value measures the change since it was last recorded. For example, metrics measuring request counts are delta metrics; each value records how many requests were received since the last data point was recorded.

A cumulative metric, in which the value constantly increases over time. For example, a metric for sent bytes might be cumulative; each value records the total number of bytes sent by a service at that time.

### Database Specific

Here I will mention configs for specific platform