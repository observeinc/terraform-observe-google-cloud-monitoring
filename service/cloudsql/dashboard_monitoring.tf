
# terraform import observe_dashboard.cloud_sql_monitoring 41145294
resource "observe_dashboard" "cloud_sql_monitoring" {
  count = local.enable_metrics ? 1 : 0
  layout = jsonencode(
    {
      gridLayout = {
        sections = [
          {
            card = {
              cardType = "section"
              closed   = false
              id       = "section-wuw4j2eb"
              title    = "Dashboard Content"
            }
            items        = []
            lastModified = 1657240575024
          },
          {
            card = {
              cardType = "section"
              closed   = false
              id       = "card-rpqqyqcw"
              title    = "Summary"
            }
            items = [
              {
                card = {
                  cardType = "stage"
                  id       = "card-ficrlmsm"
                  stageId  = "stage-2iknse1z"
                }
                layout = {
                  h           = 10
                  i           = "card-ficrlmsm"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 3
                  x           = 0
                  y           = 0
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-0ps6gj5i"
                  stageId  = "stage-h169l5vk"
                }
                layout = {
                  h           = 10
                  i           = "card-0ps6gj5i"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 3
                  x           = 3
                  y           = 0
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-4dhmql3r"
                  stageId  = "stage-gcd1nb81"
                }
                layout = {
                  h           = 10
                  i           = "card-4dhmql3r"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 3
                  x           = 6
                  y           = 0
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-ceys4rth"
                  stageId  = "stage-zx1ijn1u"
                  title    = "Installed Version"
                }
                layout = {
                  h           = 10
                  i           = "card-ceys4rth"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 3
                  x           = 9
                  y           = 0
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-w0jsqql7"
                  stageId  = "stage-pe9mq2em"
                }
                layout = {
                  h           = 13
                  i           = "card-w0jsqql7"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 7
                  x           = 0
                  y           = 10
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-9ma40tce"
                  stageId  = "stage-bv986tcd"
                }
                layout = {
                  h           = 24
                  i           = "card-9ma40tce"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 5
                  x           = 7
                  y           = 10
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-icvxavrk"
                  stageId  = "stage-9e63b4hp"
                }
                layout = {
                  h           = 11
                  i           = "card-icvxavrk"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 7
                  x           = 0
                  y           = 23
                }
              },
            ]
            lastModified = 1657240869975
          },
          {
            card = {
              cardType = "section"
              closed   = false
              id       = "card-tzs7rt28"
              title    = "Monitoring"
            }
            items = [
              {
                card = {
                  cardType = "stage"
                  id       = "card-pfowjtb2"
                  stageId  = "stage-bxss6s26"
                }
                layout = {
                  h           = 21
                  i           = "card-pfowjtb2"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 7
                  x           = 0
                  y           = 0
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-5uhumddp"
                  stageId  = "stage-urrvnw15"
                  title    = "Network Bytes Sent"
                }
                layout = {
                  h           = 11
                  i           = "card-5uhumddp"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 5
                  x           = 7
                  y           = 0
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-hs7zxyku"
                  stageId  = "stage-mpne8ae1"
                  title    = "Network Bytes Received"
                }
                layout = {
                  h           = 10
                  i           = "card-hs7zxyku"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 5
                  x           = 7
                  y           = 9
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-hlazpqqf"
                  stageId  = "stage-6qjozjl6"
                  title    = "Disk Read Operations"
                }
                layout = {
                  h           = 8
                  i           = "card-hlazpqqf"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 12
                  x           = 0
                  y           = 19
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-30lvhmz6"
                  stageId  = "stage-1zwm1yf7"
                  title    = "Disk Write Operations"
                }
                layout = {
                  h           = 8
                  i           = "card-30lvhmz6"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 12
                  x           = 0
                  y           = 27
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-237mdmxw"
                  stageId  = "stage-wy53129b"
                }
                layout = {
                  h           = 12
                  i           = "card-237mdmxw"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 12
                  x           = 0
                  y           = 35
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-n0hfgwy2"
                  stageId  = "stage-perdox7c"
                }
                layout = {
                  h           = 12
                  i           = "card-n0hfgwy2"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 12
                  x           = 0
                  y           = 47
                }
              },
            ]
          },
          {
            card = {
              cardType = "section"
              closed   = false
              id       = "card-8w7v9p1w"
              title    = "System"
            }
            items = [
              {
                card = {
                  cardType = "stage"
                  id       = "card-d2u8px48"
                  stageId  = "stage-m3remp1v"
                  title    = "Disk Bytes Used"
                }
                layout = {
                  h           = 11
                  i           = "card-d2u8px48"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 5
                  x           = 7
                  y           = 0
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-64vrxoc6"
                  stageId  = "stage-x113jq90"
                  title    = "CPU Utilization"
                }
                layout = {
                  h           = 22
                  i           = "card-64vrxoc6"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 7
                  x           = 0
                  y           = 0
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-kl464mcf"
                  stageId  = "stage-5g6dfyg1"
                  title    = "Disk Quota"
                }
                layout = {
                  h           = 11
                  i           = "card-kl464mcf"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 5
                  x           = 7
                  y           = 0
                }
              },
            ]
          },
          {
            card = {
              cardType = "section"
              closed   = false
              id       = "card-fmre7o05"
              title    = "Documentation"
            }
            items = [
              {
                card = {
                  cardType = "text"
                  id       = "card-prktimcl"
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
                  h           = 34
                  i           = "card-prktimcl"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 6
                  x           = 0
                  y           = 0
                }
              },
              {
                card = {
                  cardType = "text"
                  id       = "card-98advz0r"
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
                  h           = 34
                  i           = "card-98advz0r"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 6
                  x           = 6
                  y           = 0
                }
              },
            ]
            lastModified = 1660348749956
          },
        ]
      }
      stageListLayout = {
        isModified = false
        parameters = [
          {
            defaultValue = {
              datasetref = {
                datasetId = "${local.cloud_sql_instance}"
              }
            }
            id   = "dbResource"
            name = "Cloud SQL Instance"
            valueKind = {
              type = "DATASETREF"
            }
            viewType = "input"
          },
        ]
        selectedStageId = "stage-bxss6s26"
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
  name = local.dashboard_name_monitoring
  parameters = jsonencode(
    [
      {
        defaultValue = {
          array = null
          bool  = null
          datasetref = {
            datasetId   = "${local.cloud_sql_instance}"
            datasetPath = null
            stageId     = null
          }
          float64 = null
          int64   = null
          link    = null
          string  = null
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
            columnVisibility            = {}
            columnWidths                = {}
            containerWidth              = 1313
            contextMenuXCoord           = null
            contextMenuYCoord           = null
            defaultColumnWidth          = 70
            disableFixedLeftColumns     = false
            eventLinkColumnId           = null
            fetchPageSize               = 100
            hasCalculatedColumnWidths   = false
            hasDoneAutoLayout           = false
            maxColumnWidth              = 400
            maxMeasuredColumnWidth      = {}
            minColumnWidth              = 60
            minRowHeight                = 30
            preserveCellAndRowSelection = true
            rowHeaderWidth              = 20
            rowHeights                  = {}
            rowSizeIncrement            = 1
            scrollToColumn              = null
            scrollToRow                 = 0
            selection = {
              cells                = {}
              columnSelectSequence = []
              columns              = {}
              highlightState       = {}
              rows                 = {}
              selectionType        = "table"
            }
            shouldAutoLayout           = false
            summaryColumnOrderOverride = {}
            summaryColumnVisibility    = {}
            tableHeight                = 179
            tableView                  = "TABULAR"
          }
          index = 0
          inputList = [
            {
              inputName   = "dbResource"
              inputRole   = "Data"
              isUserInput = false
              parameterId = "dbResource"
            },
          ]
          label = "CPU Utilization"
          managers = [
            {
              id                     = "v8po8a0z"
              isDisabled             = true
              isResourceCountEnabled = false
              parentStageId          = "stage-x113jq90"
              type                   = "Timescrubber"
            },
            {
              id            = "rmcnxide"
              isDisabled    = false
              parentStageId = "stage-x113jq90"
              type          = "Vis"
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
                  metric = {
                    aggregate   = "sum"
                    datasetId   = "${local.cloud_sql_metrics}"
                    description = <<-EOT
                                            Current CPU utilization represented as a percentage of the reserved CPU that is currently in use. Values are typically numbers between 0.0 and 1.0 but might exceed 1.0. Charts display the values as a percentage between 0% and 100% or more. Sampled every 60s and may take up to 210s to display.
                                        EOT
                    groupBy = [
                      "database_id",
                    ]
                    heuristics = null
                    id = {
                      datasetId = "${local.cloud_sql_metrics}"
                      name      = "database_cpu_utilization"
                    }
                    interval = 60000
                    link = {
                      __typename = "ForeignKey"
                      dstFields = [
                        "database_id",
                      ]
                      label = "Cloud SQL"
                      srcFields = [
                        "database_id",
                      ]
                      targetDataset    = "${local.cloud_sql_instance}"
                      targetStageLabel = null
                      type             = "foreign"
                    }
                    name        = "database_cpu_utilization"
                    rollup      = "avg"
                    type        = "gauge"
                    unit        = "10^2.%"
                    userDefined = true
                  }
                  type = "metric"
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
            rollup = {}
          }
          renderType     = "TABLE"
          selectedStepId = null
          serializable   = true
          steps = [
            {
              columnStatsTable = {
                columnFunctions = {
                  availabilityType         = "count"
                  backendType              = "count"
                  backupConfiguration      = "count"
                  createTime               = "count"
                  current_state            = "count"
                  dataDiskSizeGb           = "count"
                  dataDiskType             = "count"
                  databaseFlags            = "count"
                  databaseInstalledVersion = "count"
                  databaseVersion          = "count"
                  database_id              = "count"
                  gceZone                  = "count"
                  ipAddressPrimary         = "count"
                  ipAddresses              = "count"
                  ipConfiguration          = "count"
                  label                    = "count"
                  name                     = "count"
                  project_id               = "count"
                  region                   = "count"
                  state                    = "count"
                  tier                     = "count"
                }
                datasetQueryId = {
                  ignoreCompress = false
                  queryId        = "q-mbtcl9k3"
                  resultKinds = [
                    "ResultKindSchema",
                    "ResultKindData",
                  ]
                  tableTypes = [
                    "TABULAR",
                  ]
                }
              }
              datasetQuery = null
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
              name              = "Input Step"
              opal              = []
              queryPresentation = {}
              renderType        = null
              summary           = "dbResource (undefined)"
              type              = "InputStep"
            },
          ]
          type = "table"
          viewModel = {
            consoleValue = null
            railCollapseState = {
              inputsOutputs = false
              minimap       = false
              note          = true
              script        = true
            }
            scriptTab     = "SCRIPT"
            showTimeRuler = true
            stageTab      = "vis"
          }
        }
        params   = null
        pipeline = ""
      },
      {
        id = "stage-m3remp1v"
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
            columnVisibility            = {}
            columnWidths                = {}
            containerWidth              = 1313
            contextMenuXCoord           = null
            contextMenuYCoord           = null
            defaultColumnWidth          = 70
            disableFixedLeftColumns     = false
            eventLinkColumnId           = null
            fetchPageSize               = 100
            hasCalculatedColumnWidths   = false
            hasDoneAutoLayout           = false
            maxColumnWidth              = 400
            maxMeasuredColumnWidth      = {}
            minColumnWidth              = 60
            minRowHeight                = 30
            preserveCellAndRowSelection = true
            rowHeaderWidth              = 20
            rowHeights                  = {}
            rowSizeIncrement            = 1
            scrollToColumn              = null
            scrollToRow                 = 0
            selection = {
              cells                = {}
              columnSelectSequence = []
              columns              = {}
              highlightState       = {}
              rows                 = {}
              selectionType        = "table"
            }
            shouldAutoLayout           = false
            summaryColumnOrderOverride = {}
            summaryColumnVisibility    = {}
            tableHeight                = 179
            tableView                  = "TABULAR"
          }
          index = 1
          inputList = [
            {
              inputName   = "dbResource"
              inputRole   = "Data"
              isUserInput = false
              parameterId = "dbResource"
            },
          ]
          label = "Disk Bytes Used"
          managers = [
            {
              id                     = "pbgtk31k"
              isDisabled             = true
              isResourceCountEnabled = false
              parentStageId          = "stage-m3remp1v"
              type                   = "Timescrubber"
            },
            {
              id            = "c9bu4tgl"
              isDisabled    = false
              parentStageId = "stage-m3remp1v"
              type          = "Vis"
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
                  metric = {
                    aggregate   = "sum"
                    datasetId   = "${local.cloud_sql_metrics}"
                    description = <<-EOT
                                            Data utilization in bytes. Sampled every 60s and may take up to 210s to display.
                                        EOT
                    groupBy = [
                      "database_id",
                    ]
                    heuristics = null
                    id = {
                      datasetId = "${local.cloud_sql_metrics}"
                      name      = "database_disk_bytes_used"
                    }
                    interval = 60000
                    link = {
                      __typename = "ForeignKey"
                      dstFields = [
                        "database_id",
                      ]
                      label = "Cloud SQL"
                      srcFields = [
                        "database_id",
                      ]
                      targetDataset    = "${local.cloud_sql_instance}"
                      targetStageLabel = null
                      type             = "foreign"
                    }
                    name        = "database_disk_bytes_used"
                    rollup      = "avg"
                    type        = "gauge"
                    unit        = "By"
                    userDefined = true
                  }
                  type = "metric"
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
            rollup = {}
          }
          renderType     = "TABLE"
          selectedStepId = null
          serializable   = true
          steps = [
            {
              columnStatsTable = {
                columnFunctions = {
                  availabilityType         = "count"
                  backendType              = "count"
                  backupConfiguration      = "count"
                  createTime               = "count"
                  current_state            = "count"
                  dataDiskSizeGb           = "count"
                  dataDiskType             = "count"
                  databaseFlags            = "count"
                  databaseInstalledVersion = "count"
                  databaseVersion          = "count"
                  database_id              = "count"
                  gceZone                  = "count"
                  ipAddressPrimary         = "count"
                  ipAddresses              = "count"
                  ipConfiguration          = "count"
                  label                    = "count"
                  name                     = "count"
                  project_id               = "count"
                  region                   = "count"
                  state                    = "count"
                  tier                     = "count"
                }
                datasetQueryId = {
                  ignoreCompress = false
                  queryId        = "q-1jxwgj7b"
                  resultKinds = [
                    "ResultKindSchema",
                    "ResultKindData",
                  ]
                  tableTypes = [
                    "TABULAR",
                  ]
                }
              }
              datasetQuery = null
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
              name              = "Input Step"
              opal              = []
              queryPresentation = {}
              renderType        = null
              summary           = "dbResource (undefined)"
              type              = "InputStep"
            },
          ]
          type = "table"
          viewModel = {
            consoleValue = null
            railCollapseState = {
              inputsOutputs = false
              minimap       = false
              note          = true
              script        = true
            }
            scriptTab     = "SCRIPT"
            showTimeRuler = true
            stageTab      = "vis"
          }
        }
        params   = null
        pipeline = ""
      },
      {
        id = "stage-6qjozjl6"
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
            columnVisibility            = {}
            columnWidths                = {}
            containerWidth              = 1313
            contextMenuXCoord           = null
            contextMenuYCoord           = null
            defaultColumnWidth          = 70
            disableFixedLeftColumns     = false
            eventLinkColumnId           = null
            fetchPageSize               = 100
            hasCalculatedColumnWidths   = false
            hasDoneAutoLayout           = false
            maxColumnWidth              = 400
            maxMeasuredColumnWidth      = {}
            minColumnWidth              = 60
            minRowHeight                = 30
            preserveCellAndRowSelection = true
            rowHeaderWidth              = 20
            rowHeights                  = {}
            rowSizeIncrement            = 1
            scrollToColumn              = null
            scrollToRow                 = 0
            selection = {
              cells                = {}
              columnSelectSequence = []
              columns              = {}
              highlightState       = {}
              rows                 = {}
              selectionType        = "table"
            }
            shouldAutoLayout           = false
            summaryColumnOrderOverride = {}
            summaryColumnVisibility    = {}
            tableHeight                = 179
            tableView                  = "TABULAR"
          }
          index = 2
          inputList = [
            {
              inputName   = "dbResource"
              inputRole   = "Data"
              isUserInput = false
              parameterId = "dbResource"
            },
          ]
          label = "Disk Read Operations"
          managers = [
            {
              id                     = "u9rqvybi"
              isDisabled             = true
              isResourceCountEnabled = false
              parentStageId          = "stage-6qjozjl6"
              type                   = "Timescrubber"
            },
            {
              id            = "jwmd39uu"
              isDisabled    = false
              parentStageId = "stage-6qjozjl6"
              type          = "Vis"
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
                  metric = {
                    aggregate   = "sum"
                    datasetId   = "${local.cloud_sql_metrics}"
                    description = <<-EOT
                                            Delta count of data disk read IO operations. Sampled every 60s and may take up to 210s to display.
                                        EOT
                    groupBy = [
                      "database_id",
                    ]
                    heuristics = null
                    id = {
                      datasetId = "${local.cloud_sql_metrics}"
                      name      = "database_disk_read_ops_count"
                    }
                    interval = 60000
                    link = {
                      __typename = "ForeignKey"
                      dstFields = [
                        "database_id",
                      ]
                      label = "Cloud SQL"
                      srcFields = [
                        "database_id",
                      ]
                      targetDataset    = "${local.cloud_sql_instance}"
                      targetStageLabel = null
                      type             = "foreign"
                    }
                    name        = "database_disk_read_ops_count"
                    rollup      = "avg"
                    type        = "delta"
                    unit        = ""
                    userDefined = true
                  }
                  type = "metric"
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
            rollup = {}
          }
          renderType     = "TABLE"
          selectedStepId = null
          serializable   = true
          steps = [
            {
              columnStatsTable = {
                columnFunctions = {
                  availabilityType         = "count"
                  backendType              = "count"
                  backupConfiguration      = "count"
                  createTime               = "count"
                  current_state            = "count"
                  dataDiskSizeGb           = "count"
                  dataDiskType             = "count"
                  databaseFlags            = "count"
                  databaseInstalledVersion = "count"
                  databaseVersion          = "count"
                  database_id              = "count"
                  gceZone                  = "count"
                  ipAddressPrimary         = "count"
                  ipAddresses              = "count"
                  ipConfiguration          = "count"
                  label                    = "count"
                  name                     = "count"
                  project_id               = "count"
                  region                   = "count"
                  state                    = "count"
                  tier                     = "count"
                }
                datasetQueryId = {
                  ignoreCompress = false
                  queryId        = "q-4cz8d1lq"
                  resultKinds = [
                    "ResultKindSchema",
                    "ResultKindData",
                  ]
                  tableTypes = [
                    "TABULAR",
                  ]
                }
              }
              datasetQuery = null
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
              name              = "Input Step"
              opal              = []
              queryPresentation = {}
              renderType        = null
              summary           = "dbResource (undefined)"
              type              = "InputStep"
            },
          ]
          type = "table"
          viewModel = {
            consoleValue = null
            railCollapseState = {
              inputsOutputs = false
              minimap       = false
              note          = true
              script        = true
            }
            scriptTab     = "SCRIPT"
            showTimeRuler = true
            stageTab      = "vis"
          }
        }
        params   = null
        pipeline = ""
      },
      {
        id = "stage-bxss6s26"
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
            autoTableHeight    = false
            columnFooterHeight = 0
            columnHeaderHeight = 29
            columnOrderOverride = {
              "0" = "name"
              "1" = "label"
              "2" = "Valid From"
              "3" = "Valid To"
            }
            columnVisibility            = {}
            columnWidths                = {}
            containerWidth              = 1505
            contextMenuXCoord           = null
            contextMenuYCoord           = null
            defaultColumnWidth          = 70
            disableFixedLeftColumns     = false
            eventLinkColumnId           = null
            fetchPageSize               = 100
            hasCalculatedColumnWidths   = false
            hasDoneAutoLayout           = false
            maxColumnWidth              = 400
            maxMeasuredColumnWidth      = {}
            minColumnWidth              = 60
            minRowHeight                = 30
            preserveCellAndRowSelection = true
            rowHeaderWidth              = 20
            rowHeights                  = {}
            rowSizeIncrement            = 1
            scrollToColumn              = null
            scrollToRow                 = 0
            selection = {
              cells                = {}
              columnSelectSequence = []
              columns              = {}
              highlightState       = {}
              rows                 = {}
              selectionType        = "table"
            }
            shouldAutoLayout           = false
            summaryColumnOrderOverride = {}
            summaryColumnVisibility    = {}
            tableHeight                = 179
            tableView                  = "TABULAR"
          }
          index = 3
          inputList = [
            {
              inputName   = "dbResource"
              inputRole   = "Data"
              isUserInput = false
              parameterId = "dbResource"
            },
          ]
          label = "Network Connections"
          managers = [
            {
              id                     = "nho29ja2"
              isDisabled             = true
              isResourceCountEnabled = false
              parentStageId          = "stage-bxss6s26"
              type                   = "Timescrubber"
            },
            {
              id            = "dah8b1ls"
              isDisabled    = false
              parentStageId = "stage-bxss6s26"
              type          = "Vis"
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
                  metric = {
                    aggregate   = "sum"
                    datasetId   = "${local.cloud_sql_metrics_combo}"
                    description = <<-EOT
                                            Combination of network connection metrics.
                                        EOT
                    groupBy = [
                      "database_id",
                    ]
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
                          column     = "metric"
                          path       = ""
                        },
                        {
                          __typename = "MetricTag"
                          column     = "metric_category"
                          path       = ""
                        },
                        {
                          __typename = "MetricTag"
                          column     = "metric_type"
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
                          path       = "database"
                        },
                      ]
                      validLinkLabels = [
                        "Cloud SQL Metrics Combo",
                      ]
                    }
                    id = {
                      datasetId = "${local.cloud_sql_metrics_combo}"
                      name      = "all_database_network_connections"
                    }
                    interval = 60000
                    link = {
                      __typename = "ForeignKey"
                      dstFields = [
                        "database_id",
                      ]
                      label = "Cloud SQL Metrics Combo"
                      srcFields = [
                        "database_id",
                      ]
                      targetDataset    = "${local.cloud_sql_instance}"
                      targetStageLabel = null
                      type             = "foreign"
                    }
                    name        = "all_database_network_connections"
                    rollup      = "avg"
                    type        = "gauge"
                    unit        = ""
                    userDefined = true
                  }
                  type = "metric"
                }
                type = "timeseries"
              }
            },
            {
              id            = "kgrs2a3q"
              isDisabled    = true
              parentStageId = "stage-bxss6s26"
              type          = "Dashboard"
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
          }
          renderType     = "TABLE"
          selectedStepId = null
          serializable   = true
          steps = [
            {
              columnStatsTable = {
                columnFunctions = {
                  availabilityType         = "count"
                  backendType              = "count"
                  backupConfiguration      = "count"
                  createTime               = "count"
                  current_state            = "count"
                  dataDiskSizeGb           = "count"
                  dataDiskType             = "count"
                  databaseFlags            = "count"
                  databaseInstalledVersion = "count"
                  databaseVersion          = "count"
                  database_id              = "count"
                  gceZone                  = "count"
                  ipAddressPrimary         = "count"
                  ipAddresses              = "count"
                  ipConfiguration          = "count"
                  label                    = "count"
                  name                     = "count"
                  project_id               = "count"
                  region                   = "count"
                  state                    = "count"
                  tier                     = "count"
                }
                datasetQueryId = {
                  ignoreCompress = false
                  queryId        = "q-e9n2d41m"
                  resultKinds = [
                    "ResultKindSchema",
                    "ResultKindData",
                  ]
                  tableTypes = [
                    "TABULAR",
                  ]
                }
              }
              datasetQuery = null
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
              name              = "Input Step"
              opal              = []
              queryPresentation = {}
              renderType        = null
              summary           = "dbResource (undefined)"
              type              = "InputStep"
            },
            {
              columnStatsTable = {
                columnFunctions = {
                  availabilityType         = "count"
                  backendType              = "count"
                  backupConfiguration      = "count"
                  createTime               = "count"
                  current_state            = "count"
                  dataDiskSizeGb           = "count"
                  dataDiskType             = "count"
                  databaseFlags            = "count"
                  databaseInstalledVersion = "count"
                  databaseVersion          = "count"
                  database_id              = "count"
                  gceZone                  = "count"
                  ipAddressPrimary         = "count"
                  ipAddresses              = "count"
                  ipConfiguration          = "count"
                  label                    = "count"
                  name                     = "count"
                  project_id               = "count"
                  region                   = "count"
                  state                    = "count"
                  tier                     = "count"
                }
                datasetQueryId = {
                  ignoreCompress = false
                  queryId        = "q-n083qp1o"
                  resultKinds = [
                    "ResultKindSchema",
                    "ResultKindData",
                  ]
                  tableTypes = [
                    "TABULAR",
                  ]
                }
              }
              datasetQuery = null
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
              id       = "step-qcuofu0h"
              index    = 1
              isPinned = false
              name     = " (custom)"
              opal = [
                "",
              ]
              queryPresentation = {}
              renderType        = null
              type              = "unknown"
            },
          ]
          type = "table"
          viewModel = {
            consoleValue = null
            railCollapseState = {
              inputsOutputs = false
              minimap       = false
              note          = true
              script        = true
            }
            scriptTab     = "INPUTS"
            showTimeRuler = true
            stageTab      = "vis"
          }
        }
        params   = null
        pipeline = ""
      },
      {
        id = "stage-1zwm1yf7"
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
            columnVisibility            = {}
            columnWidths                = {}
            containerWidth              = 1313
            contextMenuXCoord           = null
            contextMenuYCoord           = null
            defaultColumnWidth          = 70
            disableFixedLeftColumns     = false
            eventLinkColumnId           = null
            fetchPageSize               = 100
            hasCalculatedColumnWidths   = false
            hasDoneAutoLayout           = false
            maxColumnWidth              = 400
            maxMeasuredColumnWidth      = {}
            minColumnWidth              = 60
            minRowHeight                = 30
            preserveCellAndRowSelection = true
            rowHeaderWidth              = 20
            rowHeights                  = {}
            rowSizeIncrement            = 1
            scrollToColumn              = null
            scrollToRow                 = 0
            selection = {
              cells                = {}
              columnSelectSequence = []
              columns              = {}
              highlightState       = {}
              rows                 = {}
              selectionType        = "table"
            }
            shouldAutoLayout           = false
            summaryColumnOrderOverride = {}
            summaryColumnVisibility    = {}
            tableHeight                = 179
            tableView                  = "TABULAR"
          }
          index = 4
          inputList = [
            {
              inputName   = "dbResource"
              inputRole   = "Data"
              isUserInput = false
              parameterId = "dbResource"
            },
          ]
          label = "Disk Write Operations"
          managers = [
            {
              id                     = "12jqfcoa"
              isDisabled             = true
              isResourceCountEnabled = false
              parentStageId          = "stage-1zwm1yf7"
              type                   = "Timescrubber"
            },
            {
              id            = "o93y9zjm"
              isDisabled    = false
              parentStageId = "stage-1zwm1yf7"
              type          = "Vis"
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
                  metric = {
                    aggregate   = "sum"
                    datasetId   = "${local.cloud_sql_metrics}"
                    description = <<-EOT
                                            Delta count of data disk write IO operations. Sampled every 60s and may take up to 210s to display.
                                        EOT
                    groupBy = [
                      "database_id",
                    ]
                    heuristics = null
                    id = {
                      datasetId = "${local.cloud_sql_metrics}"
                      name      = "database_disk_write_ops_count"
                    }
                    interval = 60000
                    link = {
                      __typename = "ForeignKey"
                      dstFields = [
                        "database_id",
                      ]
                      label = "Cloud SQL"
                      srcFields = [
                        "database_id",
                      ]
                      targetDataset    = "${local.cloud_sql_instance}"
                      targetStageLabel = null
                      type             = "foreign"
                    }
                    name        = "database_disk_write_ops_count"
                    rollup      = "avg"
                    type        = "delta"
                    unit        = ""
                    userDefined = true
                  }
                  type = "metric"
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
            rollup = {}
          }
          renderType     = "TABLE"
          selectedStepId = null
          serializable   = true
          steps = [
            {
              columnStatsTable = {
                columnFunctions = {
                  availabilityType         = "count"
                  backendType              = "count"
                  backupConfiguration      = "count"
                  createTime               = "count"
                  current_state            = "count"
                  dataDiskSizeGb           = "count"
                  dataDiskType             = "count"
                  databaseFlags            = "count"
                  databaseInstalledVersion = "count"
                  databaseVersion          = "count"
                  database_id              = "count"
                  gceZone                  = "count"
                  ipAddressPrimary         = "count"
                  ipAddresses              = "count"
                  ipConfiguration          = "count"
                  label                    = "count"
                  name                     = "count"
                  project_id               = "count"
                  region                   = "count"
                  state                    = "count"
                  tier                     = "count"
                }
                datasetQueryId = {
                  ignoreCompress = false
                  queryId        = "q-hs9ztnxd"
                  resultKinds = [
                    "ResultKindSchema",
                    "ResultKindData",
                  ]
                  tableTypes = [
                    "TABULAR",
                  ]
                }
              }
              datasetQuery = null
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
              name              = "Input Step"
              opal              = []
              queryPresentation = {}
              renderType        = null
              summary           = "dbResource (undefined)"
              type              = "InputStep"
            },
          ]
          type = "table"
          viewModel = {
            consoleValue = null
            railCollapseState = {
              inputsOutputs = false
              minimap       = false
              note          = true
              script        = true
            }
            scriptTab     = "SCRIPT"
            showTimeRuler = true
            stageTab      = "vis"
          }
        }
        params   = null
        pipeline = ""
      },
      {
        id = "stage-mpne8ae1"
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
            columnVisibility            = {}
            columnWidths                = {}
            containerWidth              = 1313
            contextMenuXCoord           = null
            contextMenuYCoord           = null
            defaultColumnWidth          = 70
            disableFixedLeftColumns     = false
            eventLinkColumnId           = null
            fetchPageSize               = 100
            hasCalculatedColumnWidths   = false
            hasDoneAutoLayout           = false
            maxColumnWidth              = 400
            maxMeasuredColumnWidth      = {}
            minColumnWidth              = 60
            minRowHeight                = 30
            preserveCellAndRowSelection = true
            rowHeaderWidth              = 20
            rowHeights                  = {}
            rowSizeIncrement            = 1
            scrollToColumn              = null
            scrollToRow                 = 0
            selection = {
              cells                = {}
              columnSelectSequence = []
              columns              = {}
              highlightState       = {}
              rows                 = {}
              selectionType        = "table"
            }
            shouldAutoLayout           = false
            summaryColumnOrderOverride = {}
            summaryColumnVisibility    = {}
            tableHeight                = 179
            tableView                  = "TABULAR"
          }
          index = 5
          inputList = [
            {
              inputName   = "dbResource"
              inputRole   = "Data"
              isUserInput = false
              parameterId = "dbResource"
            },
          ]
          label = "Network Bytes Received"
          managers = [
            {
              id                     = "zm9ec5ed"
              isDisabled             = true
              isResourceCountEnabled = false
              parentStageId          = "stage-mpne8ae1"
              type                   = "Timescrubber"
            },
            {
              id            = "6wrrxd6o"
              isDisabled    = false
              parentStageId = "stage-mpne8ae1"
              type          = "Vis"
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
                  metric = {
                    aggregate   = "sum"
                    datasetId   = "${local.cloud_sql_metrics}"
                    description = <<-EOT
                                            Delta count of bytes received through the network. Sampled every 60s and may take up to 210s to display.
                                        EOT
                    groupBy = [
                      "database_id",
                    ]
                    heuristics = null
                    id = {
                      datasetId = "${local.cloud_sql_metrics}"
                      name      = "database_network_received_bytes_count"
                    }
                    interval = 60000
                    link = {
                      __typename = "ForeignKey"
                      dstFields = [
                        "database_id",
                      ]
                      label = "Cloud SQL"
                      srcFields = [
                        "database_id",
                      ]
                      targetDataset    = "${local.cloud_sql_instance}"
                      targetStageLabel = null
                      type             = "foreign"
                    }
                    name        = "database_network_received_bytes_count"
                    rollup      = "avg"
                    type        = "delta"
                    unit        = "By"
                    userDefined = true
                  }
                  type = "metric"
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
            rollup = {}
          }
          renderType     = "TABLE"
          selectedStepId = null
          serializable   = true
          steps = [
            {
              columnStatsTable = {
                columnFunctions = {
                  availabilityType         = "count"
                  backendType              = "count"
                  backupConfiguration      = "count"
                  createTime               = "count"
                  current_state            = "count"
                  dataDiskSizeGb           = "count"
                  dataDiskType             = "count"
                  databaseFlags            = "count"
                  databaseInstalledVersion = "count"
                  databaseVersion          = "count"
                  database_id              = "count"
                  gceZone                  = "count"
                  ipAddressPrimary         = "count"
                  ipAddresses              = "count"
                  ipConfiguration          = "count"
                  label                    = "count"
                  name                     = "count"
                  project_id               = "count"
                  region                   = "count"
                  state                    = "count"
                  tier                     = "count"
                }
                datasetQueryId = {
                  ignoreCompress = false
                  queryId        = "q-lfc2v4xe"
                  resultKinds = [
                    "ResultKindSchema",
                    "ResultKindData",
                  ]
                  tableTypes = [
                    "TABULAR",
                  ]
                }
              }
              datasetQuery = null
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
              name              = "Input Step"
              opal              = []
              queryPresentation = {}
              renderType        = null
              summary           = "dbResource (undefined)"
              type              = "InputStep"
            },
          ]
          type = "table"
          viewModel = {
            consoleValue = null
            railCollapseState = {
              inputsOutputs = false
              minimap       = false
              note          = true
              script        = true
            }
            scriptTab     = "SCRIPT"
            showTimeRuler = true
            stageTab      = "vis"
          }
        }
        params   = null
        pipeline = ""
      },
      {
        id = "stage-urrvnw15"
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
            columnVisibility            = {}
            columnWidths                = {}
            contextMenuXCoord           = null
            contextMenuYCoord           = null
            defaultColumnWidth          = 70
            disableFixedLeftColumns     = false
            eventLinkColumnId           = null
            fetchPageSize               = 100
            hasCalculatedColumnWidths   = false
            hasDoneAutoLayout           = false
            maxColumnWidth              = 400
            maxMeasuredColumnWidth      = {}
            minColumnWidth              = 60
            minRowHeight                = 30
            preserveCellAndRowSelection = true
            rowHeaderWidth              = 20
            rowHeights                  = {}
            rowSizeIncrement            = 1
            scrollToColumn              = null
            scrollToRow                 = 0
            selection = {
              cells                = {}
              columnSelectSequence = []
              columns              = {}
              highlightState       = {}
              rows                 = {}
              selectionType        = "table"
            }
            shouldAutoLayout           = false
            summaryColumnOrderOverride = {}
            summaryColumnVisibility    = {}
            tableHeight                = 179
            tableView                  = "TABULAR"
          }
          index = 6
          inputList = [
            {
              inputName   = "dbResource"
              inputRole   = "Data"
              isUserInput = false
              parameterId = "dbResource"
            },
          ]
          label = "Network Bytes Sent"
          managers = [
            {
              id                     = "zm9ec5ed"
              isDisabled             = true
              isResourceCountEnabled = false
              parentStageId          = "stage-urrvnw15"
              type                   = "Timescrubber"
            },
            {
              id            = "6wrrxd6o"
              isDisabled    = false
              parentStageId = "stage-urrvnw15"
              type          = "Vis"
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
                  metric = {
                    aggregate   = "sum"
                    datasetId   = "${local.cloud_sql_metrics}"
                    description = <<-EOT
                                            Delta count of bytes sent through the network. Sampled every 60s and may take up to 210s to display.
                                        EOT
                    groupBy = [
                      "database_id",
                    ]
                    heuristics = null
                    id = {
                      datasetId = "${local.cloud_sql_metrics}"
                      name      = "database_network_sent_bytes_count"
                    }
                    interval = 60000
                    link = {
                      __typename = "ForeignKey"
                      dstFields = [
                        "database_id",
                      ]
                      label = "Cloud SQL"
                      srcFields = [
                        "database_id",
                      ]
                      targetDataset    = "${local.cloud_sql_instance}"
                      targetStageLabel = null
                      type             = "foreign"
                    }
                    name        = "database_network_sent_bytes_count"
                    rollup      = "avg"
                    type        = "delta"
                    unit        = "By"
                    userDefined = true
                  }
                  type = "metric"
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
            rollup = {}
          }
          renderType     = "TABLE"
          selectedStepId = null
          serializable   = true
          steps = [
            {
              datasetQuery = null
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
              name              = "Input Step"
              opal              = []
              queryPresentation = {}
              renderType        = null
              summary           = "dbResource (undefined)"
              type              = "InputStep"
            },
          ]
          type = "table"
          viewModel = {
            consoleValue = null
            railCollapseState = {
              inputsOutputs = false
              minimap       = false
              note          = true
              script        = true
            }
            scriptTab     = "SCRIPT"
            showTimeRuler = true
            stageTab      = "vis"
          }
        }
        params   = null
        pipeline = ""
      },
      {
        id = "stage-5g6dfyg1"
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
            columnVisibility            = {}
            columnWidths                = {}
            containerWidth              = 1313
            contextMenuXCoord           = null
            contextMenuYCoord           = null
            defaultColumnWidth          = 70
            disableFixedLeftColumns     = false
            eventLinkColumnId           = null
            fetchPageSize               = 100
            hasCalculatedColumnWidths   = false
            hasDoneAutoLayout           = false
            maxColumnWidth              = 400
            maxMeasuredColumnWidth      = {}
            minColumnWidth              = 60
            minRowHeight                = 30
            preserveCellAndRowSelection = true
            rowHeaderWidth              = 20
            rowHeights                  = {}
            rowSizeIncrement            = 1
            scrollToColumn              = null
            scrollToRow                 = 0
            selection = {
              cells                = {}
              columnSelectSequence = []
              columns              = {}
              highlightState       = {}
              rows                 = {}
              selectionType        = "table"
            }
            shouldAutoLayout           = false
            summaryColumnOrderOverride = {}
            summaryColumnVisibility    = {}
            tableHeight                = 179
            tableView                  = "TABULAR"
          }
          index = 7
          inputList = [
            {
              inputName   = "dbResource"
              inputRole   = "Data"
              isUserInput = false
              parameterId = "dbResource"
            },
          ]
          label = "Disk Quota"
          managers = [
            {
              id                     = "s23ly8g7"
              isDisabled             = true
              isResourceCountEnabled = false
              parentStageId          = "stage-5g6dfyg1"
              type                   = "Timescrubber"
            },
            {
              id            = "rupd3t7k"
              isDisabled    = false
              parentStageId = "stage-5g6dfyg1"
              type          = "Vis"
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
                  metric = {
                    aggregate   = "sum"
                    datasetId   = "${local.cloud_sql_metrics}"
                    description = <<-EOT
                                            Maximum data disk size in bytes. Sampled every 60s and may take up to 210s to display.
                                        EOT
                    groupBy = [
                      "database_id",
                    ]
                    heuristics = null
                    id = {
                      datasetId = "${local.cloud_sql_metrics}"
                      name      = "database_disk_quota"
                    }
                    interval = 60000
                    link = {
                      __typename = "ForeignKey"
                      dstFields = [
                        "database_id",
                      ]
                      label = "Cloud SQL"
                      srcFields = [
                        "database_id",
                      ]
                      targetDataset    = "${local.cloud_sql_instance}"
                      targetStageLabel = null
                      type             = "foreign"
                    }
                    name        = "database_disk_quota"
                    rollup      = "avg"
                    type        = "gauge"
                    unit        = "By"
                    userDefined = true
                  }
                  type = "metric"
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
            rollup = {}
          }
          renderType     = "TABLE"
          selectedStepId = null
          serializable   = true
          steps = [
            {
              columnStatsTable = {
                columnFunctions = {
                  availabilityType         = "count"
                  backendType              = "count"
                  backupConfiguration      = "count"
                  createTime               = "count"
                  current_state            = "count"
                  dataDiskSizeGb           = "count"
                  dataDiskType             = "count"
                  databaseFlags            = "count"
                  databaseInstalledVersion = "count"
                  databaseVersion          = "count"
                  database_id              = "count"
                  gceZone                  = "count"
                  ipAddressPrimary         = "count"
                  ipAddresses              = "count"
                  ipConfiguration          = "count"
                  label                    = "count"
                  name                     = "count"
                  project_id               = "count"
                  region                   = "count"
                  state                    = "count"
                  tier                     = "count"
                }
                datasetQueryId = {
                  ignoreCompress = false
                  queryId        = "q-o8ggatjl"
                  resultKinds = [
                    "ResultKindSchema",
                    "ResultKindData",
                  ]
                  tableTypes = [
                    "TABULAR",
                  ]
                }
              }
              datasetQuery = null
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
              name              = "Input Step"
              opal              = []
              queryPresentation = {}
              renderType        = null
              summary           = "dbResource (undefined)"
              type              = "InputStep"
            },
          ]
          type = "table"
          viewModel = {
            consoleValue = null
            railCollapseState = {
              inputsOutputs = false
              minimap       = false
              note          = true
              script        = true
            }
            scriptTab     = "SCRIPT"
            showTimeRuler = true
            stageTab      = "vis"
          }
        }
        params   = null
        pipeline = ""
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
            columnVisibility            = {}
            columnWidths                = {}
            containerWidth              = 1313
            contextMenuXCoord           = null
            contextMenuYCoord           = null
            defaultColumnWidth          = 70
            disableFixedLeftColumns     = false
            eventLinkColumnId           = null
            fetchPageSize               = 100
            hasCalculatedColumnWidths   = false
            hasDoneAutoLayout           = false
            maxColumnWidth              = 400
            maxMeasuredColumnWidth      = {}
            minColumnWidth              = 60
            minRowHeight                = 30
            preserveCellAndRowSelection = true
            rowHeaderWidth              = 20
            rowHeights                  = {}
            rowSizeIncrement            = 1
            scrollToColumn              = null
            scrollToRow                 = 0
            selection = {
              cells                = {}
              columnSelectSequence = []
              columns              = {}
              highlightState       = {}
              rows                 = {}
              selectionType        = "table"
            }
            shouldAutoLayout           = false
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
              parentStageId          = "stage-zx1ijn1u"
              type                   = "Timescrubber"
            },
            {
              id            = "bzjcyrdv"
              isDisabled    = false
              parentStageId = "stage-zx1ijn1u"
              type          = "Vis"
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
                    transformType = "timechart"
                    type          = "keyvalue"
                    valueField    = "databaseInstalledVersion"
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
          }
          renderType     = "TABLE"
          selectedStepId = null
          serializable   = true
          steps = [
            {
              columnStatsTable = {
                columnFunctions = {
                  availabilityType         = "count"
                  backendType              = "count"
                  backupConfiguration      = "count"
                  createTime               = "count"
                  current_state            = "count"
                  dataDiskSizeGb           = "count"
                  dataDiskType             = "count"
                  databaseFlags            = "count"
                  databaseInstalledVersion = "count"
                  databaseVersion          = "count"
                  database_id              = "count"
                  gceZone                  = "count"
                  ipAddressPrimary         = "count"
                  ipAddresses              = "count"
                  ipConfiguration          = "count"
                  label                    = "count"
                  name                     = "count"
                  project_id               = "count"
                  region                   = "count"
                  state                    = "count"
                  tier                     = "count"
                }
                datasetQueryId = {
                  ignoreCompress = false
                  queryId        = "q-8lv71j4g"
                  resultKinds = [
                    "ResultKindSchema",
                    "ResultKindData",
                  ]
                  tableTypes = [
                    "TABULAR",
                  ]
                }
              }
              datasetQuery = null
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
              name              = "Input Step"
              opal              = []
              queryPresentation = {}
              renderType        = null
              summary           = "dbResource (undefined)"
              type              = "InputStep"
            },
          ]
          type = "table"
          viewModel = {
            consoleValue = null
            railCollapseState = {
              inputsOutputs = false
              minimap       = false
              note          = true
              script        = true
            }
            scriptTab     = "SCRIPT"
            showTimeRuler = true
            stageTab      = "vis"
          }
        }
        params   = null
        pipeline = ""
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
            columnVisibility            = {}
            columnWidths                = {}
            containerWidth              = 1505
            contextMenuXCoord           = null
            contextMenuYCoord           = null
            defaultColumnWidth          = 70
            disableFixedLeftColumns     = false
            eventLinkColumnId           = null
            fetchPageSize               = 100
            hasCalculatedColumnWidths   = false
            hasDoneAutoLayout           = false
            maxColumnWidth              = 400
            maxMeasuredColumnWidth      = {}
            minColumnWidth              = 60
            minRowHeight                = 30
            preserveCellAndRowSelection = true
            rowHeaderWidth              = 20
            rowHeights                  = {}
            rowSizeIncrement            = 1
            scrollToColumn              = null
            scrollToRow                 = 0
            selection = {
              cells                = {}
              columnSelectSequence = []
              columns              = {}
              highlightState       = {}
              rows                 = {}
              selectionType        = "table"
            }
            shouldAutoLayout           = false
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
              parentStageId          = "stage-2iknse1z"
              type                   = "Timescrubber"
            },
            {
              id            = "dvz5w7nq"
              isDisabled    = false
              parentStageId = "stage-2iknse1z"
              type          = "Vis"
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
                    transformType = "timechart"
                    type          = "keyvalue"
                    valueField    = "region"
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
          }
          renderType     = "TABLE"
          selectedStepId = null
          serializable   = true
          steps = [
            {
              columnStatsTable = {
                columnFunctions = {
                  availabilityType         = "count"
                  backendType              = "count"
                  backupConfiguration      = "count"
                  createTime               = "count"
                  current_state            = "count"
                  dataDiskSizeGb           = "count"
                  dataDiskType             = "count"
                  databaseFlags            = "count"
                  databaseInstalledVersion = "count"
                  databaseVersion          = "count"
                  database_id              = "count"
                  gceZone                  = "count"
                  ipAddressPrimary         = "count"
                  ipAddresses              = "count"
                  ipConfiguration          = "count"
                  name                     = "count"
                  project_id               = "count"
                  region                   = "count"
                  state                    = "count"
                  tier                     = "count"
                }
                datasetQueryId = {
                  ignoreCompress = false
                  queryId        = "q-80j2510x"
                  resultKinds = [
                    "ResultKindSchema",
                    "ResultKindData",
                  ]
                  tableTypes = [
                    "TABULAR",
                  ]
                }
              }
              datasetQuery = null
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
              name              = "Input Step"
              opal              = []
              queryPresentation = {}
              renderType        = null
              summary           = "dbResource (undefined)"
              type              = "InputStep"
            },
          ]
          type = "table"
          viewModel = {
            consoleValue = null
            railCollapseState = {
              inputsOutputs = false
              minimap       = false
              note          = true
              script        = true
            }
            scriptTab     = "SCRIPT"
            showTimeRuler = true
            stageTab      = "vis"
          }
        }
        params   = null
        pipeline = ""
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
            columnVisibility            = {}
            columnWidths                = {}
            contextMenuXCoord           = null
            contextMenuYCoord           = null
            defaultColumnWidth          = 70
            disableFixedLeftColumns     = false
            eventLinkColumnId           = null
            fetchPageSize               = 100
            hasCalculatedColumnWidths   = false
            hasDoneAutoLayout           = false
            maxColumnWidth              = 400
            maxMeasuredColumnWidth      = {}
            minColumnWidth              = 60
            minRowHeight                = 30
            preserveCellAndRowSelection = true
            rowHeaderWidth              = 20
            rowHeights                  = {}
            rowSizeIncrement            = 1
            scrollToColumn              = null
            scrollToRow                 = 0
            selection = {
              cells                = {}
              columnSelectSequence = []
              columns              = {}
              highlightState       = {}
              rows                 = {}
              selectionType        = "table"
            }
            shouldAutoLayout           = false
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
              parentStageId          = "stage-gcd1nb81"
              type                   = "Timescrubber"
            },
            {
              id            = "dvz5w7nq"
              isDisabled    = false
              parentStageId = "stage-gcd1nb81"
              type          = "Vis"
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
                    transformType = "timechart"
                    type          = "keyvalue"
                    valueField    = "project_id"
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
          }
          renderType     = "TABLE"
          selectedStepId = null
          serializable   = true
          steps = [
            {
              datasetQuery = null
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
              name              = "Input Step"
              opal              = []
              queryPresentation = {}
              renderType        = null
              summary           = "dbResource (undefined)"
              type              = "InputStep"
            },
          ]
          type = "table"
          viewModel = {
            consoleValue = null
            railCollapseState = {
              inputsOutputs = false
              minimap       = false
              note          = true
              script        = true
            }
            scriptTab     = "SCRIPT"
            showTimeRuler = true
            stageTab      = "vis"
          }
        }
        params   = null
        pipeline = ""
      },
      {
        id = "stage-pe9mq2em"
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
            columnVisibility            = {}
            columnWidths                = {}
            containerWidth              = 1313
            contextMenuXCoord           = null
            contextMenuYCoord           = null
            defaultColumnWidth          = 70
            disableFixedLeftColumns     = false
            eventLinkColumnId           = null
            fetchPageSize               = 100
            hasCalculatedColumnWidths   = false
            hasDoneAutoLayout           = false
            maxColumnWidth              = 400
            maxMeasuredColumnWidth      = {}
            minColumnWidth              = 60
            minRowHeight                = 30
            preserveCellAndRowSelection = true
            rowHeaderWidth              = 20
            rowHeights                  = {}
            rowSizeIncrement            = 1
            scrollToColumn              = null
            scrollToRow                 = 0
            selection = {
              cells                = {}
              columnSelectSequence = []
              columns              = {}
              highlightState       = {}
              rows                 = {}
              selectionType        = "table"
            }
            shouldAutoLayout           = false
            summaryColumnOrderOverride = {}
            summaryColumnVisibility    = {}
            tableHeight                = 0
            tableView                  = "TABULAR"
          }
          index = 11
          inputList = [
            {
              inputName   = "dbResource"
              inputRole   = "Data"
              isUserInput = false
              parameterId = "dbResource"
            },
          ]
          label = "Current State"
          managers = [
            {
              id                     = "sc2eh4dq"
              isDisabled             = true
              isResourceCountEnabled = false
              parentStageId          = "stage-pe9mq2em"
              type                   = "Timescrubber"
            },
            {
              id            = "fuhnk8qb"
              isDisabled    = false
              parentStageId = "stage-pe9mq2em"
              type          = "Vis"
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
                  metric = {
                    aggregate   = "sum"
                    datasetId   = "${local.cloud_sql_metrics}"
                    description = <<-EOT
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
                                        EOT
                    groupBy = [
                      "instance_state_label",
                    ]
                    heuristics = null
                    id = {
                      datasetId = "${local.cloud_sql_metrics}"
                      name      = "database_instance_state"
                    }
                    interval = 60000
                    link = {
                      __typename = "ForeignKey"
                      dstFields = [
                        "database_id",
                      ]
                      label = "Cloud SQL"
                      srcFields = [
                        "database_id",
                      ]
                      targetDataset    = "${local.cloud_sql_instance}"
                      targetStageLabel = null
                      type             = "foreign"
                    }
                    name        = "database_instance_state"
                    resolution  = 300000
                    rollup      = "sum"
                    type        = "gauge"
                    unit        = ""
                    userDefined = true
                  }
                  type = "metric"
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
            rollup = {}
          }
          renderType     = "TABLE"
          selectedStepId = null
          serializable   = true
          steps = [
            {
              columnStatsTable = {
                columnFunctions = {
                  availabilityType         = "count"
                  backendType              = "count"
                  backupConfiguration      = "count"
                  createTime               = "count"
                  current_state            = "count"
                  dataDiskSizeGb           = "count"
                  dataDiskType             = "count"
                  databaseFlags            = "count"
                  databaseInstalledVersion = "count"
                  databaseVersion          = "count"
                  database_id              = "count"
                  gceZone                  = "count"
                  ipAddressPrimary         = "count"
                  ipAddresses              = "count"
                  ipConfiguration          = "count"
                  name                     = "count"
                  project_id               = "count"
                  region                   = "count"
                  state                    = "count"
                  tier                     = "count"
                }
                datasetQueryId = {
                  ignoreCompress = false
                  queryId        = "q-70bagzha"
                  resultKinds = [
                    "ResultKindSchema",
                    "ResultKindData",
                  ]
                  tableTypes = [
                    "TABULAR",
                  ]
                }
              }
              datasetQuery = null
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
              name              = "Input Step"
              opal              = []
              queryPresentation = {}
              renderType        = null
              summary           = "dbResource (undefined)"
              type              = "InputStep"
            },
          ]
          type = "table"
          viewModel = {
            consoleValue = null
            railCollapseState = {
              inputsOutputs = false
              minimap       = false
              note          = true
              script        = true
            }
            scriptTab     = "INPUTS"
            showTimeRuler = true
            stageTab      = "vis"
          }
        }
        params   = null
        pipeline = ""
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
            datasetId   = "${local.cloud_sql_logs_error}"
            datasetPath = null
            inputName   = "Cloud SQL Logs Error"
            inputRole   = "Data"
            stageId     = null
          },
        ]
        layout = {
          appearance = "VISIBLE"
          dataTableViewState = {
            autoTableHeight             = true
            columnFooterHeight          = 0
            columnHeaderHeight          = 29
            columnOrderOverride         = {}
            columnVisibility            = {}
            columnWidths                = {}
            containerWidth              = 1313
            contextMenuXCoord           = null
            contextMenuYCoord           = null
            defaultColumnWidth          = 70
            disableFixedLeftColumns     = false
            eventLinkColumnId           = null
            fetchPageSize               = 100
            hasCalculatedColumnWidths   = true
            hasDoneAutoLayout           = false
            maxColumnWidth              = 400
            maxMeasuredColumnWidth      = {}
            minColumnWidth              = 60
            minRowHeight                = 30
            preserveCellAndRowSelection = true
            rowHeaderWidth              = 20
            rowHeights                  = {}
            rowSizeIncrement            = 1
            scrollToColumn              = null
            scrollToRow                 = 0
            selection = {
              cells                = {}
              columnSelectSequence = []
              columns              = {}
              highlightState       = {}
              rows                 = {}
              selectionType        = "table"
            }
            shouldAutoLayout           = false
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
              datasetId   = "${local.cloud_sql_logs_error}"
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
              parentStageId          = "stage-9e63b4hp"
              type                   = "Timescrubber"
            },
            {
              id            = "ecmky31q"
              isDisabled    = true
              parentStageId = "stage-9e63b4hp"
              type          = "Vis"
              vis = {
                config = {
                  color         = "Default"
                  hideGridLines = false
                  legend = {
                    placement = "right"
                    type      = "list"
                    visible   = true
                  }
                  type = "xy"
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
                      "severity",
                    ]
                    statsBy = {
                      fn = "count"
                    }
                    timechart = {
                      fn         = "count"
                      resolution = "AUTO"
                    }
                    transformType = "timechart"
                    type          = "xy"
                    y             = "severity"
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
              datasetQuery = null
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
              name              = "Input Step"
              opal              = []
              queryPresentation = {}
              renderType        = null
              summary           = "dbResource (undefined)"
              type              = "InputStep"
            },
            {
              columnStatsTable = {
                columnFunctions = {
                  log_Name     = "count"
                  log_Source   = "count"
                  project_id   = "count"
                  protoPayload = "count"
                  region       = "count"
                  severity     = "count"
                  textPayload  = "count"
                }
                datasetQueryId = {
                  ignoreCompress = false
                  queryId        = "q-gjdr8j4s"
                  resultKinds = [
                    "ResultKindSchema",
                    "ResultKindData",
                  ]
                  tableTypes = [
                    "TABULAR",
                  ]
                }
              }
              datasetQuery = null
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
              name     = "follow (custom)"
              opal = [
                "follow database_id = @\"Cloud SQL Logs Error\".database_id",
              ]
              queryPresentation = {}
              renderType        = null
              type              = "unknown"
            },
          ]
          type = "table"
          viewModel = {
            consoleValue = null
            railCollapseState = {
              inputsOutputs = false
              minimap       = false
              note          = true
              script        = true
            }
            scriptTab     = "INPUTS"
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
            columnVisibility            = {}
            columnWidths                = {}
            containerWidth              = 1313
            contextMenuXCoord           = null
            contextMenuYCoord           = null
            defaultColumnWidth          = 70
            disableFixedLeftColumns     = false
            eventLinkColumnId           = null
            fetchPageSize               = 100
            hasCalculatedColumnWidths   = false
            hasDoneAutoLayout           = false
            maxColumnWidth              = 400
            maxMeasuredColumnWidth      = {}
            minColumnWidth              = 60
            minRowHeight                = 30
            preserveCellAndRowSelection = true
            rowHeaderWidth              = 20
            rowHeights                  = {}
            rowSizeIncrement            = 1
            scrollToColumn              = null
            scrollToRow                 = 0
            selection = {
              cells                = {}
              columnSelectSequence = []
              columns              = {}
              highlightState       = {}
              rows                 = {}
              selectionType        = "table"
            }
            shouldAutoLayout           = false
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
              parentStageId          = "stage-h169l5vk"
              type                   = "Timescrubber"
            },
            {
              id            = "e0mkbwu0"
              isDisabled    = false
              parentStageId = "stage-h169l5vk"
              type          = "Vis"
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
                    transformType = "timechart"
                    type          = "keyvalue"
                    valueField    = "gceZone"
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
          }
          renderType     = "TABLE"
          selectedStepId = null
          serializable   = true
          steps = [
            {
              columnStatsTable = {
                columnFunctions = {
                  availabilityType         = "count"
                  backendType              = "count"
                  backupConfiguration      = "count"
                  createTime               = "count"
                  dataDiskSizeGb           = "count"
                  dataDiskType             = "count"
                  databaseFlags            = "count"
                  databaseInstalledVersion = "count"
                  databaseVersion          = "count"
                  database_id              = "count"
                  gceZone                  = "count"
                  ipAddressPrimary         = "count"
                  ipAddresses              = "count"
                  ipConfiguration          = "count"
                  name                     = "count"
                  project_id               = "count"
                  region                   = "count"
                  state                    = "count"
                  tier                     = "count"
                }
                datasetQueryId = {
                  ignoreCompress = false
                  queryId        = "q-s65ahr2g"
                  resultKinds = [
                    "ResultKindSchema",
                    "ResultKindData",
                  ]
                  tableTypes = [
                    "TABULAR",
                  ]
                }
              }
              datasetQuery = null
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
              name              = "Input Step"
              opal              = []
              queryPresentation = {}
              renderType        = null
              summary           = "dbResource (undefined)"
              type              = "InputStep"
            },
          ]
          type = "table"
          viewModel = {
            consoleValue = null
            railCollapseState = {
              inputsOutputs = false
              minimap       = false
              note          = true
              script        = true
            }
            scriptTab     = "SCRIPT"
            showTimeRuler = true
            stageTab      = "vis"
          }
        }
        params   = null
        pipeline = ""
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
            columnVisibility            = {}
            columnWidths                = {}
            containerWidth              = 1313
            contextMenuXCoord           = null
            contextMenuYCoord           = null
            defaultColumnWidth          = 70
            disableFixedLeftColumns     = false
            eventLinkColumnId           = null
            fetchPageSize               = 100
            hasCalculatedColumnWidths   = true
            hasDoneAutoLayout           = false
            maxColumnWidth              = 400
            maxMeasuredColumnWidth      = {}
            minColumnWidth              = 60
            minRowHeight                = 30
            preserveCellAndRowSelection = true
            rowHeaderWidth              = 20
            rowHeights                  = {}
            rowSizeIncrement            = 1
            scrollToColumn              = null
            scrollToRow                 = 0
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
            shouldAutoLayout           = false
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
              parentStageId          = "stage-bv986tcd"
              type                   = "Timescrubber"
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
              columnStatsTable = {
                columnFunctions = {
                  availabilityType         = "count"
                  backendType              = "count"
                  backupConfiguration      = "count"
                  dataDiskSizeGb           = "count"
                  dataDiskType             = "count"
                  databaseFlags            = "count"
                  databaseInstalledVersion = "count"
                  databaseVersion          = "count"
                  database_id              = "count"
                  deleted                  = "count"
                  gceZone                  = "count"
                  ipAddressPrimary         = "count"
                  ipAddresses              = "count"
                  ipConfiguration          = "count"
                  name                     = "count"
                  project_id               = "count"
                  region                   = "count"
                  tier                     = "count"
                  ttl                      = "count"
                }
                datasetQueryId = {
                  ignoreCompress = false
                  queryId        = "q-qo2q3bp3"
                  resultKinds = [
                    "ResultKindSchema",
                    "ResultKindData",
                  ]
                  tableTypes = [
                    "TABULAR",
                  ]
                }
              }
              datasetQuery = null
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
              name              = "Input Step"
              opal              = []
              queryPresentation = {}
              renderType        = null
              summary           = "dbResource (undefined)"
              type              = "InputStep"
            },
            {
              columnStatsTable = {
                columnFunctions = {
                  availabilityType         = "count"
                  backendType              = "count"
                  backupConfiguration      = "count"
                  dataDiskSizeGb           = "count"
                  dataDiskType             = "count"
                  databaseFlags            = "count"
                  databaseInstalledVersion = "count"
                  databaseVersion          = "count"
                  database_id              = "count"
                  deleted                  = "count"
                  gceZone                  = "count"
                  ipAddressPrimary         = "count"
                  ipAddresses              = "count"
                  ipConfiguration          = "count"
                  name                     = "count"
                  project_id               = "count"
                  region                   = "count"
                  tier                     = "count"
                  ttl                      = "count"
                }
                datasetQueryId = {
                  ignoreCompress = false
                  queryId        = "q-t9an11y7"
                  resultKinds = [
                    "ResultKindSchema",
                    "ResultKindData",
                  ]
                  tableTypes = [
                    "TABULAR",
                  ]
                }
              }
              datasetQuery = null
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
              name     = "pick_col (custom)"
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
              renderType        = null
              type              = "unknown"
            },
          ]
          type = "table"
          viewModel = {
            consoleValue = null
            railCollapseState = {
              inputsOutputs = false
              minimap       = false
              note          = true
              script        = true
            }
            scriptTab     = "INPUTS"
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
            columnVisibility            = {}
            columnWidths                = {}
            containerWidth              = 1313
            contextMenuXCoord           = null
            contextMenuYCoord           = null
            defaultColumnWidth          = 70
            disableFixedLeftColumns     = false
            eventLinkColumnId           = null
            fetchPageSize               = 100
            hasCalculatedColumnWidths   = false
            hasDoneAutoLayout           = false
            maxColumnWidth              = 400
            maxMeasuredColumnWidth      = {}
            minColumnWidth              = 60
            minRowHeight                = 30
            preserveCellAndRowSelection = true
            rowHeaderWidth              = 20
            rowHeights                  = {}
            rowSizeIncrement            = 1
            scrollToColumn              = null
            scrollToRow                 = 0
            selection = {
              cells                = {}
              columnSelectSequence = []
              columns              = {}
              highlightState       = {}
              rows                 = {}
              selectionType        = "table"
            }
            shouldAutoLayout           = false
            summaryColumnOrderOverride = {}
            summaryColumnVisibility    = {}
            tableHeight                = 0
            tableView                  = "TABULAR"
          }
          index = 15
          inputList = [
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
              parentStageId          = "stage-perdox7c"
              type                   = "Timescrubber"
            },
            {
              id            = "t6x5av1a"
              isDisabled    = false
              parentStageId = "stage-perdox7c"
              type          = "Vis"
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
                    visible = true
                  }
                }
                source = {
                  metric = {
                    aggregate   = "sum"
                    datasetId   = "${local.cloud_sql_metrics}"
                    description = "Auto Detected Metric"
                    groupBy = [
                      "metric_labels",
                      "database_id",
                    ]
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
                    id = {
                      datasetId = "${local.cloud_sql_metrics}"
                      name      = "database_disk_bytes_used_by_data_type"
                    }
                    interval = null
                    link = {
                      __typename = "ForeignKey"
                      dstFields = [
                        "database_id",
                      ]
                      label = "Cloud SQL Metrics"
                      srcFields = [
                        "database_id",
                      ]
                      targetDataset    = "${local.cloud_sql_instance}"
                      targetStageLabel = null
                      type             = "foreign"
                    }
                    name        = "database_disk_bytes_used_by_data_type"
                    resolution  = "AUTO"
                    rollup      = "sum"
                    type        = "gauge"
                    unit        = "bit"
                    userDefined = false
                  }
                  type = "metric"
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
            rollup = {}
          }
          renderType     = "TABLE"
          selectedStepId = null
          serializable   = true
          steps = [
            {
              columnStatsTable = {
                columnFunctions = {
                  availabilityType         = "count"
                  backendType              = "count"
                  backupConfiguration      = "count"
                  dataDiskSizeGb           = "count"
                  dataDiskType             = "count"
                  databaseFlags            = "count"
                  databaseInstalledVersion = "count"
                  databaseVersion          = "count"
                  database_id              = "count"
                  deleted                  = "count"
                  gceZone                  = "count"
                  ipAddressPrimary         = "count"
                  ipAddresses              = "count"
                  ipConfiguration          = "count"
                  name                     = "count"
                  project_id               = "count"
                  region                   = "count"
                  tier                     = "count"
                  ttl                      = "count"
                }
                datasetQueryId = {
                  ignoreCompress = false
                  queryId        = "q-d7bw0cc9"
                  resultKinds = [
                    "ResultKindSchema",
                    "ResultKindData",
                  ]
                  tableTypes = [
                    "TABULAR",
                  ]
                }
              }
              datasetQuery = null
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
              name              = "Input Step"
              opal              = []
              queryPresentation = {}
              renderType        = null
              summary           = "dbResource (undefined)"
              type              = "InputStep"
            },
          ]
          type = "table"
          viewModel = {
            consoleValue = null
            railCollapseState = {
              inputsOutputs = false
              minimap       = false
              note          = true
              script        = true
            }
            scriptTab     = "SCRIPT"
            showTimeRuler = true
            stageTab      = "vis"
          }
        }
        params   = null
        pipeline = ""
      },
      {
        id = "stage-wy53129b"
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
            columnVisibility            = {}
            columnWidths                = {}
            containerWidth              = 1313
            contextMenuXCoord           = null
            contextMenuYCoord           = null
            defaultColumnWidth          = 70
            disableFixedLeftColumns     = false
            eventLinkColumnId           = null
            fetchPageSize               = 100
            hasCalculatedColumnWidths   = false
            hasDoneAutoLayout           = false
            maxColumnWidth              = 400
            maxMeasuredColumnWidth      = {}
            minColumnWidth              = 60
            minRowHeight                = 30
            preserveCellAndRowSelection = true
            rowHeaderWidth              = 20
            rowHeights                  = {}
            rowSizeIncrement            = 1
            scrollToColumn              = null
            scrollToRow                 = 0
            selection = {
              cells                = {}
              columnSelectSequence = []
              columns              = {}
              highlightState       = {}
              rows                 = {}
              selectionType        = "table"
            }
            shouldAutoLayout           = false
            summaryColumnOrderOverride = {}
            summaryColumnVisibility    = {}
            tableHeight                = 0
            tableView                  = "TABULAR"
          }
          index = 16
          inputList = [
            {
              inputName   = "dbResource"
              inputRole   = "Data"
              isUserInput = false
              parameterId = "dbResource"
            },
          ]
          label = "Percent Disk Used"
          managers = [
            {
              id                     = "7xb4iip9"
              isDisabled             = true
              isResourceCountEnabled = false
              parentStageId          = "stage-wy53129b"
              type                   = "Timescrubber"
            },
            {
              id            = "kahpojid"
              isDisabled    = false
              parentStageId = "stage-wy53129b"
              type          = "Vis"
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
                  metric = {
                    aggregate   = "sum"
                    datasetId   = "${local.cloud_sql_metrics_wide}"
                    description = <<-EOT
                                            Percentage of disk quota used
                                        EOT
                    groupBy = [
                      "database_id",
                    ]
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
                          column     = "metric_category"
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
                      ]
                      validLinkLabels = [
                        "Cloud SQL Metrics Wide",
                      ]
                    }
                    id = {
                      datasetId = "${local.cloud_sql_metrics_wide}"
                      name      = "percent_disk_used"
                    }
                    interval = 60000
                    link = {
                      __typename = "ForeignKey"
                      dstFields = [
                        "database_id",
                      ]
                      label = "Cloud SQL Metrics Wide"
                      srcFields = [
                        "database_id",
                      ]
                      targetDataset    = "${local.cloud_sql_instance}"
                      targetStageLabel = null
                      type             = "foreign"
                    }
                    name        = "percent_disk_used"
                    rollup      = "avg"
                    type        = "gauge"
                    unit        = ""
                    userDefined = true
                  }
                  type = "metric"
                }
                type = "timeseries"
              }
            },
            {
              id            = "hup0o50d"
              isDisabled    = true
              parentStageId = "stage-wy53129b"
              type          = "RelatedContent"
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
          }
          renderType     = "TABLE"
          selectedStepId = null
          serializable   = true
          steps = [
            {
              columnStatsTable = {
                columnFunctions = {
                  availabilityType         = "count"
                  backendType              = "count"
                  backupConfiguration      = "count"
                  dataDiskSizeGb           = "count"
                  dataDiskType             = "count"
                  databaseFlags            = "count"
                  databaseInstalledVersion = "count"
                  databaseVersion          = "count"
                  database_id              = "count"
                  deleted                  = "count"
                  gceZone                  = "count"
                  ipAddressPrimary         = "count"
                  ipAddresses              = "count"
                  ipConfiguration          = "count"
                  name                     = "count"
                  project_id               = "count"
                  region                   = "count"
                  tier                     = "count"
                  ttl                      = "count"
                }
                datasetQueryId = {
                  ignoreCompress = false
                  queryId        = "q-gxryzkot"
                  resultKinds = [
                    "ResultKindSchema",
                    "ResultKindData",
                  ]
                  tableTypes = [
                    "TABULAR",
                  ]
                }
              }
              datasetQuery = null
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
              name              = "Input Step"
              opal              = []
              queryPresentation = {}
              renderType        = null
              summary           = "dbResource (undefined)"
              type              = "InputStep"
            },
          ]
          type = "table"
          viewModel = {
            consoleValue = null
            railCollapseState = {
              inputsOutputs = false
              minimap       = false
              note          = true
              script        = true
            }
            scriptTab     = "INPUTS"
            showTimeRuler = true
            stageTab      = "vis"
          }
        }
        params   = null
        pipeline = ""
      },
    ]
  )
  workspace = local.workspace
}

