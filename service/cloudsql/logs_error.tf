resource "observe_dataset" "cloud_sql_logs_error" {
  workspace   = var.workspace.oid
  name        = format(var.name_format, "Logs Error")
  freshness   = lookup(local.freshness, "logging", var.freshness_default)
  description = "This dataset contains error logs for Postgres, MySQL and SQL Server database instances"

  inputs = {
    "logs" = observe_dataset.sql_logs.oid
  }

  stage {
    pipeline = <<-EOF
        filter in(log_Name, "postgres.log","mysql.err","sqlserver.err")
    EOF
  }

}

resource "observe_link" "sql_error_logs" {
  workspace = var.workspace.oid
  source    = each.value.source
  target    = each.value.target
  fields    = each.value.fields
  label     = each.key

  for_each = {

    "DatabaseErrors" = {
      target = observe_dataset.cloud_sql_instance.oid
      fields = ["database_id"]
      source = observe_dataset.cloud_sql_logs_error.oid
    }
    ## If we want to create an error log for each platform 
    # "PostGresDatabaseAccess" = {
    #   target = observe_dataset.cloud_sql_instance.oid
    #   fields = ["database_id"]
    #   source = observe_dataset.postgres_error_logs.oid
    # }

    # "MySQLDatabaseError" = {
    #   target = observe_dataset.cloud_sql_instance.oid
    #   fields = ["database_id"]
    #   source = observe_dataset.mysql_error_logs.oid
    # }

    # "SQLServerDatabaseError" = {
    #   target = observe_dataset.cloud_sql_instance.oid
    #   fields = ["database_id"]
    #   source = observe_dataset.sqlserver_error_logs.oid
    # }
  }
}

## If we want to create an error log for each platform 

# resource "observe_dataset" "postgres_error_logs" {
#   workspace = var.workspace.oid
#   name      = format(var.name_format, "Logs Postgres Error")
#   freshness = lookup(local.freshness, "logging", var.freshness_default)

#   inputs = {
#     "logs" = observe_dataset.sql_logs.oid
#   }

#   stage {
#     pipeline = <<-EOF
#         filter log_Name = "postgres.log"
#     EOF
#   }

# }

# resource "observe_dataset" "mysql_error_logs" {
#   workspace = var.workspace.oid
#   name      = format(var.name_format, "Logs MySql Error")
#   freshness = lookup(local.freshness, "logging", var.freshness_default)

#   inputs = {
#     "logs" = observe_dataset.sql_logs.oid
#   }

#   stage {
#     pipeline = <<-EOF
#       filter log_Name = "mysql.err"
#     EOF
#   }

# stage {
#   pipeline = <<-EOF
#     extract_regex textPayload, /(?P<queryTime>\d{1,4}-\d{1,2}-\d{1,2}T\d{1,2}:\d{1,2}:\d{1,2}\.\d{1,6}Z)/
#       /\s*/
#       /(?P<USER>[a-z,A-Z]+)/
#         /[^0-9]+/
#         /(?P<IP>[^\]]+)/
#         /[^Query]+\b(Query)\b\s*/
#         /(?P<SQL>.*)/

#     filter not is_null(queryTime) and USER != "root"
#   EOF
# }

# stage {
#   pipeline = <<-EOF
#     pick_col
#       timestamp,
#       queryTime,
#       USER,
#       IP,
#       SQL,
#       log_Name,
#       project_id,
#       region,
#       database_id
#   EOF
# }
# }

# resource "observe_dataset" "sqlserver_error_logs" {
#   workspace = var.workspace.oid
#   name      = format(var.name_format, "Logs SQL Server Error")
#   freshness = lookup(local.freshness, "logging", var.freshness_default)

#   inputs = {
#     "logs" = observe_dataset.sql_logs.oid
#   }

#   stage {
#     pipeline = <<-EOF
#       filter log_Name = "sqlserver.err"
#     EOF
#   }
# }
