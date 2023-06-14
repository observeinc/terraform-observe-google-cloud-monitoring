# terraform import observe_dashboard.redis_monitoring 41745727
resource "observe_dashboard" "redis_monitoring" {
  description = local.dashboard_description
  layout = jsonencode(
    {
      autoPack = true
      gridLayout = {
        sections = [
          {
            card = {
              cardType = "section"
              closed   = false
              id       = "section-1hrwz0fj"
              title    = "Untitled Section"
            }
            items = []
          },
          {
            card = {
              cardType = "section"
              closed   = false
              id       = "card-pjpvodz0"
              title    = "Summary"
            }
            items = [
              {
                card = {
                  cardType = "stage"
                  id       = "card-vcz0s4n3"
                  stageId  = "stage-gd5a7ls5"
                }
                layout = {
                  h           = 11
                  i           = "card-vcz0s4n3"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 2
                  x           = 6
                  y           = 0
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-mx6d3xe2"
                  stageId  = "stage-q5223la6"
                }
                layout = {
                  h           = 11
                  i           = "card-mx6d3xe2"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 2
                  x           = 4
                  y           = 0
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-vjgzych5"
                  stageId  = "stage-kkg69631"
                }
                layout = {
                  h           = 11
                  i           = "card-vjgzych5"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 2
                  x           = 8
                  y           = 0
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-svv9dr7i"
                  stageId  = "stage-95dn11kb"
                }
                layout = {
                  h           = 11
                  i           = "card-svv9dr7i"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 2
                  x           = 10
                  y           = 0
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-yb0odp2r"
                  stageId  = "stage-sblyl8hv"
                }
                layout = {
                  h           = 11
                  i           = "card-yb0odp2r"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 2
                  x           = 0
                  y           = 0
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-r034fkxl"
                  stageId  = "stage-z5l9wra8"
                }
                layout = {
                  h           = 11
                  i           = "card-r034fkxl"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 2
                  x           = 2
                  y           = 0
                }
              },
            ]
            lastModified = 1676329754532
          },
          {
            card = {
              cardType = "section"
              closed   = false
              id       = "section-i19xn7rx"
              title    = "Monitoring"
            }
            items = [
              {
                card = {
                  cardType = "stage"
                  id       = "card-ffmn95en"
                  stageId  = "stage-m6kykgl1"
                }
                layout = {
                  h           = 19
                  i           = "card-ffmn95en"
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
                  id       = "card-fj9vimnu"
                  stageId  = "stage-5il4u0ht"
                }
                layout = {
                  h           = 10
                  i           = "card-fj9vimnu"
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
                  id       = "card-ul9r334r"
                  stageId  = "stage-ltpfsi5n"
                }
                layout = {
                  h           = 9
                  i           = "card-ul9r334r"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 7
                  x           = 0
                  y           = 8
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-cby308vv"
                  stageId  = "stage-4vx5oqwq"
                }
                layout = {
                  h           = 12
                  i           = "card-cby308vv"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 4
                  x           = 8
                  y           = 17
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-dsjuagqo"
                  stageId  = "stage-xa7yo712"
                }
                layout = {
                  h           = 12
                  i           = "card-dsjuagqo"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 4
                  x           = 4
                  y           = 17
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-9espvsrs"
                  stageId  = "stage-xmeu7adi"
                }
                layout = {
                  h           = 12
                  i           = "card-9espvsrs"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 4
                  x           = 0
                  y           = 17
                }
              },
            ]
            lastModified = 1676483032638
          },
          {
            card = {
              cardType = "section"
              closed   = false
              id       = "section-ft8jerr3"
              title    = "Keys"
            }
            items = [
              {
                card = {
                  cardType = "stage"
                  id       = "card-6f5r2354"
                  stageId  = "stage-9y2jp9iw"
                }
                layout = {
                  h           = 11
                  i           = "card-6f5r2354"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 7
                  x           = 5
                  y           = 0
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-7t6mn4so"
                  stageId  = "stage-5flbedut"
                }
                layout = {
                  h           = 22
                  i           = "card-7t6mn4so"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 2
                  x           = 0
                  y           = 0
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-mu054jxi"
                  stageId  = "stage-f935xw0s"
                }
                layout = {
                  h           = 11
                  i           = "card-mu054jxi"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 3
                  x           = 2
                  y           = 0
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-2zvn76nh"
                  stageId  = "stage-9x9a8h1f"
                }
                layout = {
                  h           = 11
                  i           = "card-2zvn76nh"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 7
                  x           = 5
                  y           = 0
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-y5bhgr41"
                  stageId  = "stage-pwabkz2q"
                }
                layout = {
                  h           = 11
                  i           = "card-y5bhgr41"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 3
                  x           = 2
                  y           = 0
                }
              },
            ]
            lastModified = 1676483632999
          },
          {
            card = {
              cardType = "section"
              closed   = false
              id       = "section-5yf1rwfj"
              title    = "Documentation"
            }
            items = [
              {
                card = {
                  cardType = "text"
                  id       = "card-r4fj9zi6"
                  text     = <<-EOT
                                        ### Memorystore for Redis
                                                                                                                                                                                                                                                
                                        [https://cloud.google.com/memorystore/docs/redis/redis-overview](https://cloud.google.com/memorystore/docs/redis/redis-overview)
                                                                                                                                                                                                                                                
                                        Memorystore for Redis provides a fully-managed service that is powered by the Redis in-memory data store to build application caches that provide sub-millisecond data access.
                                                                                                                                                                                                                                                
                                        ### Use cases for Memorystore for Redis
                                                                                                                                                                                                                                                
                                        Memorystore for Redis provides a fast, in-memory store for use cases that require fast, real-time processing of data. From simple caching use cases to real time analytics, Memorystore for Redis provides the performance you need.
                                                                                                                                                                                                                                                
                                                                                                                                                                                                                                          
                                    EOT
                  title    = "Untitled Text"
                }
                layout = {
                  h           = 14
                  i           = "card-r4fj9zi6"
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
                  id       = "card-1yadvgu1"
                  text     = <<-EOT
                                        ### Notes
                                        Metrics are sampled every 60s and may take up to 240s to display.
                                                                                                                                                                                                                                                                                                                                
                                        To use this application you must implement the terraform-google-collection and the terraform google module with enable_service_redis set to true.
                                                                                                                                                                                                                                                                                                                                
                                                                                                                                                                                                                                                                                                                              
                                    EOT
                  title    = "Untitled Text"
                }
                layout = {
                  h           = 14
                  i           = "card-1yadvgu1"
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
            lastModified = 1677186168796
          },
        ]
      }
      stageListLayout = {
        isModified = false
        parameters = [
          {
            controlledFilterStageId = "stage-5if3k3ks"
            datasetId               = local.redis_instance
            defaultValue = {
              datasetref = {
                datasetId = local.redis_instance
              }
            }
            emptyValueEncoding    = "null"
            emptyValueLabelOption = "null"
            id                    = "input-parameter-5maomrv2"
            name                  = "redis"
            valueKind = {
              type = "DATASETREF"
            }
            viewType = "input"
          },
        ]
        selectedStageId = "stage-debafcpb"
        timeRange = {
          display               = "Today 12:13:40 → 13:13:40"
          endTime               = null
          millisFromCurrentTime = 3600000
          originalDisplay       = "Past 60 minutes"
          startTime             = null
          timeRangeInfo = {
            key        = "PRESETS"
            name       = "Presets"
            presetType = "PAST_60_MINUTES"
          }
        }
      }
    }
  )
  name = local.dashboard_name
  parameters = jsonencode(
    [
      {
        defaultValue = {
          datasetref = {
            datasetId = local.redis_instance
          }
        }
        id   = "input-parameter-5maomrv2"
        name = "redis"
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
        id = "stage-5if3k3ks"
        input = [
          {
            datasetId   = local.redis_instance
            datasetPath = null
            inputName   = "test_gcp_learning-bedbug/Redis Instance"
            inputRole   = "Data"
            stageId     = null
          },
        ]
        layout = {
          appearance = "HIDDEN"
          dataTableViewState = {
            autoTableHeight    = true
            columnFooterHeight = 0
            columnHeaderHeight = 29
            columnOrderOverride = {
              "1" = "Valid From"
              "2" = "Valid To"
            }
            columnVisibility             = {}
            columnWidths                 = {}
            contextMenuXCoord            = null
            contextMenuYCoord            = null
            defaultColumnWidth           = 70
            disableFixedLeftColumns      = false
            eventLinkColumnId            = null
            fetchPageSize                = 100
            hasCalculatedColumnWidths    = false
            hasDoneAutoLayout            = false
            maxColumnWidth               = 600
            maxMeasuredColumnHeaderWidth = {}
            maxMeasuredColumnWidth       = {}
            minColumnWidth               = 60
            minRowHeight                 = 30
            preserveCellAndRowSelection  = true
            rowHeaderWidth               = 20
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
            shouldAutoLayout           = false
            summaryColumnOrderOverride = {}
            summaryColumnVisibility    = {}
            tableHeight                = 0
            tableView                  = "TABULAR"
          }
          index = 0
          inputList = [
            {
              datasetId   = local.redis_instance
              inputName   = "test_gcp_learning-bedbug/Redis Instance"
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
              customSummary = "test_gcp_learning-bedbug/Redis Instance"
              datasetQuery  = null
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
              id       = "step-ezmooa2t"
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
            consoleValue = null
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
        id = "stage-95dn11kb"
        input = [
          {
            datasetId   = null
            datasetPath = null
            inputName   = "redis"
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
              "1" = "_c_valid_from"
              "2" = "_c_valid_to"
              "3" = "Valid From"
            }
            columnVisibility             = {}
            columnWidths                 = {}
            containerWidth               = 2143
            contextMenuXCoord            = null
            contextMenuYCoord            = null
            defaultColumnWidth           = 70
            disableFixedLeftColumns      = false
            eventLinkColumnId            = null
            fetchPageSize                = 100
            hasCalculatedColumnWidths    = false
            hasDoneAutoLayout            = false
            maxColumnWidth               = 600
            maxMeasuredColumnHeaderWidth = {}
            maxMeasuredColumnWidth       = {}
            minColumnWidth               = 60
            minRowHeight                 = 30
            preserveCellAndRowSelection  = true
            rowHeaderWidth               = 20
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
            shouldAutoLayout           = false
            summaryColumnOrderOverride = {}
            summaryColumnVisibility    = {}
            tableHeight                = 0
            tableView                  = "TABULAR"
          }
          index = 1
          inputList = [
            {
              inputName   = "redis"
              inputRole   = "Data"
              isUserInput = false
              parameterId = "input-parameter-5maomrv2"
            },
          ]
          label = "State"
          managers = [
            {
              id                     = "zf657dwn"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "87a34pjn"
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
                      "state",
                    ]
                    statsBy = {
                      fn = "avg"
                    }
                    timechart = {
                      fn         = "avg"
                      resolution = "SINGLE"
                    }
                    transformType = "timechart"
                    type          = "keyvalue"
                    valueField    = "_ob_value"
                  }
                  type = "table"
                }
                type = "circular"
              }
            },
            {
              id         = "jssp7cxm"
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
            ]
            rollup      = {}
            wantBuckets = 600
          }
          renderType     = "TABLE"
          selectedStepId = null
          serializable   = true
          steps = [
            {
              columnStatsTable = {
                columnFunctions = {
                  authorizedNetwork     = "count"
                  connectMode           = "count"
                  createTime            = "count"
                  currentLocationId     = "count"
                  datacenter            = "count"
                  host                  = "count"
                  instance_pkey         = "count"
                  location              = "count"
                  locationId            = "count"
                  name                  = "count"
                  nodes                 = "count"
                  persistenceMode       = "count"
                  port                  = "count"
                  project_id            = "count"
                  readReplicasMode      = "count"
                  redisVersion          = "count"
                  replicaCount          = "count"
                  reservedIpRange       = "count"
                  state                 = "count"
                  tier                  = "count"
                  transitEncryptionMode = "count"
                  ttl                   = "count"
                  version               = "count"
                }
                datasetQueryId = {
                  ignoreCompress = false
                  queryId        = "q-8f2vxszg"
                  resultKinds = [
                    "ResultKindSchema",
                    "ResultKindData",
                  ]
                  tableTypes = [
                    "TABULAR",
                  ]
                }
              }
              customName    = "Input"
              customSummary = "redis"
              datasetQuery  = null
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
              id                = "step-meveek96"
              index             = 0
              isPinned          = false
              opal              = []
              queryPresentation = {}
              type              = "InputStep"
            },
            {
              action = {
                params = {
                  emptyBins   = true
                  field       = "state"
                  fn          = "count_distinct"
                  fnArguments = []
                  groupBy = [
                    "state",
                  ]
                  valueColumnId = "_ob_value"
                }
                summary = null
                type    = "Timechart"
              }
              customSummary = ""
              datasetQuery  = null
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
              id       = "step-42jxcf50"
              index    = 1
              isPinned = false
              opal = [
                "timechart options(empty_bins:true), _ob_value:count_distinct(state), group_by(state)",
              ]
              queryPresentation = {}
              type              = "unknown"
            },
            {
              action = {
                params = {
                  fields = [
                    "_ob_value",
                  ]
                  fn     = "max"
                  fnArgs = []
                  k      = 16
                  order  = "Top"
                }
                summary = null
                type    = "TopK"
              }
              customSummary = ""
              datasetQuery  = null
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
              id       = "step-smau91h0"
              index    = 2
              isPinned = false
              opal = [
                "topk 16, max(_ob_value)",
              ]
              queryPresentation = {}
              type              = "unknown"
            },
          ]
          type = "table"
          viewModel = {
            consoleValue = <<-EOT
                            timechart options(empty_bins:true), _ob_value:count_distinct(state), group_by(state)
                            topk 16, max(_ob_value)
                        EOT
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
                    timechart options(empty_bins:true), _ob_value:count_distinct(state), group_by(state)
                    topk 16, max(_ob_value)
                EOT
      },
      {
        id = "stage-xa7yo712"
        input = [
          {
            datasetId   = local.redis_metrics
            datasetPath = null
            inputName   = "commands_calls_from_GCP/Redis Metrics"
            inputRole   = "Data"
            stageId     = null
          },
          {
            datasetId   = null
            datasetPath = null
            inputName   = "redis"
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
              "0" = "instance_pkey"
              "1" = "valid_from"
              "2" = "valid_to"
            }
            columnVisibility             = {}
            columnWidths                 = {}
            containerWidth               = 2143
            contextMenuXCoord            = null
            contextMenuYCoord            = null
            defaultColumnWidth           = 70
            disableFixedLeftColumns      = false
            eventLinkColumnId            = null
            fetchPageSize                = 100
            hasCalculatedColumnWidths    = false
            hasDoneAutoLayout            = false
            maxColumnWidth               = 600
            maxMeasuredColumnHeaderWidth = {}
            maxMeasuredColumnWidth       = {}
            minColumnWidth               = 60
            minRowHeight                 = 30
            preserveCellAndRowSelection  = true
            rowHeaderWidth               = 20
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
            shouldAutoLayout           = false
            summaryColumnOrderOverride = {}
            summaryColumnVisibility    = {}
            tableHeight                = 0
            tableView                  = "TABULAR"
          }
          index = 2
          inputList = [
            {
              datasetId   = local.redis_metrics
              inputName   = "commands_calls_from_GCP/Redis Metrics"
              inputRole   = "Data"
              isUserInput = true
            },
            {
              inputName   = "redis"
              inputRole   = "Data"
              isUserInput = true
              parameterId = "input-parameter-5maomrv2"
            },
          ]
          label = "Primary Node Command Calls"
          managers = [
            {
              id         = "q7b65ikg"
              isDisabled = false
              type       = "Vis"
              vis = {
                config = {
                  color         = "Default"
                  hideGridLines = false
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
                    axisLabel = "Calls"
                    visible   = true
                  }
                }
                source = {
                  table = {
                    groupFields = [
                      "hostname",
                    ]
                    transformType = "none"
                    type          = "xy"
                    x             = "valid_from"
                    y             = "metric_commands_calls_ybcszjy4"
                  }
                  topK = {
                    k     = 16
                    order = "Top"
                    type  = "Auto"
                  }
                  type = "table"
                }
                type = "timeseries"
              }
            },
            {
              id                     = "bg8lt21q"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
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
            wantBuckets = 600
          }
          selectedStepId = null
          serializable   = true
          steps = [
            {
              customName    = "Input"
              customSummary = "commands_calls_from_GCP/Redis Metrics"
              datasetQuery  = null
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
              id                = "step-miimkhzs"
              index             = 0
              isPinned          = false
              opal              = []
              queryPresentation = {}
              type              = "InputStep"
            },
            {
              columnStatsTable = {
                columnFunctions = {
                  hostname                       = "count"
                  metric_commands_calls_ybcszjy4 = "count"
                }
                datasetQueryId = {
                  ignoreCompress = false
                  queryId        = "q-y5mboyp1"
                  resultKinds = [
                    "ResultKindSchema",
                    "ResultKindData",
                  ]
                  tableTypes = [
                    "TABULAR",
                  ]
                }
              }
              customSummary = ""
              datasetQuery  = null
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
              id       = "step-2wzfhvmj"
              index    = 1
              isPinned = false
              opal = [
                "@A <- @\"commands_calls_from_GCP/Redis Metrics\" {",
                "    filter role = \"primary\" ",
                "    join instance_pkey = @redis.instance_pkey",
                "    align 2m, metric_commands_calls_ybcszjy4:avg(m(\"commands_calls\"))",
                "    aggregate metric_commands_calls_ybcszjy4:sum(metric_commands_calls_ybcszjy4), group_by(hostname)",
                "}",
                "<- @A {}",
              ]
              queryPresentation = {}
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
            showTimeRuler = true
            stageTab      = "vis"
          }
        }
        params   = null
        pipeline = <<-EOT
                    @A <- @"commands_calls_from_GCP/Redis Metrics" {
                        filter role = "primary" 
                        join instance_pkey = @redis.instance_pkey
                        align 2m, metric_commands_calls_ybcszjy4:avg(m("commands_calls"))
                        aggregate metric_commands_calls_ybcszjy4:sum(metric_commands_calls_ybcszjy4), group_by(hostname)
                    }
                    <- @A {}
                EOT
      },
      {
        id = "stage-5il4u0ht"
        input = [
          {
            datasetId   = null
            datasetPath = null
            inputName   = "redis"
            inputRole   = "Data"
            stageId     = null
          },
          {
            datasetId   = local.redis_metrics
            datasetPath = null
            inputName   = "stats_cpu_utilization_from_GCP/Redis Metrics"
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
              "0" = "instance_pkey"
              "1" = "valid_from"
              "2" = "valid_to"
            }
            columnVisibility             = {}
            columnWidths                 = {}
            contextMenuXCoord            = null
            contextMenuYCoord            = null
            defaultColumnWidth           = 70
            disableFixedLeftColumns      = false
            eventLinkColumnId            = null
            fetchPageSize                = 100
            hasCalculatedColumnWidths    = false
            hasDoneAutoLayout            = false
            maxColumnWidth               = 600
            maxMeasuredColumnHeaderWidth = {}
            maxMeasuredColumnWidth       = {}
            minColumnWidth               = 60
            minRowHeight                 = 30
            preserveCellAndRowSelection  = true
            rowHeaderWidth               = 20
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
            shouldAutoLayout           = false
            summaryColumnOrderOverride = {}
            summaryColumnVisibility    = {}
            tableHeight                = 0
            tableView                  = "TABULAR"
          }
          index = 3
          inputList = [
            {
              inputName   = "redis"
              inputRole   = "Data"
              isUserInput = true
              parameterId = "input-parameter-5maomrv2"
            },
            {
              datasetId   = local.redis_metrics
              inputName   = "stats_cpu_utilization_from_GCP/Redis Metrics"
              inputRole   = "Data"
              isUserInput = true
            },
          ]
          label = "Primary Node CPU Seconds"
          managers = [
            {
              id         = "bscqgy00"
              isDisabled = false
              type       = "Vis"
              vis = {
                config = {
                  color         = "Default"
                  hideGridLines = false
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
                    unit    = "seconds"
                    visible = true
                  }
                }
                source = {
                  table = {
                    groupFields = [
                      "hostname",
                    ]
                    transformType = "none"
                    type          = "xy"
                    x             = "valid_from"
                    y             = "metric_stats_cpu_utilization_8ieslylf"
                  }
                  topK = {
                    k     = 16
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
            resultKinds = [
              "ResultKindSchema",
            ]
            rollup      = {}
            wantBuckets = 600
          }
          selectedStepId = null
          serializable   = true
          steps = [
            {
              customName    = "Input"
              customSummary = ""
              datasetQuery  = null
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
              id                = "step-0h6suh18"
              index             = 0
              isPinned          = false
              opal              = []
              queryPresentation = {}
              type              = "InputStep"
            },
            {
              customSummary = ""
              datasetQuery  = null
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
              id       = "step-3clsnsh3"
              index    = 1
              isPinned = false
              opal = [
                "@A <- @\"stats_cpu_utilization_from_GCP/Redis Metrics\" {",
                "    filter role = \"primary\"",
                "    join instance_pkey = @redis.instance_pkey",
                "    align 2m, metric_stats_cpu_utilization_8ieslylf:rate(m(\"stats_cpu_utilization\"))",
                "    aggregate metric_stats_cpu_utilization_8ieslylf:sum(metric_stats_cpu_utilization_8ieslylf), group_by(hostname)",
                "}",
                "<- @A {}",
              ]
              queryPresentation = {}
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
            showTimeRuler = true
            stageTab      = "vis"
          }
        }
        params   = null
        pipeline = <<-EOT
                    @A <- @"stats_cpu_utilization_from_GCP/Redis Metrics" {
                        filter role = "primary"
                        join instance_pkey = @redis.instance_pkey
                        align 2m, metric_stats_cpu_utilization_8ieslylf:rate(m("stats_cpu_utilization"))
                        aggregate metric_stats_cpu_utilization_8ieslylf:sum(metric_stats_cpu_utilization_8ieslylf), group_by(hostname)
                    }
                    <- @A {}
                EOT
      },
      {
        id = "stage-5flbedut"
        input = [
          {
            datasetId   = null
            datasetPath = null
            inputName   = "redis"
            inputRole   = "Data"
            stageId     = null
          },
          {
            datasetId   = local.redis_metrics
            datasetPath = null
            inputName   = "keyspace_keys_from_GCP/Redis Metrics"
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
              "0" = "instance_pkey"
              "1" = "valid_from"
              "2" = "valid_to"
            }
            columnVisibility             = {}
            columnWidths                 = {}
            contextMenuXCoord            = null
            contextMenuYCoord            = null
            defaultColumnWidth           = 70
            disableFixedLeftColumns      = false
            eventLinkColumnId            = null
            fetchPageSize                = 100
            hasCalculatedColumnWidths    = false
            hasDoneAutoLayout            = false
            maxColumnWidth               = 600
            maxMeasuredColumnHeaderWidth = {}
            maxMeasuredColumnWidth       = {}
            minColumnWidth               = 60
            minRowHeight                 = 30
            preserveCellAndRowSelection  = true
            rowHeaderWidth               = 20
            rowHeights                   = {}
            rowSizeIncrement             = 1
            scrollToColumn               = null
            scrollToRow                  = 0
            selection = {
              anchoredCellSelection   = null
              anchoredColumnSelection = null
              anchoredRowSelection    = null
              cells                   = {}
              columnSelectSequence    = []
              columns                 = {}
              highlightState          = {}
              lastCellSelection       = null
              lastColumnSelection     = null
              lastRowSelection        = null
              rows                    = {}
              selectionType           = "table"
            }
            shouldAutoLayout           = false
            summaryColumnOrderOverride = {}
            summaryColumnVisibility    = {}
            tableHeight                = 0
            tableView                  = "TABULAR"
          }
          index = 4
          inputList = [
            {
              inputName   = "redis"
              inputRole   = "Data"
              isUserInput = true
              parameterId = "input-parameter-5maomrv2"
            },
            {
              datasetId   = local.redis_metrics
              inputName   = "keyspace_keys_from_GCP/Redis Metrics"
              inputRole   = "Data"
              isUserInput = true
            },
          ]
          label = "Keys"
          managers = [
            {
              id         = "o6w848lt"
              isDisabled = false
              type       = "Vis"
              vis = {
                config = {
                  color         = "Default"
                  hideGridLines = false
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
                  table = {
                    groupFields = [
                      "hostname",
                    ]
                    transformType = "none"
                    type          = "xy"
                    x             = "valid_from"
                    y             = "metric_keyspace_keys_gutc2399"
                  }
                  topK = {
                    k     = 16
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
            resultKinds = [
              "ResultKindSchema",
            ]
            rollup      = {}
            wantBuckets = 600
          }
          selectedStepId = null
          serializable   = true
          steps = [
            {
              customName    = "Input"
              customSummary = ""
              datasetQuery  = null
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
              id                = "step-8sp3ytp8"
              index             = 0
              isPinned          = false
              opal              = []
              queryPresentation = {}
              type              = "InputStep"
            },
            {
              customSummary = ""
              datasetQuery  = null
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
              id       = "step-o2phd1zi"
              index    = 1
              isPinned = false
              opal = [
                "@A <- @\"keyspace_keys_from_GCP/Redis Metrics\" {",
                "    filter role = \"primary\"",
                "    join instance_pkey = @redis.instance_pkey",
                "    align 2m, metric_keyspace_keys_gutc2399:avg(m(\"keyspace_keys\"))",
                "    aggregate metric_keyspace_keys_gutc2399:sum(metric_keyspace_keys_gutc2399), group_by(hostname)",
                "}",
                "<- @A {}",
              ]
              queryPresentation = {}
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
            showTimeRuler = true
            stageTab      = "vis"
          }
        }
        params   = null
        pipeline = <<-EOT
                    @A <- @"keyspace_keys_from_GCP/Redis Metrics" {
                        filter role = "primary"
                        join instance_pkey = @redis.instance_pkey
                        align 2m, metric_keyspace_keys_gutc2399:avg(m("keyspace_keys"))
                        aggregate metric_keyspace_keys_gutc2399:sum(metric_keyspace_keys_gutc2399), group_by(hostname)
                    }
                    <- @A {}
                EOT
      },
      {
        id = "stage-xmeu7adi"
        input = [
          {
            datasetId   = null
            datasetPath = null
            inputName   = "redis"
            inputRole   = "Data"
            stageId     = null
          },
          {
            datasetId   = local.redis_metrics
            datasetPath = null
            inputName   = "clients_connected_from_GCP/Redis Metrics"
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
              "0" = "instance_pkey"
              "1" = "valid_from"
              "2" = "valid_to"
            }
            columnVisibility             = {}
            columnWidths                 = {}
            containerWidth               = 1311
            contextMenuXCoord            = null
            contextMenuYCoord            = null
            defaultColumnWidth           = 70
            disableFixedLeftColumns      = false
            eventLinkColumnId            = null
            fetchPageSize                = 100
            hasCalculatedColumnWidths    = false
            hasDoneAutoLayout            = false
            maxColumnWidth               = 600
            maxMeasuredColumnHeaderWidth = {}
            maxMeasuredColumnWidth       = {}
            minColumnWidth               = 60
            minRowHeight                 = 30
            preserveCellAndRowSelection  = true
            rowHeaderWidth               = 20
            rowHeights                   = {}
            rowSizeIncrement             = 1
            scrollToColumn               = null
            scrollToRow                  = 0
            selection = {
              anchoredCellSelection   = null
              anchoredColumnSelection = null
              anchoredRowSelection    = null
              cells                   = {}
              columnSelectSequence    = []
              columns                 = {}
              highlightState          = {}
              lastCellSelection       = null
              lastColumnSelection     = null
              lastRowSelection        = null
              rows                    = {}
              selectionType           = "table"
            }
            shouldAutoLayout           = false
            summaryColumnOrderOverride = {}
            summaryColumnVisibility    = {}
            tableHeight                = 0
            tableView                  = "TABULAR"
          }
          index = 5
          inputList = [
            {
              inputName   = "redis"
              inputRole   = "Data"
              isUserInput = true
              parameterId = "input-parameter-5maomrv2"
            },
            {
              datasetId   = local.redis_metrics
              inputName   = "clients_connected_from_GCP/Redis Metrics"
              inputRole   = "Data"
              isUserInput = true
            },
          ]
          label = "Clients Connected"
          managers = [
            {
              id         = "4vf3mj9l"
              isDisabled = false
              type       = "Vis"
              vis = {
                config = {
                  color         = "Default"
                  hideGridLines = false
                  legend = {
                    placement = "right"
                    type      = "list"
                    visible   = true
                  }
                  type    = "xy"
                  xConfig = {}
                  yConfig = {
                    visible = true
                  }
                }
                source = {
                  table = {
                    groupFields = [
                      "hostname",
                    ]
                    transformType = "none"
                    type          = "xy"
                    x             = "valid_from"
                    y             = "metric_clients_connected_3x4tfwpv"
                  }
                  topK = {
                    k     = 16
                    order = "Top"
                    type  = "Auto"
                  }
                  type = "table"
                }
                type = "timeseries"
              }
            },
            {
              id                     = "ihjkcyoq"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
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
            wantBuckets = 600
          }
          selectedStepId = null
          serializable   = true
          steps = [
            {
              customName    = "Input"
              customSummary = ""
              datasetQuery  = null
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
              id                = "step-kjxngiz3"
              index             = 0
              isPinned          = false
              opal              = []
              queryPresentation = {}
              type              = "InputStep"
            },
            {
              customSummary = ""
              datasetQuery  = null
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
              id       = "step-jbdsj9ch"
              index    = 1
              isPinned = false
              opal = [
                "@A <- @\"clients_connected_from_GCP/Redis Metrics\" {",
                "    filter role = \"primary\"",
                "    join instance_pkey = @redis.instance_pkey",
                "    align 2m, metric_clients_connected_3x4tfwpv:avg(m(\"clients_connected\"))",
                "    aggregate metric_clients_connected_3x4tfwpv:sum(metric_clients_connected_3x4tfwpv), group_by(hostname)",
                "}",
                "<- @A {}",
              ]
              queryPresentation = {}
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
            showTimeRuler = true
            stageTab      = "vis"
          }
        }
        params   = null
        pipeline = <<-EOT
                    @A <- @"clients_connected_from_GCP/Redis Metrics" {
                        filter role = "primary"
                        join instance_pkey = @redis.instance_pkey
                        align 2m, metric_clients_connected_3x4tfwpv:avg(m("clients_connected"))
                        aggregate metric_clients_connected_3x4tfwpv:sum(metric_clients_connected_3x4tfwpv), group_by(hostname)
                    }
                    <- @A {}
                EOT
      },
      {
        id = "stage-m6kykgl1"
        input = [
          {
            datasetId   = local.redis_metrics
            datasetPath = null
            inputName   = "stats_memory_usage_ratio_from_test_gcp_learning-bedbug/Redis Metrics"
            inputRole   = "Data"
            stageId     = null
          },
          {
            datasetId   = null
            datasetPath = null
            inputName   = "redis"
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
              "0" = "instance_pkey"
              "1" = "valid_from"
              "2" = "valid_to"
            }
            columnVisibility             = {}
            columnWidths                 = {}
            contextMenuXCoord            = null
            contextMenuYCoord            = null
            defaultColumnWidth           = 70
            disableFixedLeftColumns      = false
            eventLinkColumnId            = null
            fetchPageSize                = 100
            hasCalculatedColumnWidths    = false
            hasDoneAutoLayout            = false
            maxColumnWidth               = 600
            maxMeasuredColumnHeaderWidth = {}
            maxMeasuredColumnWidth       = {}
            minColumnWidth               = 60
            minRowHeight                 = 30
            preserveCellAndRowSelection  = true
            rowHeaderWidth               = 20
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
            shouldAutoLayout           = false
            summaryColumnOrderOverride = {}
            summaryColumnVisibility    = {}
            tableHeight                = 0
            tableView                  = "TABULAR"
          }
          index = 6
          inputList = [
            {
              datasetId   = local.redis_metrics
              inputName   = "stats_memory_usage_ratio_from_test_gcp_learning-bedbug/Redis Metrics"
              inputRole   = "Data"
              isUserInput = true
            },
            {
              inputName   = "redis"
              inputRole   = "Data"
              isUserInput = true
              parameterId = "input-parameter-5maomrv2"
            },
          ]
          label = "Memory Usage Ratio"
          managers = [
            {
              id         = "d2amf0wk"
              isDisabled = false
              type       = "Vis"
              vis = {
                config = {
                  color         = "Default"
                  hideGridLines = false
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
                    bounds = {
                      end   = 100
                      start = 0
                    }
                    unit    = "%"
                    visible = true
                  }
                }
                source = {
                  table = {
                    groupFields = [
                      "hostname",
                    ]
                    transformType = "none"
                    type          = "xy"
                    x             = "valid_from"
                    y             = "metric_stats_memory_usage_ratio_44v2388h"
                  }
                  topK = {
                    k     = 16
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
            resultKinds = [
              "ResultKindSchema",
            ]
            rollup      = {}
            wantBuckets = 600
          }
          selectedStepId = null
          serializable   = true
          steps = [
            {
              customName    = "Input"
              customSummary = "stats_memory_usage_ratio_from_test_gcp_learning-bedbug/Redis Metrics"
              datasetQuery  = null
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
              id                = "step-pvq3lxt2"
              index             = 0
              isPinned          = false
              opal              = []
              queryPresentation = {}
              type              = "InputStep"
            },
            {
              customSummary = ""
              datasetQuery  = null
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
              id       = "step-0bozlyiv"
              index    = 1
              isPinned = false
              opal = [
                "filter role = \"primary\"",
                "join instance_pkey = @redis.instance_pkey",
                "align 2m, metric_stats_memory_usage_ratio_44v2388h:avg(m(\"stats_memory_usage_ratio\"))",
                "aggregate metric_stats_memory_usage_ratio_44v2388h:sum(metric_stats_memory_usage_ratio_44v2388h*100), group_by(hostname)",
                "",
              ]
              queryPresentation = {}
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
            showTimeRuler = true
            stageTab      = "vis"
          }
        }
        params   = null
        pipeline = <<-EOT
                    filter role = "primary"
                    join instance_pkey = @redis.instance_pkey
                    align 2m, metric_stats_memory_usage_ratio_44v2388h:avg(m("stats_memory_usage_ratio"))
                    aggregate metric_stats_memory_usage_ratio_44v2388h:sum(metric_stats_memory_usage_ratio_44v2388h*100), group_by(hostname)
                EOT
      },
      {
        id = "stage-ltpfsi5n"
        input = [
          {
            datasetId   = null
            datasetPath = null
            inputName   = "redis"
            inputRole   = "Data"
            stageId     = null
          },
          {
            datasetId   = local.redis_metrics
            datasetPath = null
            inputName   = "stats_network_traffic_from_GCP/Redis Metrics"
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
              "0" = "instance_pkey"
              "1" = "valid_from"
              "2" = "valid_to"
            }
            columnVisibility             = {}
            columnWidths                 = {}
            contextMenuXCoord            = null
            contextMenuYCoord            = null
            defaultColumnWidth           = 70
            disableFixedLeftColumns      = false
            eventLinkColumnId            = null
            fetchPageSize                = 100
            hasCalculatedColumnWidths    = false
            hasDoneAutoLayout            = false
            maxColumnWidth               = 600
            maxMeasuredColumnHeaderWidth = {}
            maxMeasuredColumnWidth       = {}
            minColumnWidth               = 60
            minRowHeight                 = 30
            preserveCellAndRowSelection  = true
            rowHeaderWidth               = 20
            rowHeights                   = {}
            rowSizeIncrement             = 1
            scrollToColumn               = null
            scrollToRow                  = 0
            selection = {
              anchoredCellSelection   = null
              anchoredColumnSelection = null
              anchoredRowSelection    = null
              cells                   = {}
              columnSelectSequence    = []
              columns                 = {}
              highlightState          = {}
              lastCellSelection       = null
              lastColumnSelection     = null
              lastRowSelection        = null
              rows                    = {}
              selectionType           = "table"
            }
            shouldAutoLayout           = false
            summaryColumnOrderOverride = {}
            summaryColumnVisibility    = {}
            tableHeight                = 0
            tableView                  = "TABULAR"
          }
          index = 7
          inputList = [
            {
              inputName   = "redis"
              inputRole   = "Data"
              isUserInput = true
              parameterId = "input-parameter-5maomrv2"
            },
            {
              datasetId   = local.redis_metrics
              inputName   = "stats_network_traffic_from_GCP/Redis Metrics"
              inputRole   = "Data"
              isUserInput = true
            },
          ]
          label = "Network Traffic"
          managers = [
            {
              id         = "nr07lpgw"
              isDisabled = false
              type       = "Vis"
              vis = {
                config = {
                  color         = "Default"
                  hideGridLines = false
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
                      "hostname",
                    ]
                    transformType = "none"
                    type          = "xy"
                    x             = "valid_from"
                    y             = "metric_stats_network_traffic_5me9224l"
                  }
                  topK = {
                    k     = 16
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
            resultKinds = [
              "ResultKindSchema",
            ]
            rollup      = {}
            wantBuckets = 600
          }
          selectedStepId = null
          serializable   = true
          steps = [
            {
              customName    = "Input"
              customSummary = ""
              datasetQuery  = null
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
              id                = "step-y4kuszgm"
              index             = 0
              isPinned          = false
              opal              = []
              queryPresentation = {}
              type              = "InputStep"
            },
            {
              customSummary = ""
              datasetQuery  = null
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
              id       = "step-gqixl3h7"
              index    = 1
              isPinned = false
              opal = [
                "@A <- @\"stats_network_traffic_from_GCP/Redis Metrics\" {",
                "    filter role = \"primary\"",
                "    join instance_pkey = @redis.instance_pkey",
                "    align 2m, metric_stats_network_traffic_5me9224l:avg(m(\"stats_network_traffic\"))",
                "    aggregate metric_stats_network_traffic_5me9224l:sum(metric_stats_network_traffic_5me9224l), group_by(hostname)",
                "}",
                "<- @A {}",
              ]
              queryPresentation = {}
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
            showTimeRuler = true
            stageTab      = "vis"
          }
        }
        params   = null
        pipeline = <<-EOT
                    @A <- @"stats_network_traffic_from_GCP/Redis Metrics" {
                        filter role = "primary"
                        join instance_pkey = @redis.instance_pkey
                        align 2m, metric_stats_network_traffic_5me9224l:avg(m("stats_network_traffic"))
                        aggregate metric_stats_network_traffic_5me9224l:sum(metric_stats_network_traffic_5me9224l), group_by(hostname)
                    }
                    <- @A {}
                EOT
      },
      {
        id = "stage-4vx5oqwq"
        input = [
          {
            datasetId   = null
            datasetPath = null
            inputName   = "redis"
            inputRole   = "Data"
            stageId     = null
          },
          {
            datasetId   = local.redis_metrics
            datasetPath = null
            inputName   = "stats_connections_total_from_GCP/Redis Metrics"
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
              "0" = "instance_pkey"
              "1" = "valid_from"
              "2" = "valid_to"
            }
            columnVisibility             = {}
            columnWidths                 = {}
            contextMenuXCoord            = null
            contextMenuYCoord            = null
            defaultColumnWidth           = 70
            disableFixedLeftColumns      = false
            eventLinkColumnId            = null
            fetchPageSize                = 100
            hasCalculatedColumnWidths    = false
            hasDoneAutoLayout            = false
            maxColumnWidth               = 600
            maxMeasuredColumnHeaderWidth = {}
            maxMeasuredColumnWidth       = {}
            minColumnWidth               = 60
            minRowHeight                 = 30
            preserveCellAndRowSelection  = true
            rowHeaderWidth               = 20
            rowHeights                   = {}
            rowSizeIncrement             = 1
            scrollToColumn               = null
            scrollToRow                  = 0
            selection = {
              anchoredCellSelection   = null
              anchoredColumnSelection = null
              anchoredRowSelection    = null
              cells                   = {}
              columnSelectSequence    = []
              columns                 = {}
              highlightState          = {}
              lastCellSelection       = null
              lastColumnSelection     = null
              lastRowSelection        = null
              rows                    = {}
              selectionType           = "table"
            }
            shouldAutoLayout           = false
            summaryColumnOrderOverride = {}
            summaryColumnVisibility    = {}
            tableHeight                = 0
            tableView                  = "TABULAR"
          }
          index = 8
          inputList = [
            {
              inputName   = "redis"
              inputRole   = "Data"
              isUserInput = true
              parameterId = "input-parameter-5maomrv2"
            },
            {
              datasetId   = local.redis_metrics
              inputName   = "stats_connections_total_from_GCP/Redis Metrics"
              inputRole   = "Data"
              isUserInput = true
            },
          ]
          label = "Total Connections"
          managers = [
            {
              id         = "hp1uw60d"
              isDisabled = false
              type       = "Vis"
              vis = {
                config = {
                  color         = "Default"
                  hideGridLines = false
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
                    unit    = "1"
                    visible = true
                  }
                }
                source = {
                  table = {
                    groupFields = [
                      "hostname",
                    ]
                    transformType = "none"
                    type          = "xy"
                    x             = "valid_from"
                    y             = "metric_stats_connections_total_46w7dr1w"
                  }
                  topK = {
                    k     = 16
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
            resultKinds = [
              "ResultKindSchema",
            ]
            rollup      = {}
            wantBuckets = 600
          }
          selectedStepId = null
          serializable   = true
          steps = [
            {
              customName    = "Input"
              customSummary = ""
              datasetQuery  = null
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
              id                = "step-c6yl476d"
              index             = 0
              isPinned          = false
              opal              = []
              queryPresentation = {}
              type              = "InputStep"
            },
            {
              customSummary = ""
              datasetQuery  = null
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
              id       = "step-kfx4ez88"
              index    = 1
              isPinned = false
              opal = [
                "@A <- @\"stats_connections_total_from_GCP/Redis Metrics\" {",
                "    filter role = \"primary\"",
                "    join instance_pkey = @redis.instance_pkey",
                "    align 2m, metric_stats_connections_total_46w7dr1w:avg(m(\"stats_connections_total\"))",
                "    aggregate metric_stats_connections_total_46w7dr1w:sum(metric_stats_connections_total_46w7dr1w), group_by(hostname)",
                "}",
                "<- @A {}",
              ]
              queryPresentation = {}
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
            showTimeRuler = true
            stageTab      = "vis"
          }
        }
        params   = null
        pipeline = <<-EOT
                    @A <- @"stats_connections_total_from_GCP/Redis Metrics" {
                        filter role = "primary"
                        join instance_pkey = @redis.instance_pkey
                        align 2m, metric_stats_connections_total_46w7dr1w:avg(m("stats_connections_total"))
                        aggregate metric_stats_connections_total_46w7dr1w:sum(metric_stats_connections_total_46w7dr1w), group_by(hostname)
                    }
                    <- @A {}
                EOT
      },
      {
        id = "stage-pwabkz2q"
        input = [
          {
            datasetId   = null
            datasetPath = null
            inputName   = "redis"
            inputRole   = "Data"
            stageId     = null
          },
          {
            datasetId   = local.redis_metrics
            datasetPath = null
            inputName   = "keyspace_avg_ttl_from_GCP/Redis Metrics"
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
              "0" = "instance_pkey"
              "1" = "valid_from"
              "2" = "valid_to"
            }
            columnVisibility             = {}
            columnWidths                 = {}
            contextMenuXCoord            = null
            contextMenuYCoord            = null
            defaultColumnWidth           = 70
            disableFixedLeftColumns      = false
            eventLinkColumnId            = null
            fetchPageSize                = 100
            hasCalculatedColumnWidths    = false
            hasDoneAutoLayout            = false
            maxColumnWidth               = 600
            maxMeasuredColumnHeaderWidth = {}
            maxMeasuredColumnWidth       = {}
            minColumnWidth               = 60
            minRowHeight                 = 30
            preserveCellAndRowSelection  = true
            rowHeaderWidth               = 20
            rowHeights                   = {}
            rowSizeIncrement             = 1
            scrollToColumn               = null
            scrollToRow                  = 0
            selection = {
              anchoredCellSelection   = null
              anchoredColumnSelection = null
              anchoredRowSelection    = null
              cells                   = {}
              columnSelectSequence    = []
              columns                 = {}
              highlightState          = {}
              lastCellSelection       = null
              lastColumnSelection     = null
              lastRowSelection        = null
              rows                    = {}
              selectionType           = "table"
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
              inputName   = "redis"
              inputRole   = "Data"
              isUserInput = true
              parameterId = "input-parameter-5maomrv2"
            },
            {
              datasetId   = local.redis_metrics
              inputName   = "keyspace_avg_ttl_from_GCP/Redis Metrics"
              inputRole   = "Data"
              isUserInput = true
            },
          ]
          label = "Keys Average TTL"
          managers = [
            {
              id         = "hj2eq1zz"
              isDisabled = false
              type       = "Vis"
              vis = {
                config = {
                  color         = "Default"
                  hideGridLines = false
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
                  table = {
                    groupFields = [
                      "hostname",
                    ]
                    transformType = "none"
                    type          = "xy"
                    x             = "valid_from"
                    y             = "metric_keyspace_avg_ttl_7s5qqdnq"
                  }
                  topK = {
                    k     = 16
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
            resultKinds = [
              "ResultKindSchema",
            ]
            rollup      = {}
            wantBuckets = 600
          }
          selectedStepId = null
          serializable   = true
          steps = [
            {
              customName    = "Input"
              customSummary = ""
              datasetQuery  = null
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
              id                = "step-bitmvbp2"
              index             = 0
              isPinned          = false
              opal              = []
              queryPresentation = {}
              type              = "InputStep"
            },
            {
              customSummary = ""
              datasetQuery  = null
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
              id       = "step-9rz6bmsb"
              index    = 1
              isPinned = false
              opal = [
                "@A <- @\"keyspace_avg_ttl_from_GCP/Redis Metrics\" {",
                "    filter role = \"primary\"",
                "    join instance_pkey = @redis.instance_pkey",
                "    align 2m, metric_keyspace_avg_ttl_7s5qqdnq:avg(m(\"keyspace_avg_ttl\"))",
                "    aggregate metric_keyspace_avg_ttl_7s5qqdnq:sum(metric_keyspace_avg_ttl_7s5qqdnq), group_by(hostname)",
                "}",
                "<- @A {}",
              ]
              queryPresentation = {}
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
            showTimeRuler = true
            stageTab      = "vis"
          }
        }
        params   = null
        pipeline = <<-EOT
                    @A <- @"keyspace_avg_ttl_from_GCP/Redis Metrics" {
                        filter role = "primary"
                        join instance_pkey = @redis.instance_pkey
                        align 2m, metric_keyspace_avg_ttl_7s5qqdnq:avg(m("keyspace_avg_ttl"))
                        aggregate metric_keyspace_avg_ttl_7s5qqdnq:sum(metric_keyspace_avg_ttl_7s5qqdnq), group_by(hostname)
                    }
                    <- @A {}
                EOT
      },
      {
        id = "stage-f935xw0s"
        input = [
          {
            datasetId   = null
            datasetPath = null
            inputName   = "redis"
            inputRole   = "Data"
            stageId     = null
          },
          {
            datasetId   = local.redis_metrics
            datasetPath = null
            inputName   = "stats_expired_keys_from_GCP/Redis Metrics"
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
              "0" = "instance_pkey"
              "1" = "valid_from"
              "2" = "valid_to"
            }
            columnVisibility             = {}
            columnWidths                 = {}
            contextMenuXCoord            = null
            contextMenuYCoord            = null
            defaultColumnWidth           = 70
            disableFixedLeftColumns      = false
            eventLinkColumnId            = null
            fetchPageSize                = 100
            hasCalculatedColumnWidths    = false
            hasDoneAutoLayout            = false
            maxColumnWidth               = 600
            maxMeasuredColumnHeaderWidth = {}
            maxMeasuredColumnWidth       = {}
            minColumnWidth               = 60
            minRowHeight                 = 30
            preserveCellAndRowSelection  = true
            rowHeaderWidth               = 20
            rowHeights                   = {}
            rowSizeIncrement             = 1
            scrollToColumn               = null
            scrollToRow                  = 0
            selection = {
              anchoredCellSelection   = null
              anchoredColumnSelection = null
              anchoredRowSelection    = null
              cells                   = {}
              columnSelectSequence    = []
              columns                 = {}
              highlightState          = {}
              lastCellSelection       = null
              lastColumnSelection     = null
              lastRowSelection        = null
              rows                    = {}
              selectionType           = "table"
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
              inputName   = "redis"
              inputRole   = "Data"
              isUserInput = true
              parameterId = "input-parameter-5maomrv2"
            },
            {
              datasetId   = local.redis_metrics
              inputName   = "stats_expired_keys_from_GCP/Redis Metrics"
              inputRole   = "Data"
              isUserInput = true
            },
          ]
          label = "Expired Keys"
          managers = [
            {
              id         = "ex2hdk6v"
              isDisabled = false
              type       = "Vis"
              vis = {
                config = {
                  color         = "Default"
                  hideGridLines = false
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
                  table = {
                    groupFields = [
                      "hostname",
                    ]
                    transformType = "none"
                    type          = "xy"
                    x             = "valid_from"
                    y             = "metric_stats_expired_keys_wbhf0r7g"
                  }
                  topK = {
                    k     = 16
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
            resultKinds = [
              "ResultKindSchema",
            ]
            rollup      = {}
            wantBuckets = 600
          }
          selectedStepId = null
          serializable   = true
          steps = [
            {
              customName    = "Input"
              customSummary = ""
              datasetQuery  = null
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
              id                = "step-b748og96"
              index             = 0
              isPinned          = false
              opal              = []
              queryPresentation = {}
              type              = "InputStep"
            },
            {
              customSummary = ""
              datasetQuery  = null
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
              id       = "step-pivsl0wv"
              index    = 1
              isPinned = false
              opal = [
                "@A <- @\"stats_expired_keys_from_GCP/Redis Metrics\" {",
                "    filter role = \"primary\"",
                "    join instance_pkey = @redis.instance_pkey",
                "    align 2m, metric_stats_expired_keys_wbhf0r7g:avg(m(\"stats_expired_keys\"))",
                "    aggregate metric_stats_expired_keys_wbhf0r7g:sum(metric_stats_expired_keys_wbhf0r7g), group_by(hostname)",
                "}",
                "<- @A {}",
              ]
              queryPresentation = {}
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
            showTimeRuler = true
            stageTab      = "vis"
          }
        }
        params   = null
        pipeline = <<-EOT
                    @A <- @"stats_expired_keys_from_GCP/Redis Metrics" {
                        filter role = "primary"
                        join instance_pkey = @redis.instance_pkey
                        align 2m, metric_stats_expired_keys_wbhf0r7g:avg(m("stats_expired_keys"))
                        aggregate metric_stats_expired_keys_wbhf0r7g:sum(metric_stats_expired_keys_wbhf0r7g), group_by(hostname)
                    }
                    <- @A {}
                EOT
      },
      {
        id = "stage-9y2jp9iw"
        input = [
          {
            datasetId   = null
            datasetPath = null
            inputName   = "redis"
            inputRole   = "Data"
            stageId     = null
          },
          {
            datasetId   = local.redis_metrics
            datasetPath = null
            inputName   = "stats_keyspace_hits_from_GCP/Redis Metrics"
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
              "0" = "instance_pkey"
              "1" = "valid_from"
              "2" = "valid_to"
            }
            columnVisibility             = {}
            columnWidths                 = {}
            contextMenuXCoord            = null
            contextMenuYCoord            = null
            defaultColumnWidth           = 70
            disableFixedLeftColumns      = false
            eventLinkColumnId            = null
            fetchPageSize                = 100
            hasCalculatedColumnWidths    = false
            hasDoneAutoLayout            = false
            maxColumnWidth               = 600
            maxMeasuredColumnHeaderWidth = {}
            maxMeasuredColumnWidth       = {}
            minColumnWidth               = 60
            minRowHeight                 = 30
            preserveCellAndRowSelection  = true
            rowHeaderWidth               = 20
            rowHeights                   = {}
            rowSizeIncrement             = 1
            scrollToColumn               = null
            scrollToRow                  = 0
            selection = {
              anchoredCellSelection   = null
              anchoredColumnSelection = null
              anchoredRowSelection    = null
              cells                   = {}
              columnSelectSequence    = []
              columns                 = {}
              highlightState          = {}
              lastCellSelection       = null
              lastColumnSelection     = null
              lastRowSelection        = null
              rows                    = {}
              selectionType           = "table"
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
              inputName   = "redis"
              inputRole   = "Data"
              isUserInput = true
              parameterId = "input-parameter-5maomrv2"
            },
            {
              datasetId   = local.redis_metrics
              inputName   = "stats_keyspace_hits_from_GCP/Redis Metrics"
              inputRole   = "Data"
              isUserInput = true
            },
          ]
          label = "Key Hits"
          managers = [
            {
              id         = "tjh15j3k"
              isDisabled = false
              type       = "Vis"
              vis = {
                config = {
                  color         = "Default"
                  hideGridLines = false
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
                    unit    = "1"
                    visible = true
                  }
                }
                source = {
                  table = {
                    groupFields = [
                      "hostname",
                    ]
                    transformType = "none"
                    type          = "xy"
                    x             = "valid_from"
                    y             = "metric_stats_keyspace_hits_zk0gg3ud"
                  }
                  topK = {
                    k     = 16
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
            resultKinds = [
              "ResultKindSchema",
            ]
            rollup      = {}
            wantBuckets = 600
          }
          selectedStepId = null
          serializable   = true
          steps = [
            {
              customName    = "Input"
              customSummary = ""
              datasetQuery  = null
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
              id                = "step-sxo4fg9d"
              index             = 0
              isPinned          = false
              opal              = []
              queryPresentation = {}
              type              = "InputStep"
            },
            {
              customSummary = ""
              datasetQuery  = null
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
              id       = "step-33co3fso"
              index    = 1
              isPinned = false
              opal = [
                "@A <- @\"stats_keyspace_hits_from_GCP/Redis Metrics\" {",
                "    filter role = \"primary\"",
                "    join instance_pkey = @redis.instance_pkey",
                "    align 2m, metric_stats_keyspace_hits_zk0gg3ud:avg(m(\"stats_keyspace_hits\"))",
                "    aggregate metric_stats_keyspace_hits_zk0gg3ud:sum(metric_stats_keyspace_hits_zk0gg3ud), group_by(hostname)",
                "}",
                "<- @A {}",
              ]
              queryPresentation = {}
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
            showTimeRuler = true
            stageTab      = "vis"
          }
        }
        params   = null
        pipeline = <<-EOT
                    @A <- @"stats_keyspace_hits_from_GCP/Redis Metrics" {
                        filter role = "primary"
                        join instance_pkey = @redis.instance_pkey
                        align 2m, metric_stats_keyspace_hits_zk0gg3ud:avg(m("stats_keyspace_hits"))
                        aggregate metric_stats_keyspace_hits_zk0gg3ud:sum(metric_stats_keyspace_hits_zk0gg3ud), group_by(hostname)
                    }
                    <- @A {}
                EOT
      },
      {
        id = "stage-9x9a8h1f"
        input = [
          {
            datasetId   = null
            datasetPath = null
            inputName   = "redis"
            inputRole   = "Data"
            stageId     = null
          },
          {
            datasetId   = local.redis_metrics
            datasetPath = null
            inputName   = "stats_keyspace_misses_from_GCP/Redis Metrics"
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
              "0" = "instance_pkey"
              "1" = "valid_from"
              "2" = "valid_to"
            }
            columnVisibility             = {}
            columnWidths                 = {}
            contextMenuXCoord            = null
            contextMenuYCoord            = null
            defaultColumnWidth           = 70
            disableFixedLeftColumns      = false
            eventLinkColumnId            = null
            fetchPageSize                = 100
            hasCalculatedColumnWidths    = false
            hasDoneAutoLayout            = false
            maxColumnWidth               = 600
            maxMeasuredColumnHeaderWidth = {}
            maxMeasuredColumnWidth       = {}
            minColumnWidth               = 60
            minRowHeight                 = 30
            preserveCellAndRowSelection  = true
            rowHeaderWidth               = 20
            rowHeights                   = {}
            rowSizeIncrement             = 1
            scrollToColumn               = null
            scrollToRow                  = 0
            selection = {
              anchoredCellSelection   = null
              anchoredColumnSelection = null
              anchoredRowSelection    = null
              cells                   = {}
              columnSelectSequence    = []
              columns                 = {}
              highlightState          = {}
              lastCellSelection       = null
              lastColumnSelection     = null
              lastRowSelection        = null
              rows                    = {}
              selectionType           = "table"
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
              inputName   = "redis"
              inputRole   = "Data"
              isUserInput = true
              parameterId = "input-parameter-5maomrv2"
            },
            {
              datasetId   = local.redis_metrics
              inputName   = "stats_keyspace_misses_from_GCP/Redis Metrics"
              inputRole   = "Data"
              isUserInput = true
            },
          ]
          label = "Key Misses"
          managers = [
            {
              id         = "wu2ar5ea"
              isDisabled = false
              type       = "Vis"
              vis = {
                config = {
                  color         = "Default"
                  hideGridLines = false
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
                    unit    = "1"
                    visible = true
                  }
                }
                source = {
                  table = {
                    groupFields = [
                      [
                        "instance_pkey",
                      ],
                    ]
                    transformType = "none"
                    type          = "xy"
                    x             = "valid_from"
                    y             = "metric_stats_keyspace_misses_85e379pl"
                  }
                  topK = {
                    k     = 16
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
            resultKinds = [
              "ResultKindSchema",
            ]
            rollup      = {}
            wantBuckets = 600
          }
          selectedStepId = null
          serializable   = true
          steps = [
            {
              customName    = "Input"
              customSummary = ""
              datasetQuery  = null
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
              id                = "step-hcgpv754"
              index             = 0
              isPinned          = false
              opal              = []
              queryPresentation = {}
              type              = "InputStep"
            },
            {
              customSummary = ""
              datasetQuery  = null
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
              id       = "step-8i2zuwf2"
              index    = 1
              isPinned = false
              opal = [
                "@A <- @\"stats_keyspace_misses_from_GCP/Redis Metrics\" {",
                "    filter role = \"primary\"",
                "    join instance_pkey = @redis.instance_pkey",
                "    align 2m, metric_stats_keyspace_misses_85e379pl:avg(m(\"stats_keyspace_misses\"))",
                "    aggregate metric_stats_keyspace_misses_85e379pl:sum(metric_stats_keyspace_misses_85e379pl), group_by(instance_pkey)",
                "}",
                "<- @A {}",
              ]
              queryPresentation = {}
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
            showTimeRuler = true
            stageTab      = "vis"
          }
        }
        params   = null
        pipeline = <<-EOT
                    @A <- @"stats_keyspace_misses_from_GCP/Redis Metrics" {
                        filter role = "primary"
                        join instance_pkey = @redis.instance_pkey
                        align 2m, metric_stats_keyspace_misses_85e379pl:avg(m("stats_keyspace_misses"))
                        aggregate metric_stats_keyspace_misses_85e379pl:sum(metric_stats_keyspace_misses_85e379pl), group_by(instance_pkey)
                    }
                    <- @A {}
                EOT
      },
      {
        id = "stage-debafcpb"
        input = [
          {
            datasetId   = null
            datasetPath = null
            inputName   = "redis"
            inputRole   = "Data"
            stageId     = null
          },
          {
            datasetId   = local.redis_metrics
            datasetPath = null
            inputName   = "keyspace_keys_with_expiration_from_GCP/Redis Metrics"
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
              "0" = "instance_pkey"
              "1" = "valid_from"
              "2" = "valid_to"
            }
            columnVisibility             = {}
            columnWidths                 = {}
            contextMenuXCoord            = null
            contextMenuYCoord            = null
            defaultColumnWidth           = 70
            disableFixedLeftColumns      = false
            eventLinkColumnId            = null
            fetchPageSize                = 100
            hasCalculatedColumnWidths    = false
            hasDoneAutoLayout            = false
            maxColumnWidth               = 600
            maxMeasuredColumnHeaderWidth = {}
            maxMeasuredColumnWidth       = {}
            minColumnWidth               = 60
            minRowHeight                 = 30
            preserveCellAndRowSelection  = true
            rowHeaderWidth               = 20
            rowHeights                   = {}
            rowSizeIncrement             = 1
            scrollToColumn               = null
            scrollToRow                  = 0
            selection = {
              anchoredCellSelection   = null
              anchoredColumnSelection = null
              anchoredRowSelection    = null
              cells                   = {}
              columnSelectSequence    = []
              columns                 = {}
              highlightState          = {}
              lastCellSelection       = null
              lastColumnSelection     = null
              lastRowSelection        = null
              rows                    = {}
              selectionType           = "table"
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
              inputName   = "redis"
              inputRole   = "Data"
              isUserInput = true
              parameterId = "input-parameter-5maomrv2"
            },
            {
              datasetId   = local.redis_metrics
              inputName   = "keyspace_keys_with_expiration_from_GCP/Redis Metrics"
              inputRole   = "Data"
              isUserInput = true
            },
          ]
          label = "Keys With Expiration"
          managers = [
            {
              id         = "rzsgrawi"
              isDisabled = false
              type       = "Vis"
              vis = {
                config = {
                  color         = "Default"
                  hideGridLines = false
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
                    unit    = "1"
                    visible = true
                  }
                }
                source = {
                  table = {
                    groupFields = [
                      "hostname",
                    ]
                    transformType = "none"
                    type          = "xy"
                    x             = "valid_from"
                    y             = "metric_keyspace_keys_with_expiration_ov8o9z71"
                  }
                  topK = {
                    k     = 16
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
            resultKinds = [
              "ResultKindSchema",
            ]
            rollup      = {}
            wantBuckets = 600
          }
          selectedStepId = null
          serializable   = true
          steps = [
            {
              customName    = "Input"
              customSummary = ""
              datasetQuery  = null
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
              id                = "step-w411f7au"
              index             = 0
              isPinned          = false
              opal              = []
              queryPresentation = {}
              type              = "InputStep"
            },
            {
              customSummary = ""
              datasetQuery  = null
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
              id       = "step-hg1v3wgw"
              index    = 1
              isPinned = false
              opal = [
                "@A <- @\"keyspace_keys_with_expiration_from_GCP/Redis Metrics\" {",
                "    filter role = \"primary\"",
                "    join instance_pkey = @redis.instance_pkey",
                "    align 2m, metric_keyspace_keys_with_expiration_ov8o9z71:avg(m(\"keyspace_keys_with_expiration\"))",
                "    aggregate metric_keyspace_keys_with_expiration_ov8o9z71:sum(metric_keyspace_keys_with_expiration_ov8o9z71), group_by(hostname)",
                "}",
                "<- @A {}",
              ]
              queryPresentation = {}
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
            showTimeRuler = true
            stageTab      = "vis"
          }
        }
        params   = null
        pipeline = <<-EOT
                    @A <- @"keyspace_keys_with_expiration_from_GCP/Redis Metrics" {
                        filter role = "primary"
                        join instance_pkey = @redis.instance_pkey
                        align 2m, metric_keyspace_keys_with_expiration_ov8o9z71:avg(m("keyspace_keys_with_expiration"))
                        aggregate metric_keyspace_keys_with_expiration_ov8o9z71:sum(metric_keyspace_keys_with_expiration_ov8o9z71), group_by(hostname)
                    }
                    <- @A {}
                EOT
      },
      {
        id = "stage-gd5a7ls5"
        input = [
          {
            datasetId   = null
            datasetPath = null
            inputName   = "redis"
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
              "1" = "Valid From"
              "2" = "Valid To"
            }
            columnVisibility             = {}
            columnWidths                 = {}
            containerWidth               = 1311
            contextMenuXCoord            = null
            contextMenuYCoord            = null
            defaultColumnWidth           = 70
            disableFixedLeftColumns      = false
            eventLinkColumnId            = null
            fetchPageSize                = 100
            hasCalculatedColumnWidths    = false
            hasDoneAutoLayout            = false
            maxColumnWidth               = 600
            maxMeasuredColumnHeaderWidth = {}
            maxMeasuredColumnWidth       = {}
            minColumnWidth               = 60
            minRowHeight                 = 30
            preserveCellAndRowSelection  = true
            rowHeaderWidth               = 20
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
            shouldAutoLayout           = false
            summaryColumnOrderOverride = {}
            summaryColumnVisibility    = {}
            tableHeight                = 0
            tableView                  = "TABULAR"
          }
          index = 14
          inputList = [
            {
              inputName   = "redis"
              inputRole   = "Data"
              isUserInput = false
              parameterId = "input-parameter-5maomrv2"
            },
          ]
          label = "Projects"
          managers = [
            {
              id                     = "rlzhgruy"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "77zo5egf"
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
                      fn         = "count_distinct"
                      fnArgs     = []
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
              columnStatsTable = {
                columnFunctions = {
                  authorizedNetwork     = "count"
                  connectMode           = "count"
                  createTime            = "count"
                  currentLocationId     = "count"
                  displayName           = "count"
                  host                  = "count"
                  instance_pkey         = "count"
                  location              = "count"
                  locationId            = "count"
                  name                  = "count"
                  nodes                 = "count"
                  persistenceMode       = "count"
                  port                  = "count"
                  project_id            = "count"
                  readReplicasMode      = "count"
                  redisVersion          = "count"
                  replicaCount          = "count"
                  reservedIpRange       = "count"
                  state                 = "count"
                  tier                  = "count"
                  transitEncryptionMode = "count"
                  ttl                   = "count"
                  version               = "count"
                }
                datasetQueryId = {
                  ignoreCompress = false
                  queryId        = "q-oqqfj25b"
                  resultKinds = [
                    "ResultKindSchema",
                    "ResultKindData",
                  ]
                  tableTypes = [
                    "TABULAR",
                  ]
                }
              }
              customName    = "Input"
              customSummary = "redis"
              datasetQuery  = null
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
              id                = "step-a5undelg"
              index             = 0
              isPinned          = false
              opal              = []
              queryPresentation = {}
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
            showTimeRuler = true
            stageTab      = "vis"
          }
        }
        params   = null
        pipeline = ""
      },
      {
        id = "stage-q5223la6"
        input = [
          {
            datasetId   = null
            datasetPath = null
            inputName   = "redis"
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
              "1" = "Valid From"
              "2" = "Valid To"
            }
            columnVisibility             = {}
            columnWidths                 = {}
            contextMenuXCoord            = null
            contextMenuYCoord            = null
            defaultColumnWidth           = 70
            disableFixedLeftColumns      = false
            eventLinkColumnId            = null
            fetchPageSize                = 100
            hasCalculatedColumnWidths    = false
            hasDoneAutoLayout            = false
            maxColumnWidth               = 600
            maxMeasuredColumnHeaderWidth = {}
            maxMeasuredColumnWidth       = {}
            minColumnWidth               = 60
            minRowHeight                 = 30
            preserveCellAndRowSelection  = true
            rowHeaderWidth               = 20
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
            shouldAutoLayout           = false
            summaryColumnOrderOverride = {}
            summaryColumnVisibility    = {}
            tableHeight                = 0
            tableView                  = "TABULAR"
          }
          index = 15
          inputList = [
            {
              inputName   = "redis"
              inputRole   = "Data"
              isUserInput = false
              parameterId = "input-parameter-5maomrv2"
            },
          ]
          label = "Zones"
          managers = [
            {
              id                     = "8409ne7z"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "2b6a13qw"
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
                      "locationId",
                    ]
                    statsBy = {
                      fn = "count"
                    }
                    timechart = {
                      fn         = "count_distinct"
                      fnArgs     = []
                      resolution = "SINGLE"
                    }
                    transformType = "timechart"
                    type          = "keyvalue"
                    valueField    = "locationId"
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
              customName    = "Input"
              customSummary = "redis"
              datasetQuery  = null
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
              id                = "step-yoae4ksn"
              index             = 0
              isPinned          = false
              opal              = []
              queryPresentation = {}
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
            showTimeRuler = true
            stageTab      = "vis"
          }
        }
        params   = null
        pipeline = ""
      },
      {
        id = "stage-z5l9wra8"
        input = [
          {
            datasetId   = null
            datasetPath = null
            inputName   = "redis"
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
              "1" = "Valid From"
              "2" = "Valid To"
            }
            columnVisibility             = {}
            columnWidths                 = {}
            contextMenuXCoord            = null
            contextMenuYCoord            = null
            defaultColumnWidth           = 70
            disableFixedLeftColumns      = false
            eventLinkColumnId            = null
            fetchPageSize                = 100
            hasCalculatedColumnWidths    = false
            hasDoneAutoLayout            = false
            maxColumnWidth               = 600
            maxMeasuredColumnHeaderWidth = {}
            maxMeasuredColumnWidth       = {}
            minColumnWidth               = 60
            minRowHeight                 = 30
            preserveCellAndRowSelection  = true
            rowHeaderWidth               = 20
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
            shouldAutoLayout           = false
            summaryColumnOrderOverride = {}
            summaryColumnVisibility    = {}
            tableHeight                = 0
            tableView                  = "TABULAR"
          }
          index = 16
          inputList = [
            {
              inputName   = "redis"
              inputRole   = "Data"
              isUserInput = false
              parameterId = "input-parameter-5maomrv2"
            },
          ]
          label = "Region"
          managers = [
            {
              id                     = "vgqy7vpf"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "s0lk7uja"
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
                      "location",
                    ]
                    statsBy = {
                      fn = "count"
                    }
                    timechart = {
                      fn         = "count_distinct"
                      fnArgs     = []
                      resolution = "SINGLE"
                    }
                    transformType = "timechart"
                    type          = "keyvalue"
                    valueField    = "location"
                  }
                  type = "table"
                }
                type = "circular"
              }
            },
            {
              id         = "wpeyitrn"
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
            ]
            rollup = {}
          }
          renderType     = "TABLE"
          selectedStepId = null
          serializable   = true
          steps = [
            {
              customName    = "Input"
              customSummary = "redis"
              datasetQuery  = null
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
              id                = "step-qsc07rzc"
              index             = 0
              isPinned          = false
              opal              = []
              queryPresentation = {}
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
            showTimeRuler = true
            stageTab      = "vis"
          }
        }
        params   = null
        pipeline = ""
      },
      {
        id = "stage-kkg69631"
        input = [
          {
            datasetId   = null
            datasetPath = null
            inputName   = "redis"
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
              "1" = "Valid From"
              "2" = "Valid To"
            }
            columnVisibility             = {}
            columnWidths                 = {}
            contextMenuXCoord            = null
            contextMenuYCoord            = null
            defaultColumnWidth           = 70
            disableFixedLeftColumns      = false
            eventLinkColumnId            = null
            fetchPageSize                = 100
            hasCalculatedColumnWidths    = false
            hasDoneAutoLayout            = false
            maxColumnWidth               = 600
            maxMeasuredColumnHeaderWidth = {}
            maxMeasuredColumnWidth       = {}
            minColumnWidth               = 60
            minRowHeight                 = 30
            preserveCellAndRowSelection  = true
            rowHeaderWidth               = 20
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
            shouldAutoLayout           = false
            summaryColumnOrderOverride = {}
            summaryColumnVisibility    = {}
            tableHeight                = 0
            tableView                  = "TABULAR"
          }
          index = 17
          inputList = [
            {
              inputName   = "redis"
              inputRole   = "Data"
              isUserInput = false
              parameterId = "input-parameter-5maomrv2"
            },
          ]
          label = "Version"
          managers = [
            {
              id                     = "lco46ype"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "rt2vlrrv"
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
                      "redisVersion",
                    ]
                    statsBy = {
                      fn = "count"
                    }
                    timechart = {
                      fn         = "count_distinct"
                      fnArgs     = []
                      resolution = "SINGLE"
                    }
                    transformType = "timechart"
                    type          = "keyvalue"
                    valueField    = "redisVersion"
                  }
                  type = "table"
                }
                type = "circular"
              }
            },
            {
              id         = "8e0cv2a7"
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
            ]
            rollup = {}
          }
          renderType     = "TABLE"
          selectedStepId = null
          serializable   = true
          steps = [
            {
              customName    = "Input"
              customSummary = "redis"
              datasetQuery  = null
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
              id                = "step-6ie65a7p"
              index             = 0
              isPinned          = false
              opal              = []
              queryPresentation = {}
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
            showTimeRuler = true
            stageTab      = "vis"
          }
        }
        params   = null
        pipeline = ""
      },
      {
        id = "stage-sblyl8hv"
        input = [
          {
            datasetId   = null
            datasetPath = null
            inputName   = "redis"
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
              "1" = "Valid From"
              "2" = "Valid To"
            }
            columnVisibility             = {}
            columnWidths                 = {}
            containerWidth               = 2143
            contextMenuXCoord            = null
            contextMenuYCoord            = null
            defaultColumnWidth           = 70
            disableFixedLeftColumns      = false
            eventLinkColumnId            = null
            fetchPageSize                = 100
            hasCalculatedColumnWidths    = false
            hasDoneAutoLayout            = false
            maxColumnWidth               = 600
            maxMeasuredColumnHeaderWidth = {}
            maxMeasuredColumnWidth       = {}
            minColumnWidth               = 60
            minRowHeight                 = 30
            preserveCellAndRowSelection  = true
            rowHeaderWidth               = 20
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
            shouldAutoLayout           = false
            summaryColumnOrderOverride = {}
            summaryColumnVisibility    = {}
            tableHeight                = 0
            tableView                  = "TABULAR"
          }
          index = 18
          inputList = [
            {
              inputName   = "redis"
              inputRole   = "Data"
              isUserInput = false
              parameterId = "input-parameter-5maomrv2"
            },
          ]
          label = "Instances"
          managers = [
            {
              id                     = "t7v1p686"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "51qbl3yk"
              isDisabled = false
              type       = "Vis"
              vis = {
                config = {
                  color           = "Default"
                  colorConfigType = "Color"
                  fieldConfig = {
                    unit    = ""
                    visible = false
                  }
                  singleStatLabel = "Instances"
                  thresholds      = null
                  type            = "singlefield"
                }
                source = {
                  table = {
                    field       = "instance_pkey"
                    groupFields = []
                    statsBy = {
                      fn = "count"
                    }
                    timechart = {
                      fn         = "count_distinct"
                      fnArgs     = []
                      resolution = "AUTO"
                    }
                    transformType = "timechart"
                    type          = "singlefield"
                  }
                  type = "table"
                }
                type = "singlevalue"
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
                  authorizedNetwork     = "count"
                  connectMode           = "count"
                  createTime            = "count"
                  currentLocationId     = "count"
                  displayName           = "count"
                  host                  = "count"
                  instance_pkey         = "count"
                  location              = "count"
                  locationId            = "count"
                  name                  = "count"
                  nodes                 = "count"
                  persistenceMode       = "count"
                  port                  = "count"
                  project_id            = "count"
                  readReplicasMode      = "count"
                  redisVersion          = "count"
                  replicaCount          = "count"
                  reservedIpRange       = "count"
                  state                 = "count"
                  tier                  = "count"
                  transitEncryptionMode = "count"
                  ttl                   = "count"
                  version               = "count"
                }
                datasetQueryId = {
                  ignoreCompress = false
                  queryId        = "q-a6c5idpy"
                  resultKinds = [
                    "ResultKindSchema",
                    "ResultKindData",
                  ]
                  tableTypes = [
                    "TABULAR",
                  ]
                }
              }
              customName    = "Input"
              customSummary = "redis"
              datasetQuery  = null
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
              id                = "step-9glxy3qw"
              index             = 0
              isPinned          = false
              opal              = []
              queryPresentation = {}
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

