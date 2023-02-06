# terraform import observe_dashboard.project_input 41160340
resource "observe_dashboard" "project_input" {
  description = "Dashboard to show monitored GCP projects"
  layout = jsonencode(
    {
      gridLayout = {
        sections = [
          {
            card = {
              cardType = "section"
              closed   = false
              id       = "card-8rrup3xk"
              title    = "Dashboard Content"
            }
            items = [
              {
                card = {
                  cardType = "stage"
                  id       = "card-t8s94jm4"
                  stageId  = "stage-e5wn90ae"
                }
                layout = {
                  h           = 14
                  i           = "card-t8s94jm4"
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
            lastModified = 1665082984705
          },
        ]
      }
      stageListLayout = {
        isModified = false
        parameters = [
          {
            controlledFilterStageId = "stage-42zbv3ex"
            datasetId               = "${local.projects_collection_enabled}"
            defaultValue = {
              datasetref = {
                datasetId = "${local.projects_collection_enabled}"
              }
            }
            emptyValueEncoding    = "null"
            emptyValueLabelOption = "null"
            id                    = "input-parameter-nsjl7kcg"
            name                  = "projects"
            valueKind = {
              type = "DATASETREF"
            }
            viewType = "input"
          },
        ]
        selectedStageId = "stage-e5wn90ae"
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
  name = local.dashboard_name_projects
  parameters = jsonencode(
    [
      {
        defaultValue = {
          datasetref = {
            datasetId = "${local.projects_collection_enabled}"
          }
        }
        id   = "input-parameter-nsjl7kcg"
        name = "projects"
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
        id = "stage-42zbv3ex"
        input = [
          {
            datasetId   = "${local.projects_collection_enabled}"
            datasetPath = null
            inputName   = "eng/Projects Collection Enabled"
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
              "0" = "project_id"
              "2" = "Valid From"
              "3" = "Valid To"
            }
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
          index = 0
          inputList = [
            {
              datasetId   = "${local.projects_collection_enabled}"
              inputName   = "eng/Projects Collection Enabled"
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
              customSummary = "eng/Projects Collection Enabled"
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
              id       = "step-5rxyi0xd"
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
        id = "stage-e5wn90ae"
        input = [
          {
            datasetId   = null
            datasetPath = null
            inputName   = "projects"
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
              "0" = "project_id"
              "2" = "Valid From"
              "3" = "Valid To"
            }
            columnVisibility = {}
            columnWidths = {
              Created          = 238
              Name             = 179
              "Project ID"     = 188
              "Project Number" = 192
              Status           = 142
              Updated          = 245
            }
            containerWidth              = 578
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
          index = 1
          inputList = [
            {
              inputName   = "projects"
              inputRole   = "Data"
              isUserInput = false
              parameterId = "input-parameter-nsjl7kcg"
            },
          ]
          label = "Projects"
          managers = [
            {
              id                     = "n2ttfnb7"
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
                  deleted        = "count"
                  display_name   = "count"
                  etag           = "count"
                  lifecycleState = "count"
                  parent_id      = "count"
                  projectNumber  = "count"
                  project_id     = "count"
                }
                datasetQueryId = {
                  ignoreCompress = false
                  queryId        = "q-1qezdvh5"
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
              customSummary = "projects"
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
              id                = "step-d83iix1t"
              index             = 0
              isPinned          = false
              opal              = []
              queryPresentation = {}
              type              = "InputStep"
            },
            {
              columnStatsTable = {
                columnFunctions = {
                  Name             = "count"
                  "Project ID"     = "count"
                  "Project Number" = "count"
                  Status           = "count"
                  deleted          = "count"
                  display_name     = "count"
                  etag             = "count"
                  lifecycleState   = "count"
                  parent_id        = "count"
                  projectNumber    = "count"
                  project_id       = "count"
                }
                datasetQueryId = {
                  ignoreCompress = false
                  queryId        = "q-rehti1ik"
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
              id       = "step-qytkdh24"
              index    = 1
              isPinned = false
              opal = [
                "pick_col ",
                "\t@.\"Valid From\",",
                "    @.\"Valid To\",",
                "\t\"Project ID\":project_id,",
                "    \"Name\": display_name,",
                "    \"Project Number\": projectNumber,",
                "    \"Status\": lifecycleState,",
                "    \"Created\": createTime,",
                "    \"Updated\": update_time",
                "    ",
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
                    pick_col 
                    	@."Valid From",
                        @."Valid To",
                    	"Project ID":project_id,
                        "Name": display_name,
                        "Project Number": projectNumber,
                        "Status": lifecycleState,
                        "Created": createTime,
                        "Updated": update_time
                        
                EOT
      },
    ]
  )
  workspace = local.workspace
}

