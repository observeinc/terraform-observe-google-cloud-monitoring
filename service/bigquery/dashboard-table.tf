
# terraform import observe_dashboard.bigquery_tables_manual_ 41255030
resource "observe_dashboard" "bigquery_tables_manual" {
  description = "Dashboard for monitoring Big Query tables"
  layout = jsonencode(
    {
      gridLayout = {
        sections = [
          {
            card = {
              cardType = "section"
              closed   = false
              id       = "card-0kphw5zs"
              title    = "Dashboard Content"
            }
            items = [
              {
                card = {
                  cardType = "text"
                  id       = "card-pe5yiywn"
                  text     = <<-EOT
                                        # BigQuery
                                        
                                        The BigQuery Table resource dataset is provided to give a quick view of your BigQuery Tables to see what tables have an expiration set on them. The Resource tab can be used to detect any changes to table schemas.  To see changes to table schemas, you can use the timescrubber to see exactly when and how table schemas were changed.
                                        
                                        Observe also provides:
                                        
                                        * A BigQuery Dataset dashboard that provides information on how much storage each dataset uses and how many tables are contained in each dataset.
                                        * A GCP Project dashboard that gives you details on how many jobs succeeded/failed, query execution times, jobs in flight, and query counts.
                                        
                                    EOT
                  title    = "Untitled Text"
                }
                layout = {
                  h           = 12
                  i           = "card-pe5yiywn"
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
                  id       = "card-e3tqe4n3"
                  stageId  = "stage-2fdyub9v"
                }
                layout = {
                  h           = 12
                  i           = "card-e3tqe4n3"
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
            lastModified = 1665156524661
          },
        ]
      }
      stageListLayout = {
        isModified = false
        parameters = [
          {
            controlledFilterStageId = "stage-oje5vdym"
            datasetId               = "41252651"
            defaultValue = {
              datasetref = {
                datasetId = "41252651"
              }
            }
            emptyValueEncoding    = "null"
            emptyValueLabelOption = "null"
            id                    = "input-parameter-w81f71mb"
            name                  = "BigQuery Table"
            valueKind = {
              type = "DATASETREF"
            }
            viewType = "input"
          },
        ]
        selectedStageId = "stage-2fdyub9v"
        timeRange = {
          display               = "Today 03:34:03 - 07:34:03"
          endTime               = null
          millisFromCurrentTime = 14400000
          originalDisplay       = "Past 4 hours"
          startTime             = null
          timeRangeInfo = {
            key        = "PRESETS"
            name       = "Presets"
            presetType = "PAST_4_HOURS"
          }
        }
      }
    }
  )
  name = local.table_dashboard_name
  parameters = jsonencode(
    [
      {
        defaultValue = {
          datasetref = {
            datasetId = "41252651"
          }
        }
        id   = "input-parameter-w81f71mb"
        name = "BigQuery Table"
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
        id = "stage-2fdyub9v"
        input = [
          {
            datasetId   = "41252651"
            datasetPath = null
            inputName   = "GCP/BigQuery Table"
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
              "1" = "dataset_id"
              "2" = "project_id"
              "3" = "Valid From"
              "4" = "Valid To"
            }
            columnVisibility            = {}
            columnWidths                = {}
            containerWidth              = 1756
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
          index = 0
          inputList = [
            {
              datasetId   = "${local.bigquery_table}"
              inputName   = "GCP/BigQuery Table"
              inputRole   = "Data"
              isUserInput = false
            },
          ]
          label = "Table Expiration Set"
          managers = [
            {
              id                     = "d3c032g5"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "y8huocsx"
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
                      "has_expiration",
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
                    valueField    = "has_expiration"
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
              "ResultKindStats",
              "ResultKindData",
              "ResultKindSchema",
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
              columnStatsTable = {
                columnFunctions = {
                  location = "count"
                  schema   = "count"
                  table_id = "count"
                }
                datasetQueryId = {
                  ignoreCompress = false
                  queryId        = "q-p82flfow"
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
              customSummary = "GCP/BigQuery Table"
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
              id                = "step-x6vc0hra"
              index             = 0
              isPinned          = false
              opal              = []
              queryPresentation = {}
              type              = "InputStep"
            },
            {
              columnStatsTable = {
                columnFunctions = {
                  has_expiration = "count"
                  location       = "count"
                  schema         = "count"
                  table_id       = "count"
                }
                datasetQueryId = {
                  ignoreCompress = false
                  queryId        = "q-j04ug4gx"
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
              id       = "step-ci2q6e5r"
              index    = 1
              isPinned = false
              opal = [
                "make_col has_expiration: if(expirationTime != timestamp_null(), \"Expiration Set\", \"No Expiration Set\")",
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
        pipeline = "make_col has_expiration: if(expirationTime != timestamp_null(), \"Expiration Set\", \"No Expiration Set\")"
      },
      {
        id = "stage-oje5vdym"
        input = [
          {
            datasetId   = "41252651"
            datasetPath = null
            inputName   = "GCP/BigQuery Table"
            inputRole   = "Data"
            stageId     = null
          },
        ]
        layout = {
          appearance = "HIDDEN"
          dataTableViewState = {
            autoTableHeight             = true
            columnFooterHeight          = 0
            columnHeaderHeight          = 29
            columnOrderOverride         = {}
            columnVisibility            = {}
            columnWidths                = {}
            containerWidth              = null
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
          index = 4
          inputList = [
            {
              datasetId   = "41252651"
              inputName   = "GCP/BigQuery Table"
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
              customSummary = "GCP/BigQuery Table"
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
              id       = "step-evejw0w2"
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
    ]
  )
  workspace = local.workspace
}