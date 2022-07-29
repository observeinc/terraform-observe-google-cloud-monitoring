resource "observe_dataset" "cloudsql_metrics_base" {
  count = local.enable_metrics ? 1 : 0

  workspace = var.workspace.oid
  name      = format(var.name_format, "Metrics Base")
  freshness = lookup(local.freshness, "metrics", var.freshness_default)

  inputs = {
    "metrics" = var.google.metrics.oid
  }

  # the filter for metric list below can be configured several different ways depending on your needs
  # look at local variable definition and decide
  stage {
    pipeline = <<-EOF
      filter resource_type = "cloudsql_database"

      make_col 
        database_id:string(resource_labels.database_id),
        project_id:string(resource_labels.project_id),
        region:string(resource_labels.region),
        metric_category: if(split_part(metric_type, '/', 1) = 'logging.googleapis.com',split_part(metric_type, '/', 2), split_part(metric_type, '/', 3)),
        metric: replace(replace(metric_type,'cloudsql.googleapis.com/',''),'/','_')
    
      make_col 
        database_platform: if( in(metric_category, 'mysql', 'postgresql','sqlserver'), metric_category, 'ALL'),
        database_id_check: database_id,
        instance_state_label: trim(string(metric_labels.state),'"') 

      extract_regex metric_type, /(?P<label>[^\/]+$)/
    EOF
  }

  stage {
    alias    = "pick_columns"
    pipeline = <<-EOF
      pick_col
        start_time,
        metric,
        value,
        metric_category,
        label,
        instance_state_label,
        database_platform,
        metric_labels,
        value_type_text,
        database_id,
        project_id,
        region,
        metric_type,
        metric_kind,
        metric_kind_text,
        value_type
        
 
      colshow metric_type: false, metric_kind: false, value_type: false
    EOF
  }
}


resource "observe_dataset" "cloudsql_metrics" {
  count = local.enable_metrics ? 1 : 0

  workspace = var.workspace.oid
  name      = format(var.name_format, "Metrics")
  freshness = lookup(local.freshness, "metrics", var.freshness_default)

  inputs = {
    "metrics_base" = observe_dataset.cloudsql_metrics_base[0].oid
  }
  stage {
    input = "metrics_base"
    alias = "all_metrics"
    pipeline = <<-EOF
      interface "metric", metric:metric, value:value
      ${join("\n\n",
    [for metric, options in local.metrics_definitions :
      indent(2,
        format("set_metric options(\n%s\n), %q",
          join(",\n",
            [for k, v in options : k == "interval" ?
              format("%s: %s", k, v)
              :
              format("%s: %q", k, v)
      if contains(var.metric_interface_fields, k)]), metric))
      if contains(var.launch_stage, options.launchStage)
    ]
  )
}
  EOF
}

# stage {
#   alias    = "combo_metrics"
#   input    = "metrics_base"
#   pipeline = <<-EOF
#       filter in(metric, "database_postgresql_num_backends","database_network_connections")
#       make_col combo_metric: "all_database_network_connections"

#       interface "metric", metric:combo_metric, value:value
#       set_metric options(
#         aggregate: "sum",
#         description: "Combination of network connection metrics.\n",
#         interval: 60s,
#         label: "Network Connections All",
#         rollup: "avg",
#         type: "gauge"
#         ), "all_database_network_connections"
#     EOF
# }

# stage {
#   pipeline = <<-EOF
#       union @all_metrics
#     EOF
# }
}

resource "observe_dataset" "cloudsql_metrics_combo" {
  count = local.enable_metrics ? 1 : 0

  workspace = var.workspace.oid
  name      = format(var.name_format, "Metrics Combo")
  freshness = lookup(local.freshness, "metrics", var.freshness_default)

  inputs = {
    "metrics_base" = observe_dataset.cloudsql_metrics_base[0].oid
  }
  stage {
    # alias    = "all_database_network_connections"
    # input    = "metrics_base"
    pipeline = <<-EOF
      filter in(metric, "database_postgresql_num_backends","database_network_connections")
      make_col combo_metric: "all_database_network_connections"

      interface "metric", metric:combo_metric, value:value
      set_metric options(
        aggregate: "sum",
        description: "Combination of network connection metrics.\n",
        interval: 60s,
        label: "Network Connections All",
        rollup: "avg",
        type: "gauge"
        ), "all_database_network_connections"
    EOF
  }

}

resource "observe_dataset" "cloudsql_metrics_wide" {
  count = local.enable_metrics ? 1 : 0

  workspace = var.workspace.oid
  name      = format(var.name_format, "Metrics Wide")
  freshness = lookup(local.freshness, "metrics", var.freshness_default)

  inputs = {
    "metrics_base" = observe_dataset.cloudsql_metrics[0].oid
  }
  stage {
    pipeline = <<-EOF
      filter in(metric, "database_disk_bytes_used","database_disk_quota")
      //filter database_id = "terraflood-345116:con-gha-tom-g1-1-519-instance-wren"

    EOF
  }

  stage {
    pipeline = <<-EOF
      align 60s,
          used:avg(m("database_disk_bytes_used")),
          quota:avg(m("database_disk_quota"))

      aggregate
          used:avg(used),
          quota:avg(quota),
          group_by( 
                    metric_category,
                    //label,
                    //instance_state_label,
                    database_platform,
                   // metric_labels,
                   // value_type_text,
                    database_id,
                    project_id,
                    region
                    //metric_type,
                    //metric_kind,
                    //metric_kind_text,
                    //value_type
                  )
    EOF
  }

  stage {
    pipeline = <<-EOF
      make_event
   
    EOF
  }

  stage {
    pipeline = <<-EOF
      make_col
        metrics:make_object(
          percent_disk_used:float64(used/quota)
        )
      flatten_leaves metrics
   
    EOF
  }

  stage {
    pipeline = <<-EOF
      make_col metric:string(@."_c_metrics_path"),
        value:float64(@."_c_metrics_value")
    EOF
  }

  stage {
    pipeline = <<-EOF
      pick_col
        valid_from,
        valid_to,
        metric,
        value,
        metric_category,
        //label,
        //instance_state_label,
        database_platform,
        //metric_labels,
        //value_type_text,
        database_id,
        project_id,
        region
        //metric_type,
        //metric_kind,
        //metric_kind_text,
        //value_type

    EOF
  }

  stage {
    pipeline = <<-EOF
        interface "metric", metric:metric, value:value
        set_metric options(
          aggregate: "sum",
          description: "Percentage of disk quota used\n",
          interval: 60s,
          label: "Percent Disk Used",
          rollup: "avg",
          type: "gauge"
          ), "percent_disk_used"
    EOF
  }

}
# Basic units (UNIT)

# bit bit
# By byte
# s second
# min minute
# h hour
# d day
# 1 dimensionless
# use var instead of prop metric_interface_fields

resource "observe_link" "cloudsql_metrics" {
  for_each = length(observe_dataset.cloudsql_metrics) > 0 ? {
    "Cloud SQL Metrics" = {
      target = observe_dataset.cloudsql.oid
      fields = ["database_id"]
      source = observe_dataset.cloudsql_metrics[0].oid
    }

    "Cloud SQL Metrics Combo" = {
      target = observe_dataset.cloudsql.oid
      fields = ["database_id"]
      source = observe_dataset.cloudsql_metrics_combo[0].oid
    }


    "Cloud SQL Metrics Wide" = {
      target = observe_dataset.cloudsql.oid
      fields = ["database_id"]
      source = observe_dataset.cloudsql_metrics_wide[0].oid
    }
  } : {}

  workspace = var.workspace.oid
  source    = each.value.source
  target    = each.value.target
  fields    = each.value.fields
  label     = each.key
}


# resource "observe_dataset" "cloudsql_string_metrics" {
#   count = local.enable_metrics ? 1 : 0

#   workspace = var.workspace.oid
#   name      = format(var.name_format, "String Metrics")
#   freshness = lookup(local.freshness, "metrics", var.freshness_default)

#   inputs = {
#     "metrics" = var.google.string_metrics.oid
#   }

#   # the filter for metric list below can be configured several different ways depending on your needs
#   # look at local variable definition and decide
#   stage {
#     pipeline = <<-EOF
#       filter resource_type = "cloudsql_database"

#       make_col 
#         database_id:string(resource_labels.database_id),
#         project_id:string(resource_labels.project_id),
#         region:string(resource_labels.region),
#         metric_category: split_part(metric_type, '/', 3),
#         metric_name: replace(replace(metric_type,'cloudsql.googleapis.com/',''),'/','_')

#       make_col 
#         database_platform: if( in(metric_category, 'mysql', 'postgresql','sqlserver'), metric_category, 'ALL'),
#         database_id_check: database_id

#       extract_regex metric_type, /(?P<label>[^\/]+$)/
#     EOF
#   }

#   stage {
#     pipeline = <<-EOF
#         pick_col
#           start_time,
#           end_time,
#           project_id,
#           region,
#           database_id,
#           metric_type,
#           metric_name,
#           metric_kind,
#           metric_category,
#           database_platform,
#           metric_labels,
#           label,
#           value

#       EOF
#   }
# }

# use var instead of prop metric_interface_fields

# resource "observe_link" "cloudsql_string_metrics" {
#   for_each = length(observe_dataset.cloudsql_string_metrics) > 0 ? {
#     "Cloud SQL" = {
#       target = observe_dataset.cloudsql.oid
#       fields = ["database_id"]
#     }
#   } : {}

#   workspace = var.workspace.oid
#   source    = observe_dataset.cloudsql_string_metrics[0].oid
#   target    = each.value.target
#   fields    = each.value.fields
#   label     = each.key
# }
