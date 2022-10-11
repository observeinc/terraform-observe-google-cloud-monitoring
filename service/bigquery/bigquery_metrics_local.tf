locals {
  metrics_definitions = {
    "job_num_in_flight" = {
      type             = "gauge"
      description      = <<-EOF
          In flight jobs. Sampled every 60s and may take up to 420s to display.
      EOF
      launchStage      = "GA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "none"
      googleMetricPath = "bigquery.googleapis.com/job/num_in_flight"
      label            = "Job count"
      active           = true


      interval = "60s"



    },
    "query_count" = {
      type             = "gauge"
      description      = <<-EOF
          In flight queries. Sampled every 60s and may take up to 420s to display.
      EOF
      launchStage      = "GA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "none"
      googleMetricPath = "bigquery.googleapis.com/query/count"
      label            = "Query count"
      active           = true


      interval = "60s"



    },
    "query_execution_times" = {
      type             = "gauge"
      description      = <<-EOF
          Distribution of execution times for queries that completed successfully within the last sampling interval. Incomplete and failed queries are not included. Sampled every 60s and may take up to 420s to display.
      EOF
      launchStage      = "GA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "none"
      googleMetricPath = "bigquery.googleapis.com/query/execution_times"
      label            = "Query execution times"
      active           = true


      interval = "60s"

      unit = "s"

    },
    "query_scanned_bytes" = {
      type             = "delta"
      description      = <<-EOF
          Scanned bytes. Sampled every 60s and may take up to 21720s to display.
      EOF
      launchStage      = "GA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "none"
      googleMetricPath = "bigquery.googleapis.com/query/scanned_bytes"
      label            = "Scanned bytes"
      active           = true


      interval = "60s"

      unit = "By"

    },
    "query_scanned_bytes_billed" = {
      type             = "delta"
      description      = <<-EOF
          Scanned bytes billed. Sampled every 60s and may take up to 21720s to display.
      EOF
      launchStage      = "GA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "none"
      googleMetricPath = "bigquery.googleapis.com/query/scanned_bytes_billed"
      label            = "Scanned bytes billed"
      active           = true


      interval = "60s"

      unit = "By"

    },
    "query_statement_scanned_bytes" = {
      type             = "delta"
      description      = <<-EOF
          Scanned bytes broken down by statement type. Sampled every 60s and may take up to 180s to display.
      EOF
      launchStage      = "BETA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "none"
      googleMetricPath = "bigquery.googleapis.com/query/statement_scanned_bytes"
      label            = "Statement scanned bytes"
      active           = false


      interval = "60s"

      unit = "By"

    },
    "query_statement_scanned_bytes_billed" = {
      type             = "delta"
      description      = <<-EOF
          Scanned bytes billed broken down by statement type. Sampled every 60s and may take up to 180s to display.
      EOF
      launchStage      = "BETA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "none"
      googleMetricPath = "bigquery.googleapis.com/query/statement_scanned_bytes_billed"
      label            = "Statement scanned bytes billed"
      active           = false


      interval = "60s"

      unit = "By"

    },
    "slots_allocated" = {
      type             = "gauge"
      description      = <<-EOF
          Number of BigQuery slots currently allocated for project. Slot allocation can be broken down based on reservation and job type. Sampled every 60s and may take up to 420s to display.
      EOF
      launchStage      = "GA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "none"
      googleMetricPath = "bigquery.googleapis.com/slots/allocated"
      label            = "Slots used by project, reservation, and job type"
      active           = true


      interval = "60s"



    },
    "slots_allocated_for_project" = {
      type             = "gauge"
      description      = <<-EOF
          Number of BigQuery slots currently allocated for query jobs in the project. Sampled every 60s and may take up to 420s to display.
      EOF
      launchStage      = "GA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "none"
      googleMetricPath = "bigquery.googleapis.com/slots/allocated_for_project"
      label            = "Slots used by project"
      active           = true


      interval = "60s"



    },
    "slots_allocated_for_project_and_job_type" = {
      type             = "gauge"
      description      = <<-EOF
          Number of BigQuery slots currently allocated for the project and job type. Sampled every 60s and may take up to 420s to display.
      EOF
      launchStage      = "GA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "none"
      googleMetricPath = "bigquery.googleapis.com/slots/allocated_for_project_and_job_type"
      label            = "Slots used by project and job type"
      active           = true


      interval = "60s"



    },
    "slots_allocated_for_reservation" = {
      type             = "gauge"
      description      = <<-EOF
          Number of BigQuery slots currently allocated for project in the reservation. Sampled every 60s and may take up to 420s to display.
      EOF
      launchStage      = "GA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "none"
      googleMetricPath = "bigquery.googleapis.com/slots/allocated_for_reservation"
      label            = "Slots used by project in reservation"
      active           = true


      interval = "60s"



    },
    "slots_assigned" = {
      type             = "gauge"
      description      = <<-EOF
          The number of slots assigned to the given project/organization. Sampled every 60s and may take up to 180s to display.
      EOF
      launchStage      = "EARLY_ACCESS"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "none"
      googleMetricPath = "bigquery.googleapis.com/slots/assigned"
      label            = "Slots assigned"
      active           = false


      interval = "60s"



    },
    "slots_capacity_committed" = {
      type             = "gauge"
      description      = <<-EOF
          The total slot capacity commitments purchased through this administrator project/organization. Sampled every 60s and may take up to 180s to display.
      EOF
      launchStage      = "EARLY_ACCESS"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "none"
      googleMetricPath = "bigquery.googleapis.com/slots/capacity_committed"
      label            = "Slots capacity committed"
      active           = false


      interval = "60s"



    },
    "slots_max_assigned" = {
      type             = "gauge"
      description      = <<-EOF
          The maximum number of slots assigned to the given project/organization. Sampled every 60s and may take up to 180s to display.
      EOF
      launchStage      = "EARLY_ACCESS"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "none"
      googleMetricPath = "bigquery.googleapis.com/slots/max_assigned"
      label            = "Slots max assigned"
      active           = false


      interval = "60s"



    },
    "slots_total_allocated_for_reservation" = {
      type             = "gauge"
      description      = <<-EOF
          Number of BigQuery slots currently allocated across projects in the reservation. Note that the metric data is only reported while at least one project has been assigned to the reservation and is consuming slots. As an alternative, consider querying reservations information from INFORMATION_SCHEMA https://cloud.google.com/bigquery/docs/information-schema-reservations, which does not have these limitations. Sampled every 60s and may take up to 420s to display.
      EOF
      launchStage      = "GA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "none"
      googleMetricPath = "bigquery.googleapis.com/slots/total_allocated_for_reservation"
      label            = "Slots used across projects in reservation"
      active           = true


      interval = "60s"



    },
    "slots_total_available" = {
      type             = "gauge"
      description      = <<-EOF
          Deprecated Total number of BigQuery slots available for the project. If you are using the BigQuery Reservations API, consider using bigquery.googleapis.com/slots/assigned and bigquery.googleapis.com/slots/max_assigned instead. Sampled every 60s and may take up to 420s to display.
      EOF
      launchStage      = "DEPRECATED"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "none"
      googleMetricPath = "bigquery.googleapis.com/slots/total_available"
      label            = "Total slots"
      active           = false


      interval = "60s"



    },
    "storage_inserted_bytes_count" = {
      type             = "delta"
      description      = <<-EOF
          The number of bytes uploaded by the project using the InsertAll streaming API. Sampled every 60s and may take up to 120s to display.
      EOF
      launchStage      = "ALPHA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "none"
      googleMetricPath = "bigquery.googleapis.com/storage/inserted_bytes_count"
      label            = "Inserted Bytes Count"
      active           = false


      interval = "60s"



    },
    "storage_inserted_rows_count" = {
      type             = "delta"
      description      = <<-EOF
          The number of rows uploaded by the project using the InsertAll streaming API. Sampled every 60s and may take up to 120s to display.
      EOF
      launchStage      = "ALPHA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "none"
      googleMetricPath = "bigquery.googleapis.com/storage/inserted_rows_count"
      label            = "Inserted Rows Count"
      active           = false


      interval = "60s"



    },
    "storage_stored_bytes" = {
      type             = "gauge"
      description      = <<-EOF
          Number of bytes stored. The top 100 tables in a dataset are labeled, while the rest are grouped with no table label. Sampled every 1800s and may take up to 10800s to display.
      EOF
      launchStage      = "GA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "none"
      googleMetricPath = "bigquery.googleapis.com/storage/stored_bytes"
      label            = "Stored bytes"
      active           = true


      interval = "1800s"

      unit = "By"

    },
    "storage_table_count" = {
      type             = "gauge"
      description      = <<-EOF
          Number of tables. Sampled every 1800s and may take up to 10800s to display.
      EOF
      launchStage      = "GA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "none"
      googleMetricPath = "bigquery.googleapis.com/storage/table_count"
      label            = "Table count"
      active           = true


      interval = "1800s"



    },
    "storage_uploaded_bytes" = {
      type             = "delta"
      description      = <<-EOF
          Uploaded bytes. Sampled every 60s and may take up to 21720s to display.
      EOF
      launchStage      = "GA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "none"
      googleMetricPath = "bigquery.googleapis.com/storage/uploaded_bytes"
      label            = "Uploaded bytes"
      active           = true


      interval = "60s"

      unit = "By"

    },
    "storage_uploaded_bytes_billed" = {
      type             = "delta"
      description      = <<-EOF
          Uploaded bytes billed. Sampled every 60s and may take up to 21720s to display.
      EOF
      launchStage      = "GA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "none"
      googleMetricPath = "bigquery.googleapis.com/storage/uploaded_bytes_billed"
      label            = "Uploaded bytes billed"
      active           = true


      interval = "60s"

      unit = "By"

    },
    "storage_uploaded_row_count" = {
      type             = "delta"
      description      = <<-EOF
          Uploaded rows. Sampled every 60s and may take up to 21720s to display.
      EOF
      launchStage      = "GA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "none"
      googleMetricPath = "bigquery.googleapis.com/storage/uploaded_row_count"
      label            = "Uploaded rows"
      active           = true


      interval = "60s"



    },
  }
}
