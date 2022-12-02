# terraform import observe_dashboard.cloud_sql_instance 41246467
resource "observe_dashboard" "cloud_sql_instance" {
  description = "Singleton dashboard for CloudSQL instance"
  layout = jsonencode(
    {
      gridLayout = {
        sections = [
          {
            card = {
              cardType = "section"
              closed   = false
              id       = "card-hsbxgzc8"
              title    = "Dashboard Content"
            }
            items = [
              {
                card = {
                  cardType    = "parameter"
                  id          = "card-4nrw99oe"
                  parameterId = "database"
                }
                lastModified = 1664842683974
                layout = {
                  h           = 4
                  i           = "card-4nrw99oe---1664842683974"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  resizeHandles = [
                    "e",
                  ]
                  static = false
                  w      = 12
                  x      = 0
                  y      = 0
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-ov9aaxxk"
                  stageId  = "stage-5xzio1og"
                }
                layout = {
                  h           = 11
                  i           = "card-ov9aaxxk"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 3
                  x           = 0
                  y           = 4
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-vi8guxo9"
                  stageId  = "stage-qakfyotl"
                }
                layout = {
                  h           = 12
                  i           = "card-vi8guxo9"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 5
                  x           = 3
                  y           = 4
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-gu9x91eo"
                  stageId  = "stage-ac0jjmlb"
                }
                layout = {
                  h           = 12
                  i           = "card-gu9x91eo"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 4
                  x           = 8
                  y           = 4
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-qxnced83"
                  stageId  = "stage-59mo6lqx"
                }
                layout = {
                  h           = 12
                  i           = "card-qxnced83"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 3
                  x           = 0
                  y           = 15
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-7x0xavku"
                  stageId  = "stage-wwog6ily"
                }
                layout = {
                  h           = 26
                  i           = "card-7x0xavku"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 4
                  x           = 3
                  y           = 16
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-2rlmk6uh"
                  stageId  = "stage-pxayzmmz"
                }
                layout = {
                  h           = 8
                  i           = "card-2rlmk6uh"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 5
                  x           = 7
                  y           = 16
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-eap8vxbh"
                  stageId  = "stage-8alrwr6w"
                }
                layout = {
                  h           = 9
                  i           = "card-eap8vxbh"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 5
                  x           = 7
                  y           = 24
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-krkc9flc"
                  stageId  = "stage-y873vvzo"
                }
                layout = {
                  h           = 15
                  i           = "card-krkc9flc"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 3
                  x           = 0
                  y           = 27
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-8q2qoete"
                  stageId  = "stage-8bcawmdj"
                }
                layout = {
                  h           = 9
                  i           = "card-8q2qoete"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 5
                  x           = 7
                  y           = 33
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-7i3gyhtw"
                  stageId  = "stage-8jlila4s"
                }
                layout = {
                  h           = 15
                  i           = "card-7i3gyhtw"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 3
                  x           = 0
                  y           = 42
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-3ntvz7uv"
                  stageId  = "stage-liidj0lt"
                }
                layout = {
                  h           = 15
                  i           = "card-3ntvz7uv"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 5
                  x           = 3
                  y           = 42
                }
              },
            ]
            lastModified = 1664853489542
          },
          {
            card = {
              cardType = "section"
              closed   = true
              id       = "section-496qk08g"
              title    = "PostGres Logs"
            }
            items = [
              {
                card = {
                  cardType = "stage"
                  id       = "card-sxddkrmf"
                  stageId  = "stage-xaa089nn"
                }
                layout = {
                  h           = 14
                  i           = "card-sxddkrmf"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 12
                  x           = 0
                  y           = 0
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-1fmxtu9z"
                  stageId  = "stage-kfkxop2i"
                }
                layout = {
                  h           = 13
                  i           = "card-1fmxtu9z"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 12
                  x           = 0
                  y           = 14
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-gwcr5u2f"
                  stageId  = "stage-ytbrb1ty"
                }
                layout = {
                  h           = 13
                  i           = "card-gwcr5u2f"
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
                  id       = "card-qxnced83"
                  stageId  = "stage-59mo6lqx"
                }
                layout = {
                  h           = 12
                  i           = "card-qxnced83"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 3
                  x           = 0
                  y           = 15
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-ov9aaxxk"
                  stageId  = "stage-5xzio1og"
                }
                layout = {
                  h           = 11
                  i           = "card-ov9aaxxk"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 3
                  x           = 0
                  y           = 4
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-vi8guxo9"
                  stageId  = "stage-qakfyotl"
                }
                layout = {
                  h           = 12
                  i           = "card-vi8guxo9"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 5
                  x           = 3
                  y           = 4
                }
              },
            ]
            lastModified = 1664885646674
          },
        ]
      }
      stageListLayout = {
        isModified = false
        parameters = [
          {
            defaultValue = {
              link = {
                datasetId = "${local.cloud_sql_instance}"
                primaryKeyValue = [
                  {
                    name = "assetInventoryName"
                    value = {
                      string = "//cloudsql.googleapis.com/projects/terraflood-345116/instances/con-gha-main-g1-763-instance-tapir"
                    }
                  },
                  {
                    name = "database_id"
                    value = {
                      string = "terraflood-345116:con-gha-main-g1-763-instance-tapir"
                    }
                  },
                  {
                    name = "name"
                    value = {
                      string = "con-gha-main-g1-763-instance-tapir"
                    }
                  },
                ]
                storedLabel = "con-gha-main-g1-763-instance-tapir"
              }
            }
            emptyValueEncoding    = "null"
            emptyValueLabelOption = "null"
            id                    = "database"
            name                  = "Database"
            valueKind = {
              keyForDatasetId = "${local.cloud_sql_instance}"
              type            = "LINK"
            }
            viewType = "resource-input"
          },
        ]
        selectedStageId = "stage-wwog6ily"
        timeRange = {
          display               = "Past 7 days"
          endTime               = null
          millisFromCurrentTime = 604800000
          originalDisplay       = "Past 7 days"
          startTime             = null
          timeRangeInfo = {
            key        = "PRESETS"
            name       = "Presets"
            presetType = "PAST_7_DAYS"
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
          array      = null
          bool       = null
          datasetref = null
          float64    = null
          int64      = null
          link = {
            datasetId = "${local.cloud_sql_instance}"
            primaryKeyValue = [
              {
                name = "assetInventoryName"
                value = {
                  bool    = null
                  float64 = null
                  int64   = null
                  string  = "//cloudsql.googleapis.com/projects/terraflood-345116/instances/con-gha-main-g1-763-instance-tapir"
                }
              },
              {
                name = "database_id"
                value = {
                  bool    = null
                  float64 = null
                  int64   = null
                  string  = "terraflood-345116:con-gha-main-g1-763-instance-tapir"
                }
              },
              {
                name = "name"
                value = {
                  bool    = null
                  float64 = null
                  int64   = null
                  string  = "con-gha-main-g1-763-instance-tapir"
                }
              },
            ]
            storedLabel = "con-gha-main-g1-763-instance-tapir"
          }
          string = null
        }
        id   = "database"
        name = "Database"
        valueKind = {
          arrayItemType   = null
          keyForDatasetId = "${local.cloud_sql_instance}"
          type            = "LINK"
        }
      },
    ]
  )
  stages = jsonencode(
    [
      {
        id = "stage-liidj0lt"
        input = [
          {
            datasetId   = "${local.cloud_sql_instance}"
            datasetPath = null
            inputName   = "stage/${local.dashboard_name_singleton}"
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
            columnVisibility = {
              _c_backupConfiguration_path = false
              database_id                 = false
            }
            columnWidths = {
              _c_backupConfiguration_path  = 290
              _c_backupConfiguration_value = 261
            }
            containerWidth              = 544
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
          index = 0
          inputList = [
            {
              datasetId   = "${local.cloud_sql_instance}"
              inputName   = "stage/${local.dashboard_name_singleton}"
              inputRole   = "Data"
              isUserInput = false
            },
          ]
          label = "Back Up Configuration"
          managers = [
            {
              id                     = "79r2o4sn"
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
                  assetInventoryName       = "count"
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
                  region                   = "count"
                  tier                     = "count"
                  ttl                      = "count"
                }
                datasetQueryId = {
                  ignoreCompress = false
                  queryId        = "q-7ljc42a6"
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
              customSummary = "stage/${local.dashboard_name_singleton}"
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
              id                = "step-56ohe2va"
              index             = 0
              isPinned          = false
              opal              = []
              queryPresentation = {}
              type              = "InputStep"
            },
            {
              columnStatsTable = {
                columnFunctions = {
                  assetInventoryName       = "count"
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
                  region                   = "count"
                  tier                     = "count"
                  ttl                      = "count"
                }
                datasetQueryId = {
                  ignoreCompress = false
                  queryId        = "q-70j191ty"
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
              id       = "step-6xvoa1qv"
              index    = 1
              isPinned = false
              opal = [
                "filter database_id = $database.database_id",
                "    ",
                "pick_col ",
                "\t@.\"Valid From\",",
                "    @.\"Valid To\",",
                "    database_id,",
                "\tbackupConfiguration",
                "    ",
                "flatten backupConfiguration",
                "    ",
                "make_col setting: _c_backupConfiguration_path, Value: _c_backupConfiguration_value",
                "",
                "filter not in(setting,\"backupRetentionSettings\",\"backupRetentionSettings.retentionUnit\")",
                "",
                "make_col Setting: case (setting=\"backupRetentionSettings.retainedBackups\", \"retainedBackups\", true, setting)",
                "",
                "pick_col ",
                "\t@.\"Valid From\",",
                "    @.\"Valid To\",",
                "    database_id,",
                "    _c_backupConfiguration_path,",
                "    Setting,",
                "    Value",
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
                    filter database_id = $database.database_id
                        
                    pick_col 
                    	@."Valid From",
                        @."Valid To",
                        database_id,
                    	backupConfiguration
                        
                    flatten backupConfiguration
                        
                    make_col setting: _c_backupConfiguration_path, Value: _c_backupConfiguration_value
                    
                    filter not in(setting,"backupRetentionSettings","backupRetentionSettings.retentionUnit")
                    
                    make_col Setting: case (setting="backupRetentionSettings.retainedBackups", "retainedBackups", true, setting)
                    
                    pick_col 
                    	@."Valid From",
                        @."Valid To",
                        database_id,
                        _c_backupConfiguration_path,
                        Setting,
                        Value
                EOT
      },
      {
        id = "stage-8bcawmdj"
        input = [
          {
            datasetId   = "${local.cloud_sql_instance}"
            datasetPath = null
            inputName   = "stage/${local.dashboard_name_singleton}"
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
            columnVisibility = {
              _c_databaseFlags_path = false
              database_id           = false
            }
            columnWidths = {
              Name  = 205
              Value = 184
            }
            containerWidth              = 544
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
          index = 1
          inputList = [
            {
              datasetId   = "${local.cloud_sql_instance}"
              inputName   = "stage/${local.dashboard_name_singleton}"
              inputRole   = "Data"
              isUserInput = false
            },
          ]
          label = "Database Flags"
          managers = [
            {
              id                     = "7pfen420"
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
                  assetInventoryName       = "count"
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
                  region                   = "count"
                  tier                     = "count"
                  ttl                      = "count"
                }
                datasetQueryId = {
                  ignoreCompress = false
                  queryId        = "q-wpvviv1l"
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
              customSummary = "stage/${local.dashboard_name_singleton}"
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
              id                = "step-fp5azk33"
              index             = 0
              isPinned          = false
              opal              = []
              queryPresentation = {}
              type              = "InputStep"
            },
            {
              columnStatsTable = {
                columnFunctions = {
                  Name                     = "count"
                  Value                    = "count"
                  _c_databaseFlags_path    = "count"
                  assetInventoryName       = "count"
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
                  region                   = "count"
                  tier                     = "count"
                  ttl                      = "count"
                }
                datasetQueryId = {
                  ignoreCompress = false
                  queryId        = "q-mxvrluop"
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
              id       = "step-3vt47vhx"
              index    = 1
              isPinned = false
              opal = [
                "filter database_id = $database.database_id",
                "    ",
                "pick_col ",
                "\t@.\"Valid From\",",
                "    @.\"Valid To\",",
                "    database_id,",
                "\tdatabaseFlags",
                "    ",
                "flatten_single databaseFlags",
                "",
                "",
                "make_col Name:string(_c_databaseFlags_value.name),",
                "    Value:string(_c_databaseFlags_value.value)",
                "    ",
                "pick_col ",
                "\t@.\"Valid From\",",
                "    @.\"Valid To\",",
                "    database_id,",
                "    _c_databaseFlags_path,",
                "    Name,",
                "    Value",
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
                    filter database_id = $database.database_id
                        
                    pick_col 
                    	@."Valid From",
                        @."Valid To",
                        database_id,
                    	databaseFlags
                        
                    flatten_single databaseFlags
                    
                    
                    make_col Name:string(_c_databaseFlags_value.name),
                        Value:string(_c_databaseFlags_value.value)
                        
                    pick_col 
                    	@."Valid From",
                        @."Valid To",
                        database_id,
                        _c_databaseFlags_path,
                        Name,
                        Value
                EOT
      },
      {
        id = "stage-pxayzmmz"
        input = [
          {
            datasetId   = "${local.cloud_sql_instance}"
            datasetPath = null
            inputName   = "stage/${local.dashboard_name_singleton}"
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
              "2" = "Valid From"
              "3" = "Valid To"
              "4" = "Name"
            }
            columnVisibility = {
              _c_databaseFlags_path                      = false
              _c_ipConfiguration_authorizedNetworks_path = false
              database_id                                = false
            }
            columnWidths = {
              Kind                                        = 176
              Name                                        = 205
              Value                                       = 184
              _c_ipConfiguration_authorizedNetworks_value = 690
            }
            containerWidth              = 544
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
            tableHeight                = 246
            tableView                  = "TABULAR"
          }
          index = 2
          inputList = [
            {
              datasetId   = "${local.cloud_sql_instance}"
              inputName   = "stage/${local.dashboard_name_singleton}"
              inputRole   = "Data"
              isUserInput = false
            },
          ]
          label = "IP Configuration"
          managers = [
            {
              id                     = "7pfen420"
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
              customName    = "Input"
              customSummary = "stage/${local.dashboard_name_singleton}"
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
              id                = "step-53ori53k"
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
                  queryId        = "q-0gvxey3d"
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
              id       = "step-l1k5nr54"
              index    = 1
              isPinned = false
              opal = [
                "filter database_id = $database.database_id",
                "    ",
                "pick_col ",
                "\t@.\"Valid From\",",
                "    @.\"Valid To\",",
                "    database_id,",
                "\tipConfiguration",
                "    ",
                "flatten_single ipConfiguration.authorizedNetworks",
                "",
                "make_col Kind:string(_c_ipConfiguration_authorizedNetworks_value.kind),",
                "    Name:string(_c_ipConfiguration_authorizedNetworks_value.name),",
                "    Value:string(_c_ipConfiguration_authorizedNetworks_value.value)",
                "    ",
                "pick_col ",
                "\t@.\"Valid From\",",
                "    @.\"Valid To\",",
                "    database_id,",
                "    _c_ipConfiguration_authorizedNetworks_path,",
                "    Kind,",
                "    Name,",
                "    Value",
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
                    filter database_id = $database.database_id
                        
                    pick_col 
                    	@."Valid From",
                        @."Valid To",
                        database_id,
                    	ipConfiguration
                        
                    flatten_single ipConfiguration.authorizedNetworks
                    
                    make_col Kind:string(_c_ipConfiguration_authorizedNetworks_value.kind),
                        Name:string(_c_ipConfiguration_authorizedNetworks_value.name),
                        Value:string(_c_ipConfiguration_authorizedNetworks_value.value)
                        
                    pick_col 
                    	@."Valid From",
                        @."Valid To",
                        database_id,
                        _c_ipConfiguration_authorizedNetworks_path,
                        Kind,
                        Name,
                        Value
                EOT
      },
      {
        id = "stage-8alrwr6w"
        input = [
          {
            datasetId   = "${local.cloud_sql_instance}"
            datasetPath = null
            inputName   = "stage/${local.dashboard_name_singleton}"
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
              "2" = "Valid From"
              "3" = "Valid To"
              "4" = "Name"
            }
            columnVisibility = {
              _c_databaseFlags_path                      = false
              _c_ipAddresses_path                        = false
              _c_ipConfiguration_authorizedNetworks_path = false
              database_id                                = false
            }
            columnWidths = {
              Kind                                        = 176
              Name                                        = 205
              Type                                        = 197
              Value                                       = 184
              _c_ipConfiguration_authorizedNetworks_value = 690
              ipAddress                                   = 209
            }
            containerWidth              = 544
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
            tableHeight                = 246
            tableView                  = "TABULAR"
          }
          index = 3
          inputList = [
            {
              datasetId   = "${local.cloud_sql_instance}"
              inputName   = "stage/${local.dashboard_name_singleton}"
              inputRole   = "Data"
              isUserInput = false
            },
          ]
          label = "IP Addresses"
          managers = [
            {
              id                     = "7pfen420"
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
              customName    = "Input"
              customSummary = "stage/${local.dashboard_name_singleton}"
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
              id                = "step-dktwlg9v"
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
              id       = "step-i3iqtl1r"
              index    = 1
              isPinned = false
              opal = [
                "filter database_id = $database.database_id",
                "",
              ]
              queryPresentation = {}
              type              = "unknown"
            },
            {
              action = {
                params = {
                  columnId = "ipAddresses"
                }
                summary = null
                type    = "ConvertToJSON"
              }
              columnStatsTable = {
                columnFunctions = {
                  assetInventoryName       = "count"
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
                  region                   = "count"
                  tier                     = "count"
                  ttl                      = "count"
                }
                datasetQueryId = {
                  ignoreCompress = false
                  queryId        = "q-igiuumxt"
                  resultKinds = [
                    "ResultKindSchema",
                    "ResultKindData",
                  ]
                  tableTypes = [
                    "TABULAR",
                  ]
                }
              }
              customSummary = "ipAddresses"
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
              id       = "step-qvvnll96"
              index    = 2
              isPinned = false
              opal = [
                "make_col ipAddresses: parse_json(ipAddresses)",
              ]
              queryPresentation = {}
              type              = "unknown"
            },
            {
              columnStatsTable = {
                columnFunctions = {
                  assetInventoryName       = "count"
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
                  region                   = "count"
                  tier                     = "count"
                  ttl                      = "count"
                }
                datasetQueryId = {
                  ignoreCompress = false
                  queryId        = "q-rpqn9dn3"
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
              id       = "step-nr82ev4z"
              index    = 3
              isPinned = false
              opal = [
                "",
                "pick_col ",
                "\t@.\"Valid From\",",
                "    @.\"Valid To\",",
                "    database_id,",
                "\tipAddresses: ipAddresses",
                "    ",
                "flatten_single ipAddresses",
                "",
                "make_col ipAddress:string(_c_ipAddresses_value.ipAddress),",
                "    Type:string(_c_ipAddresses_value.type)",
                "    ",
                "pick_col ",
                "\t@.\"Valid From\",",
                "    @.\"Valid To\",",
                "    database_id,",
                "   _c_ipAddresses_path,",
                "    ipAddress,",
                "    Type",
                "",
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
            stageTab      = "table"
          }
        }
        params   = null
        pipeline = <<-EOT
                    filter database_id = $database.database_id
                    
                    make_col ipAddresses: parse_json(ipAddresses)
                    
                    pick_col 
                    	@."Valid From",
                        @."Valid To",
                        database_id,
                    	ipAddresses: ipAddresses
                        
                    flatten_single ipAddresses
                    
                    make_col ipAddress:string(_c_ipAddresses_value.ipAddress),
                        Type:string(_c_ipAddresses_value.type)
                        
                    pick_col 
                    	@."Valid From",
                        @."Valid To",
                        database_id,
                       _c_ipAddresses_path,
                        ipAddress,
                        Type
                    
                EOT
      },
      {
        id = "stage-wwog6ily"
        input = [
          {
            datasetId   = "${local.cloud_sql_instance}"
            datasetPath = null
            inputName   = "stage/${local.dashboard_name_singleton}"
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
              "3" = "Valid From"
              "4" = "Valid To"
            }
            columnVisibility = {
              _c_obj_path         = false
              assetInventoryName  = false
              backupConfiguration = false
              createTime          = false
              databaseFlags       = false
              database_id         = false
              deleted             = false
              ipAddressPrimary    = false
              ipAddresses         = false
              ipConfiguration     = false
              ttl                 = false
            }
            columnWidths = {
              dataDiskSizeGb  = 197
              dataDiskType    = 161
              databaseVersion = 174
            }
            containerWidth              = 433
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
          index = 4
          inputList = [
            {
              datasetId   = "${local.cloud_sql_instance}"
              inputName   = "stage/${local.dashboard_name_singleton}"
              inputRole   = "Data"
              isUserInput = false
            },
          ]
          label = "Database Properties"
          managers = [
            {
              id                     = "xaw2gqa9"
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
                  assetInventoryName       = "count"
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
                  region                   = "count"
                  tier                     = "count"
                  ttl                      = "count"
                }
                datasetQueryId = {
                  ignoreCompress = false
                  queryId        = "q-j8xnzn1e"
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
              customSummary = "stage/${local.dashboard_name_singleton}"
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
              id                = "step-k3wk9ii1"
              index             = 0
              isPinned          = false
              opal              = []
              queryPresentation = {}
              type              = "InputStep"
            },
            {
              columnStatsTable = {
                columnFunctions = {
                  _c_obj_path              = "count"
                  assetInventoryName       = "count"
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
                  region                   = "count"
                  tier                     = "count"
                  ttl                      = "count"
                  value                    = "count"
                }
                datasetQueryId = {
                  ignoreCompress = false
                  queryId        = "q-1qlra3p2"
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
              id       = "step-veykd7wf"
              index    = 1
              isPinned = false
              opal = [
                "filter database_id = $database.database_id",
                "",
                "make_col obj:make_object(region: region, zone: gceZone, backendType: backendType, availabilityType: availabilityType, dataDiskSizeGb: dataDiskSizeGb, dataDiskType: dataDiskType, tier: tier, databaseVersion: databaseVersion, databaseInstalledVersion: databaseInstalledVersion)",
                "",
                "flatten obj",
                "",
                "make_col name: _c_obj_path, value: _c_obj_value",
                "",
                "pick_col ",
                "\t@.\"Valid From\",",
                "    @.\"Valid To\",",
                "    _c_obj_path,",
                "    database_id,",
                "\tname,",
                "    value",
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
                    filter database_id = $database.database_id
                    
                    make_col obj:make_object(region: region, zone: gceZone, backendType: backendType, availabilityType: availabilityType, dataDiskSizeGb: dataDiskSizeGb, dataDiskType: dataDiskType, tier: tier, databaseVersion: databaseVersion, databaseInstalledVersion: databaseInstalledVersion)
                    
                    flatten obj
                    
                    make_col name: _c_obj_path, value: _c_obj_value
                    
                    pick_col 
                    	@."Valid From",
                        @."Valid To",
                        _c_obj_path,
                        database_id,
                    	name,
                        value
                EOT
      },
      {
        id = "stage-ac0jjmlb"
        input = [
          {
            datasetId   = "${local.cloud_sql_metrics_combo}"
            datasetPath = null
            inputName   = "stage/Cloud SQL Metrics Combo"
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
          index = 5
          inputList = [
            {
              datasetId   = "${local.cloud_sql_metrics_combo}"
              inputName   = "stage/Cloud SQL Metrics Combo"
              inputRole   = "Data"
              isUserInput = false
            },
          ]
          label = "Network Connections"
          managers = [
            {
              id                     = "d3d522y7"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "yjfcnn6o"
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
                      [
                        "database_id",
                      ],
                    ]
                    statsBy = {
                      fn = "avg"
                    }
                    timechart = {
                      fn         = "any"
                      fnArgs     = []
                      resolution = "AUTO"
                    }
                    transformType = "timechart"
                    type          = "xy"
                    y             = "value"
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
              columnStatsTable = {
                columnFunctions = {
                  combo_metric         = "count"
                  database_platform    = "count"
                  instance_state_label = "count"
                  label                = "count"
                  metric               = "count"
                  metric_category      = "count"
                  metric_kind_text     = "count"
                  metric_labels        = "count"
                  project_id           = "count"
                  region               = "count"
                  value                = "count"
                  value_type_text      = "count"
                }
                datasetQueryId = {
                  ignoreCompress = false
                  queryId        = "q-32fkipny"
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
              customSummary = "stage/Cloud SQL Metrics Combo"
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
              id                = "step-f5hxpv5d"
              index             = 0
              isPinned          = false
              opal              = []
              queryPresentation = {}
              type              = "InputStep"
            },
            {
              columnStatsTable = {
                columnFunctions = {
                  combo_metric         = "count"
                  database_platform    = "count"
                  instance_state_label = "count"
                  label                = "count"
                  metric               = "count"
                  metric_category      = "count"
                  metric_kind_text     = "count"
                  metric_labels        = "count"
                  project_id           = "count"
                  region               = "count"
                  value                = "count"
                  value_type_text      = "count"
                }
                datasetQueryId = {
                  ignoreCompress = false
                  queryId        = "q-52hfmem5"
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
              id       = "step-slf3vu3r"
              index    = 1
              isPinned = false
              opal = [
                "filter database_id = $database.database_id",
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
        pipeline = "filter database_id = $database.database_id"
      },
      {
        id = "stage-y873vvzo"
        input = [
          {
            datasetId   = "${local.cloud_sql_metrics}"
            datasetPath = null
            inputName   = "stage/Cloud SQL Metrics"
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
            containerWidth              = 2145
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
          index = 6
          inputList = [
            {
              datasetId   = "${local.cloud_sql_metrics}"
              inputName   = "stage/Cloud SQL Metrics"
              inputRole   = "Data"
              isUserInput = false
            },
          ]
          label = "Data by Type"
          managers = [
            {
              id                     = "cy46crco"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "4gqqddfj"
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
                      "data_type",
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
                    valueField    = "value"
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
            rollup      = {}
            wantBuckets = 1
          }
          renderType     = "TABLE"
          selectedStepId = null
          serializable   = true
          steps = [
            {
              columnStatsTable = {
                columnFunctions = {
                  database_platform    = "count"
                  instance_state_label = "count"
                  label                = "count"
                  metric               = "count"
                  metric_category      = "count"
                  metric_kind_text     = "count"
                  metric_labels        = "count"
                  project_id           = "count"
                  region               = "count"
                  value                = "count"
                  value_type_text      = "count"
                }
                datasetQueryId = {
                  ignoreCompress = false
                  queryId        = "q-bxkqmby5"
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
              customSummary = "stage/Cloud SQL Metrics"
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
              id                = "step-jr1qgsad"
              index             = 0
              isPinned          = false
              opal              = []
              queryPresentation = {}
              type              = "InputStep"
            },
            {
              columnStatsTable = {
                columnFunctions = {
                  database_platform    = "count"
                  instance_state_label = "count"
                  label                = "count"
                  metric               = "count"
                  metric_category      = "count"
                  metric_kind_text     = "count"
                  metric_labels        = "count"
                  project_id           = "count"
                  region               = "count"
                  value                = "count"
                  value_type_text      = "count"
                }
                datasetQueryId = {
                  ignoreCompress = false
                  queryId        = "q-0aeeslvg"
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
              id       = "step-n23tpmih"
              index    = 1
              isPinned = false
              opal = [
                "filter database_id = $database.database_id",
              ]
              queryPresentation = {}
              type              = "unknown"
            },
            {
              action = {
                params = {
                  columnId    = "label"
                  columnType  = "string"
                  filterVerb  = "filter"
                  isExcluding = false
                  values = [
                    "bytes_used_by_data_type",
                  ]
                }
                summary = null
                type    = "FilterValues"
              }
              columnStatsTable = {
                columnFunctions = {
                  database_platform    = "count"
                  instance_state_label = "count"
                  label                = "count"
                  metric               = "count"
                  metric_category      = "count"
                  metric_kind_text     = "count"
                  metric_labels        = "count"
                  project_id           = "count"
                  region               = "count"
                  value                = "count"
                  value_type_text      = "count"
                }
                datasetQueryId = {
                  ignoreCompress = false
                  queryId        = "q-40dsw4u2"
                  resultKinds = [
                    "ResultKindSchema",
                    "ResultKindData",
                  ]
                  tableTypes = [
                    "TABULAR",
                  ]
                }
              }
              customSummary = "label"
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
              id       = "step-ip0eglwn"
              index    = 2
              isPinned = false
              opal = [
                "filter label = \"bytes_used_by_data_type\"",
              ]
              queryPresentation = {}
              type              = "unknown"
            },
            {
              action = {
                params = {
                  autoConvertType = true
                  checkedKeys = [
                    "data_type",
                  ]
                  columnId = "metric_labels"
                  existingColumnIds = [
                    "end_time",
                    "metric",
                    "value",
                    "metric_category",
                    "label",
                    "instance_state_label",
                    "database_platform",
                    "metric_labels",
                    "value_type_text",
                    "Cloud SQL Metrics",
                    "database_id",
                    "project_id",
                    "region",
                    "metric_type",
                    "metric_kind",
                    "metric_kind_text",
                    "value_type",
                    "_ob_summary",
                  ]
                  expandedKeys = []
                  extraKeys    = []
                  typeByPath = {
                    data_type = "string"
                  }
                }
                summary = null
                type    = "ExtractJSON"
              }
              columnStatsTable = {
                columnFunctions = {
                  data_type            = "count"
                  database_platform    = "count"
                  instance_state_label = "count"
                  label                = "count"
                  metric               = "count"
                  metric_category      = "count"
                  metric_kind_text     = "count"
                  metric_labels        = "count"
                  project_id           = "count"
                  region               = "count"
                  value                = "count"
                  value_type_text      = "count"
                }
                datasetQueryId = {
                  ignoreCompress = false
                  queryId        = "q-upzpw3oi"
                  resultKinds = [
                    "ResultKindSchema",
                    "ResultKindData",
                  ]
                  tableTypes = [
                    "TABULAR",
                  ]
                }
              }
              customSummary = "metric_labels"
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
              id       = "step-0evysdma"
              index    = 3
              isPinned = false
              opal = [
                "make_col data_type:string(metric_labels.data_type)",
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
                    filter database_id = $database.database_id
                    filter label = "bytes_used_by_data_type"
                    make_col data_type:string(metric_labels.data_type)
                EOT
      },
      {
        id = "stage-8jlila4s"
        input = [
          {
            datasetId   = "${local.cloud_sql_metrics}"
            datasetPath = null
            inputName   = "stage/Cloud SQL Metrics"
            inputRole   = "Data"
            stageId     = null
          },
        ]
        layout = {
          appearance = "VISIBLE"
          dataTableViewState = {
            autoTableHeight     = true
            columnFooterHeight  = 0
            columnHeaderHeight  = 29
            columnOrderOverride = {}
            columnVisibility    = {}
            columnWidths = {
              "Data Type" = 150
              MB          = 92
              data_type   = 254
              last_value  = 151
            }
            containerWidth              = 322
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
          index = 7
          inputList = [
            {
              datasetId   = "${local.cloud_sql_metrics}"
              inputName   = "stage/Cloud SQL Metrics"
              inputRole   = "Data"
              isUserInput = false
            },
          ]
          label = "Data by Type"
          managers = [
            {
              id                     = "cy46crco"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "4gqqddfj"
              isDisabled = true
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
                      "data_type",
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
                    valueField    = "value"
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
              "ResultKindData",
              "ResultKindStats",
              "ResultKindProgress",
            ]
            rollup      = {}
            wantBuckets = 1
          }
          renderType     = "TABLE"
          selectedStepId = null
          serializable   = true
          steps = [
            {
              customName    = "Input"
              customSummary = "stage/Cloud SQL Metrics"
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
              id                = "step-h2ash2i7"
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
              id       = "step-qxly08cl"
              index    = 1
              isPinned = false
              opal = [
                "filter database_id = $database.database_id",
              ]
              queryPresentation = {}
              type              = "unknown"
            },
            {
              action = {
                params = {
                  columnId    = "label"
                  columnType  = "string"
                  filterVerb  = "filter"
                  isExcluding = false
                  values = [
                    "bytes_used_by_data_type",
                  ]
                }
                summary = null
                type    = "FilterValues"
              }
              customSummary = "label"
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
              id       = "step-3zly81ma"
              index    = 2
              isPinned = false
              opal = [
                "filter label = \"bytes_used_by_data_type\"",
              ]
              queryPresentation = {}
              type              = "unknown"
            },
            {
              columnStatsTable = {
                columnFunctions = {}
                datasetQueryId = {
                  ignoreCompress = false
                  queryId        = "q-erv7dnhq"
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
              id       = "step-wzq1dk91"
              index    = 3
              isPinned = false
              opal = [
                "make_col \"Data Type\":string(metric_labels.data_type)",
                "",
                "statsby MB:int64(last(value/1024/1024)), group_by(@.\"Data Type\")",
                "",
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
            stageTab      = "table"
          }
        }
        params   = null
        pipeline = <<-EOT
                    filter database_id = $database.database_id
                    filter label = "bytes_used_by_data_type"
                    make_col "Data Type":string(metric_labels.data_type)
                    
                    statsby MB:int64(last(value/1024/1024)), group_by(@."Data Type")
                    
                EOT
      },
      {
        id = "stage-xaa089nn"
        input = [
          {
            datasetId   = "${local.cloud_sql_logs_postgres_data_access}"
            datasetPath = null
            inputName   = "stage/Cloud SQL Logs Postgres Data Access"
            inputRole   = "Data"
            stageId     = null
          },
        ]
        layout = {
          appearance = "VISIBLE"
          dataTableViewState = {
            autoTableHeight     = true
            columnFooterHeight  = 0
            columnHeaderHeight  = 29
            columnOrderOverride = {}
            columnVisibility    = {}
            columnWidths = {
              methodName = 285
            }
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
            scrollToColumn              = "protoPayload"
            scrollToRow                 = 8
            selection = {
              cells = {
                database = {
                  "39" = true
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
          index = 8
          inputList = [
            {
              datasetId   = "${local.cloud_sql_logs_postgres_data_access}"
              inputName   = "stage/Cloud SQL Logs Postgres Data Access"
              inputRole   = "Data"
              isUserInput = false
            },
          ]
          label = "Database Activity"
          managers = [
            {
              id                     = "1nm830dc"
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
                  auditClass        = "count"
                  auditType         = "count"
                  command           = "count"
                  database          = "count"
                  databaseSessionId = "count"
                  log_Name          = "count"
                  log_Source        = "count"
                  methodName        = "count"
                  project_id        = "count"
                  protoPayload      = "count"
                  region            = "count"
                  resourceName      = "count"
                  serviceName       = "count"
                  severity          = "count"
                  statement         = "count"
                  user              = "count"
                }
                datasetQueryId = {
                  ignoreCompress = false
                  queryId        = "q-0csm2usf"
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
              customSummary = "stage/Cloud SQL Logs Postgres Data Access"
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
              id                = "step-s5jpx5qc"
              index             = 0
              isPinned          = false
              opal              = []
              queryPresentation = {}
              type              = "InputStep"
            },
            {
              columnStatsTable = {
                columnFunctions = {
                  auditClass        = "count"
                  auditType         = "count"
                  command           = "count"
                  database          = "count"
                  databaseSessionId = "count"
                  log_Name          = "count"
                  log_Source        = "count"
                  methodName        = "count"
                  project_id        = "count"
                  protoPayload      = "count"
                  region            = "count"
                  resourceName      = "count"
                  serviceName       = "count"
                  severity          = "count"
                  statement         = "count"
                  user              = "count"
                }
                datasetQueryId = {
                  ignoreCompress = false
                  queryId        = "q-0luonbi3"
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
              id       = "step-im9hj8we"
              index    = 1
              isPinned = false
              opal = [
                "filter database_id = $database.database_id",
                "",
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
            stageTab      = "table"
          }
        }
        params   = null
        pipeline = <<-EOT
                    filter database_id = $database.database_id
                    
                EOT
      },
      {
        id = "stage-kfkxop2i"
        input = [
          {
            datasetId   = "${local.cloud_sql_logs_error}"
            datasetPath = null
            inputName   = "stage/Cloud SQL Logs Error"
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
              cells = {
                textPayload = {
                  "6" = true
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
          index = 9
          inputList = [
            {
              datasetId   = "${local.cloud_sql_logs_error}"
              inputName   = "stage/Cloud SQL Logs Error"
              inputRole   = "Data"
              isUserInput = false
            },
          ]
          label = "Postgres Alert"
          managers = [
            {
              id                     = "0us7iqax"
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
                  queryId        = "q-xaco0ycb"
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
              customSummary = "stage/Cloud SQL Logs Error"
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
              id                = "step-5tldz8we"
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
              id       = "step-0wqr09dj"
              index    = 1
              isPinned = false
              opal = [
                "filter database_id = $database.database_id",
              ]
              queryPresentation = {}
              type              = "unknown"
            },
            {
              action = {
                params = {
                  columnId    = "log_Name"
                  columnType  = "string"
                  filterVerb  = "filter"
                  isExcluding = false
                  values = [
                    "postgres.log",
                  ]
                }
                summary = null
                type    = "FilterValues"
              }
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
                  queryId        = "q-7xmr78kr"
                  resultKinds = [
                    "ResultKindSchema",
                    "ResultKindData",
                  ]
                  tableTypes = [
                    "TABULAR",
                  ]
                }
              }
              customSummary = "log_Name"
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
              id       = "step-6spor10z"
              index    = 2
              isPinned = true
              opal = [
                "filter log_Name = \"postgres.log\"",
              ]
              queryPresentation = {}
              type              = "unknown"
            },
            {
              action = {
                params = {
                  columnId    = "severity"
                  columnType  = "string"
                  filterVerb  = "filter"
                  isExcluding = false
                  values = [
                    "ALERT",
                  ]
                }
                summary = null
                type    = "FilterValues"
              }
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
                  queryId        = "q-ulrtz4t2"
                  resultKinds = [
                    "ResultKindSchema",
                    "ResultKindData",
                  ]
                  tableTypes = [
                    "TABULAR",
                  ]
                }
              }
              customSummary = "severity"
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
              id       = "step-eqcuegu2"
              index    = 3
              isPinned = true
              opal = [
                "filter severity = \"ALERT\"",
              ]
              queryPresentation = {}
              type              = "unknown"
            },
            {
              columnStatsTable = {
                columnFunctions = {
                  ALERT        = "count"
                  TIME         = "count"
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
                  queryId        = "q-ir60odtz"
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
              id       = "step-culx41bf"
              index    = 4
              isPinned = false
              opal = [
                "",
                "extract_regex textPayload, /(?P<TIME>\\d{1,4}-\\d{1,2}-\\d{1,2} \\d{1,2}:\\d{1,2}:\\d{1,2}\\.\\d{1,6} UTC)/",
                "extract_regex textPayload, /user=[^ ]+(?P<ALERT>.*)/",
                "",
                "pick_col ",
                "\ttimestamp,",
                "    database_id,",
                "    logName,",
                "    severity,",
                "    TIME,",
                "    ALERT,",
                "    textPayload",
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
                    filter database_id = $database.database_id
                    filter log_Name = "postgres.log"
                    filter severity = "ALERT"
                    
                    extract_regex textPayload, /(?P<TIME>\d{1,4}-\d{1,2}-\d{1,2} \d{1,2}:\d{1,2}:\d{1,2}\.\d{1,6} UTC)/
                    extract_regex textPayload, /user=[^ ]+(?P<ALERT>.*)/
                    
                    pick_col 
                    	timestamp,
                        database_id,
                        logName,
                        severity,
                        TIME,
                        ALERT,
                        textPayload
                EOT
      },
      {
        id = "stage-ytbrb1ty"
        input = [
          {
            datasetId   = "${local.cloud_sql_logs_error}"
            datasetPath = null
            inputName   = "stage/Cloud SQL Logs Error"
            inputRole   = "Data"
            stageId     = null
          },
        ]
        layout = {
          appearance = "VISIBLE"
          dataTableViewState = {
            autoTableHeight     = true
            columnFooterHeight  = 0
            columnHeaderHeight  = 29
            columnOrderOverride = {}
            columnVisibility    = {}
            columnWidths = {
              ERROR = 608
            }
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
          index = 10
          inputList = [
            {
              datasetId   = "${local.cloud_sql_logs_error}"
              inputName   = "stage/Cloud SQL Logs Error"
              inputRole   = "Data"
              isUserInput = false
            },
          ]
          label = "Postgres Error"
          managers = [
            {
              id                     = "0us7iqax"
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
              customName    = "Input"
              customSummary = "stage/Cloud SQL Logs Error"
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
              id                = "step-i8vlnd8y"
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
              id       = "step-8qnlg05x"
              index    = 1
              isPinned = false
              opal = [
                "filter database_id = $database.database_id",
              ]
              queryPresentation = {}
              type              = "unknown"
            },
            {
              action = {
                params = {
                  columnId    = "log_Name"
                  columnType  = "string"
                  filterVerb  = "filter"
                  isExcluding = false
                  values = [
                    "postgres.log",
                  ]
                }
                summary = null
                type    = "FilterValues"
              }
              customSummary = "log_Name"
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
              id       = "step-jif101tx"
              index    = 2
              isPinned = true
              opal = [
                "filter log_Name = \"postgres.log\"",
              ]
              queryPresentation = {}
              type              = "unknown"
            },
            {
              columnStatsTable = {
                columnFunctions = {}
                datasetQueryId = {
                  ignoreCompress = false
                  queryId        = "q-k5uznf09"
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
              id       = "step-xa3ydw7q"
              index    = 3
              isPinned = false
              opal = [
                "filter severity = \"ERROR\"",
                "",
                "extract_regex textPayload, /(?P<TIME>\\d{1,4}-\\d{1,2}-\\d{1,2} \\d{1,2}:\\d{1,2}:\\d{1,2}\\.\\d{1,6} UTC)/",
                "extract_regex textPayload, /ERROR(?P<ERROR>.*)/",
                "",
                "pick_col ",
                "\ttimestamp,",
                "    database_id,",
                "    logName,",
                "    severity,",
                "    TIME,",
                "    ERROR,",
                "    textPayload",
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
                    filter database_id = $database.database_id
                    filter log_Name = "postgres.log"
                    filter severity = "ERROR"
                    
                    extract_regex textPayload, /(?P<TIME>\d{1,4}-\d{1,2}-\d{1,2} \d{1,2}:\d{1,2}:\d{1,2}\.\d{1,6} UTC)/
                    extract_regex textPayload, /ERROR(?P<ERROR>.*)/
                    
                    pick_col 
                    	timestamp,
                        database_id,
                        logName,
                        severity,
                        TIME,
                        ERROR,
                        textPayload
                EOT
      },
      {
        id = "stage-quszu4mo"
        input = [
          {
            datasetId   = "${local.cloud_sql_instance}"
            datasetPath = null
            inputName   = "stage/${local.dashboard_name_singleton}"
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
            columnVisibility = {}
            columnWidths = {
              Projects = 249
            }
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
              datasetId   = "${local.cloud_sql_instance}"
              inputName   = "stage/${local.dashboard_name_singleton}"
              inputRole   = "Data"
              isUserInput = false
            },
          ]
          label = "Disk Used"
          managers = [
            {
              id                     = "cjxpxboo"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "7ieng2o9"
              isDisabled = false
              type       = "Vis"
              vis = {
                config = {
                  color         = "Default"
                  hideGridLines = true
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
                    unit    = "%"
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
                    interval = "60000000000"
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
            wantBuckets = 50
          }
          renderType     = "TABLE"
          selectedStepId = null
          serializable   = true
          steps = [
            {
              columnStatsTable = {
                columnFunctions = {
                  assetInventoryName       = "count"
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
                  region                   = "count"
                  tier                     = "count"
                  ttl                      = "count"
                }
                datasetQueryId = {
                  ignoreCompress = false
                  queryId        = "q-w0inbnsj"
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
              customSummary = "stage/${local.dashboard_name_singleton}"
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
              id                = "step-xtothrr6"
              index             = 0
              isPinned          = false
              opal              = []
              queryPresentation = {}
              type              = "InputStep"
            },
            {
              columnStatsTable = {
                columnFunctions = {
                  assetInventoryName       = "count"
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
                  region                   = "count"
                  tier                     = "count"
                  ttl                      = "count"
                }
                datasetQueryId = {
                  ignoreCompress = false
                  queryId        = "q-2hlbtxjo"
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
              id       = "step-rrhsjfkh"
              index    = 1
              isPinned = false
              opal = [
                "filter database_id = $database.database_id",
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
        pipeline = "filter database_id = $database.database_id"
      },
      {
        id = "stage-tr71x96b"
        input = [
          {
            datasetId   = "${local.cloud_sql_instance}"
            datasetPath = null
            inputName   = "stage/${local.dashboard_name_singleton}"
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
            containerWidth              = 285
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
              datasetId   = "${local.cloud_sql_instance}"
              inputName   = "stage/${local.dashboard_name_singleton}"
              inputRole   = "Data"
              isUserInput = false
            },
          ]
          label = "Base Dataset"
          managers = [
            {
              id                     = "p5c1t4ay"
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
                  assetInventoryName       = "count"
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
                  region                   = "count"
                  tier                     = "count"
                  ttl                      = "count"
                }
                datasetQueryId = {
                  ignoreCompress = false
                  queryId        = "q-pkryy1vo"
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
              customSummary = "stage/${local.dashboard_name_singleton}"
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
              id                = "step-as8t16an"
              index             = 0
              isPinned          = false
              opal              = []
              queryPresentation = {}
              type              = "InputStep"
            },
            {
              columnStatsTable = {
                columnFunctions = {
                  assetInventoryName       = "count"
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
                  region                   = "count"
                  tier                     = "count"
                  ttl                      = "count"
                }
                datasetQueryId = {
                  ignoreCompress = false
                  queryId        = "q-bxi0f392"
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
              id       = "step-e0wdrlv4"
              index    = 1
              isPinned = false
              opal = [
                "filter database_id = $database.database_id",
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
        pipeline = "filter database_id = $database.database_id"
      },
      {
        id = "stage-59mo6lqx"
        input = [
          {
            datasetId   = null
            datasetPath = null
            inputName   = "Base Dataset_-tr71"
            inputRole   = "Data"
            stageId     = "stage-tr71x96b"
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
              inputName   = "Base Dataset_-tr71"
              inputRole   = "Data"
              isUserInput = false
              stageId     = "stage-tr71x96b"
            },
          ]
          label = "Disk Quota Utilization"
          managers = [
            {
              id                     = "w1k5tc4k"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "uwqufrl4"
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
                    unit    = "percent"
                    visible = true
                  }
                }
                source = {
                  metric = {
                    aggregate   = "sum"
                    datasetId   = "${local.cloud_sql_metrics}"
                    description = "Auto Detected Metric"
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
                      ]
                      validLinkLabels = [
                        "Cloud SQL Metrics",
                      ]
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
                    name        = "database_disk_utilization"
                    rollup      = "avg"
                    type        = "gauge"
                    unit        = ""
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
              columnStatsTable = {
                columnFunctions = {
                  assetInventoryName       = "count"
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
                  region                   = "count"
                  tier                     = "count"
                  ttl                      = "count"
                }
                datasetQueryId = {
                  ignoreCompress = false
                  queryId        = "q-fy559w5w"
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
              customSummary = "Base Dataset_-tr71"
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
              id                = "step-87y1f1un"
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
        id = "stage-5xzio1og"
        input = [
          {
            datasetId   = "${local.cloud_sql_metrics}"
            datasetPath = null
            inputName   = "stage/Cloud SQL Metrics"
            inputRole   = "Data"
            stageId     = null
          },
        ]
        layout = {
          appearance = "VISIBLE"
          dataTableViewState = {
            autoTableHeight     = true
            columnFooterHeight  = 0
            columnHeaderHeight  = 29
            columnOrderOverride = {}
            columnVisibility    = {}
            columnWidths = {
              value = 202
            }
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
          index = 14
          inputList = [
            {
              datasetId   = "${local.cloud_sql_metrics}"
              inputName   = "stage/Cloud SQL Metrics"
              inputRole   = "Data"
              isUserInput = false
            },
          ]
          label = "Disk Quota"
          managers = [
            {
              id                     = "4bjg9bh9"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "zh50esje"
              isDisabled = false
              type       = "Vis"
              vis = {
                config = {
                  color           = "Default"
                  colorConfigType = "Color"
                  fieldConfig = {
                    unit    = "bytes"
                    visible = false
                  }
                  singleStatLabel = "Disk Quota"
                  thresholds      = null
                  type            = "singlefield"
                }
                source = {
                  table = {
                    field       = "value"
                    groupFields = []
                    statsBy = {
                      fn = "avg"
                    }
                    timechart = {
                      fn         = "avg"
                      fnArgs     = null
                      resolution = "AUTO"
                    }
                    transformType = "none"
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
            rollup      = {}
            wantBuckets = 400
          }
          renderType     = "TABLE"
          selectedStepId = null
          serializable   = true
          steps = [
            {
              columnStatsTable = {
                columnFunctions = {
                  database_platform    = "count"
                  instance_state_label = "count"
                  label                = "count"
                  metric               = "count"
                  metric_category      = "count"
                  metric_kind_text     = "count"
                  metric_labels        = "count"
                  project_id           = "count"
                  region               = "count"
                  value                = "count"
                  value_type_text      = "count"
                }
                datasetQueryId = {
                  ignoreCompress = false
                  queryId        = "q-6duanvc2"
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
              customSummary = "stage/Cloud SQL Metrics"
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
              id                = "step-jhvll57y"
              index             = 0
              isPinned          = false
              opal              = []
              queryPresentation = {}
              type              = "InputStep"
            },
            {
              columnStatsTable = {
                columnFunctions = {
                  database_platform    = "count"
                  instance_state_label = "count"
                  label                = "count"
                  metric               = "count"
                  metric_category      = "count"
                  metric_kind_text     = "count"
                  metric_labels        = "count"
                  project_id           = "count"
                  region               = "count"
                  value                = "count"
                  value_type_text      = "count"
                }
                datasetQueryId = {
                  ignoreCompress = false
                  queryId        = "q-q9drp9a9"
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
              id       = "step-foz005sz"
              index    = 1
              isPinned = false
              opal = [
                "filter database_id = $database.database_id",
              ]
              queryPresentation = {}
              type              = "unknown"
            },
            {
              action = {
                params = {
                  columnId    = "metric"
                  columnType  = "string"
                  filterVerb  = "filter"
                  isExcluding = false
                  values = [
                    "database_disk_quota",
                  ]
                }
                summary = null
                type    = "FilterValues"
              }
              columnStatsTable = {
                columnFunctions = {
                  database_platform    = "count"
                  instance_state_label = "count"
                  label                = "count"
                  metric               = "count"
                  metric_category      = "count"
                  metric_kind_text     = "count"
                  metric_labels        = "count"
                  project_id           = "count"
                  region               = "count"
                  value                = "count"
                  value_type_text      = "count"
                }
                datasetQueryId = {
                  ignoreCompress = false
                  queryId        = "q-le3qseuy"
                  resultKinds = [
                    "ResultKindSchema",
                    "ResultKindData",
                  ]
                  tableTypes = [
                    "TABULAR",
                  ]
                }
              }
              customSummary = "metric"
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
              id       = "step-fdzw23bp"
              index    = 2
              isPinned = true
              opal = [
                "filter metric = \"database_disk_quota\"",
              ]
              queryPresentation = {}
              type              = "unknown"
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
              id       = "step-h93ur2cq"
              index    = 3
              isPinned = false
              opal = [
                "statsby value: int64(last(value)), group_by(metric)",
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
                    filter database_id = $database.database_id
                    filter metric = "database_disk_quota"
                    statsby value: int64(last(value)), group_by(metric)
                EOT
      },
      {
        id = "stage-qakfyotl"
        input = [
          {
            datasetId   = null
            datasetPath = null
            inputName   = "Base Dataset_-tr71"
            inputRole   = "Data"
            stageId     = "stage-tr71x96b"
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
              inputName   = "Base Dataset_-tr71"
              inputRole   = "Data"
              isUserInput = false
              stageId     = "stage-tr71x96b"
            },
          ]
          label = "CPU Utilization"
          managers = [
            {
              id                     = "asaqvlwm"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "0aoio6lp"
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
                    unit    = "%"
                    visible = true
                  }
                }
                source = {
                  metric = {
                    aggregate   = "sum"
                    datasetId   = "${local.cloud_sql_metrics}"
                    description = "Auto Detected Metric"
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
                      ]
                      validLinkLabels = [
                        "Cloud SQL Metrics",
                      ]
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
                    name        = "database_cpu_utilization"
                    rollup      = "avg"
                    type        = "gauge"
                    unit        = ""
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
              columnStatsTable = {
                columnFunctions = {
                  assetInventoryName       = "count"
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
                  region                   = "count"
                  tier                     = "count"
                  ttl                      = "count"
                }
                datasetQueryId = {
                  ignoreCompress = false
                  queryId        = "q-ld7suc8w"
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
              customSummary = "Base Dataset_-tr71"
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
              id                = "step-25t9ptpj"
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

