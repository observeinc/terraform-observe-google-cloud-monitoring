# terraform import observe_dashboard.cloud_sql_monitoring 42183890
resource "observe_dashboard" "cloud_sql_monitoring" {
  count       = local.cloud_sql_monitoring_dashboard_enable
  description = local.cloud_sql_monitoring_dashboard_description
  layout = jsonencode(
    {
      autoPack = true
      gridLayout = {
        sections = [
          {
            card = {
              cardType = "section"
              closed   = false
              id       = "card-xwauvrx1"
              title    = "Dashboard Content"
            }
            items        = []
            lastModified = 1657240575024
          },
          {
            card = {
              cardType = "section"
              closed   = false
              id       = "card-ml7vqqr0"
              title    = "Summary"
            }
            items = [
              {
                card = {
                  cardType = "stage"
                  id       = "card-uou67gtb"
                  stageId  = "stage-2iknse1z"
                }
                layout = {
                  h = 10
                  i = "card-uou67gtb"
                  w = 3
                  x = 0
                  y = 0
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-rxn64icf"
                  stageId  = "stage-h169l5vk"
                }
                layout = {
                  h = 10
                  i = "card-rxn64icf"
                  w = 3
                  x = 3
                  y = 0
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-4spcpgg5"
                  stageId  = "stage-gcd1nb81"
                }
                layout = {
                  h = 10
                  i = "card-4spcpgg5"
                  w = 3
                  x = 6
                  y = 0
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-9xr3r8q1"
                  stageId  = "stage-zx1ijn1u"
                  title    = "Installed Version"
                }
                layout = {
                  h = 10
                  i = "card-9xr3r8q1"
                  w = 3
                  x = 9
                  y = 0
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-u4zd3fb5"
                  stageId  = "stage-bv986tcd"
                }
                layout = {
                  h = 24
                  i = "card-u4zd3fb5"
                  w = 5
                  x = 7
                  y = 10
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-ujbspai3"
                  stageId  = "stage-dbityb73"
                }
                layout = {
                  h = 12
                  i = "card-ujbspai3"
                  w = 7
                  x = 0
                  y = 10
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-1owf82wz"
                  stageId  = "stage-9e63b4hp"
                }
                layout = {
                  h = 11
                  i = "card-1owf82wz"
                  w = 7
                  x = 0
                  y = 22
                }
              },
            ]
            lastModified = 1657240869975
          },
          {
            card = {
              cardType = "section"
              closed   = false
              id       = "card-b2lrnlmb"
              title    = "Monitoring"
            }
            items = [
              {
                card = {
                  cardType = "stage"
                  id       = "card-0eblpc8r"
                  stageId  = "stage-bxss6s26"
                }
                layout = {
                  h = 21
                  i = "card-0eblpc8r"
                  w = 7
                  x = 0
                  y = 0
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-6u78nl4n"
                  stageId  = "stage-urrvnw15"
                  title    = "Network Bytes Sent"
                }
                layout = {
                  h = 11
                  i = "card-6u78nl4n"
                  w = 5
                  x = 7
                  y = 0
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-ck135ejj"
                  stageId  = "stage-mpne8ae1"
                  title    = "Network Bytes Received"
                }
                layout = {
                  h = 10
                  i = "card-ck135ejj"
                  w = 5
                  x = 7
                  y = 11
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-y6bz7a4w"
                  stageId  = "stage-6qjozjl6"
                  title    = "Disk Read Operations"
                }
                layout = {
                  h = 8
                  i = "card-y6bz7a4w"
                  w = 12
                  x = 0
                  y = 21
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-ru6qn87f"
                  stageId  = "stage-1zwm1yf7"
                  title    = "Disk Write Operations"
                }
                layout = {
                  h = 8
                  i = "card-ru6qn87f"
                  w = 12
                  x = 0
                  y = 29
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-6f65l6ui"
                  stageId  = "stage-wy53129b"
                }
                layout = {
                  h = 12
                  i = "card-6f65l6ui"
                  w = 12
                  x = 0
                  y = 37
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-z87f7zko"
                  stageId  = "stage-perdox7c"
                }
                layout = {
                  h = 12
                  i = "card-z87f7zko"
                  w = 12
                  x = 0
                  y = 49
                }
              },
            ]
          },
          {
            card = {
              cardType = "section"
              closed   = false
              id       = "card-qplhqz4o"
              title    = "System"
            }
            items = [
              {
                card = {
                  cardType = "stage"
                  id       = "card-ew3lcm66"
                  stageId  = "stage-m3remp1v"
                  title    = "Disk Bytes Used"
                }
                layout = {
                  h = 11
                  i = "card-ew3lcm66"
                  w = 5
                  x = 7
                  y = 0
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-rixqaxea"
                  stageId  = "stage-x113jq90"
                  title    = "CPU Utilization"
                }
                layout = {
                  h = 22
                  i = "card-rixqaxea"
                  w = 7
                  x = 0
                  y = 0
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-ybgs3rim"
                  stageId  = "stage-5g6dfyg1"
                  title    = "Disk Quota"
                }
                layout = {
                  h = 11
                  i = "card-ybgs3rim"
                  w = 5
                  x = 7
                  y = 11
                }
              },
            ]
          },
          {
            card = {
              cardType = "section"
              closed   = false
              id       = "card-ufo9o86m"
              title    = "Documentation"
            }
            items = [
              {
                card = {
                  cardType = "text"
                  id       = "card-e6w06oqv"
                  text     = <<-EOT
                                        ### Google Cloud SQL
                                                                                                                                                                
                                        [https://cloud.google.com/sql/docs](https://cloud.google.com/sql/docs)
                                                                                                                                                                
                                        Cloud SQL is a fully-managed database service that helps you set up, maintain, manage, and administer your relational databases on Google Cloud Platform.
                                                                                                                                                                
                                        ### Use cases for Cloud SQL
                                                                                                                                                                
                                        Cloud SQL provides a cloud-based alternative to local MySQL, PostgreSQL, and SQL Server databases. You should use Cloud SQL if you want to spend less time managing your database and more time using it.
                                                                                                                                                                
                                        Many applications running on Compute Engine, App Engine and other services in Google Cloud use Cloud SQL for database storage
                                                                                                                                                                
                                        ### What is a Cloud SQL instance?
                                                                                                                                                                
                                        Each Cloud SQL instance is powered by a virtual machine (VM) running on a host Google Cloud server. Each VM operates the database program, such as MySQL Server, PostgreSQL, or SQL Server, and service agents that provide supporting services, such as logging and monitoring. The high availability option also provides a standby VM in another zone with a configuration that's identical to the primary VM.
                                                                                                                                                                
                                        The database is stored on a scalable, durable network storage device called a persistent disk that attaches to the VM. A static IP address sits in front of each VM to ensure that the IP address an application connects to persists throughout the lifetime of the Cloud SQL instance.
                                    EOT
                  title    = "Untitled Text"
                }
                layout = {
                  h = 34
                  i = "card-e6w06oqv"
                  w = 6
                  x = 0
                  y = 0
                }
              },
              {
                card = {
                  cardType = "text"
                  id       = "card-4sx1iica"
                  text     = <<-EOT
                                        ### Notes
                                                                                                                                                                
                                        To use this application you must implement the terraform-google-collection and the terraform google module with either the enable_service_all or the enable_service_cloudsql set to true.
                                                                                                                                                                
                                        ### Freshness
                                                                                                                                                                
                                        Freshness determines how often your data will be refreshed.
                                                                                                                                                                
                                        Defaults:
                                                                                                                                                                
                                         - cloudsql: 5m
                                         - metrics:  1m 
                                         - logging:  1m
                                                                                                                                                                
                                        ### Metric Types
                                                                                                                                                                
                                        A gauge metric, in which the value measures a specific instant in time. For example, metrics measuring CPU utilization are gauge metrics; each point records the CPU utilization at the time of measurement. Another example of a gauge metric is the current temperature.
                                                                                                                                                                
                                        A delta metric, in which the value measures the change since it was last recorded. For example, metrics measuring request counts are delta metrics; each value records how many requests were received since the last data point was recorded.
                                                                                                                                                                
                                        A cumulative metric, in which the value constantly increases over time. For example, a metric for sent bytes might be cumulative; each value records the total number of bytes sent by a service at that time.
                                                                                                                                                                
                                        ### Database Specific
                                                                                                                                                                
                                        For database specific metrics please graphlink to Cloud SQL Metrics table
                                    EOT
                  title    = "Untitled Text"
                }
                layout = {
                  h = 34
                  i = "card-4sx1iica"
                  w = 6
                  x = 6
                  y = 0
                }
              },
            ]
            lastModified = 1673654040700
          },
        ]
      }
      stageListLayout = {
        isModified = false
        parameters = [
          {
            controlledFilterStageId = "stage-9zde4fcc"
            datasetId               = local.cloud_sql_instance
            defaultValue = {
              datasetref = {
                datasetId = local.cloud_sql_instance
              }
            }
            emptyValueEncoding    = "null"
            emptyValueLabelOption = "null"
            id                    = "dbResource"
            name                  = "Cloud SQL Instance"
            valueKind = {
              type = "DATASETREF"
            }
            viewType = "input"
          },
        ]
        selectedStageId = "stage-x113jq90"
        timeRange = {
          display               = "Past 4 hours"
          endTime               = null
          millisFromCurrentTime = 14400000
          originalDisplay       = "Past 4 hours"
          startTime             = null
          timeRangeInfo = {
            key        = "PRESETS"
            name       = "Presets"
            presetType = "PAST_4_HOURS"
          }
          timeZone = null
        }
      }
    }
  )
  name = local.cloud_sql_monitoring_dashboard_name
  parameters = jsonencode(
    [
      {
        defaultValue = {
          datasetref = {
            datasetId = local.cloud_sql_instance
          }
        }
        id   = "dbResource"
        name = "Cloud SQL Instance"
        valueKind = {
          arrayItemType   = null
          keyForDatasetId = null
          type            = "DATASETREF"
        }
      },
    ]
  )
  stages = jsonencode(
    [
      {
        id = "stage-x113jq90"
        input = [
          {
            datasetId   = local.cloud_sql_metrics
            datasetPath = null
            inputName   = "database_cpu_utilization"
            inputRole   = "Data"
            stageId     = null
          },
          {
            datasetId   = null
            datasetPath = null
            inputName   = "dbResource"
            inputRole   = "Data"
            stageId     = null
          },
          {
            datasetId   = null
            datasetPath = null
            inputName   = "filter_Cloud SQL"
            inputRole   = "Data"
            stageId     = null
          },
        ]
        layout = {
          appearance = "VISIBLE"
          dataTableViewState = {
            autoTableHeight    = true
            columnFooterHeight = 0
            columnHeaderHeight = 29
            columnOrderOverride = {
              "0" = "name"
              "1" = "label"
              "2" = "Valid From"
              "3" = "Valid To"
            }
            columnVisibility             = {}
            columnWidths                 = {}
            containerWidth               = 1313
            contextMenuXCoord            = null
            contextMenuYCoord            = null
            defaultColumnWidth           = 70
            disableFixedLeftColumns      = false
            eventLinkColumnId            = null
            fetchPageSize                = 100
            hasCalculatedColumnWidths    = false
            maxColumnWidth               = 400
            maxMeasuredColumnHeaderWidth = {}
            maxMeasuredColumnWidth       = {}
            maxMeasuredRowHeight         = {}
            minColumnWidth               = 60
            minRowHeight                 = 30
            preserveCellAndRowSelection  = true
            rowHeaderWidth               = 50
            rowHeights                   = {}
            rowSizeIncrement             = 1
            scrollToColumn               = null
            scrollToRow                  = 0
            selection = {
              cells                = {}
              columnSelectSequence = []
              columns              = {}
              highlightState       = {}
              rows                 = {}
              selectionType        = "table"
            }
            summaryColumnOrderOverride = {}
            summaryColumnVisibility    = {}
            tableHeight                = 179
            tableView                  = "TABULAR"
          }
          index = 0
          inputList = [
            {
              datasetId   = local.cloud_sql_metrics
              inputName   = "database_cpu_utilization"
              inputRole   = "Data"
              isUserInput = false
            },
            {
              inputName   = "dbResource"
              inputRole   = "Data"
              isUserInput = false
              parameterId = "dbResource"
            },
            {
              inputName   = "filter_Cloud SQL"
              inputRole   = "Data"
              isUserInput = true
              parameterId = "dbResource"
            },
          ]
          label = "CPU Utilization"
          managers = [
            {
              id                     = "v8po8a0z"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "rmcnxide"
              isDisabled = false
              type       = "Vis"
              vis = {
                config = {
                  color         = "Default"
                  hideGridLines = true
                  legend = {
                    placement = "right"
                    type      = "list"
                    visible   = false
                  }
                  type = "xy"
                  xConfig = {
                    visible = true
                  }
                  yConfig = {
                    unit    = "10^2.%"
                    visible = true
                  }
                }
                source = {
                  table = {
                    groupFields = [
                      "database_id",
                    ]
                    transformType = "none"
                    type          = "xy"
                    x             = "valid_from"
                    y             = "A_database_cpu_utilization_sum"
                  }
                  topK = {
                    order = "Top"
                    type  = "Auto"
                  }
                  type = "table"
                }
                type = "timeseries"
              }
            },
          ]
          queryPresentation = {
            initialRollupFilter = {
              mode = "Last"
            }
            limit          = 1000
            linkify        = true
            loadEverything = false
            progressive    = true
            resultKinds = [
              "ResultKindSchema",
            ]
            rollup      = {}
            wantBuckets = 400
          }
          renderType     = "TABLE"
          selectedStepId = null
          serializable   = true
          steps = [
            {
              customName    = "Input"
              customSummary = "database_cpu_utilization"
              datasetQueryId = {
                ignoreCompress = false
                queryId        = null
                resultKinds = [
                  "ResultKindSchema",
                  "ResultKindData",
                  "ResultKindStats",
                ]
                tableTypes = [
                  "TABULAR",
                  "SUMMARY",
                ]
              }
              id                = "step-4llzjhnz"
              index             = 0
              isPinned          = false
              opal              = []
              queryPresentation = {}
              type              = "InputStep"
            },
            {
              customSummary = ""
              datasetQueryId = {
                ignoreCompress = false
                queryId        = null
                resultKinds = [
                  "ResultKindSchema",
                  "ResultKindData",
                  "ResultKindStats",
                ]
                tableTypes = [
                  "TABULAR",
                  "SUMMARY",
                ]
              }
              id       = "step-1h2qj78s"
              index    = 1
              isPinned = false
              opal = [
                "exists database_id = @\"filter_Cloud SQL\".database_id",
                "align A_database_cpu_utilization_sum:avg(m(\"database_cpu_utilization\"))",
                "aggregate A_database_cpu_utilization_sum:sum(A_database_cpu_utilization_sum), group_by(database_id)",
              ]
              queryPresentation = {}
              type              = "unknown"
            },
          ]
          type = "table"
          viewModel = {
            railCollapseState = {
              inputsOutputs = false
              minimap       = false
              note          = true
              script        = true
            }
            showTimeRuler = true
            stageTab      = "vis"
          }
        }
        params   = null
        pipeline = <<-EOT
                    exists database_id = @"filter_Cloud SQL".database_id
                    align A_database_cpu_utilization_sum:avg(m("database_cpu_utilization"))
                    aggregate A_database_cpu_utilization_sum:sum(A_database_cpu_utilization_sum), group_by(database_id)
                EOT
      },
      {
        id = "stage-m3remp1v"
        input = [
          {
            datasetId   = local.cloud_sql_metrics
            datasetPath = null
            inputName   = "database_disk_bytes_used"
            inputRole   = "Data"
            stageId     = null
          },
          {
            datasetId   = null
            datasetPath = null
            inputName   = "dbResource"
            inputRole   = "Data"
            stageId     = null
          },
          {
            datasetId   = null
            datasetPath = null
            inputName   = "filter_Cloud SQL"
            inputRole   = "Data"
            stageId     = null
          },
        ]
        layout = {
          appearance = "VISIBLE"
          dataTableViewState = {
            autoTableHeight    = true
            columnFooterHeight = 0
            columnHeaderHeight = 29
            columnOrderOverride = {
              "0" = "name"
              "1" = "label"
              "2" = "Valid From"
              "3" = "Valid To"
            }
            columnVisibility             = {}
            columnWidths                 = {}
            containerWidth               = 1313
            contextMenuXCoord            = null
            contextMenuYCoord            = null
            defaultColumnWidth           = 70
            disableFixedLeftColumns      = false
            eventLinkColumnId            = null
            fetchPageSize                = 100
            hasCalculatedColumnWidths    = false
            maxColumnWidth               = 400
            maxMeasuredColumnHeaderWidth = {}
            maxMeasuredColumnWidth       = {}
            maxMeasuredRowHeight         = {}
            minColumnWidth               = 60
            minRowHeight                 = 30
            preserveCellAndRowSelection  = true
            rowHeaderWidth               = 50
            rowHeights                   = {}
            rowSizeIncrement             = 1
            scrollToColumn               = null
            scrollToRow                  = 0
            selection = {
              cells                = {}
              columnSelectSequence = []
              columns              = {}
              highlightState       = {}
              rows                 = {}
              selectionType        = "table"
            }
            summaryColumnOrderOverride = {}
            summaryColumnVisibility    = {}
            tableHeight                = 179
            tableView                  = "TABULAR"
          }
          index = 1
          inputList = [
            {
              datasetId   = local.cloud_sql_metrics
              inputName   = "database_disk_bytes_used"
              inputRole   = "Data"
              isUserInput = false
            },
            {
              inputName   = "dbResource"
              inputRole   = "Data"
              isUserInput = false
              parameterId = "dbResource"
            },
            {
              inputName   = "filter_Cloud SQL"
              inputRole   = "Data"
              isUserInput = true
              parameterId = "dbResource"
            },
          ]
          label = "Disk Bytes Used"
          managers = [
            {
              id                     = "pbgtk31k"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "c9bu4tgl"
              isDisabled = false
              type       = "Vis"
              vis = {
                config = {
                  color         = "Default"
                  hideGridLines = true
                  legend = {
                    placement = "right"
                    type      = "list"
                    visible   = false
                  }
                  type = "xy"
                  xConfig = {
                    visible = true
                  }
                  yConfig = {
                    unit    = "By"
                    visible = true
                  }
                }
                source = {
                  table = {
                    groupFields = [
                      "database_id",
                    ]
                    transformType = "none"
                    type          = "xy"
                    x             = "valid_from"
                    y             = "A_database_disk_bytes_used_sum"
                  }
                  topK = {
                    order = "Top"
                    type  = "Auto"
                  }
                  type = "table"
                }
                type = "timeseries"
              }
            },
          ]
          queryPresentation = {
            initialRollupFilter = {
              mode = "Last"
            }
            limit          = 1000
            linkify        = true
            loadEverything = false
            progressive    = true
            resultKinds = [
              "ResultKindSchema",
            ]
            rollup      = {}
            wantBuckets = 400
          }
          renderType     = "TABLE"
          selectedStepId = null
          serializable   = true
          steps = [
            {
              customName    = "Input"
              customSummary = "database_disk_bytes_used"
              datasetQueryId = {
                ignoreCompress = false
                queryId        = null
                resultKinds = [
                  "ResultKindSchema",
                  "ResultKindData",
                  "ResultKindStats",
                ]
                tableTypes = [
                  "TABULAR",
                  "SUMMARY",
                ]
              }
              id                = "step-gxgrapel"
              index             = 0
              isPinned          = false
              opal              = []
              queryPresentation = {}
              type              = "InputStep"
            },
            {
              customSummary = ""
              datasetQueryId = {
                ignoreCompress = false
                queryId        = null
                resultKinds = [
                  "ResultKindSchema",
                  "ResultKindData",
                  "ResultKindStats",
                ]
                tableTypes = [
                  "TABULAR",
                  "SUMMARY",
                ]
              }
              id       = "step-mgi5dv1n"
              index    = 1
              isPinned = false
              opal = [
                "exists database_id = @\"filter_Cloud SQL\".database_id",
                "align A_database_disk_bytes_used_sum:avg(m(\"database_disk_bytes_used\"))",
                "aggregate A_database_disk_bytes_used_sum:sum(A_database_disk_bytes_used_sum), group_by(database_id)",
              ]
              queryPresentation = {}
              type              = "unknown"
            },
          ]
          type = "table"
          viewModel = {
            railCollapseState = {
              inputsOutputs = false
              minimap       = false
              note          = true
              script        = true
            }
            showTimeRuler = true
            stageTab      = "vis"
          }
        }
        params   = null
        pipeline = <<-EOT
                    exists database_id = @"filter_Cloud SQL".database_id
                    align A_database_disk_bytes_used_sum:avg(m("database_disk_bytes_used"))
                    aggregate A_database_disk_bytes_used_sum:sum(A_database_disk_bytes_used_sum), group_by(database_id)
                EOT
      },
      {
        id = "stage-6qjozjl6"
        input = [
          {
            datasetId   = local.cloud_sql_metrics
            datasetPath = null
            inputName   = "database_disk_read_ops_count"
            inputRole   = "Data"
            stageId     = null
          },
          {
            datasetId   = null
            datasetPath = null
            inputName   = "dbResource"
            inputRole   = "Data"
            stageId     = null
          },
          {
            datasetId   = null
            datasetPath = null
            inputName   = "filter_Cloud SQL"
            inputRole   = "Data"
            stageId     = null
          },
        ]
        layout = {
          appearance = "VISIBLE"
          dataTableViewState = {
            autoTableHeight    = true
            columnFooterHeight = 0
            columnHeaderHeight = 29
            columnOrderOverride = {
              "0" = "database_id"
              "1" = "valid_from"
              "2" = "valid_to"
              "3" = "name"
              "4" = "Valid From"
              "5" = "Valid To"
            }
            columnVisibility             = {}
            columnWidths                 = {}
            containerWidth               = 1313
            contextMenuXCoord            = null
            contextMenuYCoord            = null
            defaultColumnWidth           = 70
            disableFixedLeftColumns      = false
            eventLinkColumnId            = null
            fetchPageSize                = 100
            hasCalculatedColumnWidths    = false
            maxColumnWidth               = 400
            maxMeasuredColumnHeaderWidth = {}
            maxMeasuredColumnWidth       = {}
            maxMeasuredRowHeight         = {}
            minColumnWidth               = 60
            minRowHeight                 = 30
            preserveCellAndRowSelection  = true
            rowHeaderWidth               = 50
            rowHeights                   = {}
            rowSizeIncrement             = 1
            scrollToColumn               = null
            scrollToRow                  = 0
            selection = {
              cells                = {}
              columnSelectSequence = []
              columns              = {}
              highlightState       = {}
              rows                 = {}
              selectionType        = "table"
            }
            summaryColumnOrderOverride = {}
            summaryColumnVisibility    = {}
            tableHeight                = 179
            tableView                  = "TABULAR"
          }
          index = 2
          inputList = [
            {
              datasetId   = local.cloud_sql_metrics
              inputName   = "database_disk_read_ops_count"
              inputRole   = "Data"
              isUserInput = false
            },
            {
              inputName   = "dbResource"
              inputRole   = "Data"
              isUserInput = false
              parameterId = "dbResource"
            },
            {
              inputName   = "filter_Cloud SQL"
              inputRole   = "Data"
              isUserInput = true
              parameterId = "dbResource"
            },
          ]
          label = "Disk Read Operations"
          managers = [
            {
              id                     = "u9rqvybi"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "jwmd39uu"
              isDisabled = false
              type       = "Vis"
              vis = {
                config = {
                  color         = "Default"
                  hideGridLines = true
                  legend = {
                    placement = "right"
                    type      = "list"
                    visible   = false
                  }
                  type = "xy"
                  xConfig = {
                    visible = true
                  }
                  yConfig = {
                    unit    = ""
                    visible = true
                  }
                }
                source = {
                  table = {
                    groupFields = [
                      "database_id",
                    ]
                    transformType = "none"
                    type          = "xy"
                    x             = "valid_from"
                    y             = "A_database_disk_read_ops_count_sum"
                  }
                  topK = {
                    k     = 25
                    order = "Top"
                    type  = "Auto"
                  }
                  type = "table"
                }
                type = "timeseries"
              }
            },
          ]
          queryPresentation = {
            initialRollupFilter = {
              mode = "Last"
            }
            limit          = 1000
            linkify        = true
            loadEverything = false
            progressive    = true
            resultKinds = [
              "ResultKindSchema",
            ]
            rollup      = {}
            wantBuckets = 400
          }
          renderType     = "TABLE"
          selectedStepId = null
          serializable   = true
          steps = [
            {
              customName    = "Input"
              customSummary = "database_disk_read_ops_count"
              datasetQueryId = {
                ignoreCompress = false
                queryId        = null
                resultKinds = [
                  "ResultKindSchema",
                  "ResultKindData",
                  "ResultKindStats",
                ]
                tableTypes = [
                  "TABULAR",
                  "SUMMARY",
                ]
              }
              id                = "step-uan390y7"
              index             = 0
              isPinned          = false
              opal              = []
              queryPresentation = {}
              type              = "InputStep"
            },
            {
              customSummary = ""
              datasetQueryId = {
                ignoreCompress = false
                queryId        = null
                resultKinds = [
                  "ResultKindSchema",
                  "ResultKindData",
                  "ResultKindStats",
                ]
                tableTypes = [
                  "TABULAR",
                  "SUMMARY",
                ]
              }
              id       = "step-27xmybdh"
              index    = 1
              isPinned = false
              opal = [
                "exists database_id = @\"filter_Cloud SQL\".database_id",
                "align A_database_disk_read_ops_count_sum:avg(m(\"database_disk_read_ops_count\"))",
                "aggregate A_database_disk_read_ops_count_sum:sum(A_database_disk_read_ops_count_sum), group_by(database_id)",
              ]
              queryPresentation = {}
              type              = "unknown"
            },
          ]
          type = "table"
          viewModel = {
            railCollapseState = {
              inputsOutputs = false
              minimap       = false
              note          = true
              script        = true
            }
            showTimeRuler = true
            stageTab      = "vis"
          }
        }
        params   = null
        pipeline = <<-EOT
                    exists database_id = @"filter_Cloud SQL".database_id
                    align A_database_disk_read_ops_count_sum:avg(m("database_disk_read_ops_count"))
                    aggregate A_database_disk_read_ops_count_sum:sum(A_database_disk_read_ops_count_sum), group_by(database_id)
                EOT
      },
      {
        id = "stage-bxss6s26"
        input = [
          {
            datasetId   = local.cloud_sql_metrics_combo
            datasetPath = null
            inputName   = "all_database_network_connections"
            inputRole   = "Data"
            stageId     = null
          },
          {
            datasetId   = null
            datasetPath = null
            inputName   = "dbResource"
            inputRole   = "Data"
            stageId     = null
          },
          {
            datasetId   = null
            datasetPath = null
            inputName   = "filter_Cloud SQL Metrics Combo"
            inputRole   = "Data"
            stageId     = null
          },
        ]
        layout = {
          appearance = "VISIBLE"
          dataTableViewState = {
            autoTableHeight    = false
            columnFooterHeight = 0
            columnHeaderHeight = 29
            columnOrderOverride = {
              "0" = "database_id"
              "1" = "valid_from"
              "2" = "valid_to"
              "3" = "name"
              "4" = "Valid From"
              "5" = "Valid To"
            }
            columnVisibility             = {}
            columnWidths                 = {}
            containerWidth               = 1505
            contextMenuXCoord            = null
            contextMenuYCoord            = null
            defaultColumnWidth           = 70
            disableFixedLeftColumns      = false
            eventLinkColumnId            = null
            fetchPageSize                = 100
            hasCalculatedColumnWidths    = false
            maxColumnWidth               = 400
            maxMeasuredColumnHeaderWidth = {}
            maxMeasuredColumnWidth       = {}
            maxMeasuredRowHeight         = {}
            minColumnWidth               = 60
            minRowHeight                 = 30
            preserveCellAndRowSelection  = true
            rowHeaderWidth               = 50
            rowHeights                   = {}
            rowSizeIncrement             = 1
            scrollToColumn               = null
            scrollToRow                  = 0
            selection = {
              cells                = {}
              columnSelectSequence = []
              columns              = {}
              highlightState       = {}
              rows                 = {}
              selectionType        = "table"
            }
            summaryColumnOrderOverride = {}
            summaryColumnVisibility    = {}
            tableHeight                = 179
            tableView                  = "TABULAR"
          }
          index = 3
          inputList = [
            {
              datasetId   = local.cloud_sql_metrics_combo
              inputName   = "all_database_network_connections"
              inputRole   = "Data"
              isUserInput = false
            },
            {
              inputName   = "dbResource"
              inputRole   = "Data"
              isUserInput = false
              parameterId = "dbResource"
            },
            {
              inputName   = "filter_Cloud SQL Metrics Combo"
              inputRole   = "Data"
              isUserInput = true
              parameterId = "dbResource"
            },
          ]
          label = "Network Connections"
          managers = [
            {
              id                     = "nho29ja2"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "dah8b1ls"
              isDisabled = false
              type       = "Vis"
              vis = {
                config = {
                  color         = "Default"
                  hideGridLines = true
                  legend = {
                    placement = "right"
                    type      = "list"
                    visible   = false
                  }
                  type = "xy"
                  xConfig = {
                    visible = true
                  }
                  yConfig = {
                    unit    = ""
                    visible = true
                  }
                }
                source = {
                  table = {
                    groupFields = [
                      "database_id",
                    ]
                    transformType = "none"
                    type          = "xy"
                    x             = "valid_from"
                    y             = "A_all_database_network_connections_sum"
                  }
                  topK = {
                    k     = 25
                    order = "Top"
                    type  = "Auto"
                  }
                  type = "table"
                }
                type = "timeseries"
              }
            },
          ]
          queryPresentation = {
            initialRollupFilter = {
              mode = "Last"
            }
            limit          = 1000
            linkify        = true
            loadEverything = false
            progressive    = true
            resultKinds = [
              "ResultKindSchema",
            ]
            rollup      = {}
            wantBuckets = 400
          }
          renderType     = "TABLE"
          selectedStepId = null
          serializable   = true
          steps = [
            {
              customName    = "Input"
              customSummary = "all_database_network_connections"
              datasetQueryId = {
                ignoreCompress = false
                queryId        = null
                resultKinds = [
                  "ResultKindSchema",
                  "ResultKindData",
                  "ResultKindStats",
                ]
                tableTypes = [
                  "TABULAR",
                  "SUMMARY",
                ]
              }
              id                = "step-sfs4clgf"
              index             = 0
              isPinned          = false
              opal              = []
              queryPresentation = {}
              type              = "InputStep"
            },
            {
              customSummary = ""
              datasetQueryId = {
                ignoreCompress = false
                queryId        = null
                resultKinds = [
                  "ResultKindSchema",
                  "ResultKindData",
                  "ResultKindStats",
                ]
                tableTypes = [
                  "TABULAR",
                  "SUMMARY",
                ]
              }
              id       = "step-7i1x9dsx"
              index    = 1
              isPinned = false
              opal = [
                "",
                "exists database_id = @\"filter_Cloud SQL Metrics Combo\".database_id",
                "align A_all_database_network_connections_sum:avg(m(\"all_database_network_connections\"))",
                "aggregate A_all_database_network_connections_sum:sum(A_all_database_network_connections_sum), group_by(database_id)",
              ]
              queryPresentation = {}
              type              = "unknown"
            },
          ]
          type = "table"
          viewModel = {
            railCollapseState = {
              inputsOutputs = false
              minimap       = false
              note          = true
              script        = true
            }
            showTimeRuler = true
            stageTab      = "vis"
          }
        }
        params   = null
        pipeline = <<-EOT
                    
                    exists database_id = @"filter_Cloud SQL Metrics Combo".database_id
                    align A_all_database_network_connections_sum:avg(m("all_database_network_connections"))
                    aggregate A_all_database_network_connections_sum:sum(A_all_database_network_connections_sum), group_by(database_id)
                EOT
      },
      {
        id = "stage-1zwm1yf7"
        input = [
          {
            datasetId   = local.cloud_sql_metrics
            datasetPath = null
            inputName   = "database_disk_write_ops_count"
            inputRole   = "Data"
            stageId     = null
          },
          {
            datasetId   = null
            datasetPath = null
            inputName   = "dbResource"
            inputRole   = "Data"
            stageId     = null
          },
          {
            datasetId   = null
            datasetPath = null
            inputName   = "filter_Cloud SQL"
            inputRole   = "Data"
            stageId     = null
          },
        ]
        layout = {
          appearance = "VISIBLE"
          dataTableViewState = {
            autoTableHeight    = true
            columnFooterHeight = 0
            columnHeaderHeight = 29
            columnOrderOverride = {
              "0" = "database_id"
              "1" = "valid_from"
              "2" = "valid_to"
              "3" = "name"
              "4" = "Valid From"
              "5" = "Valid To"
            }
            columnVisibility             = {}
            columnWidths                 = {}
            containerWidth               = 1313
            contextMenuXCoord            = null
            contextMenuYCoord            = null
            defaultColumnWidth           = 70
            disableFixedLeftColumns      = false
            eventLinkColumnId            = null
            fetchPageSize                = 100
            hasCalculatedColumnWidths    = false
            maxColumnWidth               = 400
            maxMeasuredColumnHeaderWidth = {}
            maxMeasuredColumnWidth       = {}
            maxMeasuredRowHeight         = {}
            minColumnWidth               = 60
            minRowHeight                 = 30
            preserveCellAndRowSelection  = true
            rowHeaderWidth               = 50
            rowHeights                   = {}
            rowSizeIncrement             = 1
            scrollToColumn               = null
            scrollToRow                  = 0
            selection = {
              cells                = {}
              columnSelectSequence = []
              columns              = {}
              highlightState       = {}
              rows                 = {}
              selectionType        = "table"
            }
            summaryColumnOrderOverride = {}
            summaryColumnVisibility    = {}
            tableHeight                = 179
            tableView                  = "TABULAR"
          }
          index = 4
          inputList = [
            {
              datasetId   = local.cloud_sql_metrics
              inputName   = "database_disk_write_ops_count"
              inputRole   = "Data"
              isUserInput = false
            },
            {
              inputName   = "dbResource"
              inputRole   = "Data"
              isUserInput = false
              parameterId = "dbResource"
            },
            {
              inputName   = "filter_Cloud SQL"
              inputRole   = "Data"
              isUserInput = true
              parameterId = "dbResource"
            },
          ]
          label = "Disk Write Operations"
          managers = [
            {
              id                     = "12jqfcoa"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "o93y9zjm"
              isDisabled = false
              type       = "Vis"
              vis = {
                config = {
                  color         = "Default"
                  hideGridLines = true
                  legend = {
                    placement = "right"
                    type      = "list"
                    visible   = false
                  }
                  type = "xy"
                  xConfig = {
                    visible = true
                  }
                  yConfig = {
                    unit    = ""
                    visible = true
                  }
                }
                source = {
                  table = {
                    groupFields = [
                      "database_id",
                    ]
                    transformType = "none"
                    type          = "xy"
                    x             = "valid_from"
                    y             = "A_database_disk_write_ops_count_sum"
                  }
                  topK = {
                    k     = 25
                    order = "Top"
                    type  = "Auto"
                  }
                  type = "table"
                }
                type = "timeseries"
              }
            },
          ]
          queryPresentation = {
            initialRollupFilter = {
              mode = "Last"
            }
            limit          = 1000
            linkify        = true
            loadEverything = false
            progressive    = true
            resultKinds = [
              "ResultKindSchema",
            ]
            rollup      = {}
            wantBuckets = 400
          }
          renderType     = "TABLE"
          selectedStepId = null
          serializable   = true
          steps = [
            {
              customName    = "Input"
              customSummary = "database_disk_write_ops_count"
              datasetQueryId = {
                ignoreCompress = false
                queryId        = null
                resultKinds = [
                  "ResultKindSchema",
                  "ResultKindData",
                  "ResultKindStats",
                ]
                tableTypes = [
                  "TABULAR",
                  "SUMMARY",
                ]
              }
              id                = "step-u49b87gc"
              index             = 0
              isPinned          = false
              opal              = []
              queryPresentation = {}
              type              = "InputStep"
            },
            {
              customSummary = ""
              datasetQueryId = {
                ignoreCompress = false
                queryId        = null
                resultKinds = [
                  "ResultKindSchema",
                  "ResultKindData",
                  "ResultKindStats",
                ]
                tableTypes = [
                  "TABULAR",
                  "SUMMARY",
                ]
              }
              id       = "step-ea1khwl9"
              index    = 1
              isPinned = false
              opal = [
                "exists database_id = @\"filter_Cloud SQL\".database_id",
                "align  A_database_disk_write_ops_count_sum:avg(m(\"database_disk_write_ops_count\"))",
                "aggregate A_database_disk_write_ops_count_sum:sum(A_database_disk_write_ops_count_sum), group_by(database_id)",
              ]
              queryPresentation = {}
              type              = "unknown"
            },
          ]
          type = "table"
          viewModel = {
            railCollapseState = {
              inputsOutputs = false
              minimap       = false
              note          = true
              script        = true
            }
            showTimeRuler = true
            stageTab      = "vis"
          }
        }
        params   = null
        pipeline = <<-EOT
                    exists database_id = @"filter_Cloud SQL".database_id
                    align  A_database_disk_write_ops_count_sum:avg(m("database_disk_write_ops_count"))
                    aggregate A_database_disk_write_ops_count_sum:sum(A_database_disk_write_ops_count_sum), group_by(database_id)
                EOT
      },
      {
        id = "stage-mpne8ae1"
        input = [
          {
            datasetId   = local.cloud_sql_metrics
            datasetPath = null
            inputName   = "database_network_received_bytes_count"
            inputRole   = "Data"
            stageId     = null
          },
          {
            datasetId   = null
            datasetPath = null
            inputName   = "dbResource"
            inputRole   = "Data"
            stageId     = null
          },
          {
            datasetId   = null
            datasetPath = null
            inputName   = "filter_Cloud SQL"
            inputRole   = "Data"
            stageId     = null
          },
        ]
        layout = {
          appearance = "VISIBLE"
          dataTableViewState = {
            autoTableHeight    = true
            columnFooterHeight = 0
            columnHeaderHeight = 29
            columnOrderOverride = {
              "0" = "database_id"
              "1" = "valid_from"
              "2" = "valid_to"
              "3" = "name"
              "4" = "Valid From"
              "5" = "Valid To"
            }
            columnVisibility             = {}
            columnWidths                 = {}
            containerWidth               = 1313
            contextMenuXCoord            = null
            contextMenuYCoord            = null
            defaultColumnWidth           = 70
            disableFixedLeftColumns      = false
            eventLinkColumnId            = null
            fetchPageSize                = 100
            hasCalculatedColumnWidths    = false
            maxColumnWidth               = 400
            maxMeasuredColumnHeaderWidth = {}
            maxMeasuredColumnWidth       = {}
            maxMeasuredRowHeight         = {}
            minColumnWidth               = 60
            minRowHeight                 = 30
            preserveCellAndRowSelection  = true
            rowHeaderWidth               = 50
            rowHeights                   = {}
            rowSizeIncrement             = 1
            scrollToColumn               = null
            scrollToRow                  = 0
            selection = {
              cells                = {}
              columnSelectSequence = []
              columns              = {}
              highlightState       = {}
              rows                 = {}
              selectionType        = "table"
            }
            summaryColumnOrderOverride = {}
            summaryColumnVisibility    = {}
            tableHeight                = 179
            tableView                  = "TABULAR"
          }
          index = 5
          inputList = [
            {
              datasetId   = local.cloud_sql_metrics
              inputName   = "database_network_received_bytes_count"
              inputRole   = "Data"
              isUserInput = false
            },
            {
              inputName   = "dbResource"
              inputRole   = "Data"
              isUserInput = false
              parameterId = "dbResource"
            },
            {
              inputName   = "filter_Cloud SQL"
              inputRole   = "Data"
              isUserInput = true
              parameterId = "dbResource"
            },
          ]
          label = "Network Bytes Received"
          managers = [
            {
              id                     = "zm9ec5ed"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "6wrrxd6o"
              isDisabled = false
              type       = "Vis"
              vis = {
                config = {
                  color         = "Default"
                  hideGridLines = true
                  legend = {
                    placement = "right"
                    type      = "list"
                    visible   = false
                  }
                  type = "xy"
                  xConfig = {
                    visible = true
                  }
                  yConfig = {
                    unit    = "By"
                    visible = true
                  }
                }
                source = {
                  table = {
                    groupFields = [
                      "database_id",
                    ]
                    transformType = "none"
                    type          = "xy"
                    x             = "valid_from"
                    y             = "A_database_network_received_bytes_count_sum"
                  }
                  topK = {
                    k     = 25
                    order = "Top"
                    type  = "Auto"
                  }
                  type = "table"
                }
                type = "timeseries"
              }
            },
          ]
          queryPresentation = {
            initialRollupFilter = {
              mode = "Last"
            }
            limit          = 1000
            linkify        = true
            loadEverything = false
            progressive    = true
            resultKinds = [
              "ResultKindSchema",
            ]
            rollup      = {}
            wantBuckets = 400
          }
          renderType     = "TABLE"
          selectedStepId = null
          serializable   = true
          steps = [
            {
              customName    = "Input"
              customSummary = "database_network_received_bytes_count"
              datasetQueryId = {
                ignoreCompress = false
                queryId        = null
                resultKinds = [
                  "ResultKindSchema",
                  "ResultKindData",
                  "ResultKindStats",
                ]
                tableTypes = [
                  "TABULAR",
                  "SUMMARY",
                ]
              }
              id                = "step-qjbjafnf"
              index             = 0
              isPinned          = false
              opal              = []
              queryPresentation = {}
              type              = "InputStep"
            },
            {
              customSummary = ""
              datasetQueryId = {
                ignoreCompress = false
                queryId        = null
                resultKinds = [
                  "ResultKindSchema",
                  "ResultKindData",
                  "ResultKindStats",
                ]
                tableTypes = [
                  "TABULAR",
                  "SUMMARY",
                ]
              }
              id       = "step-nt3ascjt"
              index    = 1
              isPinned = false
              opal = [
                "exists database_id = @\"filter_Cloud SQL\".database_id",
                "align A_database_network_received_bytes_count_sum:avg(m(\"database_network_received_bytes_count\"))",
                "aggregate A_database_network_received_bytes_count_sum:sum(A_database_network_received_bytes_count_sum), group_by(database_id)",
              ]
              queryPresentation = {}
              type              = "unknown"
            },
          ]
          type = "table"
          viewModel = {
            railCollapseState = {
              inputsOutputs = false
              minimap       = false
              note          = true
              script        = true
            }
            showTimeRuler = true
            stageTab      = "vis"
          }
        }
        params   = null
        pipeline = <<-EOT
                    exists database_id = @"filter_Cloud SQL".database_id
                    align A_database_network_received_bytes_count_sum:avg(m("database_network_received_bytes_count"))
                    aggregate A_database_network_received_bytes_count_sum:sum(A_database_network_received_bytes_count_sum), group_by(database_id)
                EOT
      },
      {
        id = "stage-urrvnw15"
        input = [
          {
            datasetId   = local.cloud_sql_metrics
            datasetPath = null
            inputName   = "database_network_sent_bytes_count"
            inputRole   = "Data"
            stageId     = null
          },
          {
            datasetId   = null
            datasetPath = null
            inputName   = "dbResource"
            inputRole   = "Data"
            stageId     = null
          },
          {
            datasetId   = null
            datasetPath = null
            inputName   = "filter_Cloud SQL"
            inputRole   = "Data"
            stageId     = null
          },
        ]
        layout = {
          appearance = "VISIBLE"
          dataTableViewState = {
            autoTableHeight    = true
            columnFooterHeight = 0
            columnHeaderHeight = 29
            columnOrderOverride = {
              "0" = "database_id"
              "1" = "valid_from"
              "2" = "valid_to"
              "3" = "name"
              "4" = "Valid From"
              "5" = "Valid To"
            }
            columnVisibility             = {}
            columnWidths                 = {}
            containerWidth               = null
            contextMenuXCoord            = null
            contextMenuYCoord            = null
            defaultColumnWidth           = 70
            disableFixedLeftColumns      = false
            eventLinkColumnId            = null
            fetchPageSize                = 100
            hasCalculatedColumnWidths    = false
            maxColumnWidth               = 400
            maxMeasuredColumnHeaderWidth = {}
            maxMeasuredColumnWidth       = {}
            maxMeasuredRowHeight         = {}
            minColumnWidth               = 60
            minRowHeight                 = 30
            preserveCellAndRowSelection  = true
            rowHeaderWidth               = 50
            rowHeights                   = {}
            rowSizeIncrement             = 1
            scrollToColumn               = null
            scrollToRow                  = 0
            selection = {
              cells                = {}
              columnSelectSequence = []
              columns              = {}
              highlightState       = {}
              rows                 = {}
              selectionType        = "table"
            }
            summaryColumnOrderOverride = {}
            summaryColumnVisibility    = {}
            tableHeight                = 179
            tableView                  = "TABULAR"
          }
          index = 6
          inputList = [
            {
              datasetId   = local.cloud_sql_metrics
              inputName   = "database_network_sent_bytes_count"
              inputRole   = "Data"
              isUserInput = false
            },
            {
              inputName   = "dbResource"
              inputRole   = "Data"
              isUserInput = false
              parameterId = "dbResource"
            },
            {
              inputName   = "filter_Cloud SQL"
              inputRole   = "Data"
              isUserInput = true
              parameterId = "dbResource"
            },
          ]
          label = "Network Bytes Sent"
          managers = [
            {
              id                     = "zm9ec5ed"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "6wrrxd6o"
              isDisabled = false
              type       = "Vis"
              vis = {
                config = {
                  color         = "Default"
                  hideGridLines = true
                  legend = {
                    placement = "right"
                    type      = "list"
                    visible   = false
                  }
                  type = "xy"
                  xConfig = {
                    visible = true
                  }
                  yConfig = {
                    unit    = "By"
                    visible = true
                  }
                }
                source = {
                  table = {
                    groupFields = [
                      "database_id",
                    ]
                    transformType = "none"
                    type          = "xy"
                    x             = "valid_from"
                    y             = "A_database_network_sent_bytes_count_sum"
                  }
                  topK = {
                    k     = 25
                    order = "Top"
                    type  = "Auto"
                  }
                  type = "table"
                }
                type = "timeseries"
              }
            },
          ]
          queryPresentation = {
            initialRollupFilter = {
              mode = "Last"
            }
            limit          = 1000
            linkify        = true
            loadEverything = false
            progressive    = true
            resultKinds = [
              "ResultKindSchema",
            ]
            rollup      = {}
            wantBuckets = 400
          }
          renderType     = "TABLE"
          selectedStepId = null
          serializable   = true
          steps = [
            {
              customName    = "Input"
              customSummary = "database_network_sent_bytes_count"
              datasetQueryId = {
                ignoreCompress = false
                queryId        = null
                resultKinds = [
                  "ResultKindSchema",
                  "ResultKindData",
                  "ResultKindStats",
                ]
                tableTypes = [
                  "TABULAR",
                  "SUMMARY",
                ]
              }
              id                = "step-l8pnpkia"
              index             = 0
              isPinned          = false
              opal              = []
              queryPresentation = {}
              type              = "InputStep"
            },
            {
              customSummary = ""
              datasetQueryId = {
                ignoreCompress = false
                queryId        = null
                resultKinds = [
                  "ResultKindSchema",
                  "ResultKindData",
                  "ResultKindStats",
                ]
                tableTypes = [
                  "TABULAR",
                  "SUMMARY",
                ]
              }
              id       = "step-pg2xz5hc"
              index    = 1
              isPinned = false
              opal = [
                "exists database_id = @\"filter_Cloud SQL\".database_id",
                "align A_database_network_sent_bytes_count_sum:avg(m(\"database_network_sent_bytes_count\"))",
                "aggregate A_database_network_sent_bytes_count_sum:sum(A_database_network_sent_bytes_count_sum), group_by(database_id)",
              ]
              queryPresentation = {}
              type              = "unknown"
            },
          ]
          type = "table"
          viewModel = {
            railCollapseState = {
              inputsOutputs = false
              minimap       = false
              note          = true
              script        = true
            }
            showTimeRuler = true
            stageTab      = "vis"
          }
        }
        params   = null
        pipeline = <<-EOT
                    exists database_id = @"filter_Cloud SQL".database_id
                    align A_database_network_sent_bytes_count_sum:avg(m("database_network_sent_bytes_count"))
                    aggregate A_database_network_sent_bytes_count_sum:sum(A_database_network_sent_bytes_count_sum), group_by(database_id)
                EOT
      },
      {
        id = "stage-5g6dfyg1"
        input = [
          {
            datasetId   = local.cloud_sql_metrics
            datasetPath = null
            inputName   = "database_disk_quota"
            inputRole   = "Data"
            stageId     = null
          },
          {
            datasetId   = null
            datasetPath = null
            inputName   = "dbResource"
            inputRole   = "Data"
            stageId     = null
          },
          {
            datasetId   = null
            datasetPath = null
            inputName   = "filter_Cloud SQL"
            inputRole   = "Data"
            stageId     = null
          },
        ]
        layout = {
          appearance = "VISIBLE"
          dataTableViewState = {
            autoTableHeight    = true
            columnFooterHeight = 0
            columnHeaderHeight = 29
            columnOrderOverride = {
              "0" = "name"
              "1" = "label"
              "2" = "Valid From"
              "3" = "Valid To"
            }
            columnVisibility             = {}
            columnWidths                 = {}
            containerWidth               = 1313
            contextMenuXCoord            = null
            contextMenuYCoord            = null
            defaultColumnWidth           = 70
            disableFixedLeftColumns      = false
            eventLinkColumnId            = null
            fetchPageSize                = 100
            hasCalculatedColumnWidths    = false
            maxColumnWidth               = 400
            maxMeasuredColumnHeaderWidth = {}
            maxMeasuredColumnWidth       = {}
            maxMeasuredRowHeight         = {}
            minColumnWidth               = 60
            minRowHeight                 = 30
            preserveCellAndRowSelection  = true
            rowHeaderWidth               = 50
            rowHeights                   = {}
            rowSizeIncrement             = 1
            scrollToColumn               = null
            scrollToRow                  = 0
            selection = {
              cells                = {}
              columnSelectSequence = []
              columns              = {}
              highlightState       = {}
              rows                 = {}
              selectionType        = "table"
            }
            summaryColumnOrderOverride = {}
            summaryColumnVisibility    = {}
            tableHeight                = 179
            tableView                  = "TABULAR"
          }
          index = 7
          inputList = [
            {
              datasetId   = local.cloud_sql_metrics
              inputName   = "database_disk_quota"
              inputRole   = "Data"
              isUserInput = false
            },
            {
              inputName   = "dbResource"
              inputRole   = "Data"
              isUserInput = false
              parameterId = "dbResource"
            },
            {
              inputName   = "filter_Cloud SQL"
              inputRole   = "Data"
              isUserInput = true
              parameterId = "dbResource"
            },
          ]
          label = "Disk Quota"
          managers = [
            {
              id                     = "s23ly8g7"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "rupd3t7k"
              isDisabled = false
              type       = "Vis"
              vis = {
                config = {
                  color         = "Default"
                  hideGridLines = true
                  legend = {
                    placement = "right"
                    type      = "list"
                    visible   = false
                  }
                  type = "xy"
                  xConfig = {
                    visible = true
                  }
                  yConfig = {
                    unit    = "By"
                    visible = true
                  }
                }
                source = {
                  table = {
                    groupFields = [
                      "database_id",
                    ]
                    transformType = "none"
                    type          = "xy"
                    x             = "valid_from"
                    y             = "A_database_disk_quota_sum"
                  }
                  topK = {
                    order = "Top"
                    type  = "Auto"
                  }
                  type = "table"
                }
                type = "timeseries"
              }
            },
          ]
          queryPresentation = {
            initialRollupFilter = {
              mode = "Last"
            }
            limit          = 1000
            linkify        = true
            loadEverything = false
            progressive    = true
            resultKinds = [
              "ResultKindSchema",
            ]
            rollup      = {}
            wantBuckets = 200
          }
          renderType     = "TABLE"
          selectedStepId = null
          serializable   = true
          steps = [
            {
              customName    = "Input"
              customSummary = "database_disk_quota"
              datasetQueryId = {
                ignoreCompress = false
                queryId        = null
                resultKinds = [
                  "ResultKindSchema",
                  "ResultKindData",
                  "ResultKindStats",
                ]
                tableTypes = [
                  "TABULAR",
                  "SUMMARY",
                ]
              }
              id                = "step-enpyi9v9"
              index             = 0
              isPinned          = false
              opal              = []
              queryPresentation = {}
              type              = "InputStep"
            },
            {
              customSummary = ""
              datasetQueryId = {
                ignoreCompress = false
                queryId        = null
                resultKinds = [
                  "ResultKindSchema",
                  "ResultKindData",
                  "ResultKindStats",
                ]
                tableTypes = [
                  "TABULAR",
                  "SUMMARY",
                ]
              }
              id       = "step-2801s8q5"
              index    = 1
              isPinned = false
              opal = [
                "exists database_id = @\"filter_Cloud SQL\".database_id",
                "align A_database_disk_quota_sum:avg(m(\"database_disk_quota\"))",
                "aggregate A_database_disk_quota_sum:sum(A_database_disk_quota_sum), group_by(database_id)",
              ]
              queryPresentation = {}
              type              = "unknown"
            },
          ]
          type = "table"
          viewModel = {
            railCollapseState = {
              inputsOutputs = false
              minimap       = false
              note          = true
              script        = true
            }
            showTimeRuler = true
            stageTab      = "vis"
          }
        }
        params   = null
        pipeline = <<-EOT
                    exists database_id = @"filter_Cloud SQL".database_id
                    align A_database_disk_quota_sum:avg(m("database_disk_quota"))
                    aggregate A_database_disk_quota_sum:sum(A_database_disk_quota_sum), group_by(database_id)
                EOT
      },
      {
        id = "stage-zx1ijn1u"
        input = [
          {
            datasetId   = null
            datasetPath = null
            inputName   = "dbResource"
            inputRole   = "Data"
            stageId     = null
          },
        ]
        layout = {
          appearance = "VISIBLE"
          dataTableViewState = {
            autoTableHeight    = true
            columnFooterHeight = 0
            columnHeaderHeight = 29
            columnOrderOverride = {
              "0" = "name"
              "1" = "label"
              "2" = "Valid From"
              "3" = "Valid To"
            }
            columnVisibility             = {}
            columnWidths                 = {}
            containerWidth               = 1313
            contextMenuXCoord            = null
            contextMenuYCoord            = null
            defaultColumnWidth           = 70
            disableFixedLeftColumns      = false
            eventLinkColumnId            = null
            fetchPageSize                = 100
            hasCalculatedColumnWidths    = false
            maxColumnWidth               = 400
            maxMeasuredColumnHeaderWidth = {}
            maxMeasuredColumnWidth       = {}
            maxMeasuredRowHeight         = {}
            minColumnWidth               = 60
            minRowHeight                 = 30
            preserveCellAndRowSelection  = true
            rowHeaderWidth               = 50
            rowHeights                   = {}
            rowSizeIncrement             = 1
            scrollToColumn               = null
            scrollToRow                  = 0
            selection = {
              cells                = {}
              columnSelectSequence = []
              columns              = {}
              highlightState       = {}
              rows                 = {}
              selectionType        = "table"
            }
            summaryColumnOrderOverride = {}
            summaryColumnVisibility    = {}
            tableHeight                = 179
            tableView                  = "TABULAR"
          }
          index = 8
          inputList = [
            {
              inputName   = "dbResource"
              inputRole   = "Data"
              isUserInput = false
              parameterId = "dbResource"
            },
          ]
          label = "Installed Version"
          managers = [
            {
              id                     = "b9rersd2"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "bzjcyrdv"
              isDisabled = false
              type       = "Vis"
              vis = {
                config = {
                  innerRadius = 0
                  legend = {
                    placement = "right"
                    type      = "list"
                    visible   = false
                  }
                  type = "arc"
                }
                source = {
                  table = {
                    keyField = [
                      "databaseInstalledVersion",
                    ]
                    statsBy = {
                      fn = "count"
                    }
                    timechart = {
                      fn         = "count"
                      resolution = "SINGLE"
                    }
                    transformType = "none"
                    type          = "keyvalue"
                    valueField    = "A_databaseInstalledVersion_count"
                  }
                  topK = {
                    k     = 100
                    order = "Top"
                    type  = "Auto"
                  }
                  type = "table"
                }
                type = "circular"
              }
            },
          ]
          queryPresentation = {
            initialRollupFilter = {
              mode = "Last"
            }
            limit          = 1000
            linkify        = true
            loadEverything = false
            progressive    = true
            resultKinds = [
              "ResultKindSchema",
            ]
            rollup = {}
            sort = [
              {
                ascending  = false
                columnName = "A_databaseInstalledVersion_count"
              },
            ]
            wantBuckets = 1
          }
          renderType     = "TABLE"
          selectedStepId = null
          serializable   = true
          steps = [
            {
              customName    = "Input"
              customSummary = "dbResource"
              datasetQueryId = {
                ignoreCompress = false
                queryId        = null
                resultKinds = [
                  "ResultKindSchema",
                  "ResultKindData",
                  "ResultKindStats",
                ]
                tableTypes = [
                  "TABULAR",
                  "SUMMARY",
                ]
              }
              id                = "step-zf96nkh4"
              index             = 0
              isPinned          = false
              opal              = []
              queryPresentation = {}
              type              = "InputStep"
            },
            {
              action = {
                params = {
                  expressionList = {
                    expressions = [
                      {
                        autoResolution = true
                        columnId       = "databaseInstalledVersion"
                        dataVis = {
                          config = {
                            innerRadius = 0
                            legend = {
                              placement = "right"
                              type      = "list"
                              visible   = false
                            }
                            type = "arc"
                          }
                          source = {
                            table = {
                              keyField = [
                                "databaseInstalledVersion",
                              ]
                              statsBy = {
                                fn = "count"
                              }
                              timechart = {
                                fn         = "count"
                                resolution = "SINGLE"
                              }
                              transformType = "none"
                              type          = "keyvalue"
                              valueField    = "A_databaseInstalledVersion_count"
                            }
                            topK = {
                              order = "Top"
                              type  = "Auto"
                            }
                            type = "table"
                          }
                          type = "circular"
                        }
                        filterActions = []
                        groupBy = [
                          "databaseInstalledVersion",
                        ]
                        id              = "datasetQueryExpression-mxx2fal8"
                        lookupActions   = []
                        summarizeVerb   = "statsby"
                        summaryFunction = "count"
                        summaryMode     = "single"
                        type            = "datasetQueryExpression"
                        valueColumnId   = "A_databaseInstalledVersion_count"
                      },
                    ]
                    multiExpression = {
                      filterActions = []
                      id            = "multiExpression-kmvjmfzk"
                      lookupActions = []
                      type          = "multiExpression"
                    }
                    selectedExpressionIds = [
                      "datasetQueryExpression-mxx2fal8",
                    ]
                  }
                }
                summary = null
                type    = "ExpressionBuilder"
              }
              customSummary = "Expression Builder"
              datasetQueryId = {
                ignoreCompress = false
                queryId        = null
                resultKinds = [
                  "ResultKindSchema",
                  "ResultKindData",
                  "ResultKindStats",
                ]
                tableTypes = [
                  "TABULAR",
                  "SUMMARY",
                ]
              }
              id       = "step-q341zbt2"
              index    = 1
              isPinned = false
              opal = [
                "statsby A_databaseInstalledVersion_count:count(databaseInstalledVersion), group_by(databaseInstalledVersion)",
              ]
              queryPresentation = {}
              type              = "unknown"
            },
          ]
          type = "table"
          viewModel = {
            railCollapseState = {
              inputsOutputs = false
              minimap       = false
              note          = true
              script        = true
            }
            showTimeRuler = true
            stageTab      = "vis"
          }
        }
        params   = null
        pipeline = "statsby A_databaseInstalledVersion_count:count(databaseInstalledVersion), group_by(databaseInstalledVersion)"
      },
      {
        id = "stage-2iknse1z"
        input = [
          {
            datasetId   = null
            datasetPath = null
            inputName   = "dbResource"
            inputRole   = "Data"
            stageId     = null
          },
        ]
        layout = {
          appearance = "VISIBLE"
          dataTableViewState = {
            autoTableHeight    = true
            columnFooterHeight = 0
            columnHeaderHeight = 29
            columnOrderOverride = {
              "0" = "name"
              "2" = "Valid From"
              "3" = "Valid To"
            }
            columnVisibility             = {}
            columnWidths                 = {}
            containerWidth               = 1505
            contextMenuXCoord            = null
            contextMenuYCoord            = null
            defaultColumnWidth           = 70
            disableFixedLeftColumns      = false
            eventLinkColumnId            = null
            fetchPageSize                = 100
            hasCalculatedColumnWidths    = false
            maxColumnWidth               = 400
            maxMeasuredColumnHeaderWidth = {}
            maxMeasuredColumnWidth       = {}
            maxMeasuredRowHeight         = {}
            minColumnWidth               = 60
            minRowHeight                 = 30
            preserveCellAndRowSelection  = true
            rowHeaderWidth               = 50
            rowHeights                   = {}
            rowSizeIncrement             = 1
            scrollToColumn               = null
            scrollToRow                  = 0
            selection = {
              cells                = {}
              columnSelectSequence = []
              columns              = {}
              highlightState       = {}
              rows                 = {}
              selectionType        = "table"
            }
            summaryColumnOrderOverride = {}
            summaryColumnVisibility    = {}
            tableHeight                = 0
            tableView                  = "TABULAR"
          }
          index = 9
          inputList = [
            {
              inputName   = "dbResource"
              inputRole   = "Data"
              isUserInput = false
              parameterId = "dbResource"
            },
          ]
          label = "Region"
          managers = [
            {
              id                     = "db220a0d"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "dvz5w7nq"
              isDisabled = false
              type       = "Vis"
              vis = {
                config = {
                  innerRadius = 0.6
                  legend = {
                    placement = "right"
                    type      = "list"
                    visible   = true
                  }
                  type = "arc"
                }
                source = {
                  table = {
                    keyField = [
                      "region",
                    ]
                    statsBy = {
                      fn = "count"
                    }
                    timechart = {
                      fn         = "count"
                      resolution = "SINGLE"
                    }
                    transformType = "none"
                    type          = "keyvalue"
                    valueField    = "A_region_count"
                  }
                  topK = {
                    k     = 100
                    order = "Top"
                    type  = "Auto"
                  }
                  type = "table"
                }
                type = "circular"
              }
            },
          ]
          queryPresentation = {
            initialRollupFilter = {
              mode = "Last"
            }
            limit          = 1000
            linkify        = true
            loadEverything = false
            progressive    = true
            resultKinds = [
              "ResultKindSchema",
            ]
            rollup = {}
            sort = [
              {
                ascending  = false
                columnName = "A_region_count"
              },
            ]
            wantBuckets = 1
          }
          renderType     = "TABLE"
          selectedStepId = null
          serializable   = true
          steps = [
            {
              customName    = "Input"
              customSummary = "dbResource"
              datasetQueryId = {
                ignoreCompress = false
                queryId        = null
                resultKinds = [
                  "ResultKindSchema",
                  "ResultKindData",
                  "ResultKindStats",
                ]
                tableTypes = [
                  "TABULAR",
                  "SUMMARY",
                ]
              }
              id                = "step-bfy3p9ar"
              index             = 0
              isPinned          = false
              opal              = []
              queryPresentation = {}
              type              = "InputStep"
            },
            {
              action = {
                params = {
                  expressionList = {
                    expressions = [
                      {
                        autoResolution = true
                        columnId       = "region"
                        dataVis = {
                          config = {
                            innerRadius = 0.6
                            legend = {
                              placement = "right"
                              type      = "list"
                              visible   = true
                            }
                            type = "arc"
                          }
                          source = {
                            table = {
                              keyField = [
                                "region",
                              ]
                              statsBy = {
                                fn = "count"
                              }
                              timechart = {
                                fn         = "count"
                                resolution = "SINGLE"
                              }
                              transformType = "none"
                              type          = "keyvalue"
                              valueField    = "A_region_count"
                            }
                            topK = {
                              order = "Top"
                              type  = "Auto"
                            }
                            type = "table"
                          }
                          type = "circular"
                        }
                        filterActions = []
                        groupBy = [
                          "region",
                        ]
                        id              = "datasetQueryExpression-b78z19uk"
                        lookupActions   = []
                        summarizeVerb   = "statsby"
                        summaryFunction = "count"
                        summaryMode     = "single"
                        type            = "datasetQueryExpression"
                        valueColumnId   = "A_region_count"
                      },
                    ]
                    multiExpression = {
                      filterActions = []
                      id            = "multiExpression-elhxsmbr"
                      lookupActions = []
                      type          = "multiExpression"
                    }
                    selectedExpressionIds = [
                      "datasetQueryExpression-b78z19uk",
                    ]
                  }
                }
                summary = null
                type    = "ExpressionBuilder"
              }
              customSummary = "Expression Builder"
              datasetQueryId = {
                ignoreCompress = false
                queryId        = null
                resultKinds = [
                  "ResultKindSchema",
                  "ResultKindData",
                  "ResultKindStats",
                ]
                tableTypes = [
                  "TABULAR",
                  "SUMMARY",
                ]
              }
              id       = "step-k1dnx8ws"
              index    = 1
              isPinned = false
              opal = [
                "statsby A_region_count:count(region), group_by(region)",
              ]
              queryPresentation = {}
              type              = "unknown"
            },
          ]
          type = "table"
          viewModel = {
            railCollapseState = {
              inputsOutputs = false
              minimap       = false
              note          = true
              script        = true
            }
            showTimeRuler = true
            stageTab      = "vis"
          }
        }
        params   = null
        pipeline = "statsby A_region_count:count(region), group_by(region)"
      },
      {
        id = "stage-gcd1nb81"
        input = [
          {
            datasetId   = null
            datasetPath = null
            inputName   = "dbResource"
            inputRole   = "Data"
            stageId     = null
          },
        ]
        layout = {
          appearance = "VISIBLE"
          dataTableViewState = {
            autoTableHeight    = true
            columnFooterHeight = 0
            columnHeaderHeight = 29
            columnOrderOverride = {
              "0" = "name"
              "2" = "Valid From"
              "3" = "Valid To"
            }
            columnVisibility             = {}
            columnWidths                 = {}
            containerWidth               = null
            contextMenuXCoord            = null
            contextMenuYCoord            = null
            defaultColumnWidth           = 70
            disableFixedLeftColumns      = false
            eventLinkColumnId            = null
            fetchPageSize                = 100
            hasCalculatedColumnWidths    = false
            maxColumnWidth               = 400
            maxMeasuredColumnHeaderWidth = {}
            maxMeasuredColumnWidth       = {}
            maxMeasuredRowHeight         = {}
            minColumnWidth               = 60
            minRowHeight                 = 30
            preserveCellAndRowSelection  = true
            rowHeaderWidth               = 50
            rowHeights                   = {}
            rowSizeIncrement             = 1
            scrollToColumn               = null
            scrollToRow                  = 0
            selection = {
              cells                = {}
              columnSelectSequence = []
              columns              = {}
              highlightState       = {}
              rows                 = {}
              selectionType        = "table"
            }
            summaryColumnOrderOverride = {}
            summaryColumnVisibility    = {}
            tableHeight                = 0
            tableView                  = "TABULAR"
          }
          index = 10
          inputList = [
            {
              inputName   = "dbResource"
              inputRole   = "Data"
              isUserInput = false
              parameterId = "dbResource"
            },
          ]
          label = "Project"
          managers = [
            {
              id                     = "db220a0d"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "dvz5w7nq"
              isDisabled = false
              type       = "Vis"
              vis = {
                config = {
                  innerRadius = 0.6
                  legend = {
                    placement = "right"
                    type      = "list"
                    visible   = true
                  }
                  type = "arc"
                }
                source = {
                  table = {
                    keyField = [
                      "project_id",
                    ]
                    statsBy = {
                      fn = "count"
                    }
                    timechart = {
                      fn         = "count"
                      resolution = "SINGLE"
                    }
                    transformType = "none"
                    type          = "keyvalue"
                    valueField    = "A_project_id_count"
                  }
                  topK = {
                    k     = 100
                    order = "Top"
                    type  = "Auto"
                  }
                  type = "table"
                }
                type = "circular"
              }
            },
          ]
          queryPresentation = {
            initialRollupFilter = {
              mode = "Last"
            }
            limit          = 1000
            linkify        = true
            loadEverything = false
            progressive    = true
            resultKinds = [
              "ResultKindSchema",
            ]
            rollup = {}
            sort = [
              {
                ascending  = false
                columnName = "A_project_id_count"
              },
            ]
            wantBuckets = 1
          }
          renderType     = "TABLE"
          selectedStepId = null
          serializable   = true
          steps = [
            {
              customName    = "Input"
              customSummary = "dbResource"
              datasetQueryId = {
                ignoreCompress = false
                queryId        = null
                resultKinds = [
                  "ResultKindSchema",
                  "ResultKindData",
                  "ResultKindStats",
                ]
                tableTypes = [
                  "TABULAR",
                  "SUMMARY",
                ]
              }
              id                = "step-gfn0yypc"
              index             = 0
              isPinned          = false
              opal              = []
              queryPresentation = {}
              type              = "InputStep"
            },
            {
              action = {
                params = {
                  expressionList = {
                    expressions = [
                      {
                        autoResolution = true
                        columnId       = "project_id"
                        dataVis = {
                          config = {
                            innerRadius = 0.6
                            legend = {
                              placement = "right"
                              type      = "list"
                              visible   = true
                            }
                            type = "arc"
                          }
                          source = {
                            table = {
                              keyField = [
                                "project_id",
                              ]
                              statsBy = {
                                fn = "count"
                              }
                              timechart = {
                                fn         = "count"
                                resolution = "SINGLE"
                              }
                              transformType = "none"
                              type          = "keyvalue"
                              valueField    = "A_project_id_count"
                            }
                            topK = {
                              order = "Top"
                              type  = "Auto"
                            }
                            type = "table"
                          }
                          type = "circular"
                        }
                        filterActions = []
                        groupBy = [
                          "project_id",
                        ]
                        id              = "datasetQueryExpression-hvlahv1e"
                        lookupActions   = []
                        summarizeVerb   = "statsby"
                        summaryFunction = "count"
                        summaryMode     = "single"
                        type            = "datasetQueryExpression"
                        valueColumnId   = "A_project_id_count"
                      },
                    ]
                    multiExpression = {
                      filterActions = []
                      id            = "multiExpression-v4jgctx5"
                      lookupActions = []
                      type          = "multiExpression"
                    }
                    selectedExpressionIds = [
                      "datasetQueryExpression-hvlahv1e",
                    ]
                  }
                }
                summary = null
                type    = "ExpressionBuilder"
              }
              customSummary = "Expression Builder"
              datasetQueryId = {
                ignoreCompress = false
                queryId        = null
                resultKinds = [
                  "ResultKindSchema",
                  "ResultKindData",
                  "ResultKindStats",
                ]
                tableTypes = [
                  "TABULAR",
                  "SUMMARY",
                ]
              }
              id       = "step-mb3rvs1w"
              index    = 1
              isPinned = false
              opal = [
                "statsby A_project_id_count:count(project_id), group_by(project_id)",
              ]
              queryPresentation = {}
              type              = "unknown"
            },
          ]
          type = "table"
          viewModel = {
            railCollapseState = {
              inputsOutputs = false
              minimap       = false
              note          = true
              script        = true
            }
            showTimeRuler = true
            stageTab      = "vis"
          }
        }
        params   = null
        pipeline = "statsby A_project_id_count:count(project_id), group_by(project_id)"
      },
      {
        id = "stage-pe9mq2em"
        input = [
          {
            datasetId   = local.cloud_sql_metrics
            datasetPath = null
            inputName   = "database_instance_state"
            inputRole   = "Data"
            stageId     = null
          },
          {
            datasetId   = null
            datasetPath = null
            inputName   = "dbResource"
            inputRole   = "Data"
            stageId     = null
          },
          {
            datasetId   = null
            datasetPath = null
            inputName   = "filter_Cloud SQL"
            inputRole   = "Data"
            stageId     = null
          },
        ]
        layout = {
          appearance = "VISIBLE"
          dataTableViewState = {
            autoTableHeight    = true
            columnFooterHeight = 0
            columnHeaderHeight = 29
            columnOrderOverride = {
              "0" = "name"
              "1" = "valid_from"
              "2" = "valid_to"
              "4" = "Valid From"
            }
            columnVisibility             = {}
            columnWidths                 = {}
            containerWidth               = 1313
            contextMenuXCoord            = null
            contextMenuYCoord            = null
            defaultColumnWidth           = 70
            disableFixedLeftColumns      = false
            eventLinkColumnId            = null
            fetchPageSize                = 100
            hasCalculatedColumnWidths    = false
            maxColumnWidth               = 400
            maxMeasuredColumnHeaderWidth = {}
            maxMeasuredColumnWidth       = {}
            maxMeasuredRowHeight         = {}
            minColumnWidth               = 60
            minRowHeight                 = 30
            preserveCellAndRowSelection  = true
            rowHeaderWidth               = 50
            rowHeights                   = {}
            rowSizeIncrement             = 1
            scrollToColumn               = null
            scrollToRow                  = 0
            selection = {
              cells                = {}
              columnSelectSequence = []
              columns              = {}
              highlightState       = {}
              rows                 = {}
              selectionType        = "table"
            }
            summaryColumnOrderOverride = {}
            summaryColumnVisibility    = {}
            tableHeight                = 0
            tableView                  = "TABULAR"
          }
          index = 11
          inputList = [
            {
              datasetId   = local.cloud_sql_metrics
              inputName   = "database_instance_state"
              inputRole   = "Data"
              isUserInput = false
            },
            {
              inputName   = "dbResource"
              inputRole   = "Data"
              isUserInput = false
              parameterId = "dbResource"
            },
            {
              inputName   = "filter_Cloud SQL"
              inputRole   = "Data"
              isUserInput = true
              parameterId = "dbResource"
            },
          ]
          label = "Current State"
          managers = [
            {
              id                     = "sc2eh4dq"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "fuhnk8qb"
              isDisabled = false
              type       = "Vis"
              vis = {
                config = {
                  areaFillType = "SolidFill"
                  legend = {
                    placement = "bottom"
                    type      = "list"
                    visible   = true
                  }
                  type                = "bar"
                  xAxisLabelPlacement = "horizontal"
                  xConfig = {
                    visible = true
                  }
                  yConfig = {
                    visible = true
                  }
                }
                source = {
                  table = {
                    groupFields = [
                      "instance_state_label",
                    ]
                    transformType = "none"
                    type          = "xy"
                    x             = "valid_from"
                    y             = "A_database_instance_state_sum"
                  }
                  topK = {
                    k     = 25
                    order = "Top"
                    type  = "Auto"
                  }
                  type = "table"
                }
                type = "bar"
              }
            },
          ]
          queryPresentation = {
            initialRollupFilter = {
              mode = "Last"
            }
            limit          = 1000
            linkify        = true
            loadEverything = false
            progressive    = true
            resultKinds = [
              "ResultKindSchema",
            ]
            rollup      = {}
            wantBuckets = 400
          }
          renderType     = "TABLE"
          selectedStepId = null
          serializable   = true
          steps = [
            {
              customName    = "Input"
              customSummary = "database_instance_state"
              datasetQueryId = {
                ignoreCompress = false
                queryId        = null
                resultKinds = [
                  "ResultKindSchema",
                  "ResultKindData",
                  "ResultKindStats",
                ]
                tableTypes = [
                  "TABULAR",
                  "SUMMARY",
                ]
              }
              id                = "step-ng0pqa3s"
              index             = 0
              isPinned          = false
              opal              = []
              queryPresentation = {}
              type              = "InputStep"
            },
            {
              customSummary = ""
              datasetQueryId = {
                ignoreCompress = false
                queryId        = null
                resultKinds = [
                  "ResultKindSchema",
                  "ResultKindData",
                  "ResultKindStats",
                ]
                tableTypes = [
                  "TABULAR",
                  "SUMMARY",
                ]
              }
              id       = "step-c8z4x0v3"
              index    = 1
              isPinned = false
              opal = [
                "exists database_id = @\"filter_Cloud SQL\".database_id",
                "align A_database_instance_state_sum:sum(m(\"database_instance_state\"))",
                "aggregate A_database_instance_state_sum:sum(A_database_instance_state_sum), group_by(instance_state_label)",
              ]
              queryPresentation = {}
              type              = "unknown"
            },
          ]
          type = "table"
          viewModel = {
            railCollapseState = {
              inputsOutputs = false
              minimap       = false
              note          = true
              script        = true
            }
            showTimeRuler = true
            stageTab      = "vis"
          }
        }
        params   = null
        pipeline = <<-EOT
                    exists database_id = @"filter_Cloud SQL".database_id
                    align A_database_instance_state_sum:sum(m("database_instance_state"))
                    aggregate A_database_instance_state_sum:sum(A_database_instance_state_sum), group_by(instance_state_label)
                EOT
      },
      {
        id = "stage-9e63b4hp"
        input = [
          {
            datasetId   = null
            datasetPath = null
            inputName   = "dbResource"
            inputRole   = "Data"
            stageId     = null
          },
          {
            datasetId   = local.cloud_sql_logs_error
            datasetPath = null
            inputName   = "Cloud SQL Logs Error"
            inputRole   = "Data"
            stageId     = null
          },
        ]
        layout = {
          appearance = "VISIBLE"
          dataTableViewState = {
            autoTableHeight              = true
            columnFooterHeight           = 0
            columnHeaderHeight           = 29
            columnOrderOverride          = {}
            columnVisibility             = {}
            columnWidths                 = {}
            containerWidth               = 1504
            contextMenuXCoord            = null
            contextMenuYCoord            = null
            defaultColumnWidth           = 70
            disableFixedLeftColumns      = false
            eventLinkColumnId            = null
            fetchPageSize                = 100
            hasCalculatedColumnWidths    = true
            maxColumnWidth               = 400
            maxMeasuredColumnHeaderWidth = {}
            maxMeasuredColumnWidth       = {}
            maxMeasuredRowHeight         = {}
            minColumnWidth               = 60
            minRowHeight                 = 30
            preserveCellAndRowSelection  = true
            rowHeaderWidth               = 33
            rowHeights                   = {}
            rowSizeIncrement             = 1
            scrollToColumn               = null
            scrollToRow                  = 0
            selection = {
              cells                = {}
              columnSelectSequence = []
              columns              = {}
              highlightState       = {}
              rows                 = {}
              selectionType        = "table"
            }
            summaryColumnOrderOverride = {}
            summaryColumnVisibility    = {}
            tableHeight                = 0
            tableView                  = "TABULAR"
          }
          index = 12
          inputList = [
            {
              inputName   = "dbResource"
              inputRole   = "Data"
              isUserInput = false
              parameterId = "dbResource"
            },
            {
              datasetId   = local.cloud_sql_logs_error
              inputName   = "Cloud SQL Logs Error"
              inputRole   = "Data"
              isUserInput = true
            },
          ]
          label = "Errors"
          managers = [
            {
              id                     = "hp2cuf8g"
              isDisabled             = false
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "3brr3os0"
              isDisabled = false
              type       = "JsonTree"
            },
          ]
          queryPresentation = {
            initialRollupFilter = {
              mode = "Last"
            }
            limit          = 1000
            linkify        = true
            loadEverything = false
            progressive    = true
            resultKinds = [
              "ResultKindSchema",
              "ResultKindData",
              "ResultKindStats",
              "ResultKindProgress",
            ]
            rollup = {}
          }
          renderType     = "TABLE"
          selectedStepId = null
          serializable   = true
          steps = [
            {
              customName    = "Input"
              customSummary = "dbResource"
              datasetQueryId = {
                ignoreCompress = false
                queryId        = null
                resultKinds = [
                  "ResultKindSchema",
                  "ResultKindData",
                  "ResultKindStats",
                ]
                tableTypes = [
                  "TABULAR",
                  "SUMMARY",
                ]
              }
              id                = "step-gula9fpw"
              index             = 0
              isPinned          = false
              opal              = []
              queryPresentation = {}
              type              = "InputStep"
            },
            {
              customName    = "follow (custom)"
              customSummary = ""
              datasetQueryId = {
                ignoreCompress = false
                queryId        = null
                resultKinds = [
                  "ResultKindSchema",
                  "ResultKindData",
                  "ResultKindStats",
                ]
                tableTypes = [
                  "TABULAR",
                  "SUMMARY",
                ]
              }
              id       = "step-374t8dm0"
              index    = 1
              isPinned = false
              opal = [
                "follow database_id = @\"Cloud SQL Logs Error\".database_id",
              ]
              queryPresentation = {}
              type              = "unknown"
            },
          ]
          type = "table"
          viewModel = {
            railCollapseState = {
              inputsOutputs = false
              minimap       = false
              note          = true
              script        = true
            }
            showTimeRuler = true
            stageTab      = "table"
          }
        }
        params   = null
        pipeline = "follow database_id = @\"Cloud SQL Logs Error\".database_id"
      },
      {
        id = "stage-h169l5vk"
        input = [
          {
            datasetId   = null
            datasetPath = null
            inputName   = "dbResource"
            inputRole   = "Data"
            stageId     = null
          },
        ]
        layout = {
          appearance = "VISIBLE"
          dataTableViewState = {
            autoTableHeight    = true
            columnFooterHeight = 0
            columnHeaderHeight = 29
            columnOrderOverride = {
              "0" = "name"
              "2" = "Valid From"
              "3" = "Valid To"
            }
            columnVisibility             = {}
            columnWidths                 = {}
            containerWidth               = 1313
            contextMenuXCoord            = null
            contextMenuYCoord            = null
            defaultColumnWidth           = 70
            disableFixedLeftColumns      = false
            eventLinkColumnId            = null
            fetchPageSize                = 100
            hasCalculatedColumnWidths    = false
            maxColumnWidth               = 400
            maxMeasuredColumnHeaderWidth = {}
            maxMeasuredColumnWidth       = {}
            maxMeasuredRowHeight         = {}
            minColumnWidth               = 60
            minRowHeight                 = 30
            preserveCellAndRowSelection  = true
            rowHeaderWidth               = 50
            rowHeights                   = {}
            rowSizeIncrement             = 1
            scrollToColumn               = null
            scrollToRow                  = 0
            selection = {
              cells                = {}
              columnSelectSequence = []
              columns              = {}
              highlightState       = {}
              rows                 = {}
              selectionType        = "table"
            }
            summaryColumnOrderOverride = {}
            summaryColumnVisibility    = {}
            tableHeight                = 0
            tableView                  = "TABULAR"
          }
          index = 13
          inputList = [
            {
              inputName   = "dbResource"
              inputRole   = "Data"
              isUserInput = false
              parameterId = "dbResource"
            },
          ]
          label = "Zones"
          managers = [
            {
              id                     = "7rvwc9lt"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "e0mkbwu0"
              isDisabled = false
              type       = "Vis"
              vis = {
                config = {
                  innerRadius = 0.6
                  legend = {
                    placement = "right"
                    type      = "list"
                    visible   = true
                  }
                  type = "arc"
                }
                source = {
                  table = {
                    keyField = [
                      "gceZone",
                    ]
                    statsBy = {
                      fn = "count"
                    }
                    timechart = {
                      fn         = "count"
                      resolution = "SINGLE"
                    }
                    transformType = "none"
                    type          = "keyvalue"
                    valueField    = "A_gceZone_count"
                  }
                  topK = {
                    k     = 100
                    order = "Top"
                    type  = "Auto"
                  }
                  type = "table"
                }
                type = "circular"
              }
            },
          ]
          queryPresentation = {
            initialRollupFilter = {
              mode = "Last"
            }
            limit          = 1000
            linkify        = true
            loadEverything = false
            progressive    = true
            resultKinds = [
              "ResultKindSchema",
            ]
            rollup = {}
            sort = [
              {
                ascending  = false
                columnName = "A_gceZone_count"
              },
            ]
            wantBuckets = 1
          }
          renderType     = "TABLE"
          selectedStepId = null
          serializable   = true
          steps = [
            {
              customName    = "Input"
              customSummary = "dbResource"
              datasetQueryId = {
                ignoreCompress = false
                queryId        = null
                resultKinds = [
                  "ResultKindSchema",
                  "ResultKindData",
                  "ResultKindStats",
                ]
                tableTypes = [
                  "TABULAR",
                  "SUMMARY",
                ]
              }
              id                = "step-b0e3x1dr"
              index             = 0
              isPinned          = false
              opal              = []
              queryPresentation = {}
              type              = "InputStep"
            },
            {
              action = {
                params = {
                  expressionList = {
                    expressions = [
                      {
                        autoResolution = true
                        columnId       = "gceZone"
                        dataVis = {
                          config = {
                            innerRadius = 0.6
                            legend = {
                              placement = "right"
                              type      = "list"
                              visible   = true
                            }
                            type = "arc"
                          }
                          source = {
                            table = {
                              keyField = [
                                "gceZone",
                              ]
                              statsBy = {
                                fn = "count"
                              }
                              timechart = {
                                fn         = "count"
                                resolution = "SINGLE"
                              }
                              transformType = "none"
                              type          = "keyvalue"
                              valueField    = "A_gceZone_count"
                            }
                            topK = {
                              order = "Top"
                              type  = "Auto"
                            }
                            type = "table"
                          }
                          type = "circular"
                        }
                        filterActions = []
                        groupBy = [
                          "gceZone",
                        ]
                        id              = "datasetQueryExpression-tu03bdo5"
                        lookupActions   = []
                        summarizeVerb   = "statsby"
                        summaryFunction = "count"
                        summaryMode     = "single"
                        type            = "datasetQueryExpression"
                        valueColumnId   = "A_gceZone_count"
                      },
                    ]
                    multiExpression = {
                      filterActions = []
                      id            = "multiExpression-kttnjkbq"
                      lookupActions = []
                      type          = "multiExpression"
                    }
                    selectedExpressionIds = [
                      "datasetQueryExpression-tu03bdo5",
                    ]
                  }
                }
                summary = null
                type    = "ExpressionBuilder"
              }
              customSummary = "Expression Builder"
              datasetQueryId = {
                ignoreCompress = false
                queryId        = null
                resultKinds = [
                  "ResultKindSchema",
                  "ResultKindData",
                  "ResultKindStats",
                ]
                tableTypes = [
                  "TABULAR",
                  "SUMMARY",
                ]
              }
              id       = "step-0qiafic1"
              index    = 1
              isPinned = false
              opal = [
                "statsby A_gceZone_count:count(gceZone), group_by(gceZone)",
              ]
              queryPresentation = {}
              type              = "unknown"
            },
          ]
          type = "table"
          viewModel = {
            railCollapseState = {
              inputsOutputs = false
              minimap       = false
              note          = true
              script        = true
            }
            showTimeRuler = true
            stageTab      = "vis"
          }
        }
        params   = null
        pipeline = "statsby A_gceZone_count:count(gceZone), group_by(gceZone)"
      },
      {
        id = "stage-bv986tcd"
        input = [
          {
            datasetId   = null
            datasetPath = null
            inputName   = "dbResource"
            inputRole   = "Data"
            stageId     = null
          },
        ]
        layout = {
          appearance = "VISIBLE"
          dataTableViewState = {
            autoTableHeight    = true
            columnFooterHeight = 0
            columnHeaderHeight = 29
            columnOrderOverride = {
              "0" = "name"
              "2" = "Valid From"
              "3" = "Valid To"
            }
            columnVisibility             = {}
            columnWidths                 = {}
            containerWidth               = 1504
            contextMenuXCoord            = null
            contextMenuYCoord            = null
            defaultColumnWidth           = 70
            disableFixedLeftColumns      = false
            eventLinkColumnId            = null
            fetchPageSize                = 100
            hasCalculatedColumnWidths    = true
            maxColumnWidth               = 400
            maxMeasuredColumnHeaderWidth = {}
            maxMeasuredColumnWidth       = {}
            maxMeasuredRowHeight         = {}
            minColumnWidth               = 60
            minRowHeight                 = 30
            preserveCellAndRowSelection  = true
            rowHeaderWidth               = 33
            rowHeights                   = {}
            rowSizeIncrement             = 1
            scrollToColumn               = null
            scrollToRow                  = 0
            selection = {
              cells = {
                name = {
                  "4" = true
                }
              }
              columnSelectSequence = []
              columns              = {}
              highlightState       = {}
              rows                 = {}
              selectionType        = "cell"
            }
            summaryColumnOrderOverride = {}
            summaryColumnVisibility    = {}
            tableHeight                = 0
            tableView                  = "TABULAR"
          }
          index = 14
          inputList = [
            {
              inputName   = "dbResource"
              inputRole   = "Data"
              isUserInput = false
              parameterId = "dbResource"
            },
          ]
          label = "Database List"
          managers = [
            {
              id                     = "lvkob97u"
              isDisabled             = false
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "s332gcqs"
              isDisabled = false
              type       = "JsonTree"
            },
          ]
          queryPresentation = {
            initialRollupFilter = {
              mode = "Last"
            }
            limit          = 1000
            linkify        = true
            loadEverything = false
            progressive    = true
            resultKinds = [
              "ResultKindStats",
              "ResultKindData",
              "ResultKindSchema",
              "ResultKindProgress",
            ]
            rollup = {}
          }
          renderType     = "TABLE"
          selectedStepId = null
          serializable   = true
          steps = [
            {
              customName    = "Input"
              customSummary = "dbResource"
              datasetQueryId = {
                ignoreCompress = false
                queryId        = null
                resultKinds = [
                  "ResultKindSchema",
                  "ResultKindData",
                  "ResultKindStats",
                ]
                tableTypes = [
                  "TABULAR",
                  "SUMMARY",
                ]
              }
              id                = "step-za0t1cme"
              index             = 0
              isPinned          = false
              opal              = []
              queryPresentation = {}
              type              = "InputStep"
            },
            {
              customName    = "pick_col (custom)"
              customSummary = ""
              datasetQueryId = {
                ignoreCompress = false
                queryId        = null
                resultKinds = [
                  "ResultKindSchema",
                  "ResultKindData",
                  "ResultKindStats",
                ]
                tableTypes = [
                  "TABULAR",
                  "SUMMARY",
                ]
              }
              id       = "step-sjbhpn8c"
              index    = 1
              isPinned = false
              opal = [
                "pick_col ",
                "\tdatabase_id,",
                "    databaseVersion,",
                "    name,",
                "    @.\"Valid From\",",
                "    @.\"Valid To\"",
                "    ",
                "colshow database_id: false",
              ]
              queryPresentation = {}
              type              = "unknown"
            },
          ]
          type = "table"
          viewModel = {
            railCollapseState = {
              inputsOutputs = false
              minimap       = false
              note          = true
              script        = true
            }
            showTimeRuler = true
            stageTab      = "table"
          }
        }
        params   = null
        pipeline = <<-EOT
                    pick_col 
                    	database_id,
                        databaseVersion,
                        name,
                        @."Valid From",
                        @."Valid To"
                        
                    colshow database_id: false
                EOT
      },
      {
        id = "stage-perdox7c"
        input = [
          {
            datasetId   = local.cloud_sql_metrics
            datasetPath = null
            inputName   = "database_disk_bytes_used_by_data_type"
            inputRole   = "Data"
            stageId     = null
          },
          {
            datasetId   = null
            datasetPath = null
            inputName   = "dbResource"
            inputRole   = "Data"
            stageId     = null
          },
          {
            datasetId   = null
            datasetPath = null
            inputName   = "filter_Cloud SQL Metrics"
            inputRole   = "Data"
            stageId     = null
          },
        ]
        layout = {
          appearance = "VISIBLE"
          dataTableViewState = {
            autoTableHeight    = true
            columnFooterHeight = 0
            columnHeaderHeight = 29
            columnOrderOverride = {
              "0" = "name"
              "1" = "database_id"
              "2" = "valid_from"
              "3" = "valid_to"
              "5" = "Valid To"
            }
            columnVisibility             = {}
            columnWidths                 = {}
            containerWidth               = 1313
            contextMenuXCoord            = null
            contextMenuYCoord            = null
            defaultColumnWidth           = 70
            disableFixedLeftColumns      = false
            eventLinkColumnId            = null
            fetchPageSize                = 100
            hasCalculatedColumnWidths    = false
            maxColumnWidth               = 400
            maxMeasuredColumnHeaderWidth = {}
            maxMeasuredColumnWidth       = {}
            maxMeasuredRowHeight         = {}
            minColumnWidth               = 60
            minRowHeight                 = 30
            preserveCellAndRowSelection  = true
            rowHeaderWidth               = 50
            rowHeights                   = {}
            rowSizeIncrement             = 1
            scrollToColumn               = null
            scrollToRow                  = 0
            selection = {
              cells                = {}
              columnSelectSequence = []
              columns              = {}
              highlightState       = {}
              rows                 = {}
              selectionType        = "table"
            }
            summaryColumnOrderOverride = {}
            summaryColumnVisibility    = {}
            tableHeight                = 0
            tableView                  = "TABULAR"
          }
          index = 15
          inputList = [
            {
              datasetId   = local.cloud_sql_metrics
              inputName   = "database_disk_bytes_used_by_data_type"
              inputRole   = "Data"
              isUserInput = false
            },
            {
              inputName   = "dbResource"
              inputRole   = "Data"
              isUserInput = false
              parameterId = "dbResource"
            },
          ]
          label = "Disk Usage By Type"
          managers = [
            {
              id                     = "d7kdphj6"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "t6x5av1a"
              isDisabled = false
              type       = "Vis"
              vis = {
                config = {
                  color         = "Default"
                  hideGridLines = true
                  legend = {
                    placement = "right"
                    type      = "list"
                    visible   = false
                  }
                  type = "xy"
                  xConfig = {
                    visible = true
                  }
                  yConfig = {
                    unit    = "bit"
                    visible = true
                  }
                }
                source = {
                  table = {
                    groupFields = [
                      "metric_labels",
                      "database_id",
                    ]
                    transformType = "none"
                    type          = "xy"
                    x             = "valid_from"
                    y             = "A_database_disk_bytes_used_by_data_type_sum"
                  }
                  topK = {
                    k     = 25
                    order = "Top"
                    type  = "Auto"
                  }
                  type = "table"
                }
                type = "timeseries"
              }
            },
          ]
          queryPresentation = {
            initialRollupFilter = {
              mode = "Last"
            }
            limit          = 1000
            linkify        = true
            loadEverything = false
            progressive    = true
            resultKinds = [
              "ResultKindSchema",
            ]
            rollup      = {}
            wantBuckets = 400
          }
          renderType     = "TABLE"
          selectedStepId = null
          serializable   = true
          steps = [
            {
              customName    = "Input"
              customSummary = "database_disk_bytes_used_by_data_type"
              datasetQueryId = {
                ignoreCompress = false
                queryId        = null
                resultKinds = [
                  "ResultKindSchema",
                  "ResultKindData",
                  "ResultKindStats",
                ]
                tableTypes = [
                  "TABULAR",
                  "SUMMARY",
                ]
              }
              id                = "step-dh14h8pn"
              index             = 0
              isPinned          = false
              opal              = []
              queryPresentation = {}
              type              = "InputStep"
            },
            {
              action = {
                params = {
                  expressionList = {
                    expressions = [
                      {
                        autoResolution = true
                        dataVis = {
                          config = {
                            color         = "Default"
                            hideGridLines = true
                            legend = {
                              placement = "right"
                              type      = "list"
                              visible   = false
                            }
                            type = "xy"
                            xConfig = {
                              visible = true
                            }
                            yConfig = {
                              unit    = "bit"
                              visible = true
                            }
                          }
                          source = {
                            table = {
                              groupFields = [
                                "metric_labels",
                                "database_id",
                              ]
                              transformType = "none"
                              type          = "xy"
                              x             = "valid_from"
                              y             = "A_database_disk_bytes_used_by_data_type_sum"
                            }
                            topK = {
                              order = "Top"
                              type  = "Auto"
                            }
                            type = "table"
                          }
                          type = "timeseries"
                        }
                        disableAggregate = false
                        filterActions = [
                          {
                            params = {
                              foreignKey = {
                                __typename = "ForeignKey"
                                dstFields = [
                                  "database_id",
                                ]
                                label = "Cloud SQL Metrics"
                                srcFields = [
                                  "database_id",
                                ]
                                targetDataset    = local.cloud_sql_instance
                                targetStageLabel = null
                                type             = "foreign"
                              }
                              joinInput = {
                                inputName   = "dbResource"
                                inputRole   = "Data"
                                isUserInput = false
                                parameterId = "dbResource"
                              }
                            }
                            summary = null
                            type    = "ExistsInFilter"
                          },
                        ]
                        frameDuration = {
                          num  = 2
                          unit = "minute"
                        }
                        groupBy = [
                          "metric_labels",
                          "database_id",
                        ]
                        id = "metricExpression-o3laree6"
                        inputSource = {
                          stageId = "stage-perdox7c"
                        }
                        lookupActions = []
                        metric = {
                          aggregate   = "sum"
                          datasetId   = local.cloud_sql_metrics
                          description = "Auto Detected Metric"
                          heuristics = {
                            __typename = "MetricHeuristics"
                            tags = [
                              {
                                __typename = "MetricTag"
                                column     = "database_id"
                                path       = ""
                              },
                              {
                                __typename = "MetricTag"
                                column     = "database_platform"
                                path       = ""
                              },
                              {
                                __typename = "MetricTag"
                                column     = "label"
                                path       = ""
                              },
                              {
                                __typename = "MetricTag"
                                column     = "metric_category"
                                path       = ""
                              },
                              {
                                __typename = "MetricTag"
                                column     = "metric_kind"
                                path       = ""
                              },
                              {
                                __typename = "MetricTag"
                                column     = "metric_kind_text"
                                path       = ""
                              },
                              {
                                __typename = "MetricTag"
                                column     = "metric_type"
                                path       = ""
                              },
                              {
                                __typename = "MetricTag"
                                column     = "project_id"
                                path       = ""
                              },
                              {
                                __typename = "MetricTag"
                                column     = "region"
                                path       = ""
                              },
                              {
                                __typename = "MetricTag"
                                column     = "value_type"
                                path       = ""
                              },
                              {
                                __typename = "MetricTag"
                                column     = "value_type_text"
                                path       = ""
                              },
                              {
                                __typename = "MetricTag"
                                column     = "instance_state_label"
                                path       = ""
                              },
                              {
                                __typename = "MetricTag"
                                column     = "metric_labels"
                                path       = "data_type"
                              },
                            ]
                            validLinkLabels = [
                              "Cloud SQL Metrics",
                            ]
                          }
                          interval    = null
                          name        = "database_disk_bytes_used_by_data_type"
                          rollup      = "sum"
                          type        = "gauge"
                          unit        = "bit"
                          userDefined = false
                        }
                        metricLink = {
                          __typename = "ForeignKey"
                          dstFields = [
                            "database_id",
                          ]
                          label = "Cloud SQL Metrics"
                          srcFields = [
                            "database_id",
                          ]
                          targetDataset    = local.cloud_sql_instance
                          targetStageLabel = null
                          type             = "foreign"
                        }
                        metricLinkInputSource = {
                          inputName   = "dbResource"
                          inputRole   = "Data"
                          isUserInput = false
                          parameterId = "dbResource"
                        }
                        showAlignment  = false
                        showResolution = false
                        summaryMode    = "over-time"
                        type           = "metricExpression"
                        valueColumnId  = "A_database_disk_bytes_used_by_data_type_sum"
                      },
                    ]
                    multiExpression = {
                      filterActions = []
                      id            = "multiExpression-57yqxhei"
                      lookupActions = []
                      type          = "multiExpression"
                    }
                    selectedExpressionIds = [
                      "metricExpression-o3laree6",
                    ]
                  }
                }
                summary = null
                type    = "ExpressionBuilder"
              }
              customSummary = "Expression Builder"
              datasetQueryId = {
                ignoreCompress = false
                queryId        = null
                resultKinds = [
                  "ResultKindSchema",
                  "ResultKindData",
                  "ResultKindStats",
                ]
                tableTypes = [
                  "TABULAR",
                  "SUMMARY",
                ]
              }
              id       = "step-6xma9rx6"
              index    = 1
              isPinned = false
              opal = [
                "exists database_id = @\"filter_Cloud SQL Metrics\".database_id",
                "align frame(back: 2m), A_database_disk_bytes_used_by_data_type_sum:sum(m(\"database_disk_bytes_used_by_data_type\"))",
                "aggregate A_database_disk_bytes_used_by_data_type_sum:sum(A_database_disk_bytes_used_by_data_type_sum), group_by(metric_labels, database_id)",
              ]
              queryPresentation = {}
              type              = "unknown"
            },
          ]
          type = "table"
          viewModel = {
            railCollapseState = {
              inputsOutputs = false
              minimap       = false
              note          = true
              script        = true
            }
            showTimeRuler = true
            stageTab      = "vis"
          }
        }
        params   = null
        pipeline = <<-EOT
                    exists database_id = @"filter_Cloud SQL Metrics".database_id
                    align frame(back: 2m), A_database_disk_bytes_used_by_data_type_sum:sum(m("database_disk_bytes_used_by_data_type"))
                    aggregate A_database_disk_bytes_used_by_data_type_sum:sum(A_database_disk_bytes_used_by_data_type_sum), group_by(metric_labels, database_id)
                EOT
      },
      {
        id = "stage-wy53129b"
        input = [
          {
            datasetId   = local.cloud_sql_metrics_wide
            datasetPath = null
            inputName   = "percent_disk_used"
            inputRole   = "Data"
            stageId     = null
          },
          {
            datasetId   = null
            datasetPath = null
            inputName   = "dbResource"
            inputRole   = "Data"
            stageId     = null
          },
          {
            datasetId   = null
            datasetPath = null
            inputName   = "filter_Cloud SQL Metrics Wide"
            inputRole   = "Data"
            stageId     = null
          },
        ]
        layout = {
          appearance = "VISIBLE"
          dataTableViewState = {
            autoTableHeight    = true
            columnFooterHeight = 0
            columnHeaderHeight = 29
            columnOrderOverride = {
              "0" = "database_id"
              "1" = "valid_from"
              "2" = "valid_to"
              "3" = "name"
              "4" = "Valid From"
              "5" = "Valid To"
            }
            columnVisibility             = {}
            columnWidths                 = {}
            containerWidth               = 1313
            contextMenuXCoord            = null
            contextMenuYCoord            = null
            defaultColumnWidth           = 70
            disableFixedLeftColumns      = false
            eventLinkColumnId            = null
            fetchPageSize                = 100
            hasCalculatedColumnWidths    = false
            maxColumnWidth               = 400
            maxMeasuredColumnHeaderWidth = {}
            maxMeasuredColumnWidth       = {}
            maxMeasuredRowHeight         = {}
            minColumnWidth               = 60
            minRowHeight                 = 30
            preserveCellAndRowSelection  = true
            rowHeaderWidth               = 50
            rowHeights                   = {}
            rowSizeIncrement             = 1
            scrollToColumn               = null
            scrollToRow                  = 0
            selection = {
              cells                = {}
              columnSelectSequence = []
              columns              = {}
              highlightState       = {}
              rows                 = {}
              selectionType        = "table"
            }
            summaryColumnOrderOverride = {}
            summaryColumnVisibility    = {}
            tableHeight                = 0
            tableView                  = "TABULAR"
          }
          index = 16
          inputList = [
            {
              datasetId   = local.cloud_sql_metrics_wide
              inputName   = "percent_disk_used"
              inputRole   = "Data"
              isUserInput = false
            },
            {
              inputName   = "dbResource"
              inputRole   = "Data"
              isUserInput = false
              parameterId = "dbResource"
            },
            {
              inputName   = "filter_Cloud SQL Metrics Wide"
              inputRole   = "Data"
              isUserInput = true
              parameterId = "dbResource"
            },
          ]
          label = "Percent Disk Used"
          managers = [
            {
              id                     = "7xb4iip9"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "kahpojid"
              isDisabled = false
              type       = "Vis"
              vis = {
                config = {
                  color         = "Default"
                  hideGridLines = true
                  legend = {
                    placement = "right"
                    type      = "list"
                    visible   = false
                  }
                  type = "xy"
                  xConfig = {
                    visible = true
                  }
                  yConfig = {
                    unit    = ""
                    visible = true
                  }
                }
                source = {
                  table = {
                    groupFields = [
                      "database_id",
                    ]
                    transformType = "none"
                    type          = "xy"
                    x             = "valid_from"
                    y             = "A_percent_disk_used_sum"
                  }
                  topK = {
                    k     = 25
                    order = "Top"
                    type  = "Auto"
                  }
                  type = "table"
                }
                type = "timeseries"
              }
            },
          ]
          queryPresentation = {
            initialRollupFilter = {
              mode = "Last"
            }
            limit          = 1000
            linkify        = true
            loadEverything = false
            progressive    = true
            resultKinds = [
              "ResultKindSchema",
            ]
            rollup      = {}
            wantBuckets = 400
          }
          renderType     = "TABLE"
          selectedStepId = null
          serializable   = true
          steps = [
            {
              customName    = "Input"
              customSummary = "percent_disk_used"
              datasetQueryId = {
                ignoreCompress = false
                queryId        = null
                resultKinds = [
                  "ResultKindSchema",
                  "ResultKindData",
                  "ResultKindStats",
                ]
                tableTypes = [
                  "TABULAR",
                  "SUMMARY",
                ]
              }
              id                = "step-nfimyv99"
              index             = 0
              isPinned          = false
              opal              = []
              queryPresentation = {}
              type              = "InputStep"
            },
            {
              customSummary = ""
              datasetQueryId = {
                ignoreCompress = false
                queryId        = null
                resultKinds = [
                  "ResultKindSchema",
                  "ResultKindData",
                  "ResultKindStats",
                ]
                tableTypes = [
                  "TABULAR",
                  "SUMMARY",
                ]
              }
              id       = "step-blddovzv"
              index    = 1
              isPinned = false
              opal = [
                "exists database_id = @\"filter_Cloud SQL Metrics Wide\".database_id",
                "align A_percent_disk_used_sum:avg(m(\"percent_disk_used\"))",
                "aggregate A_percent_disk_used_sum:sum(A_percent_disk_used_sum), group_by(database_id)",
              ]
              queryPresentation = {}
              type              = "unknown"
            },
          ]
          type = "table"
          viewModel = {
            railCollapseState = {
              inputsOutputs = false
              minimap       = false
              note          = true
              script        = true
            }
            showTimeRuler = true
            stageTab      = "vis"
          }
        }
        params   = null
        pipeline = <<-EOT
                    exists database_id = @"filter_Cloud SQL Metrics Wide".database_id
                    align A_percent_disk_used_sum:avg(m("percent_disk_used"))
                    aggregate A_percent_disk_used_sum:sum(A_percent_disk_used_sum), group_by(database_id)
                EOT
      },
      {
        id = "stage-9zde4fcc"
        input = [
          {
            datasetId   = local.cloud_sql_instance
            datasetPath = null
            inputName   = "GCP/Cloud SQL Jobs"
            inputRole   = "Data"
            stageId     = null
          },
        ]
        layout = {
          appearance = "HIDDEN"
          index      = 17
          inputList = [
            {
              datasetId   = local.cloud_sql_instance
              inputName   = "GCP/Cloud SQL Jobs"
              inputRole   = "Data"
              isUserInput = false
            },
          ]
          managers        = []
          pipelineComment = "Filtered Dataset Controlled Filter Stage"
          queryPresentation = {
            initialRollupFilter = {
              mode = "Last"
            }
            linkify     = true
            progressive = true
            resultKinds = [
              "ResultKindSchema",
              "ResultKindStats",
            ]
            rollup = {}
          }
          selectedStepId = null
          serializable   = true
          steps = [
            {
              customName    = "Input"
              customSummary = "GCP/Cloud SQL Jobs"
              datasetQueryId = {
                ignoreCompress = false
                queryId        = null
                resultKinds = [
                  "ResultKindSchema",
                  "ResultKindData",
                  "ResultKindStats",
                ]
                tableTypes = [
                  "TABULAR",
                  "SUMMARY",
                ]
              }
              id       = "step-1e9iz4cc"
              index    = 0
              isPinned = false
              opal = [
                "// Filtered Dataset Controlled Filter Stage",
              ]
              queryPresentation = {}
              type              = "InputStep"
            },
          ]
          type = "table"
          viewModel = {
            railCollapseState = {
              inputsOutputs = false
              minimap       = false
              note          = true
              script        = true
            }
            showTimeRuler = true
            stageTab      = "table"
          }
        }
        params   = null
        pipeline = "// Filtered Dataset Controlled Filter Stage"
      },
      {
        id = "stage-dbityb73"
        input = [
          {
            datasetId   = local.cloud_sql_metrics
            datasetPath = null
            inputName   = "database_instance_state_from_GCP/Cloud SQL Metrics"
            inputRole   = "Data"
            stageId     = null
          },
        ]
        layout = {
          appearance = "VISIBLE"
          dataTableViewState = {
            autoTableHeight    = true
            columnFooterHeight = 0
            columnHeaderHeight = 29
            columnOrderOverride = {
              "0" = "database_id"
              "1" = "valid_from"
              "2" = "valid_to"
            }
            columnVisibility             = {}
            columnWidths                 = {}
            containerWidth               = null
            contextMenuXCoord            = null
            contextMenuYCoord            = null
            defaultColumnWidth           = 70
            disableFixedLeftColumns      = false
            eventLinkColumnId            = null
            fetchPageSize                = 100
            hasCalculatedColumnWidths    = false
            maxColumnWidth               = 400
            maxMeasuredColumnHeaderWidth = {}
            maxMeasuredColumnWidth       = {}
            maxMeasuredRowHeight         = {}
            minColumnWidth               = 60
            minRowHeight                 = 30
            preserveCellAndRowSelection  = true
            rowHeaderWidth               = 50
            rowHeights                   = {}
            rowSizeIncrement             = 1
            scrollToColumn               = null
            scrollToRow                  = 0
            selection = {
              cells                = {}
              columnSelectSequence = []
              columns              = {}
              highlightState       = {}
              rows                 = {}
              selectionType        = "table"
            }
            summaryColumnOrderOverride = {}
            summaryColumnVisibility    = {}
            tableHeight                = 0
            tableView                  = "TABULAR"
          }
          index     = 18
          inputList = []
          label     = "Current State"
          managers = [
            {
              id         = "ik6ixlzc"
              isDisabled = false
              type       = "Vis"
              vis = {
                config = {
                  areaFillType = "SolidFill"
                  legend = {
                    placement = "right"
                    type      = "list"
                    visible   = true
                  }
                  type                = "bar"
                  xAxisLabelPlacement = "horizontal"
                  xConfig = {
                    visible = true
                  }
                  yConfig = {
                    visible = true
                  }
                }
                source = {
                  table = {
                    groupFields = [
                      "instance_state_label",
                    ]
                    statsBy = {
                      fn = "avg"
                    }
                    timechart = {
                      fn         = "avg"
                      fnArgs     = null
                      resolution = "AUTO"
                    }
                    transformType = "none"
                    type          = "xy"
                    x             = "valid_from"
                    y             = "metric_database_instance_state_jx859pfh"
                  }
                  topK = {
                    k     = 25
                    order = "Top"
                    type  = "Auto"
                  }
                  type = "table"
                }
                type = "bar"
              }
            },
          ]
          queryPresentation = {
            initialRollupFilter = {
              mode = "Last"
            }
            resultKinds = [
              "ResultKindSchema",
            ]
            rollup      = {}
            wantBuckets = 400
          }
          selectedStepId = null
          serializable   = true
          steps = [
            {
              customName    = "Input"
              customSummary = ""
              datasetQueryId = {
                ignoreCompress = false
                queryId        = null
                resultKinds = [
                  "ResultKindSchema",
                  "ResultKindData",
                  "ResultKindStats",
                ]
                tableTypes = [
                  "TABULAR",
                  "SUMMARY",
                ]
              }
              id                = "step-1jizmkxz"
              index             = 0
              isPinned          = false
              opal              = []
              queryPresentation = {}
              type              = "InputStep"
            },
            {
              action = {
                params = {
                  expressionList = {
                    expressions = [
                      {
                        dataVis = {
                          config = {
                            areaFillType = "SolidFill"
                            legend = {
                              placement = "right"
                              type      = "list"
                              visible   = true
                            }
                            type                = "bar"
                            xAxisLabelPlacement = "horizontal"
                            xConfig = {
                              visible = true
                            }
                            yConfig = {
                              visible = true
                            }
                          }
                          source = {
                            table = {
                              groupFields = [
                                "instance_state_label",
                              ]
                              statsBy = {
                                fn = "avg"
                              }
                              timechart = {
                                fn         = "avg"
                                fnArgs     = null
                                resolution = "AUTO"
                              }
                              transformType = "none"
                              type          = "xy"
                              x             = "valid_from"
                              y             = "metric_database_instance_state_jx859pfh"
                            }
                            topK = {
                              order = "Top"
                              type  = "Auto"
                            }
                            type = "table"
                          }
                          type = "bar"
                        }
                        disableAggregate = false
                        filterActions    = []
                        frameDuration = {
                          num  = 2
                          unit = "minute"
                        }
                        groupBy = [
                          "instance_state_label",
                        ]
                        id            = "metric-expression-l3gdvq6y"
                        lookupActions = []
                        metric = {
                          aggregate   = "sum"
                          datasetId   = local.cloud_sql_metrics
                          description = "Auto Detected Metric"
                          heuristics = {
                            __typename = "MetricHeuristics"
                            tags = [
                              {
                                __typename = "MetricTag"
                                column     = "instance_state_label"
                                path       = ""
                              },
                              {
                                __typename = "MetricTag"
                                column     = "database_id"
                                path       = ""
                              },
                              {
                                __typename = "MetricTag"
                                column     = "database_platform"
                                path       = ""
                              },
                              {
                                __typename = "MetricTag"
                                column     = "label"
                                path       = ""
                              },
                              {
                                __typename = "MetricTag"
                                column     = "metric_category"
                                path       = ""
                              },
                              {
                                __typename = "MetricTag"
                                column     = "metric_kind"
                                path       = ""
                              },
                              {
                                __typename = "MetricTag"
                                column     = "metric_kind_text"
                                path       = ""
                              },
                              {
                                __typename = "MetricTag"
                                column     = "metric_type"
                                path       = ""
                              },
                              {
                                __typename = "MetricTag"
                                column     = "project_id"
                                path       = ""
                              },
                              {
                                __typename = "MetricTag"
                                column     = "region"
                                path       = ""
                              },
                              {
                                __typename = "MetricTag"
                                column     = "value_type"
                                path       = ""
                              },
                              {
                                __typename = "MetricTag"
                                column     = "value_type_text"
                                path       = ""
                              },
                              {
                                __typename = "MetricTag"
                                column     = "metric_labels"
                                path       = "state"
                              },
                            ]
                            validLinkLabels = [
                              "Cloud SQL Metrics",
                            ]
                          }
                          interval    = null
                          name        = "database_instance_state"
                          rollup      = "avg"
                          type        = "gauge"
                          unit        = ""
                          userDefined = false
                        }
                        showAlignment  = false
                        showResolution = false
                        summaryMode    = "over-time"
                        type           = "metricExpression"
                        valueColumnId  = "metric_database_instance_state_jx859pfh"
                      },
                    ]
                    multiExpression = {
                      filterActions = []
                      id            = "multiExpression-xmz9qsh5"
                      lookupActions = []
                      type          = "multiExpression"
                    }
                    selectedExpressionIds = [
                      "metric-expression-l3gdvq6y",
                    ]
                  }
                }
                summary = null
                type    = "ExpressionBuilder"
              }
              customSummary = "Expression Builder"
              datasetQueryId = {
                ignoreCompress = false
                queryId        = null
                resultKinds = [
                  "ResultKindSchema",
                  "ResultKindData",
                  "ResultKindStats",
                ]
                tableTypes = [
                  "TABULAR",
                  "SUMMARY",
                ]
              }
              id       = "step-fm81j4wd"
              index    = 1
              isPinned = false
              opal = [
                "align frame(back: 2m), metric_database_instance_state_jx859pfh:avg(m(\"database_instance_state\"))",
                "aggregate metric_database_instance_state_jx859pfh:sum(metric_database_instance_state_jx859pfh), group_by(instance_state_label)",
              ]
              queryPresentation = {}
              type              = "unknown"
            },
          ]
          type = "table"
          viewModel = {
            railCollapseState = {
              inputsOutputs = false
              minimap       = false
              note          = true
              script        = true
            }
            showTimeRuler = true
            stageTab      = "vis"
          }
        }
        params   = null
        pipeline = <<-EOT
                    align frame(back: 2m), metric_database_instance_state_jx859pfh:avg(m("database_instance_state"))
                    aggregate metric_database_instance_state_jx859pfh:sum(metric_database_instance_state_jx859pfh), group_by(instance_state_label)
                EOT
      },
    ]
  )
  workspace = local.workspace
}

