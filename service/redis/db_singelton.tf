# terraform import observe_dashboard.redis_instance_v2 41743168
resource "observe_dashboard" "redis_instance_v2" {
  description = local.dashboard_description_singleton
  layout = jsonencode(
    {
      autoPack = true
      gridLayout = {
        sections = [
          {
            card = {
              cardType = "section"
              closed   = false
              id       = "card-ll37bbel"
              title    = "Dashboard Content"
            }
            items = [
              {
                card = {
                  cardType    = "parameter"
                  id          = "card-ve17w7ql"
                  parameterId = "redis"
                }
                layout = {
                  h           = 4
                  i           = "card-ve17w7ql"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  resizeHandles = [
                    "e",
                  ]
                  static = false
                  w      = 4
                  x      = 0
                  y      = 0
                }
              },
            ]
          },
          {
            card = {
              cardType = "section"
              closed   = false
              id       = "section-oaa8j6kq"
              title    = "Memory & CPU"
            }
            items = [
              {
                card = {
                  cardType = "stage"
                  id       = "card-njbtt6ok"
                  stageId  = "stage-0ho2ak92"
                }
                layout = {
                  h           = 8
                  i           = "card-njbtt6ok"
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
                  cardType = "stage"
                  id       = "card-483oye1k"
                  stageId  = "stage-kblmpc8o"
                }
                layout = {
                  h           = 8
                  i           = "card-483oye1k"
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
          },
          {
            card = {
              cardType = "section"
              closed   = false
              id       = "section-nd8q4myb"
              title    = "Network & Connections"
            }
            items = [
              {
                card = {
                  cardType = "stage"
                  id       = "card-65zx3ap9"
                  stageId  = "stage-kuf5r7f3"
                }
                layout = {
                  h           = 10
                  i           = "card-65zx3ap9"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 4
                  x           = 0
                  y           = 0
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-c3w5whl3"
                  stageId  = "stage-xbo28v7v"
                }
                layout = {
                  h           = 10
                  i           = "card-c3w5whl3"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 4
                  x           = 4
                  y           = 0
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-3jsqv0cj"
                  stageId  = "stage-kp5jhjdv"
                }
                layout = {
                  h           = 10
                  i           = "card-3jsqv0cj"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 4
                  x           = 8
                  y           = 0
                }
              },
            ]
          },
          {
            card = {
              cardType = "section"
              closed   = false
              id       = "section-dgbwgl03"
              title    = "Commands"
            }
            items = [
              {
                card = {
                  cardType = "stage"
                  id       = "card-c8fm3s2a"
                  stageId  = "stage-r3msr1xk"
                }
                layout = {
                  h           = 17
                  i           = "card-c8fm3s2a"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 4
                  x           = 8
                  y           = 0
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-0ofx2hd3"
                  stageId  = "stage-8ibk9wow"
                }
                layout = {
                  h           = 9
                  i           = "card-0ofx2hd3"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 8
                  x           = 0
                  y           = 0
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-3o5u6gxo"
                  stageId  = "stage-9mulnsts"
                }
                layout = {
                  h           = 8
                  i           = "card-3o5u6gxo"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 8
                  x           = 0
                  y           = 9
                }
              },
            ]
          },
          {
            card = {
              cardType = "section"
              closed   = false
              id       = "section-th0miqd8"
              title    = "Keys"
            }
            items = [
              {
                card = {
                  cardType = "stage"
                  id       = "card-7g60of0m"
                  stageId  = "stage-ehr1gzq0"
                }
                layout = {
                  h           = 22
                  i           = "card-7g60of0m"
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
                  cardType = "stage"
                  id       = "card-rvkvgo40"
                  stageId  = "stage-yothkrri"
                }
                layout = {
                  h           = 11
                  i           = "card-rvkvgo40"
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
                  id       = "card-9mwr2q64"
                  stageId  = "stage-wds98m8p"
                }
                layout = {
                  h           = 11
                  i           = "card-9mwr2q64"
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
                  id       = "card-z148u0h2"
                  stageId  = "stage-yb1taje8"
                }
                layout = {
                  h           = 11
                  i           = "card-z148u0h2"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 3
                  x           = 6
                  y           = 11
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-vr1h2bz0"
                  stageId  = "stage-t1p8enlp"
                }
                layout = {
                  h           = 11
                  i           = "card-vr1h2bz0"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 3
                  x           = 9
                  y           = 11
                }
              },
            ]
          },
          {
            card = {
              cardType = "section"
              closed   = true
              id       = "section-pit132ks"
              title    = "Details"
            }
            items = [
              {
                card = {
                  cardType = "stage"
                  id       = "card-6oehbzvm"
                  stageId  = "stage-pajoygss"
                }
                layout = {
                  h           = 14
                  i           = "card-6oehbzvm"
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
                  id       = "card-tqy84zjl"
                  stageId  = "stage-zmb32x6w"
                }
                layout = {
                  h           = 14
                  i           = "card-tqy84zjl"
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
                  id       = "card-ig4axjv0"
                  stageId  = "stage-rp98umdc"
                }
                layout = {
                  h           = 14
                  i           = "card-ig4axjv0"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 4
                  x           = 5
                  y           = 0
                }
              },
            ]
            lastModified = 1676596466282
          },
        ]
      }
      stageListLayout = {
        isModified = false
        parameters = [
          {
            defaultValue = {
              link = {
                datasetId = "${local.redis_instance}"
                primaryKeyValue = [
                  {
                    name = "instance_pkey"
                    value = {
                      string = "//redis.googleapis.com/projects/content-eng-arthur/locations/us-west1/instances/ha-memory-cache"
                    }
                  },
                  {
                    name = "project_id"
                    value = {
                      string = "content-eng-arthur"
                    }
                  },
                ]
                storedLabel = "//redis.googleapis.com/projects/content-eng-arthur/locations/us-west1/instances/ha-memory-cache"
              }
            }
            emptyValueEncoding    = "null"
            emptyValueLabelOption = "null"
            id                    = "redis"
            name                  = "Redis Instance"
            valueKind = {
              keyForDatasetId = "${local.redis_instance}"
              type            = "LINK"
            }
            viewType = "resource-input"
          },
        ]
        selectedStageId = "stage-rp98umdc"
        timeRange = {
          display               = "Today 15:04:48 → 16:04:48"
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
  name = local.dashboard_name_singleton
  parameters = jsonencode(
    [
      {
        defaultValue = {
          link = {
            datasetId = "${local.redis_instance}"
            primaryKeyValue = [
              {
                name = "instance_pkey"
                value = {
                  string = "//redis.googleapis.com/projects/content-eng-arthur/locations/us-west1/instances/ha-memory-cache"
                }
              },
              {
                name = "project_id"
                value = {
                  string = "content-eng-arthur"
                }
              },
            ]
            storedLabel = "//redis.googleapis.com/projects/content-eng-arthur/locations/us-west1/instances/ha-memory-cache"
          }
        }
        id   = "redis"
        name = "Redis Instance"
        valueKind = {
          arrayItemType   = null
          keyForDatasetId = "${local.redis_instance}"
          type            = "LINK"
        }
      },
    ]
  )
  stages = jsonencode(
    [
      {
        id = "stage-pajoygss"
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
            autoTableHeight    = false
            columnFooterHeight = 0
            columnHeaderHeight = 29
            columnOrderOverride = {
              "1" = "Valid From"
              "2" = "Valid To"
            }
            columnVisibility = {
              _c_nodes_path  = false
              _c_nodes_value = false
              instance_pkey  = false
            }
            columnWidths                 = {}
            containerWidth               = 2143
            contextMenuXCoord            = null
            contextMenuYCoord            = null
            defaultColumnWidth           = 70
            disableFixedLeftColumns      = false
            eventLinkColumnId            = null
            fetchPageSize                = 100
            hasCalculatedColumnWidths    = true
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
            tableHeight                = 144
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
          label = "Nodes"
          managers = [
            {
              id                     = "ngwgqnkj"
              isDisabled             = true
              isResourceCountEnabled = false
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
                  queryId        = "q-cl17529h"
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
              id                = "step-mb5wx51n"
              index             = 0
              isPinned          = false
              opal              = []
              queryPresentation = {}
              type              = "InputStep"
            },
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
                  queryId        = "q-ch7996ng"
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
              id       = "step-lu1es50a"
              index    = 1
              isPinned = false
              opal = [
                "filter instance_pkey = $redis.instance_pkey",
                "",
                "pick_col",
                "\t@.\"Valid From\",",
                " \t@.\"Valid To\",",
                " \tinstance_pkey,",
                " \tnodes",
                "",
                "flatten_single nodes",
                "make_col Node:string(_c_nodes_value.id)",
                "make_col Zone:string(_c_nodes_value.zone)",
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
            stageTab      = "table"
          }
        }
        params   = null
        pipeline = <<-EOT
                    filter instance_pkey = $redis.instance_pkey
                    
                    pick_col
                    	@."Valid From",
                     	@."Valid To",
                     	instance_pkey,
                     	nodes
                    
                    flatten_single nodes
                    make_col Node:string(_c_nodes_value.id)
                    make_col Zone:string(_c_nodes_value.zone)
                EOT
      },
      {
        id = "stage-jt6xxmm2"
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
            containerWidth               = 285
            contextMenuXCoord            = null
            contextMenuYCoord            = null
            defaultColumnWidth           = 70
            disableFixedLeftColumns      = false
            eventLinkColumnId            = null
            fetchPageSize                = 100
            hasCalculatedColumnWidths    = true
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
          index = 1
          inputList = [
            {
              datasetId   = "${local.redis_instance}"
              inputName   = "test_gcp_learning-bedbug/Redis Instance"
              inputRole   = "Data"
              isUserInput = false
            },
          ]
          label = "Base Dataset"
          managers = [
            {
              id                     = "d3jh1epf"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "a05ez3f0"
              isDisabled = true
              type       = "Vis"
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
                  queryId        = "q-5ki8kjwf"
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
              id                = "step-khwznicp"
              index             = 0
              isPinned          = false
              opal              = []
              queryPresentation = {}
              type              = "InputStep"
            },
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
                  queryId        = "q-g0a7e318"
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
              id       = "step-599xhajb"
              index    = 1
              isPinned = false
              opal = [
                "filter instance_pkey = $redis.instance_pkey ",
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
              script        = false
            }
            showTimeRuler = true
            stageTab      = "table"
          }
        }
        params   = null
        pipeline = <<-EOT
                    filter instance_pkey = $redis.instance_pkey 
                EOT
      },
      {
        id = "stage-r3msr1xk"
        input = [
          {
            datasetId   = "${local.redis_metrics}"
            datasetPath = null
            inputName   = "commands_calls_from_test_gcp_learning-bedbug/Redis Metrics"
            inputRole   = "Data"
            stageId     = null
          },
          {
            datasetId   = null
            datasetPath = null
            inputName   = "filter_Redis Instance"
            inputRole   = "Data"
            stageId     = "stage-jt6xxmm2"
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
          index = 2
          inputList = [
            {
              datasetId   = "${local.redis_metrics}"
              inputName   = "commands_calls_from_test_gcp_learning-bedbug/Redis Metrics"
              inputRole   = "Data"
              isUserInput = true
            },
            {
              inputName   = "filter_Redis Instance"
              inputRole   = "Data"
              isUserInput = true
              stageId     = "stage-jt6xxmm2"
            },
          ]
          label = "Total # of calls for this command in one minute (commands_calls)"
          managers = [
            {
              id         = "y2mnmdk5"
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
                    unit    = ""
                    visible = true
                  }
                }
                source = {
                  table = {
                    groupFields = [
                      "command",
                    ]
                    transformType = "none"
                    type          = "xy"
                    x             = "valid_from"
                    y             = "metric_commands_calls_1zbspxjt"
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
              id                = "step-61yyniv6"
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
              id       = "step-k6lo3wnn"
              index    = 1
              isPinned = false
              opal = [
                "exists instance_pkey = @\"filter_Redis Instance\".instance_pkey",
                "align frame(back: 2m), metric_commands_calls_1zbspxjt:rate(m(\"commands_calls\"))",
                "aggregate metric_commands_calls_1zbspxjt:sum(metric_commands_calls_1zbspxjt), group_by(command)",
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
                    exists instance_pkey = @"filter_Redis Instance".instance_pkey
                    align frame(back: 2m), metric_commands_calls_1zbspxjt:rate(m("commands_calls"))
                    aggregate metric_commands_calls_1zbspxjt:sum(metric_commands_calls_1zbspxjt), group_by(command)
                EOT
      },
      {
        id = "stage-8ibk9wow"
        input = [
          {
            datasetId   = "${local.redis_metrics}"
            datasetPath = null
            inputName   = "commands_total_time_from_test_gcp_learning-bedbug/Redis Metrics"
            inputRole   = "Data"
            stageId     = null
          },
          {
            datasetId   = null
            datasetPath = null
            inputName   = "filter_Redis Instance"
            inputRole   = "Data"
            stageId     = "stage-jt6xxmm2"
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
          index = 3
          inputList = [
            {
              datasetId   = "${local.redis_metrics}"
              inputName   = "commands_total_time_from_test_gcp_learning-bedbug/Redis Metrics"
              inputRole   = "Data"
              isUserInput = true
            },
            {
              inputName   = "filter_Redis Instance"
              inputRole   = "Data"
              isUserInput = true
              stageId     = "stage-jt6xxmm2"
            },
          ]
          label = "The amount of time in microseconds that this command took in the last second"
          managers = [
            {
              id         = "51crb1po"
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
                    unit    = "milliseconds"
                    visible = true
                  }
                }
                source = {
                  table = {
                    groupFields = [
                      "command",
                    ]
                    transformType = "none"
                    type          = "xy"
                    x             = "valid_from"
                    y             = "metric_commands_total_time_1vx369kl"
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
              id                = "step-v2jud9qz"
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
              id       = "step-903u02hd"
              index    = 1
              isPinned = false
              opal = [
                "exists instance_pkey = @\"filter_Redis Instance\".instance_pkey",
                "filter role = \"primary\"",
                "align frame(back: 2m), metric_commands_total_time_1vx369kl:rate(m(\"commands_total_time\"))",
                "aggregate metric_commands_total_time_1vx369kl:sum(metric_commands_total_time_1vx369kl), group_by(command)",
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
                    exists instance_pkey = @"filter_Redis Instance".instance_pkey
                    filter role = "primary"
                    align frame(back: 2m), metric_commands_total_time_1vx369kl:rate(m("commands_total_time"))
                    aggregate metric_commands_total_time_1vx369kl:sum(metric_commands_total_time_1vx369kl), group_by(command)
                EOT
      },
      {
        id = "stage-9mulnsts"
        input = [
          {
            datasetId   = "${local.redis_metrics}"
            datasetPath = null
            inputName   = "commands_usec_per_call_from_test_gcp_learning-bedbug/Redis Metrics"
            inputRole   = "Data"
            stageId     = null
          },
          {
            datasetId   = null
            datasetPath = null
            inputName   = "filter_Redis Instance"
            inputRole   = "Data"
            stageId     = "stage-jt6xxmm2"
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
              datasetId   = "${local.redis_metrics}"
              inputName   = "commands_usec_per_call_from_test_gcp_learning-bedbug/Redis Metrics"
              inputRole   = "Data"
              isUserInput = true
            },
            {
              inputName   = "filter_Redis Instance"
              inputRole   = "Data"
              isUserInput = true
              stageId     = "stage-jt6xxmm2"
            },
          ]
          label = "Average time per call over 1 minute by command"
          managers = [
            {
              id         = "0o3u9vxv"
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
                    unit    = "milliseconds"
                    visible = true
                  }
                }
                source = {
                  table = {
                    groupFields = [
                      "command",
                    ]
                    transformType = "none"
                    type          = "xy"
                    x             = "valid_from"
                    y             = "metric_commands_usec_per_call_ywai7d9t"
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
              id                = "step-kni8afq7"
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
              id       = "step-a6cr9jme"
              index    = 1
              isPinned = false
              opal = [
                "exists instance_pkey = @\"filter_Redis Instance\".instance_pkey",
                "filter role = \"primary\"",
                "align frame(back: 2m), metric_commands_usec_per_call_ywai7d9t:avg(m(\"commands_usec_per_call\"))",
                "aggregate metric_commands_usec_per_call_ywai7d9t:sum(metric_commands_usec_per_call_ywai7d9t), group_by(command)",
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
                    exists instance_pkey = @"filter_Redis Instance".instance_pkey
                    filter role = "primary"
                    align frame(back: 2m), metric_commands_usec_per_call_ywai7d9t:avg(m("commands_usec_per_call"))
                    aggregate metric_commands_usec_per_call_ywai7d9t:sum(metric_commands_usec_per_call_ywai7d9t), group_by(command)
                EOT
      },
      {
        id = "stage-yothkrri"
        input = [
          {
            datasetId   = "${local.redis_metrics}"
            datasetPath = null
            inputName   = "keyspace_keys_from_test_gcp_learning-bedbug/Redis Metrics"
            inputRole   = "Data"
            stageId     = null
          },
          {
            datasetId   = null
            datasetPath = null
            inputName   = "filter_Redis Instance"
            inputRole   = "Data"
            stageId     = "stage-jt6xxmm2"
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
          index     = 5
          inputList = []
          label     = "# of keys stored in this database"
          managers = [
            {
              id         = "u5k7m35w"
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
                    groupFields   = []
                    transformType = "none"
                    type          = "xy"
                    x             = "valid_from"
                    y             = "metric_keyspace_keys_6fdw8por"
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
              id                = "step-57tod424"
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
                              groupFields   = []
                              transformType = "none"
                              type          = "xy"
                              x             = "valid_from"
                              y             = "metric_keyspace_keys_6fdw8por"
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
                                  "instance_pkey",
                                ]
                                label = "Redis Instance"
                                srcFields = [
                                  "instance_pkey",
                                ]
                                targetDataset    = "${local.redis_instance}"
                                targetStageLabel = null
                                type             = "foreign"
                              }
                              joinInput = {
                                stageId = "stage-jt6xxmm2"
                              }
                            }
                            summary = null
                            type    = "ExistsInFilter"
                          },
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
                        groupBy       = []
                        id            = "metricExpression-uwlpmugf"
                        lookupActions = []
                        metric = {
                          aggregate   = "sum"
                          datasetId   = "${local.redis_metrics}"
                          description = <<-EOT
                                                        Number of keys stored in this database.
                                                    EOT
                          heuristics  = null
                          interval    = null
                          name        = "keyspace_keys"
                          rollup      = "avg"
                          type        = "gauge"
                          unit        = "1"
                          userDefined = true
                        }
                        metricLink = {
                          __typename = "ForeignKey"
                          dstFields = [
                            "instance_pkey",
                          ]
                          label = "Redis Instance"
                          srcFields = [
                            "instance_pkey",
                          ]
                          targetDataset    = "${local.redis_instance}"
                          targetStageLabel = null
                          type             = "foreign"
                        }
                        metricLinkInputSource = {
                          stageId = "stage-jt6xxmm2"
                        }
                        showAlignment  = false
                        showResolution = false
                        summaryMode    = "over-time"
                        type           = "metricExpression"
                        valueColumnId  = "metric_keyspace_keys_6fdw8por"
                      },
                    ]
                    selectedExpressionId = "metricExpression-uwlpmugf"
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
              id       = "step-85clp81i"
              index    = 1
              isPinned = false
              opal = [
                "exists instance_pkey = @\"filter_Redis Instance\".instance_pkey",
                "filter role = \"primary\"",
                "align frame(back: 2m), metric_keyspace_keys_6fdw8por:avg(m(\"keyspace_keys\"))",
                "aggregate metric_keyspace_keys_6fdw8por:sum(metric_keyspace_keys_6fdw8por), group_by()",
              ]
              queryPresentation = {}
              type              = "unknown"
            },
          ]
          type = "table"
          viewModel = {
            consoleValue = <<-EOT
                            exists instance_pkey = @"filter_Redis Instance".instance_pkey
                            filter role = "primary"
                            align frame(back: 2m), metric_keyspace_keys_6fdw8por:avg(m("keyspace_keys"))
                            aggregate metric_keyspace_keys_6fdw8por:sum(metric_keyspace_keys_6fdw8por), group_by(instance_pkey)
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
                    exists instance_pkey = @"filter_Redis Instance".instance_pkey
                    filter role = "primary"
                    align frame(back: 2m), metric_keyspace_keys_6fdw8por:avg(m("keyspace_keys"))
                    aggregate metric_keyspace_keys_6fdw8por:sum(metric_keyspace_keys_6fdw8por), group_by()
                EOT
      },
      {
        id = "stage-wds98m8p"
        input = [
          {
            datasetId   = "${local.redis_metrics}"
            datasetPath = null
            inputName   = "stats_expired_keys_from_test_gcp_learning-bedbug/Redis Metrics"
            inputRole   = "Data"
            stageId     = null
          },
          {
            datasetId   = null
            datasetPath = null
            inputName   = "filter_Redis Instance"
            inputRole   = "Data"
            stageId     = "stage-jt6xxmm2"
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
          index     = 6
          inputList = []
          label     = "# of key expiration events"
          managers = [
            {
              id         = "ngsn1fc9"
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
                      "instance_pkey",
                    ]
                    transformType = "none"
                    type          = "xy"
                    x             = "valid_from"
                    y             = "metric_stats_expired_keys_clr7f3tz"
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
              id                = "step-1ggmqaco"
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
                                "instance_pkey",
                              ]
                              transformType = "none"
                              type          = "xy"
                              x             = "valid_from"
                              y             = "metric_stats_expired_keys_clr7f3tz"
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
                                  "instance_pkey",
                                ]
                                label = "Redis Instance"
                                srcFields = [
                                  "instance_pkey",
                                ]
                                targetDataset    = "${local.redis_instance}"
                                targetStageLabel = null
                                type             = "foreign"
                              }
                              joinInput = {
                                stageId = "stage-jt6xxmm2"
                              }
                            }
                            summary = null
                            type    = "ExistsInFilter"
                          },
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
                          "instance_pkey",
                        ]
                        id            = "metricExpression-y2pkuirl"
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
                                column     = "displayName"
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
                                column     = "region"
                                path       = ""
                              },
                              {
                                __typename = "MetricTag"
                                column     = "role"
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
                        metricLink = {
                          __typename = "ForeignKey"
                          dstFields = [
                            "instance_pkey",
                          ]
                          label = "Redis Instance"
                          srcFields = [
                            "instance_pkey",
                          ]
                          targetDataset    = "${local.redis_instance}"
                          targetStageLabel = null
                          type             = "foreign"
                        }
                        metricLinkInputSource = {
                          stageId = "stage-jt6xxmm2"
                        }
                        showAlignment  = false
                        showResolution = false
                        summaryMode    = "over-time"
                        type           = "metricExpression"
                        valueColumnId  = "metric_stats_expired_keys_clr7f3tz"
                      },
                    ]
                    selectedExpressionId = "metricExpression-y2pkuirl"
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
              id       = "step-mnw0khml"
              index    = 1
              isPinned = false
              opal = [
                "exists instance_pkey = @\"filter_Redis Instance\".instance_pkey",
                "filter role = \"primary\"",
                "align frame(back: 2m), metric_stats_expired_keys_clr7f3tz:avg(m(\"stats_expired_keys\"))",
                "aggregate metric_stats_expired_keys_clr7f3tz:sum(metric_stats_expired_keys_clr7f3tz), group_by(instance_pkey)",
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
                    exists instance_pkey = @"filter_Redis Instance".instance_pkey
                    filter role = "primary"
                    align frame(back: 2m), metric_stats_expired_keys_clr7f3tz:avg(m("stats_expired_keys"))
                    aggregate metric_stats_expired_keys_clr7f3tz:sum(metric_stats_expired_keys_clr7f3tz), group_by(instance_pkey)
                EOT
      },
      {
        id = "stage-yb1taje8"
        input = [
          {
            datasetId   = "${local.redis_metrics}"
            datasetPath = null
            inputName   = "stats_keyspace_hits_from_test_gcp_learning-bedbug/Redis Metrics"
            inputRole   = "Data"
            stageId     = null
          },
          {
            datasetId   = null
            datasetPath = null
            inputName   = "filter_Redis Instance"
            inputRole   = "Data"
            stageId     = "stage-jt6xxmm2"
          },
        ]
        layout = {
          appearance = "VISIBLE"
          dataTableViewState = {
            autoTableHeight    = true
            columnFooterHeight = 0
            columnHeaderHeight = 29
            columnOrderOverride = {
              "0" = "valid_from"
              "1" = "valid_to"
              "2" = "instance_pkey"
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
          index     = 7
          inputList = []
          label     = "# of successful lookup of keys in the main dictionary"
          managers = [
            {
              id         = "371gg3mv"
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
                    groupFields   = []
                    transformType = "none"
                    type          = "xy"
                    x             = "valid_from"
                    y             = "metric_stats_keyspace_hits_n6hey7pl"
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
              id                = "step-n39fgge3"
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
                              groupFields   = []
                              transformType = "none"
                              type          = "xy"
                              x             = "valid_from"
                              y             = "metric_stats_keyspace_hits_n6hey7pl"
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
                                  "instance_pkey",
                                ]
                                label = "Redis Instance"
                                srcFields = [
                                  "instance_pkey",
                                ]
                                targetDataset    = "${local.redis_instance}"
                                targetStageLabel = null
                                type             = "foreign"
                              }
                              joinInput = {
                                stageId = "stage-jt6xxmm2"
                              }
                            }
                            summary = null
                            type    = "ExistsInFilter"
                          },
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
                        groupBy       = []
                        id            = "metricExpression-7br0iwuc"
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
                                column     = "displayName"
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
                                column     = "region"
                                path       = ""
                              },
                              {
                                __typename = "MetricTag"
                                column     = "role"
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
                        metricLink = {
                          __typename = "ForeignKey"
                          dstFields = [
                            "instance_pkey",
                          ]
                          label = "Redis Instance"
                          srcFields = [
                            "instance_pkey",
                          ]
                          targetDataset    = "${local.redis_instance}"
                          targetStageLabel = null
                          type             = "foreign"
                        }
                        metricLinkInputSource = {
                          stageId = "stage-jt6xxmm2"
                        }
                        showAlignment  = false
                        showResolution = false
                        summaryMode    = "over-time"
                        type           = "metricExpression"
                        valueColumnId  = "metric_stats_keyspace_hits_n6hey7pl"
                      },
                    ]
                    selectedExpressionId = "metricExpression-7br0iwuc"
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
              id       = "step-hid85kwz"
              index    = 1
              isPinned = false
              opal = [
                "exists instance_pkey = @\"filter_Redis Instance\".instance_pkey",
                "filter role = \"primary\"",
                "align frame(back: 2m), metric_stats_keyspace_hits_n6hey7pl:avg(m(\"stats_keyspace_hits\"))",
                "aggregate metric_stats_keyspace_hits_n6hey7pl:sum(metric_stats_keyspace_hits_n6hey7pl), group_by()",
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
                    exists instance_pkey = @"filter_Redis Instance".instance_pkey
                    filter role = "primary"
                    align frame(back: 2m), metric_stats_keyspace_hits_n6hey7pl:avg(m("stats_keyspace_hits"))
                    aggregate metric_stats_keyspace_hits_n6hey7pl:sum(metric_stats_keyspace_hits_n6hey7pl), group_by()
                EOT
      },
      {
        id = "stage-t1p8enlp"
        input = [
          {
            datasetId   = "${local.redis_metrics}"
            datasetPath = null
            inputName   = "stats_keyspace_misses_from_test_gcp_learning-bedbug/Redis Metrics"
            inputRole   = "Data"
            stageId     = null
          },
          {
            datasetId   = null
            datasetPath = null
            inputName   = "filter_Redis Instance"
            inputRole   = "Data"
            stageId     = "stage-jt6xxmm2"
          },
        ]
        layout = {
          appearance = "VISIBLE"
          dataTableViewState = {
            autoTableHeight    = true
            columnFooterHeight = 0
            columnHeaderHeight = 29
            columnOrderOverride = {
              "0" = "valid_from"
              "1" = "valid_to"
              "2" = "instance_pkey"
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
          index     = 8
          inputList = []
          label     = "# of failed lookup of keys in the main dictionary"
          managers = [
            {
              id         = "himobrv4"
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
                    groupFields   = []
                    transformType = "none"
                    type          = "xy"
                    x             = "valid_from"
                    y             = "metric_stats_keyspace_misses_f1jy5fad"
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
              id                = "step-38d44nsv"
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
                              groupFields   = []
                              transformType = "none"
                              type          = "xy"
                              x             = "valid_from"
                              y             = "metric_stats_keyspace_misses_f1jy5fad"
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
                                  "instance_pkey",
                                ]
                                label = "Redis Instance"
                                srcFields = [
                                  "instance_pkey",
                                ]
                                targetDataset    = "${local.redis_instance}"
                                targetStageLabel = null
                                type             = "foreign"
                              }
                              joinInput = {
                                stageId = "stage-jt6xxmm2"
                              }
                            }
                            summary = null
                            type    = "ExistsInFilter"
                          },
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
                        groupBy       = []
                        id            = "metricExpression-x9m3dor7"
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
                                column     = "displayName"
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
                                column     = "region"
                                path       = ""
                              },
                              {
                                __typename = "MetricTag"
                                column     = "role"
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
                        metricLink = {
                          __typename = "ForeignKey"
                          dstFields = [
                            "instance_pkey",
                          ]
                          label = "Redis Instance"
                          srcFields = [
                            "instance_pkey",
                          ]
                          targetDataset    = "${local.redis_instance}"
                          targetStageLabel = null
                          type             = "foreign"
                        }
                        metricLinkInputSource = {
                          stageId = "stage-jt6xxmm2"
                        }
                        showAlignment  = false
                        showResolution = false
                        summaryMode    = "over-time"
                        type           = "metricExpression"
                        valueColumnId  = "metric_stats_keyspace_misses_f1jy5fad"
                      },
                    ]
                    selectedExpressionId = "metricExpression-x9m3dor7"
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
              id       = "step-m8zamc7f"
              index    = 1
              isPinned = false
              opal = [
                "exists instance_pkey = @\"filter_Redis Instance\".instance_pkey",
                "filter role = \"primary\"",
                "align frame(back: 2m), metric_stats_keyspace_misses_f1jy5fad:avg(m(\"stats_keyspace_misses\"))",
                "aggregate metric_stats_keyspace_misses_f1jy5fad:sum(metric_stats_keyspace_misses_f1jy5fad), group_by()",
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
                    exists instance_pkey = @"filter_Redis Instance".instance_pkey
                    filter role = "primary"
                    align frame(back: 2m), metric_stats_keyspace_misses_f1jy5fad:avg(m("stats_keyspace_misses"))
                    aggregate metric_stats_keyspace_misses_f1jy5fad:sum(metric_stats_keyspace_misses_f1jy5fad), group_by()
                EOT
      },
      {
        id = "stage-ehr1gzq0"
        input = [
          {
            datasetId   = "${local.redis_metrics}"
            datasetPath = null
            inputName   = "stats_cache_hit_ratio_from_test_gcp_learning-bedbug/Redis Metrics"
            inputRole   = "Data"
            stageId     = null
          },
          {
            datasetId   = null
            datasetPath = null
            inputName   = "filter_Redis Instance"
            inputRole   = "Data"
            stageId     = "stage-jt6xxmm2"
          },
        ]
        layout = {
          appearance = "VISIBLE"
          dataTableViewState = {
            autoTableHeight    = true
            columnFooterHeight = 0
            columnHeaderHeight = 29
            columnOrderOverride = {
              "0" = "valid_from"
              "1" = "valid_to"
              "2" = "instance_pkey"
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
          index = 9
          inputList = [
            {
              datasetId   = "${local.redis_metrics}"
              inputName   = "stats_cache_hit_ratio_from_test_gcp_learning-bedbug/Redis Metrics"
              inputRole   = "Data"
              isUserInput = true
            },
            {
              inputName   = "filter_Redis Instance"
              inputRole   = "Data"
              isUserInput = true
              stageId     = "stage-jt6xxmm2"
            },
          ]
          label = "Cache Hit ratio %"
          managers = [
            {
              id         = "i6mvzf89"
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
                    groupFields   = []
                    transformType = "none"
                    type          = "xy"
                    x             = "valid_from"
                    y             = "metric_stats_cache_hit_ratio_59poxrmz"
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
            {
              id                     = "szf964he"
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
              id                = "step-swky5537"
              index             = 0
              isPinned          = false
              opal              = []
              queryPresentation = {}
              type              = "InputStep"
            },
            {
              columnStatsTable = {
                columnFunctions = {}
                datasetQueryId = {
                  ignoreCompress = false
                  queryId        = "q-sj1hjvzb"
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
              id       = "step-fwbjsxzv"
              index    = 1
              isPinned = false
              opal = [
                "exists instance_pkey = @\"filter_Redis Instance\".instance_pkey",
                "filter role = \"primary\"",
                "align frame(back: 2m), metric_stats_cache_hit_ratio_59poxrmz:avg(m(\"stats_cache_hit_ratio\"))",
                "aggregate metric_stats_cache_hit_ratio_59poxrmz:sum(metric_stats_cache_hit_ratio_59poxrmz*100), group_by()",
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
                    exists instance_pkey = @"filter_Redis Instance".instance_pkey
                    filter role = "primary"
                    align frame(back: 2m), metric_stats_cache_hit_ratio_59poxrmz:avg(m("stats_cache_hit_ratio"))
                    aggregate metric_stats_cache_hit_ratio_59poxrmz:sum(metric_stats_cache_hit_ratio_59poxrmz*100), group_by()
                EOT
      },
      {
        id = "stage-0ho2ak92"
        input = [
          {
            datasetId   = "${local.redis_metrics}"
            datasetPath = null
            inputName   = "stats_memory_usage_ratio_from_test_gcp_learning-bedbug/Redis Metrics"
            inputRole   = "Data"
            stageId     = null
          },
          {
            datasetId   = null
            datasetPath = null
            inputName   = "filter_Redis Instance"
            inputRole   = "Data"
            stageId     = "stage-jt6xxmm2"
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
          index = 10
          inputList = [
            {
              datasetId   = "${local.redis_metrics}"
              inputName   = "stats_memory_usage_ratio_from_test_gcp_learning-bedbug/Redis Metrics"
              inputRole   = "Data"
              isUserInput = true
            },
            {
              inputName   = "filter_Redis Instance"
              inputRole   = "Data"
              isUserInput = true
              stageId     = "stage-jt6xxmm2"
            },
          ]
          label = "Memory usage as a ratio of maximum memory"
          managers = [
            {
              id         = "zwuqjkoh"
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
                      "instance_pkey",
                    ]
                    transformType = "none"
                    type          = "xy"
                    x             = "valid_from"
                    y             = "metric_stats_memory_usage_ratio_753dc9fz"
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
              id                = "step-y1rvwqst"
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
              id       = "step-m2w6vlvm"
              index    = 1
              isPinned = false
              opal = [
                "exists instance_pkey = @\"filter_Redis Instance\".instance_pkey",
                "filter role = \"primary\"",
                "align frame(back: 2m), metric_stats_memory_usage_ratio_753dc9fz:avg(m(\"stats_memory_usage_ratio\"))",
                "aggregate metric_stats_memory_usage_ratio_753dc9fz:sum(metric_stats_memory_usage_ratio_753dc9fz *100), group_by(instance_pkey)",
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
                    exists instance_pkey = @"filter_Redis Instance".instance_pkey
                    filter role = "primary"
                    align frame(back: 2m), metric_stats_memory_usage_ratio_753dc9fz:avg(m("stats_memory_usage_ratio"))
                    aggregate metric_stats_memory_usage_ratio_753dc9fz:sum(metric_stats_memory_usage_ratio_753dc9fz *100), group_by(instance_pkey)
                EOT
      },
      {
        id = "stage-kblmpc8o"
        input = [
          {
            datasetId   = "${local.redis_metrics}"
            datasetPath = null
            inputName   = "stats_cpu_utilization_from_test_gcp_learning-bedbug/Redis Metrics"
            inputRole   = "Data"
            stageId     = null
          },
          {
            datasetId   = null
            datasetPath = null
            inputName   = "filter_Redis Instance"
            inputRole   = "Data"
            stageId     = "stage-jt6xxmm2"
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
              "1" = "space"
              "2" = "valid_from"
              "3" = "valid_to"
              "4" = "relationship"
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
          index = 11
          inputList = [
            {
              datasetId   = "${local.redis_metrics}"
              inputName   = "stats_cpu_utilization_from_test_gcp_learning-bedbug/Redis Metrics"
              inputRole   = "Data"
              isUserInput = true
            },
            {
              inputName   = "filter_Redis Instance"
              inputRole   = "Data"
              isUserInput = true
              stageId     = "stage-jt6xxmm2"
            },
          ]
          label = "CPU-seconds consumed by the Redis server, broken down by system/user space"
          managers = [
            {
              id         = "pbkj65ge"
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
                      "instance_pkey",
                      "space",
                    ]
                    transformType = "none"
                    type          = "xy"
                    x             = "valid_from"
                    y             = "metric_stats_cpu_utilization_790asu9w"
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
              id                     = "821btkyl"
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
              id                = "step-sh6p4bbf"
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
              id       = "step-ljtf2g9w"
              index    = 1
              isPinned = false
              opal = [
                "exists instance_pkey = @\"filter_Redis Instance\".instance_pkey",
                "filter role = \"primary\"",
                "align frame(back: 2m), metric_stats_cpu_utilization_790asu9w:rate(m(\"stats_cpu_utilization\"))",
                "aggregate metric_stats_cpu_utilization_790asu9w:round(sum(metric_stats_cpu_utilization_790asu9w),5), group_by(instance_pkey, space)",
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
                    exists instance_pkey = @"filter_Redis Instance".instance_pkey
                    filter role = "primary"
                    align frame(back: 2m), metric_stats_cpu_utilization_790asu9w:rate(m("stats_cpu_utilization"))
                    aggregate metric_stats_cpu_utilization_790asu9w:round(sum(metric_stats_cpu_utilization_790asu9w),5), group_by(instance_pkey, space)
                EOT
      },
      {
        id = "stage-kuf5r7f3"
        input = [
          {
            datasetId   = "${local.redis_metrics}"
            datasetPath = null
            inputName   = "stats_network_traffic_from_test_gcp_learning-bedbug/Redis Metrics"
            inputRole   = "Data"
            stageId     = null
          },
          {
            datasetId   = null
            datasetPath = null
            inputName   = "filter_Redis Instance"
            inputRole   = "Data"
            stageId     = "stage-jt6xxmm2"
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
          index     = 12
          inputList = []
          label     = "Total number of bytes sent to/from redis"
          managers = [
            {
              id         = "qsgn01tt"
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
                    unit    = "bytes"
                    visible = true
                  }
                }
                source = {
                  table = {
                    groupFields = [
                      "instance_pkey",
                    ]
                    transformType = "none"
                    type          = "xy"
                    x             = "valid_from"
                    y             = "metric_stats_network_traffic_qe2motyy"
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
              id                = "step-l6ig60kz"
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
                              unit    = "bytes"
                              visible = true
                            }
                          }
                          source = {
                            table = {
                              groupFields = [
                                "instance_pkey",
                              ]
                              transformType = "none"
                              type          = "xy"
                              x             = "valid_from"
                              y             = "metric_stats_network_traffic_qe2motyy"
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
                                  "instance_pkey",
                                ]
                                label = "Redis Instance"
                                srcFields = [
                                  "instance_pkey",
                                ]
                                targetDataset    = "${local.redis_instance}"
                                targetStageLabel = null
                                type             = "foreign"
                              }
                              joinInput = {
                                stageId = "stage-jt6xxmm2"
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
                          "instance_pkey",
                        ]
                        id            = "metricExpression-v29zhmyn"
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
                                column     = "displayName"
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
                                column     = "region"
                                path       = ""
                              },
                              {
                                __typename = "MetricTag"
                                column     = "role"
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
                                path       = "direction"
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
                          name        = "stats_network_traffic"
                          rollup      = "avg"
                          type        = "delta"
                          unit        = "By"
                          userDefined = true
                        }
                        metricLink = {
                          __typename = "ForeignKey"
                          dstFields = [
                            "instance_pkey",
                          ]
                          label = "Redis Instance"
                          srcFields = [
                            "instance_pkey",
                          ]
                          targetDataset    = "${local.redis_instance}"
                          targetStageLabel = null
                          type             = "foreign"
                        }
                        metricLinkInputSource = {
                          stageId = "stage-jt6xxmm2"
                        }
                        showAlignment  = false
                        showResolution = false
                        summaryMode    = "over-time"
                        type           = "metricExpression"
                        valueColumnId  = "metric_stats_network_traffic_qe2motyy"
                      },
                    ]
                    selectedExpressionId = "metricExpression-v29zhmyn"
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
              id       = "step-0w3u5geq"
              index    = 1
              isPinned = false
              opal = [
                "exists instance_pkey = @\"filter_Redis Instance\".instance_pkey",
                "align frame(back: 2m), metric_stats_network_traffic_qe2motyy:avg(m(\"stats_network_traffic\"))",
                "aggregate metric_stats_network_traffic_qe2motyy:sum(metric_stats_network_traffic_qe2motyy), group_by(instance_pkey)",
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
                    exists instance_pkey = @"filter_Redis Instance".instance_pkey
                    align frame(back: 2m), metric_stats_network_traffic_qe2motyy:avg(m("stats_network_traffic"))
                    aggregate metric_stats_network_traffic_qe2motyy:sum(metric_stats_network_traffic_qe2motyy), group_by(instance_pkey)
                EOT
      },
      {
        id = "stage-xbo28v7v"
        input = [
          {
            datasetId   = "${local.redis_metrics}"
            datasetPath = null
            inputName   = "stats_connections_total_from_test_gcp_learning-bedbug/Redis Metrics"
            inputRole   = "Data"
            stageId     = null
          },
          {
            datasetId   = null
            datasetPath = null
            inputName   = "filter_Redis Instance"
            inputRole   = "Data"
            stageId     = "stage-jt6xxmm2"
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
          index     = 13
          inputList = []
          label     = "Total number of connections accepted by the server"
          managers = [
            {
              id         = "6ixc6wmm"
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
                    unit    = "bytes"
                    visible = true
                  }
                }
                source = {
                  table = {
                    groupFields   = []
                    transformType = "none"
                    type          = "xy"
                    x             = "valid_from"
                    y             = "metric_stats_connections_total_0ajegqu4"
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
            resultKinds = [
              "ResultKindSchema",
            ]
            rollup      = {}
            wantBuckets = 600
          }
          selectedStepId = "step-wd5qezql"
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
              id                = "step-4l56kbzu"
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
                              unit    = "bytes"
                              visible = true
                            }
                          }
                          source = {
                            table = {
                              groupFields   = []
                              transformType = "none"
                              type          = "xy"
                              x             = "valid_from"
                              y             = "metric_stats_connections_total_0ajegqu4"
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
                                  "instance_pkey",
                                ]
                                label = "Redis Instance"
                                srcFields = [
                                  "instance_pkey",
                                ]
                                targetDataset    = "${local.redis_instance}"
                                targetStageLabel = null
                                type             = "foreign"
                              }
                              joinInput = {
                                stageId = "stage-jt6xxmm2"
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
                        groupBy       = []
                        id            = "metricExpression-v29zhmyn"
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
                                column     = "displayName"
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
                                column     = "region"
                                path       = ""
                              },
                              {
                                __typename = "MetricTag"
                                column     = "role"
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
                          name        = "stats_connections_total"
                          rollup      = "avg"
                          type        = "delta"
                          unit        = "1"
                          userDefined = true
                        }
                        metricLink = {
                          __typename = "ForeignKey"
                          dstFields = [
                            "instance_pkey",
                          ]
                          label = "Redis Instance"
                          srcFields = [
                            "instance_pkey",
                          ]
                          targetDataset    = "${local.redis_instance}"
                          targetStageLabel = null
                          type             = "foreign"
                        }
                        metricLinkInputSource = {
                          stageId = "stage-jt6xxmm2"
                        }
                        showAlignment  = false
                        showResolution = false
                        summaryMode    = "over-time"
                        type           = "metricExpression"
                        valueColumnId  = "metric_stats_connections_total_0ajegqu4"
                      },
                    ]
                    selectedExpressionId = "metricExpression-v29zhmyn"
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
              id       = "step-wd5qezql"
              index    = 1
              isPinned = false
              opal = [
                "exists instance_pkey = @\"filter_Redis Instance\".instance_pkey",
                "align frame(back: 2m), metric_stats_connections_total_0ajegqu4:avg(m(\"stats_connections_total\"))",
                "aggregate metric_stats_connections_total_0ajegqu4:sum(metric_stats_connections_total_0ajegqu4), group_by()",
              ]
              queryPresentation = {}
              type              = "unknown"
            },
          ]
          type = "table"
          viewModel = {
            consoleValue = <<-EOT
                            exists instance_pkey = @"filter_Redis Instance".instance_pkey
                            align frame(back: 2m), metric_stats_connections_total_0ajegqu4:avg(m("stats_connections_total"))
                            aggregate metric_stats_connections_total_0ajegqu4:sum(metric_stats_connections_total_0ajegqu4), group_by()
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
                    exists instance_pkey = @"filter_Redis Instance".instance_pkey
                    align frame(back: 2m), metric_stats_connections_total_0ajegqu4:avg(m("stats_connections_total"))
                    aggregate metric_stats_connections_total_0ajegqu4:sum(metric_stats_connections_total_0ajegqu4), group_by()
                EOT
      },
      {
        id = "stage-kp5jhjdv"
        input = [
          {
            datasetId   = "${local.redis_metrics}"
            datasetPath = null
            inputName   = "clients_connected_from_test_gcp_learning-bedbug/Redis Metrics"
            inputRole   = "Data"
            stageId     = null
          },
          {
            datasetId   = null
            datasetPath = null
            inputName   = "filter_Redis Instance"
            inputRole   = "Data"
            stageId     = "stage-jt6xxmm2"
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
          index = 14
          inputList = [
            {
              datasetId   = "${local.redis_metrics}"
              inputName   = "clients_connected_from_test_gcp_learning-bedbug/Redis Metrics"
              inputRole   = "Data"
              isUserInput = true
            },
            {
              inputName   = "filter_Redis Instance"
              inputRole   = "Data"
              isUserInput = true
              stageId     = "stage-jt6xxmm2"
            },
          ]
          label = "Number of client connections"
          managers = [
            {
              id         = "z82r9t87"
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
                      "instance_pkey",
                    ]
                    transformType = "none"
                    type          = "xy"
                    x             = "valid_from"
                    y             = "metric_clients_connected_e3qjll1a"
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
              id                = "step-6xc2yfb9"
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
              id       = "step-d0f4t8o4"
              index    = 1
              isPinned = false
              opal = [
                "exists instance_pkey = @\"filter_Redis Instance\".instance_pkey",
                "filter role = \"primary\"",
                "align frame(back: 2m), metric_clients_connected_e3qjll1a:avg(m(\"clients_connected\"))",
                "aggregate metric_clients_connected_e3qjll1a:sum(metric_clients_connected_e3qjll1a), group_by(instance_pkey)",
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
                    exists instance_pkey = @"filter_Redis Instance".instance_pkey
                    filter role = "primary"
                    align frame(back: 2m), metric_clients_connected_e3qjll1a:avg(m("clients_connected"))
                    aggregate metric_clients_connected_e3qjll1a:sum(metric_clients_connected_e3qjll1a), group_by(instance_pkey)
                EOT
      },
      {
        id = "stage-zmb32x6w"
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
            columnVisibility = {
              _c_instance_properties_path = false
              instance_pkey               = false
            }
            columnWidths                 = {}
            containerWidth               = 2143
            contextMenuXCoord            = null
            contextMenuYCoord            = null
            defaultColumnWidth           = 70
            disableFixedLeftColumns      = false
            eventLinkColumnId            = null
            fetchPageSize                = 100
            hasCalculatedColumnWidths    = true
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
          index = 15
          inputList = [
            {
              datasetId   = "${local.redis_instance}"
              inputName   = "test_gcp_learning-bedbug/Redis Instance"
              inputRole   = "Data"
              isUserInput = false
            },
          ]
          label = "Properties"
          managers = [
            {
              id                     = "874dqnjh"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "1cw8fys5"
              isDisabled = true
              type       = "Vis"
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
              id                = "step-ggplevzw"
              index             = 0
              isPinned          = false
              opal              = []
              queryPresentation = {}
              type              = "InputStep"
            },
            {
              columnStatsTable = {
                columnFunctions = {}
                datasetQueryId = {
                  ignoreCompress = false
                  queryId        = "q-tmp5uw00"
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
              id       = "step-4q606eh4"
              index    = 1
              isPinned = false
              opal = [
                "filter instance_pkey = $redis.instance_pkey ",
                "",
                "make_col instance_properties: make_object(Tier: tier, Read_Replica_Mode: readReplicasMode, Replica_Count: replicaCount, Primary_Location: locationId, Version: redisVersion)",
                "",
                "flatten instance_properties",
                "",
                "pick_col",
                "\t@.\"Valid From\",",
                " \t@.\"Valid To\",",
                "  \tinstance_pkey,_c_instance_properties_path,",
                "   Property: replace(_c_instance_properties_path,'_',' '),",
                "   Value: _c_instance_properties_value",
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
              script        = false
            }
            showTimeRuler = true
            stageTab      = "table"
          }
        }
        params   = null
        pipeline = <<-EOT
                    filter instance_pkey = $redis.instance_pkey 
                    
                    make_col instance_properties: make_object(Tier: tier, Read_Replica_Mode: readReplicasMode, Replica_Count: replicaCount, Primary_Location: locationId, Version: redisVersion)
                    
                    flatten instance_properties
                    
                    pick_col
                    	@."Valid From",
                     	@."Valid To",
                      	instance_pkey,_c_instance_properties_path,
                       Property: replace(_c_instance_properties_path,'_',' '),
                       Value: _c_instance_properties_value
                EOT
      },
      {
        id = "stage-rp98umdc"
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
              "1" = "_c_instance_properties_path"
              "2" = "Valid From"
              "3" = "Valid To"
            }
            columnVisibility = {
              _c_instance_properties_path = false
              instance_pkey               = false
            }
            columnWidths = {
              Value = 462
            }
            containerWidth               = 285
            contextMenuXCoord            = null
            contextMenuYCoord            = null
            defaultColumnWidth           = 70
            disableFixedLeftColumns      = false
            eventLinkColumnId            = null
            fetchPageSize                = 100
            hasCalculatedColumnWidths    = true
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
          index = 16
          inputList = [
            {
              datasetId   = "${local.redis_instance}"
              inputName   = "test_gcp_learning-bedbug/Redis Instance"
              inputRole   = "Data"
              isUserInput = false
            },
          ]
          label = "Connection Properties"
          managers = [
            {
              id                     = "qy4a8j7m"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "o0c71dzx"
              isDisabled = true
              type       = "Vis"
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
              id                = "step-etkccztz"
              index             = 0
              isPinned          = false
              opal              = []
              queryPresentation = {}
              type              = "InputStep"
            },
            {
              columnStatsTable = {
                columnFunctions = {}
                datasetQueryId = {
                  ignoreCompress = false
                  queryId        = "q-pphydqqk"
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
              id       = "step-8xlmk08h"
              index    = 1
              isPinned = false
              opal = [
                "filter instance_pkey = $redis.instance_pkey ",
                "",
                "make_col instance_properties: make_object(Primary_Endpoint: host,Authorized_Network: authorizedNetwork, Connection_mode: connectMode, IP_range: reservedIpRange)",
                "",
                "flatten instance_properties",
                "",
                "pick_col",
                "\t@.\"Valid From\",",
                " \t@.\"Valid To\",",
                "  \tinstance_pkey,_c_instance_properties_path,",
                "   Property: replace(_c_instance_properties_path,'_',' '),",
                "   Value: _c_instance_properties_value",
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
              script        = false
            }
            showTimeRuler = true
            stageTab      = "table"
          }
        }
        params   = null
        pipeline = <<-EOT
                    filter instance_pkey = $redis.instance_pkey 
                    
                    make_col instance_properties: make_object(Primary_Endpoint: host,Authorized_Network: authorizedNetwork, Connection_mode: connectMode, IP_range: reservedIpRange)
                    
                    flatten instance_properties
                    
                    pick_col
                    	@."Valid From",
                     	@."Valid To",
                      	instance_pkey,_c_instance_properties_path,
                       Property: replace(_c_instance_properties_path,'_',' '),
                       Value: _c_instance_properties_value
                EOT
      },
    ]
  )
  workspace = local.workspace
}

