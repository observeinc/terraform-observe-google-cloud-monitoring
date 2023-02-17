
# terraform import observe_dashboard.redis_monitoring 41726050
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
                  id       = "card-xoqlk2f6"
                  stageId  = "stage-lmhxifdn"
                }
                layout = {
                  h           = 11
                  i           = "card-xoqlk2f6"
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
                  id       = "card-aertnui4"
                  stageId  = "stage-va6o3bts"
                }
                layout = {
                  h           = 11
                  i           = "card-aertnui4"
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
                  id       = "card-oxh3x8qz"
                  stageId  = "stage-lbqljvi5"
                }
                layout = {
                  h           = 11
                  i           = "card-oxh3x8qz"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 2
                  x           = 2
                  y           = 0
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-0dbnktbs"
                  stageId  = "stage-utxmlh24"
                }
                layout = {
                  h           = 11
                  i           = "card-0dbnktbs"
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
                  id       = "card-qojjejfv"
                  stageId  = "stage-93nehch0"
                }
                layout = {
                  h           = 11
                  i           = "card-qojjejfv"
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
                  y           = 10
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
                  y           = 19
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
                  y           = 19
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
                  y           = 19
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
                  y           = 11
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
                  y           = 11
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
            lastModified = 1676598347706
          },
        ]
      }
      stageListLayout = {
        isModified = false
        parameters = [
          {
            controlledFilterStageId = "stage-5if3k3ks"
            datasetId               = "${local.redis_instance}"
            defaultValue = {
              datasetref = {
                datasetId = "${local.redis_instance}"
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
          display               = "Today 16:30:08 → 17:30:08"
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
            datasetId = "${local.redis_instance}"
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
            datasetId   = "${local.redis_instance}"
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
              datasetId   = "${local.redis_instance}"
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
                      fn = "count"
                    }
                    timechart = {
                      fn         = "count_distinct"
                      fnArgs     = []
                      resolution = "SINGLE"
                    }
                    transformType = "timechart"
                    type          = "keyvalue"
                    valueField    = "instance_pkey"
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
        id = "stage-lmhxifdn"
        input = [
          {
            datasetId   = "${local.redis_instance}"
            datasetPath = null
            inputName   = "test_gcp_learning-bedbug/Redis Instance"
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
          index = 2
          inputList = [
            {
              datasetId   = "${local.redis_instance}"
              inputName   = "test_gcp_learning-bedbug/Redis Instance"
              inputRole   = "Data"
              isUserInput = false
            },
          ]
          label = "Projects"
          managers = [
            {
              id                     = "bny6gf6m"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "kl7oocyd"
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
                  queryId        = "q-ua4vk8ju"
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
              id                = "step-5qbwr3pe"
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
        id = "stage-utxmlh24"
        input = [
          {
            datasetId   = "${local.redis_instance}"
            datasetPath = null
            inputName   = "test_gcp_learning-bedbug/Redis Instance"
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
          index = 3
          inputList = [
            {
              datasetId   = "${local.redis_instance}"
              inputName   = "test_gcp_learning-bedbug/Redis Instance"
              inputRole   = "Data"
              isUserInput = false
            },
          ]
          label = "Zones"
          managers = [
            {
              id                     = "ig40zb2x"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "lykfpnwu"
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
                      fn         = "count"
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
              columnStatsTable = {
                columnFunctions = {}
                datasetQueryId = {
                  ignoreCompress = false
                  queryId        = "q-5pw2470r"
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
              id                = "step-po499l5k"
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
        id = "stage-lbqljvi5"
        input = [
          {
            datasetId   = "${local.redis_instance}"
            datasetPath = null
            inputName   = "test_gcp_learning-bedbug/Redis Instance"
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
          index = 4
          inputList = [
            {
              datasetId   = "${local.redis_instance}"
              inputName   = "test_gcp_learning-bedbug/Redis Instance"
              inputRole   = "Data"
              isUserInput = false
            },
          ]
          label = "Region"
          managers = [
            {
              id                     = "qwgrmipa"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "0sd6ec9l"
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
                      fn         = "count"
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
                columnFunctions = {}
                datasetQueryId = {
                  ignoreCompress = false
                  queryId        = "q-dda2drif"
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
              id                = "step-yjfddpkj"
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
        id = "stage-va6o3bts"
        input = [
          {
            datasetId   = "${local.redis_instance}"
            datasetPath = null
            inputName   = "test_gcp_learning-bedbug/Redis Instance"
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
          index = 5
          inputList = [
            {
              datasetId   = "${local.redis_instance}"
              inputName   = "test_gcp_learning-bedbug/Redis Instance"
              inputRole   = "Data"
              isUserInput = false
            },
          ]
          label = "Version"
          managers = [
            {
              id                     = "q3rpmqdk"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "hio68n94"
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
              id         = "7lq1piuk"
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
              id                = "step-vjb8pbt4"
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
        id = "stage-93nehch0"
        input = [
          {
            datasetId   = "${local.redis_instance}"
            datasetPath = null
            inputName   = "test_gcp_learning-bedbug/Redis Instance"
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
          index = 6
          inputList = [
            {
              datasetId   = "${local.redis_instance}"
              inputName   = "test_gcp_learning-bedbug/Redis Instance"
              inputRole   = "Data"
              isUserInput = false
            },
          ]
          label = "Instances"
          managers = [
            {
              id                     = "021y2ra9"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "95zllajp"
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
            {
              id         = "f387a6mv"
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
              id                = "step-pli154ev"
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
        id = "stage-xa7yo712"
        input = [
          {
            datasetId   = "${local.redis_metrics}"
            datasetPath = null
            inputName   = "commands_calls_from_test_gcp_learning-bedbug/Redis Metrics"
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
          index     = 7
          inputList = []
          label     = "Primary Node Command Calls"
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
              id                = "step-miimkhzs"
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
                              columnId    = "role"
                              columnType  = "string"
                              filterVerb  = "filter"
                              isExcluding = false
                              values = [
                                "primary",
                              ]
                            }
                            summary = null
                            type    = "FilterValues"
                          },
                        ]
                        frameDuration = {
                          num  = 2
                          unit = "minute"
                        }
                        groupBy = [
                          "hostname",
                        ]
                        id            = "metricExpression-qnemg5ri"
                        lookupActions = []
                        metric = {
                          aggregate   = "sum"
                          datasetId   = "${local.redis_metrics}"
                          description = <<-EOT
                                                        Total number of calls for this command in one minute.
                                                    EOT
                          heuristics = {
                            __typename = "MetricHeuristics"
                            tags = [
                              {
                                __typename = "MetricTag"
                                column     = "role"
                                path       = ""
                              },
                              {
                                __typename = "MetricTag"
                                column     = "datacenter"
                                path       = ""
                              },
                              {
                                __typename = "MetricTag"
                                column     = "hostname"
                                path       = ""
                              },
                              {
                                __typename = "MetricTag"
                                column     = "instance_pkey"
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
                                column     = "relationship"
                                path       = ""
                              },
                              {
                                __typename = "MetricTag"
                                column     = "space"
                                path       = ""
                              },
                              {
                                __typename = "MetricTag"
                                column     = "metric_labels"
                                path       = "cmd"
                              },
                              {
                                __typename = "MetricTag"
                                column     = "metric_labels"
                                path       = "role"
                              },
                            ]
                            validLinkLabels = [
                              "Redis Cluster",
                            ]
                          }
                          interval    = null
                          name        = "commands_calls"
                          rollup      = "avg"
                          type        = "delta"
                          unit        = "1"
                          userDefined = true
                        }
                        showAlignment  = false
                        showResolution = false
                        summaryMode    = "over-time"
                        type           = "metricExpression"
                        valueColumnId  = "metric_commands_calls_ybcszjy4"
                      },
                    ]
                    selectedExpressionId = "metricExpression-qnemg5ri"
                  }
                }
                summary = null
                type    = "ExpressionBuilder"
              }
              customSummary = "Expression Builder"
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
              id       = "step-7fzd1nos"
              index    = 1
              isPinned = false
              opal = [
                "filter role = \"primary\"",
                "align frame(back: 2m), metric_commands_calls_ybcszjy4:avg(m(\"commands_calls\"))",
                "aggregate metric_commands_calls_ybcszjy4:sum(metric_commands_calls_ybcszjy4), group_by(hostname)",
              ]
              queryPresentation = {}
              type              = "unknown"
            },
          ]
          type = "table"
          viewModel = {
            consoleValue = <<-EOT
                            filter role = "primary"
                            align frame(back: 2m), metric_commands_calls_ybcszjy4:avg(m("commands_calls"))
                            aggregate metric_commands_calls_ybcszjy4:sum(metric_commands_calls_ybcszjy4), group_by(hostname)
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
                    filter role = "primary"
                    align frame(back: 2m), metric_commands_calls_ybcszjy4:avg(m("commands_calls"))
                    aggregate metric_commands_calls_ybcszjy4:sum(metric_commands_calls_ybcszjy4), group_by(hostname)
                EOT
      },
      {
        id = "stage-5il4u0ht"
        input = [
          {
            datasetId   = "${local.redis_metrics}"
            datasetPath = null
            inputName   = "stats_cpu_utilization_from_test_gcp_learning-bedbug/Redis Metrics"
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
          index     = 8
          inputList = []
          label     = "Primary Node CPU Seconds"
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
              action = {
                params = {
                  expressionList = {
                    expressions = [
                      {
                        dataVis = {
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
                              columnId    = "role"
                              columnType  = "string"
                              filterVerb  = "filter"
                              isExcluding = false
                              values = [
                                "primary",
                              ]
                            }
                            summary = null
                            type    = "FilterValues"
                          },
                        ]
                        frameDuration = {
                          num  = 5
                          unit = "minute"
                        }
                        groupBy = [
                          "hostname",
                        ]
                        id            = "metricExpression-riu13waw"
                        lookupActions = []
                        metric = {
                          aggregate   = "sum"
                          datasetId   = "${local.redis_metrics}"
                          description = <<-EOT
                                                        CPU-seconds consumed by the Redis server, broken down by system/user space and parent/child relationship.
                                                    EOT
                          heuristics = {
                            __typename = "MetricHeuristics"
                            tags = [
                              {
                                __typename = "MetricTag"
                                column     = "relationship"
                                path       = ""
                              },
                              {
                                __typename = "MetricTag"
                                column     = "role"
                                path       = ""
                              },
                              {
                                __typename = "MetricTag"
                                column     = "space"
                                path       = ""
                              },
                              {
                                __typename = "MetricTag"
                                column     = "datacenter"
                                path       = ""
                              },
                              {
                                __typename = "MetricTag"
                                column     = "hostname"
                                path       = ""
                              },
                              {
                                __typename = "MetricTag"
                                column     = "instance_pkey"
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
                                path       = "relationship"
                              },
                              {
                                __typename = "MetricTag"
                                column     = "metric_labels"
                                path       = "role"
                              },
                              {
                                __typename = "MetricTag"
                                column     = "metric_labels"
                                path       = "space"
                              },
                            ]
                            validLinkLabels = [
                              "Redis Cluster",
                            ]
                          }
                          interval    = null
                          name        = "stats_cpu_utilization"
                          rollup      = "rate"
                          type        = "delta"
                          unit        = "second"
                          userDefined = true
                        }
                        showAlignment  = false
                        showResolution = false
                        summaryMode    = "over-time"
                        type           = "metricExpression"
                        valueColumnId  = "metric_stats_cpu_utilization_8ieslylf"
                      },
                    ]
                    selectedExpressionId = "metricExpression-riu13waw"
                  }
                }
                summary = null
                type    = "ExpressionBuilder"
              }
              customSummary = "Expression Builder"
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
              id       = "step-ipxrnsu6"
              index    = 1
              isPinned = false
              opal = [
                "filter role = \"primary\"",
                "align frame(back: 5m), metric_stats_cpu_utilization_8ieslylf:rate(m(\"stats_cpu_utilization\"))",
                "aggregate metric_stats_cpu_utilization_8ieslylf:sum(metric_stats_cpu_utilization_8ieslylf), group_by(hostname)",
              ]
              queryPresentation = {}
              type              = "unknown"
            },
          ]
          type = "table"
          viewModel = {
            consoleValue = <<-EOT
                            filter role = "primary"
                            align frame(back: 5m), metric_stats_cpu_utilization_8ieslylf:rate(m("stats_cpu_utilization"))
                            aggregate metric_stats_cpu_utilization_8ieslylf:sum(metric_stats_cpu_utilization_8ieslylf), group_by(hostname)
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
                    filter role = "primary"
                    align frame(back: 5m), metric_stats_cpu_utilization_8ieslylf:rate(m("stats_cpu_utilization"))
                    aggregate metric_stats_cpu_utilization_8ieslylf:sum(metric_stats_cpu_utilization_8ieslylf), group_by(hostname)
                EOT
      },
      {
        id = "stage-5flbedut"
        input = [
          {
            datasetId   = "${local.redis_metrics}"
            datasetPath = null
            inputName   = "keyspace_keys_from_test_gcp_learning-bedbug/Redis Metrics"
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
          index     = 9
          inputList = []
          label     = "Keys"
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
              action = {
                params = {
                  expressionList = {
                    expressions = [
                      {
                        dataVis = {
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
                              columnId    = "role"
                              columnType  = "string"
                              filterVerb  = "filter"
                              isExcluding = false
                              values = [
                                "primary",
                              ]
                            }
                            summary = null
                            type    = "FilterValues"
                          },
                        ]
                        frameDuration = {
                          num  = 2
                          unit = "minute"
                        }
                        groupBy = [
                          "hostname",
                        ]
                        id            = "metricExpression-eeifze7a"
                        lookupActions = []
                        metric = {
                          aggregate   = "sum"
                          datasetId   = "${local.redis_metrics}"
                          description = <<-EOT
                                                        Number of keys stored in this database.
                                                    EOT
                          heuristics = {
                            __typename = "MetricHeuristics"
                            tags = [
                              {
                                __typename = "MetricTag"
                                column     = "role"
                                path       = ""
                              },
                              {
                                __typename = "MetricTag"
                                column     = "datacenter"
                                path       = ""
                              },
                              {
                                __typename = "MetricTag"
                                column     = "hostname"
                                path       = ""
                              },
                              {
                                __typename = "MetricTag"
                                column     = "instance_pkey"
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
                                column     = "relationship"
                                path       = ""
                              },
                              {
                                __typename = "MetricTag"
                                column     = "space"
                                path       = ""
                              },
                              {
                                __typename = "MetricTag"
                                column     = "metric_labels"
                                path       = "role"
                              },
                              {
                                __typename = "MetricTag"
                                column     = "metric_labels"
                                path       = "db"
                              },
                            ]
                            validLinkLabels = [
                              "Redis Cluster",
                            ]
                          }
                          interval    = null
                          name        = "keyspace_keys"
                          rollup      = "avg"
                          type        = "gauge"
                          unit        = "1"
                          userDefined = true
                        }
                        showAlignment  = false
                        showResolution = false
                        summaryMode    = "over-time"
                        type           = "metricExpression"
                        valueColumnId  = "metric_keyspace_keys_gutc2399"
                      },
                    ]
                    selectedExpressionId = "metricExpression-eeifze7a"
                  }
                }
                summary = null
                type    = "ExpressionBuilder"
              }
              customSummary = "Expression Builder"
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
              id       = "step-ne6qrckf"
              index    = 1
              isPinned = false
              opal = [
                "filter role = \"primary\"",
                "align frame(back: 2m), metric_keyspace_keys_gutc2399:avg(m(\"keyspace_keys\"))",
                "aggregate metric_keyspace_keys_gutc2399:sum(metric_keyspace_keys_gutc2399), group_by(hostname)",
              ]
              queryPresentation = {}
              type              = "unknown"
            },
          ]
          type = "table"
          viewModel = {
            consoleValue = <<-EOT
                            filter role = "primary"
                            align frame(back: 2m), metric_keyspace_keys_gutc2399:avg(m("keyspace_keys"))
                            aggregate metric_keyspace_keys_gutc2399:sum(metric_keyspace_keys_gutc2399), group_by(hostname)
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
                    filter role = "primary"
                    align frame(back: 2m), metric_keyspace_keys_gutc2399:avg(m("keyspace_keys"))
                    aggregate metric_keyspace_keys_gutc2399:sum(metric_keyspace_keys_gutc2399), group_by(hostname)
                EOT
      },
      {
        id = "stage-xmeu7adi"
        input = [
          {
            datasetId   = "${local.redis_metrics}"
            datasetPath = null
            inputName   = "clients_connected_from_test_gcp_learning-bedbug/Redis Metrics"
            inputRole   = "Data"
            stageId     = null
          },
          {
            datasetId   = "${local.redis_metrics}"
            datasetPath = null
            inputName   = "clients_blocked_from_test_gcp_learning-bedbug/Redis Metrics"
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
          index     = 10
          inputList = []
          label     = "Clients Connected"
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
                    visible   = false
                  }
                  type = "xy"
                  xConfig = {
                    visible = true
                  }
                  yConfig = {
                    axisLabel = "  "
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
                    y             = "metric_clients_blocked_lfju7wgx"
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
              action = {
                params = {
                  expressionList = {
                    expressions = [
                      {
                        dataVis = {
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
                                [
                                  "instance_pkey",
                                ],
                              ]
                              transformType = "none"
                              type          = "xy"
                              x             = "valid_from"
                              y             = "metric_clients_connected_3x4tfwpv"
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
                              columnId    = "role"
                              columnType  = "string"
                              filterVerb  = "filter"
                              isExcluding = false
                              values = [
                                "primary",
                              ]
                            }
                            summary = null
                            type    = "FilterValues"
                          },
                        ]
                        frameDuration = {
                          num  = 2
                          unit = "minute"
                        }
                        groupBy = [
                          "hostname",
                        ]
                        id            = "metricExpression-x89tx4bs"
                        isCollapsed   = false
                        lookupActions = []
                        metric = {
                          aggregate   = "sum"
                          datasetId   = "${local.redis_metrics}"
                          description = <<-EOT
                                                        Number of client connections.
                                                    EOT
                          heuristics = {
                            __typename = "MetricHeuristics"
                            tags = [
                              {
                                __typename = "MetricTag"
                                column     = "role"
                                path       = ""
                              },
                              {
                                __typename = "MetricTag"
                                column     = "datacenter"
                                path       = ""
                              },
                              {
                                __typename = "MetricTag"
                                column     = "hostname"
                                path       = ""
                              },
                              {
                                __typename = "MetricTag"
                                column     = "instance_pkey"
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
                                column     = "relationship"
                                path       = ""
                              },
                              {
                                __typename = "MetricTag"
                                column     = "space"
                                path       = ""
                              },
                              {
                                __typename = "MetricTag"
                                column     = "metric_labels"
                                path       = "role"
                              },
                            ]
                            validLinkLabels = [
                              "Redis Cluster",
                            ]
                          }
                          interval    = null
                          name        = "clients_connected"
                          rollup      = "avg"
                          type        = "gauge"
                          unit        = "1"
                          userDefined = true
                        }
                        showAlignment  = false
                        showResolution = false
                        summaryMode    = "over-time"
                        type           = "metricExpression"
                        valueColumnId  = "metric_clients_connected_3x4tfwpv"
                      },
                      {
                        dataVis = {
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
                              axisLabel = "  "
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
                              y             = "metric_clients_blocked_lfju7wgx"
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
                              columnId    = "role"
                              columnType  = "string"
                              filterVerb  = "filter"
                              isExcluding = false
                              values = [
                                "primary",
                              ]
                            }
                            summary = null
                            type    = "FilterValues"
                          },
                        ]
                        frameDuration = {
                          num  = 2
                          unit = "minute"
                        }
                        groupBy = [
                          "hostname",
                        ]
                        id            = "metricExpression-9ung0c4a"
                        lookupActions = []
                        metric = {
                          aggregate   = "sum"
                          datasetId   = "${local.redis_metrics}"
                          description = <<-EOT
                                                        Number of blocked clients.
                                                    EOT
                          heuristics = {
                            __typename = "MetricHeuristics"
                            tags = [
                              {
                                __typename = "MetricTag"
                                column     = "role"
                                path       = ""
                              },
                              {
                                __typename = "MetricTag"
                                column     = "datacenter"
                                path       = ""
                              },
                              {
                                __typename = "MetricTag"
                                column     = "hostname"
                                path       = ""
                              },
                              {
                                __typename = "MetricTag"
                                column     = "instance_pkey"
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
                                column     = "relationship"
                                path       = ""
                              },
                              {
                                __typename = "MetricTag"
                                column     = "space"
                                path       = ""
                              },
                              {
                                __typename = "MetricTag"
                                column     = "metric_labels"
                                path       = "role"
                              },
                            ]
                            validLinkLabels = [
                              "Redis Cluster",
                            ]
                          }
                          interval    = null
                          name        = "clients_blocked"
                          rollup      = "avg"
                          type        = "gauge"
                          unit        = "1"
                          userDefined = true
                        }
                        showAlignment  = false
                        showResolution = false
                        summaryMode    = "over-time"
                        type           = "metricExpression"
                        valueColumnId  = "metric_clients_blocked_lfju7wgx"
                      },
                    ]
                    selectedExpressionId = "metricExpression-9ung0c4a"
                  }
                }
                summary = null
                type    = "ExpressionBuilder"
              }
              columnStatsTable = {
                columnFunctions = {}
                datasetQueryId = {
                  ignoreCompress = false
                  queryId        = "q-ubdilqdz"
                  resultKinds = [
                    "ResultKindSchema",
                    "ResultKindData",
                  ]
                  tableTypes = [
                    "TABULAR",
                  ]
                }
              }
              customSummary = "Expression Builder"
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
              id       = "step-hugcyxpm"
              index    = 1
              isPinned = false
              opal = [
                "@A <- @\"clients_connected_from_test_gcp_learning-bedbug/Redis Metrics\" {",
                "    filter role = \"primary\"",
                "    align frame(back: 2m), metric_clients_connected_3x4tfwpv:avg(m(\"clients_connected\"))",
                "    aggregate metric_clients_connected_3x4tfwpv:sum(metric_clients_connected_3x4tfwpv), group_by(hostname)",
                "}",
                "@B <- @\"clients_blocked_from_test_gcp_learning-bedbug/Redis Metrics\" {",
                "    filter role = \"primary\"",
                "    align frame(back: 2m), metric_clients_blocked_lfju7wgx:avg(m(\"clients_blocked\"))",
                "    aggregate metric_clients_blocked_lfju7wgx:sum(metric_clients_blocked_lfju7wgx), group_by(hostname)",
                "}",
                "<- @B {}",
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
                    @A <- @"clients_connected_from_test_gcp_learning-bedbug/Redis Metrics" {
                        filter role = "primary"
                        align frame(back: 2m), metric_clients_connected_3x4tfwpv:avg(m("clients_connected"))
                        aggregate metric_clients_connected_3x4tfwpv:sum(metric_clients_connected_3x4tfwpv), group_by(hostname)
                    }
                    @B <- @"clients_blocked_from_test_gcp_learning-bedbug/Redis Metrics" {
                        filter role = "primary"
                        align frame(back: 2m), metric_clients_blocked_lfju7wgx:avg(m("clients_blocked"))
                        aggregate metric_clients_blocked_lfju7wgx:sum(metric_clients_blocked_lfju7wgx), group_by(hostname)
                    }
                    <- @B {}
                EOT
      },
      {
        id = "stage-m6kykgl1"
        input = [
          {
            datasetId   = "${local.redis_metrics}"
            datasetPath = null
            inputName   = "stats_memory_usage_ratio_from_test_gcp_learning-bedbug/Redis Metrics"
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
              datasetId   = "${local.redis_metrics}"
              inputName   = "stats_memory_usage_ratio_from_test_gcp_learning-bedbug/Redis Metrics"
              inputRole   = "Data"
              isUserInput = true
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
              id       = "step-3q1mday1"
              index    = 1
              isPinned = false
              opal = [
                "filter role = \"primary\"",
                "align frame(back: 2m), metric_stats_memory_usage_ratio_44v2388h:avg(m(\"stats_memory_usage_ratio\"))",
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
                    align frame(back: 2m), metric_stats_memory_usage_ratio_44v2388h:avg(m("stats_memory_usage_ratio"))
                    aggregate metric_stats_memory_usage_ratio_44v2388h:sum(metric_stats_memory_usage_ratio_44v2388h*100), group_by(hostname)
                EOT
      },
      {
        id = "stage-ltpfsi5n"
        input = [
          {
            datasetId   = "${local.redis_metrics}"
            datasetPath = null
            inputName   = "stats_network_traffic_from_test_gcp_learning-bedbug/Redis Metrics"
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
          index     = 12
          inputList = []
          label     = "Network Traffic"
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
              action = {
                params = {
                  expressionList = {
                    expressions = [
                      {
                        dataVis = {
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
                              columnId    = "role"
                              columnType  = "string"
                              filterVerb  = "filter"
                              isExcluding = false
                              values = [
                                "primary",
                              ]
                            }
                            summary = null
                            type    = "FilterValues"
                          },
                        ]
                        frameDuration = {
                          num  = 2
                          unit = "minute"
                        }
                        groupBy = [
                          "hostname",
                        ]
                        id            = "metricExpression-gqp9vr9x"
                        lookupActions = []
                        metric = {
                          aggregate   = "sum"
                          datasetId   = "${local.redis_metrics}"
                          description = <<-EOT
                                                        Total number of bytes sent to/from redis includes bytes from commands themselves, payload data, and delimiters.
                                                    EOT
                          heuristics = {
                            __typename = "MetricHeuristics"
                            tags = [
                              {
                                __typename = "MetricTag"
                                column     = "role"
                                path       = ""
                              },
                              {
                                __typename = "MetricTag"
                                column     = "datacenter"
                                path       = ""
                              },
                              {
                                __typename = "MetricTag"
                                column     = "hostname"
                                path       = ""
                              },
                              {
                                __typename = "MetricTag"
                                column     = "instance_pkey"
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
                                column     = "relationship"
                                path       = ""
                              },
                              {
                                __typename = "MetricTag"
                                column     = "space"
                                path       = ""
                              },
                              {
                                __typename = "MetricTag"
                                column     = "metric_labels"
                                path       = "direction"
                              },
                              {
                                __typename = "MetricTag"
                                column     = "metric_labels"
                                path       = "role"
                              },
                            ]
                            validLinkLabels = [
                              "Redis Cluster",
                            ]
                          }
                          interval    = null
                          name        = "stats_network_traffic"
                          rollup      = "avg"
                          type        = "delta"
                          unit        = "By"
                          userDefined = true
                        }
                        showAlignment  = false
                        showResolution = false
                        summaryMode    = "over-time"
                        type           = "metricExpression"
                        valueColumnId  = "metric_stats_network_traffic_5me9224l"
                      },
                    ]
                    selectedExpressionId = "metricExpression-gqp9vr9x"
                  }
                }
                summary = null
                type    = "ExpressionBuilder"
              }
              customSummary = "Expression Builder"
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
              id       = "step-hh60i0yf"
              index    = 1
              isPinned = false
              opal = [
                "filter role = \"primary\"",
                "align frame(back: 2m), metric_stats_network_traffic_5me9224l:avg(m(\"stats_network_traffic\"))",
                "aggregate metric_stats_network_traffic_5me9224l:sum(metric_stats_network_traffic_5me9224l), group_by(hostname)",
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
                    align frame(back: 2m), metric_stats_network_traffic_5me9224l:avg(m("stats_network_traffic"))
                    aggregate metric_stats_network_traffic_5me9224l:sum(metric_stats_network_traffic_5me9224l), group_by(hostname)
                EOT
      },
      {
        id = "stage-4vx5oqwq"
        input = [
          {
            datasetId   = "${local.redis_metrics}"
            datasetPath = null
            inputName   = "stats_connections_total_from_test_gcp_learning-bedbug/Redis Metrics"
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
          index     = 13
          inputList = []
          label     = "Total Connections"
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
              action = {
                params = {
                  expressionList = {
                    expressions = [
                      {
                        dataVis = {
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
                              columnId    = "role"
                              columnType  = "string"
                              filterVerb  = "filter"
                              isExcluding = false
                              values = [
                                "primary",
                              ]
                            }
                            summary = null
                            type    = "FilterValues"
                          },
                        ]
                        frameDuration = {
                          num  = 2
                          unit = "minute"
                        }
                        groupBy = [
                          "hostname",
                        ]
                        id            = "metricExpression-tear26ju"
                        lookupActions = []
                        metric = {
                          aggregate   = "sum"
                          datasetId   = "${local.redis_metrics}"
                          description = <<-EOT
                                                        Total number of connections accepted by the server.
                                                    EOT
                          heuristics = {
                            __typename = "MetricHeuristics"
                            tags = [
                              {
                                __typename = "MetricTag"
                                column     = "role"
                                path       = ""
                              },
                              {
                                __typename = "MetricTag"
                                column     = "datacenter"
                                path       = ""
                              },
                              {
                                __typename = "MetricTag"
                                column     = "hostname"
                                path       = ""
                              },
                              {
                                __typename = "MetricTag"
                                column     = "instance_pkey"
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
                                column     = "relationship"
                                path       = ""
                              },
                              {
                                __typename = "MetricTag"
                                column     = "space"
                                path       = ""
                              },
                              {
                                __typename = "MetricTag"
                                column     = "metric_labels"
                                path       = "role"
                              },
                            ]
                            validLinkLabels = [
                              "Redis Cluster",
                            ]
                          }
                          interval    = null
                          name        = "stats_connections_total"
                          rollup      = "avg"
                          type        = "delta"
                          unit        = "1"
                          userDefined = true
                        }
                        showAlignment  = false
                        showResolution = false
                        summaryMode    = "over-time"
                        type           = "metricExpression"
                        valueColumnId  = "metric_stats_connections_total_46w7dr1w"
                      },
                    ]
                    selectedExpressionId = "metricExpression-tear26ju"
                  }
                }
                summary = null
                type    = "ExpressionBuilder"
              }
              customSummary = "Expression Builder"
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
              id       = "step-5ux0elid"
              index    = 1
              isPinned = false
              opal = [
                "filter role = \"primary\"",
                "align frame(back: 2m), metric_stats_connections_total_46w7dr1w:avg(m(\"stats_connections_total\"))",
                "aggregate metric_stats_connections_total_46w7dr1w:sum(metric_stats_connections_total_46w7dr1w), group_by(hostname)",
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
                    align frame(back: 2m), metric_stats_connections_total_46w7dr1w:avg(m("stats_connections_total"))
                    aggregate metric_stats_connections_total_46w7dr1w:sum(metric_stats_connections_total_46w7dr1w), group_by(hostname)
                EOT
      },
      {
        id = "stage-pwabkz2q"
        input = [
          {
            datasetId   = "${local.redis_metrics}"
            datasetPath = null
            inputName   = "keyspace_avg_ttl_from_test_gcp_learning-bedbug/Redis Metrics"
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
          index     = 14
          inputList = []
          label     = "Keys Average TTL"
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
              action = {
                params = {
                  expressionList = {
                    expressions = [
                      {
                        dataVis = {
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
                              columnId    = "role"
                              columnType  = "string"
                              filterVerb  = "filter"
                              isExcluding = false
                              values = [
                                "primary",
                              ]
                            }
                            summary = null
                            type    = "FilterValues"
                          },
                        ]
                        frameDuration = {
                          num  = 2
                          unit = "minute"
                        }
                        groupBy = [
                          "hostname",
                        ]
                        id            = "metricExpression-10h8cahp"
                        lookupActions = []
                        metric = {
                          aggregate   = "sum"
                          datasetId   = "${local.redis_metrics}"
                          description = <<-EOT
                                                        Average TTL for keys in this database.
                                                    EOT
                          heuristics = {
                            __typename = "MetricHeuristics"
                            tags = [
                              {
                                __typename = "MetricTag"
                                column     = "role"
                                path       = ""
                              },
                              {
                                __typename = "MetricTag"
                                column     = "datacenter"
                                path       = ""
                              },
                              {
                                __typename = "MetricTag"
                                column     = "hostname"
                                path       = ""
                              },
                              {
                                __typename = "MetricTag"
                                column     = "instance_pkey"
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
                                column     = "command"
                                path       = ""
                              },
                              {
                                __typename = "MetricTag"
                                column     = "relationship"
                                path       = ""
                              },
                              {
                                __typename = "MetricTag"
                                column     = "space"
                                path       = ""
                              },
                              {
                                __typename = "MetricTag"
                                column     = "metric_labels"
                                path       = "role"
                              },
                              {
                                __typename = "MetricTag"
                                column     = "metric_labels"
                                path       = "db"
                              },
                            ]
                            validLinkLabels = [
                              "Redis Instance",
                            ]
                          }
                          interval    = null
                          name        = "keyspace_avg_ttl"
                          rollup      = "avg"
                          type        = "gauge"
                          unit        = "ms"
                          userDefined = true
                        }
                        showAlignment  = false
                        showResolution = false
                        summaryMode    = "over-time"
                        type           = "metricExpression"
                        valueColumnId  = "metric_keyspace_avg_ttl_7s5qqdnq"
                      },
                    ]
                    selectedExpressionId = "metricExpression-10h8cahp"
                  }
                }
                summary = null
                type    = "ExpressionBuilder"
              }
              customSummary = "Expression Builder"
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
              id       = "step-58nkc6ea"
              index    = 1
              isPinned = false
              opal = [
                "filter role = \"primary\"",
                "align frame(back: 2m), metric_keyspace_avg_ttl_7s5qqdnq:avg(m(\"keyspace_avg_ttl\"))",
                "aggregate metric_keyspace_avg_ttl_7s5qqdnq:sum(metric_keyspace_avg_ttl_7s5qqdnq), group_by(hostname)",
              ]
              queryPresentation = {}
              type              = "unknown"
            },
          ]
          type = "table"
          viewModel = {
            consoleValue = <<-EOT
                            filter role = "primary"
                            align frame(back: 2m), metric_keyspace_avg_ttl_7s5qqdnq:avg(m("keyspace_avg_ttl"))
                            aggregate metric_keyspace_avg_ttl_7s5qqdnq:sum(metric_keyspace_avg_ttl_7s5qqdnq), group_by(hostname)
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
                    filter role = "primary"
                    align frame(back: 2m), metric_keyspace_avg_ttl_7s5qqdnq:avg(m("keyspace_avg_ttl"))
                    aggregate metric_keyspace_avg_ttl_7s5qqdnq:sum(metric_keyspace_avg_ttl_7s5qqdnq), group_by(hostname)
                EOT
      },
      {
        id = "stage-f935xw0s"
        input = [
          {
            datasetId   = "${local.redis_metrics}"
            datasetPath = null
            inputName   = "stats_expired_keys_from_test_gcp_learning-bedbug/Redis Metrics"
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
          index     = 15
          inputList = []
          label     = "Expired Keys"
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
              action = {
                params = {
                  expressionList = {
                    expressions = [
                      {
                        dataVis = {
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
                              columnId    = "role"
                              columnType  = "string"
                              filterVerb  = "filter"
                              isExcluding = false
                              values = [
                                "primary",
                              ]
                            }
                            summary = null
                            type    = "FilterValues"
                          },
                        ]
                        frameDuration = {
                          num  = 2
                          unit = "minute"
                        }
                        groupBy = [
                          "hostname",
                        ]
                        id            = "metricExpression-3vsmpi6n"
                        lookupActions = []
                        metric = {
                          aggregate   = "sum"
                          datasetId   = "${local.redis_metrics}"
                          description = <<-EOT
                                                        Total number of key expiration events.
                                                    EOT
                          heuristics = {
                            __typename = "MetricHeuristics"
                            tags = [
                              {
                                __typename = "MetricTag"
                                column     = "role"
                                path       = ""
                              },
                              {
                                __typename = "MetricTag"
                                column     = "datacenter"
                                path       = ""
                              },
                              {
                                __typename = "MetricTag"
                                column     = "hostname"
                                path       = ""
                              },
                              {
                                __typename = "MetricTag"
                                column     = "instance_pkey"
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
                                column     = "command"
                                path       = ""
                              },
                              {
                                __typename = "MetricTag"
                                column     = "relationship"
                                path       = ""
                              },
                              {
                                __typename = "MetricTag"
                                column     = "space"
                                path       = ""
                              },
                              {
                                __typename = "MetricTag"
                                column     = "metric_labels"
                                path       = "role"
                              },
                            ]
                            validLinkLabels = [
                              "Redis Instance",
                            ]
                          }
                          interval    = null
                          name        = "stats_expired_keys"
                          rollup      = "avg"
                          type        = "delta"
                          unit        = "1"
                          userDefined = true
                        }
                        showAlignment  = false
                        showResolution = false
                        summaryMode    = "over-time"
                        type           = "metricExpression"
                        valueColumnId  = "metric_stats_expired_keys_wbhf0r7g"
                      },
                    ]
                    selectedExpressionId = "metricExpression-3vsmpi6n"
                  }
                }
                summary = null
                type    = "ExpressionBuilder"
              }
              customSummary = "Expression Builder"
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
              id       = "step-95lym1yo"
              index    = 1
              isPinned = false
              opal = [
                "filter role = \"primary\"",
                "align frame(back: 2m), metric_stats_expired_keys_wbhf0r7g:avg(m(\"stats_expired_keys\"))",
                "aggregate metric_stats_expired_keys_wbhf0r7g:sum(metric_stats_expired_keys_wbhf0r7g), group_by(hostname)",
              ]
              queryPresentation = {}
              type              = "unknown"
            },
          ]
          type = "table"
          viewModel = {
            consoleValue = <<-EOT
                            filter role = "primary"
                            align frame(back: 2m), metric_stats_expired_keys_wbhf0r7g:avg(m("stats_expired_keys"))
                            aggregate metric_stats_expired_keys_wbhf0r7g:sum(metric_stats_expired_keys_wbhf0r7g), group_by(hostname)
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
                    filter role = "primary"
                    align frame(back: 2m), metric_stats_expired_keys_wbhf0r7g:avg(m("stats_expired_keys"))
                    aggregate metric_stats_expired_keys_wbhf0r7g:sum(metric_stats_expired_keys_wbhf0r7g), group_by(hostname)
                EOT
      },
      {
        id = "stage-9y2jp9iw"
        input = [
          {
            datasetId   = "${local.redis_metrics}"
            datasetPath = null
            inputName   = "stats_keyspace_hits_from_test_gcp_learning-bedbug/Redis Metrics"
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
          index     = 16
          inputList = []
          label     = "Key Hits"
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
              action = {
                params = {
                  expressionList = {
                    expressions = [
                      {
                        dataVis = {
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
                              columnId    = "role"
                              columnType  = "string"
                              filterVerb  = "filter"
                              isExcluding = false
                              values = [
                                "primary",
                              ]
                            }
                            summary = null
                            type    = "FilterValues"
                          },
                        ]
                        frameDuration = {
                          num  = 2
                          unit = "minute"
                        }
                        groupBy = [
                          "hostname",
                        ]
                        id            = "metricExpression-rm1jhh4o"
                        lookupActions = []
                        metric = {
                          aggregate   = "sum"
                          datasetId   = "${local.redis_metrics}"
                          description = <<-EOT
                                                        Number of successful lookup of keys in the main dictionary.
                                                    EOT
                          heuristics = {
                            __typename = "MetricHeuristics"
                            tags = [
                              {
                                __typename = "MetricTag"
                                column     = "role"
                                path       = ""
                              },
                              {
                                __typename = "MetricTag"
                                column     = "datacenter"
                                path       = ""
                              },
                              {
                                __typename = "MetricTag"
                                column     = "hostname"
                                path       = ""
                              },
                              {
                                __typename = "MetricTag"
                                column     = "instance_pkey"
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
                                column     = "command"
                                path       = ""
                              },
                              {
                                __typename = "MetricTag"
                                column     = "relationship"
                                path       = ""
                              },
                              {
                                __typename = "MetricTag"
                                column     = "space"
                                path       = ""
                              },
                              {
                                __typename = "MetricTag"
                                column     = "metric_labels"
                                path       = "role"
                              },
                            ]
                            validLinkLabels = [
                              "Redis Instance",
                            ]
                          }
                          interval    = null
                          name        = "stats_keyspace_hits"
                          rollup      = "avg"
                          type        = "delta"
                          unit        = "1"
                          userDefined = true
                        }
                        showAlignment  = false
                        showResolution = false
                        summaryMode    = "over-time"
                        type           = "metricExpression"
                        valueColumnId  = "metric_stats_keyspace_hits_zk0gg3ud"
                      },
                    ]
                    selectedExpressionId = "metricExpression-rm1jhh4o"
                  }
                }
                summary = null
                type    = "ExpressionBuilder"
              }
              customSummary = "Expression Builder"
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
              id       = "step-o3gc9o53"
              index    = 1
              isPinned = false
              opal = [
                "filter role = \"primary\"",
                "align frame(back: 2m), metric_stats_keyspace_hits_zk0gg3ud:avg(m(\"stats_keyspace_hits\"))",
                "aggregate metric_stats_keyspace_hits_zk0gg3ud:sum(metric_stats_keyspace_hits_zk0gg3ud), group_by(hostname)",
              ]
              queryPresentation = {}
              type              = "unknown"
            },
          ]
          type = "table"
          viewModel = {
            consoleValue = <<-EOT
                            filter role = "primary"
                            align frame(back: 2m), metric_stats_keyspace_hits_zk0gg3ud:avg(m("stats_keyspace_hits"))
                            aggregate metric_stats_keyspace_hits_zk0gg3ud:sum(metric_stats_keyspace_hits_zk0gg3ud), group_by(hostname)
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
                    filter role = "primary"
                    align frame(back: 2m), metric_stats_keyspace_hits_zk0gg3ud:avg(m("stats_keyspace_hits"))
                    aggregate metric_stats_keyspace_hits_zk0gg3ud:sum(metric_stats_keyspace_hits_zk0gg3ud), group_by(hostname)
                EOT
      },
      {
        id = "stage-9x9a8h1f"
        input = [
          {
            datasetId   = "${local.redis_metrics}"
            datasetPath = null
            inputName   = "stats_keyspace_misses_from_test_gcp_learning-bedbug/Redis Metrics"
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
          index     = 17
          inputList = []
          label     = "Key Misses"
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
              action = {
                params = {
                  expressionList = {
                    expressions = [
                      {
                        dataVis = {
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
                              columnId    = "role"
                              columnType  = "string"
                              filterVerb  = "filter"
                              isExcluding = false
                              values = [
                                "primary",
                              ]
                            }
                            summary = null
                            type    = "FilterValues"
                          },
                        ]
                        frameDuration = {
                          num  = 2
                          unit = "minute"
                        }
                        groupBy = [
                          [
                            "instance_pkey",
                          ],
                        ]
                        id            = "metricExpression-0y9af9qt"
                        lookupActions = []
                        metric = {
                          aggregate   = "sum"
                          datasetId   = "${local.redis_metrics}"
                          description = <<-EOT
                                                        Number of failed lookup of keys in the main dictionary.
                                                    EOT
                          heuristics = {
                            __typename = "MetricHeuristics"
                            tags = [
                              {
                                __typename = "MetricTag"
                                column     = "role"
                                path       = ""
                              },
                              {
                                __typename = "MetricTag"
                                column     = "datacenter"
                                path       = ""
                              },
                              {
                                __typename = "MetricTag"
                                column     = "hostname"
                                path       = ""
                              },
                              {
                                __typename = "MetricTag"
                                column     = "instance_pkey"
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
                                column     = "command"
                                path       = ""
                              },
                              {
                                __typename = "MetricTag"
                                column     = "relationship"
                                path       = ""
                              },
                              {
                                __typename = "MetricTag"
                                column     = "space"
                                path       = ""
                              },
                              {
                                __typename = "MetricTag"
                                column     = "metric_labels"
                                path       = "role"
                              },
                            ]
                            validLinkLabels = [
                              "Redis Instance",
                            ]
                          }
                          interval    = null
                          name        = "stats_keyspace_misses"
                          rollup      = "avg"
                          type        = "delta"
                          unit        = "1"
                          userDefined = true
                        }
                        showAlignment  = false
                        showResolution = false
                        summaryMode    = "over-time"
                        type           = "metricExpression"
                        valueColumnId  = "metric_stats_keyspace_misses_85e379pl"
                      },
                    ]
                    selectedExpressionId = "metricExpression-0y9af9qt"
                  }
                }
                summary = null
                type    = "ExpressionBuilder"
              }
              customSummary = "Expression Builder"
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
              id       = "step-b67rbcfb"
              index    = 1
              isPinned = false
              opal = [
                "filter role = \"primary\"",
                "align frame(back: 2m), metric_stats_keyspace_misses_85e379pl:avg(m(\"stats_keyspace_misses\"))",
                "aggregate metric_stats_keyspace_misses_85e379pl:sum(metric_stats_keyspace_misses_85e379pl), group_by(instance_pkey)",
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
                    align frame(back: 2m), metric_stats_keyspace_misses_85e379pl:avg(m("stats_keyspace_misses"))
                    aggregate metric_stats_keyspace_misses_85e379pl:sum(metric_stats_keyspace_misses_85e379pl), group_by(instance_pkey)
                EOT
      },
      {
        id = "stage-debafcpb"
        input = [
          {
            datasetId   = "${local.redis_metrics}"
            datasetPath = null
            inputName   = "keyspace_keys_with_expiration_from_test_gcp_learning-bedbug/Redis Metrics"
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
          index     = 18
          inputList = []
          label     = "Keys With Expiration"
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
                    k     = 100
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
            wantBuckets = 50
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
              action = {
                params = {
                  expressionList = {
                    expressions = [
                      {
                        dataVis = {
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
                              columnId    = "role"
                              columnType  = "string"
                              filterVerb  = "filter"
                              isExcluding = false
                              values = [
                                "primary",
                              ]
                            }
                            summary = null
                            type    = "FilterValues"
                          },
                        ]
                        frameDuration = {
                          num  = 2
                          unit = "minute"
                        }
                        groupBy = [
                          "hostname",
                        ]
                        id            = "metricExpression-i218e0rg"
                        lookupActions = []
                        metric = {
                          aggregate   = "sum"
                          datasetId   = "${local.redis_metrics}"
                          description = <<-EOT
                                                        Number of keys with an expiration in this database.
                                                    EOT
                          heuristics  = null
                          interval    = null
                          name        = "keyspace_keys_with_expiration"
                          rollup      = "avg"
                          type        = "gauge"
                          unit        = "1"
                          userDefined = true
                        }
                        showAlignment  = false
                        showResolution = false
                        summaryMode    = "over-time"
                        type           = "metricExpression"
                        valueColumnId  = "metric_keyspace_keys_with_expiration_ov8o9z71"
                      },
                    ]
                    selectedExpressionId = "metricExpression-i218e0rg"
                  }
                }
                summary = null
                type    = "ExpressionBuilder"
              }
              customSummary = "Expression Builder"
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
              id       = "step-j87g67ug"
              index    = 1
              isPinned = false
              opal = [
                "filter role = \"primary\"",
                "align frame(back: 2m), metric_keyspace_keys_with_expiration_ov8o9z71:avg(m(\"keyspace_keys_with_expiration\"))",
                "aggregate metric_keyspace_keys_with_expiration_ov8o9z71:sum(metric_keyspace_keys_with_expiration_ov8o9z71), group_by(hostname)",
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
                    align frame(back: 2m), metric_keyspace_keys_with_expiration_ov8o9z71:avg(m("keyspace_keys_with_expiration"))
                    aggregate metric_keyspace_keys_with_expiration_ov8o9z71:sum(metric_keyspace_keys_with_expiration_ov8o9z71), group_by(hostname)
                EOT
      },
    ]
  )
  workspace = local.workspace
}
