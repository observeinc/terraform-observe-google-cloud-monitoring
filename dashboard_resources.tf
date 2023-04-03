
# terraform import observe_dashboard.resource_monitoring 41160336
resource "observe_dashboard" "resource_monitoring" {
  description = "Counts of resources by type"
  layout = jsonencode(
    {
      gridLayout = {
        sections = [
          {
            card = {
              cardType = "section"
              closed   = false
              id       = "card-38f3f3io"
              title    = "Dashboard Content"
            }
            items = [
              {
                card = {
                  cardType = "stage"
                  id       = "card-t0n3c5r8"
                  stageId  = "stage-uhyr18nl"
                }
                layout = {
                  h           = 74
                  i           = "card-t0n3c5r8"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 12
                  x           = 0
                  y           = 0
                }
              },
            ]
            lastModified = 1665080371925
          },
        ]
      }
      stageListLayout = {
        isModified = false
        parameters = [
          {
            controlledFilterStageId = "stage-7ajs8338"
            datasetId               = local.resources_asset_inventory
            defaultValue = {
              datasetref = {
                datasetId = local.resources_asset_inventory
              }
            }
            emptyValueEncoding    = "null"
            emptyValueLabelOption = "null"
            id                    = "input-parameter-r2120qwo"
            name                  = "resources"
            valueKind = {
              type = "DATASETREF"
            }
            viewType = "input"
          },
        ]
        selectedStageId = "stage-uhyr18nl"
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
        }
      }
    }
  )
  name = local.dashboard_name_resources
  parameters = jsonencode(
    [
      {
        defaultValue = {
          datasetref = {
            datasetId = local.resources_asset_inventory
          }
        }
        id   = "input-parameter-r2120qwo"
        name = "resources"
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
        id = "stage-7ajs8338"
        input = [
          {
            datasetId   = local.resources_asset_inventory
            datasetPath = null
            inputName   = "dev/Resources Asset Inventory"
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
          index = 0
          inputList = [
            {
              datasetId   = local.resources_asset_inventory
              inputName   = "dev/Resources Asset Inventory"
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
              customSummary = "dev/Resources Asset Inventory"
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
              id       = "step-gm5wbhzz"
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
        id = "stage-uhyr18nl"
        input = [
          {
            datasetId   = null
            datasetPath = null
            inputName   = "resources"
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
            columnVisibility = {}
            columnWidths = {
              "Asset Namespace" = 307
              "Asset Type"      = 291
              Count             = 121
              Location          = 291
              Projects          = 321
            }
            containerWidth              = 2306
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
            tableHeight                = 800
            tableView                  = "TABULAR"
          }
          index = 1
          inputList = [
            {
              inputName   = "resources"
              inputRole   = "Data"
              isUserInput = false
              parameterId = "input-parameter-r2120qwo"
            },
          ]
          label = "Resource Counts"
          managers = [
            {
              id                     = "542zd0xj"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "v07ea7vg"
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
                      "name",
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
                    valueField    = "asset_name"
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
            rollup = {}
          }
          renderType     = "TABLE"
          selectedStepId = null
          serializable   = true
          steps = [
            {
              columnStatsTable = {
                columnFunctions = {
                  asset_name             = "count"
                  asset_namespace        = "count"
                  asset_sub_type         = "count"
                  asset_type             = "count"
                  data                   = "count"
                  deleted                = "count"
                  discovery_document_uri = "count"
                  discovery_name         = "count"
                  location               = "count"
                  name                   = "count"
                  parent                 = "count"
                  parent_project_id      = "count"
                  ttl                    = "count"
                  version                = "count"
                }
                datasetQueryId = {
                  ignoreCompress = false
                  queryId        = "q-owvydoku"
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
              customSummary = "resources"
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
              id                = "step-3bd86qp7"
              index             = 0
              isPinned          = false
              opal              = []
              queryPresentation = {}
              type              = "InputStep"
            },
            {
              columnStatsTable = {
                columnFunctions = {
                  "Asset Namespace"      = "count"
                  "Asset Type"           = "count"
                  Count                  = "count"
                  Location               = "count"
                  asset_name             = "count"
                  asset_namespace        = "count"
                  asset_sub_type         = "count"
                  asset_type             = "count"
                  data                   = "count"
                  deleted                = "count"
                  discovery_document_uri = "count"
                  discovery_name         = "count"
                  location               = "count"
                  name                   = "count"
                  parent                 = "count"
                  parent_project_id      = "count"
                  ttl                    = "count"
                  version                = "count"
                }
                datasetQueryId = {
                  ignoreCompress = false
                  queryId        = "q-0k2vb7ah"
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
              id       = "step-rgcgdwrd"
              index    = 1
              isPinned = false
              opal = [
                "filter is_null(deleted)",
                "",
                "statsby count_distinct(asset_name), group_by(project_id,location, asset_namespace, asset_sub_type)",
                "",
                "pick_col ",
                "\t\"Project ID\": project_id,",
                "    \"Asset Namespace\": asset_namespace,",
                "    \"Location\":location,",
                "    \"Asset Type\": asset_sub_type,",
                "    \"Count\": count_distinct_asset_name",
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
                    filter is_null(deleted)
                    
                    statsby count_distinct(asset_name), group_by(project_id,location, asset_namespace, asset_sub_type)
                    
                    pick_col 
                    	"Project ID": project_id,
                        "Asset Namespace": asset_namespace,
                        "Location":location,
                        "Asset Type": asset_sub_type,
                        "Count": count_distinct_asset_name
                EOT
      },
    ]
  )
  workspace = local.workspace
}

