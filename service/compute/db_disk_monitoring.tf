
# terraform import observe_dashboard.disk_monitoring 41294510
resource "observe_dashboard" "disk_monitoring" {
  description = "Dashboard for monitoring Compute Disk resources"
  layout = jsonencode(
    {
      autoPack = true
      gridLayout = {
        sections = [
          {
            card = {
              cardType = "section"
              closed   = false
              id       = "card-rhwcidbx"
              title    = "Dashboard Content"
            }
            items = [
              {
                card = {
                  cardType = "stage"
                  id       = "card-pdxt701a"
                  stageId  = "stage-9u4ktei9"
                }
                layout = {
                  h           = 11
                  i           = "card-pdxt701a"
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
                  id       = "card-uoviv3ax"
                  stageId  = "stage-96k91h7a"
                }
                layout = {
                  h           = 11
                  i           = "card-uoviv3ax"
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
                  id       = "card-5v4pm62a"
                  stageId  = "stage-88fl0kte"
                }
                layout = {
                  h           = 11
                  i           = "card-5v4pm62a"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 4
                  x           = 4
                  y           = 0
                }
              },
            ]
            lastModified = 1666912513469
          },
          {
            card = {
              cardType = "section"
              closed   = false
              id       = "section-5ddkejb9"
              title    = "Overview"
            }
            items = [
              {
                card = {
                  cardType = "stage"
                  id       = "card-p1xpreb8"
                  stageId  = "stage-axnglvvs"
                }
                layout = {
                  h           = 12
                  i           = "card-p1xpreb8"
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
                  id       = "card-gspszlva"
                  stageId  = "stage-ntz4w4w2"
                }
                layout = {
                  h           = 12
                  i           = "card-gspszlva"
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
                  id       = "card-ewsyevmp"
                  stageId  = "stage-f8qjdlzk"
                }
                layout = {
                  h           = 12
                  i           = "card-ewsyevmp"
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
                  id       = "card-dtkmc0zt"
                  stageId  = "stage-fxp6fnf3"
                }
                layout = {
                  h           = 13
                  i           = "card-dtkmc0zt"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 8
                  x           = 4
                  y           = 12
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-d3njfpwf"
                  stageId  = "stage-3so30otx"
                }
                layout = {
                  h           = 13
                  i           = "card-d3njfpwf"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 4
                  x           = 0
                  y           = 12
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-0q0dclvt"
                  stageId  = "stage-6njbptp2"
                }
                layout = {
                  h           = 14
                  i           = "card-0q0dclvt"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 6
                  x           = 6
                  y           = 25
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-nclzwl3s"
                  stageId  = "stage-9j3gnv6n"
                }
                layout = {
                  h           = 14
                  i           = "card-nclzwl3s"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 6
                  x           = 0
                  y           = 25
                }
              },
            ]
            lastModified = 1667349068112
          },
        ]
      }
      stageListLayout = {
        isModified = false
        parameters = [
          {
            controlledFilterStageId = "stage-0kx81gai"
            datasetId               = "${local.compute_disk}"
            defaultValue = {
              datasetref = {
                datasetId = "${local.compute_disk}"
              }
            }
            emptyValueEncoding    = "null"
            emptyValueLabelOption = "null"
            id                    = "input-parameter-isvd5249"
            name                  = "disk"
            valueKind = {
              type = "DATASETREF"
            }
            viewType = "input"
          },
        ]
        selectedStageId = "stage-f8qjdlzk"
        timeRange = {
          display               = "Past 15 minutes"
          endTime               = null
          millisFromCurrentTime = 900000
          originalDisplay       = "Past 15 minutes"
          startTime             = null
          timeRangeInfo = {
            key        = "PRESETS"
            name       = "Presets"
            presetType = "PAST_15_MINUTES"
          }
        }
      }
    }
  )
  name = local.disk_dashboard_name
  parameters = jsonencode(
    [
      {
        defaultValue = {
          datasetref = {
            datasetId = "${local.compute_disk}"
          }
        }
        id   = "input-parameter-isvd5249"
        name = "disk"
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
        id = "stage-0kx81gai"
        input = [
          {
            datasetId   = "${local.compute_disk}"
            datasetPath = null
            inputName   = "gcp-cost-test/Compute Disk"
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
              "0" = "disk_instance_name"
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
          index = 0
          inputList = [
            {
              datasetId   = "${local.compute_disk}"
              inputName   = "gcp-cost-test/Compute Disk"
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
              customSummary = "gcp-cost-test/Compute Disk"
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
              id       = "step-1tqfyixq"
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
        id = "stage-88fl0kte"
        input = [
          {
            datasetId   = null
            datasetPath = null
            inputName   = "disk"
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
          index = 1
          inputList = [
            {
              inputName   = "disk"
              inputRole   = "Data"
              isUserInput = false
              parameterId = "input-parameter-isvd5249"
            },
          ]
          label = "Region"
          managers = [
            {
              id                     = "9dplbhks"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "hc99evj7"
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
            resultKinds = [
              "ResultKindSchema",
            ]
            rollup = {}
          }
          selectedStepId = null
          serializable   = true
          steps = [
            {
              columnStatsTable = {
                columnFunctions = {
                  architecture           = "count"
                  creationTime           = "count"
                  deleted                = "count"
                  guestOsFeatures        = "count"
                  id                     = "count"
                  instance_id            = "count"
                  instance_name          = "count"
                  labels                 = "count"
                  lastAttachTimestamp    = "count"
                  licenses               = "count"
                  physicalBlockSizeBytes = "count"
                  region                 = "count"
                  selfLink               = "count"
                  sizeGb                 = "count"
                  sourceImage            = "count"
                  sourceImageId          = "count"
                  status                 = "count"
                  tags                   = "count"
                  ttl                    = "count"
                  type                   = "count"
                  users                  = "count"
                  zone                   = "count"
                }
                datasetQueryId = {
                  ignoreCompress = false
                  queryId        = "q-bx38rwso"
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
              customSummary = "disk"
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
              id                = "step-63timlu2"
              index             = 0
              isPinned          = false
              opal              = []
              queryPresentation = {}
              type              = "InputStep"
            },
            {
              columnStatsTable = {
                columnFunctions = {
                  architecture                = "count"
                  computeDiskInstanceAssetKey = "count"
                  creationTime                = "count"
                  deleted                     = "count"
                  guestOsFeatures             = "count"
                  id                          = "count"
                  instance_id                 = "count"
                  instance_name               = "count"
                  labels                      = "count"
                  lastAttachTimestamp         = "count"
                  licenses                    = "count"
                  physicalBlockSizeBytes      = "count"
                  region                      = "count"
                  selfLink                    = "count"
                  sizeGb                      = "count"
                  sourceImage                 = "count"
                  sourceImageId               = "count"
                  status                      = "count"
                  tags                        = "count"
                  ttl                         = "count"
                  type                        = "count"
                  users                       = "count"
                  zone                        = "count"
                }
                datasetQueryId = {
                  ignoreCompress = false
                  queryId        = "q-knuuv83e"
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
              id       = "step-9v3lwvrn"
              index    = 1
              isPinned = false
              opal = [
                "pick_col ",
                "\tcomputeDiskInstanceAssetKey,",
                "\t@.\"Valid From\",",
                "    @.\"Valid To\",",
                "\tregion,",
                "    project_id,",
                "    zone",
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
                    pick_col 
                    	computeDiskInstanceAssetKey,
                    	@."Valid From",
                        @."Valid To",
                    	region,
                        project_id,
                        zone
                EOT
      },
      {
        id = "stage-96k91h7a"
        input = [
          {
            datasetId   = null
            datasetPath = null
            inputName   = "disk"
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
          index = 2
          inputList = [
            {
              inputName   = "disk"
              inputRole   = "Data"
              isUserInput = false
              parameterId = "input-parameter-isvd5249"
            },
          ]
          label = "Project"
          managers = [
            {
              id                     = "9dplbhks"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "hc99evj7"
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
                    transformType = "timechart"
                    type          = "keyvalue"
                    valueField = [
                      "project_id",
                    ]
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
            resultKinds = [
              "ResultKindSchema",
            ]
            rollup = {}
          }
          selectedStepId = null
          serializable   = true
          steps = [
            {
              customName    = "Input"
              customSummary = "disk"
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
              id                = "step-myqkbx9t"
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
              id       = "step-ovahb7k6"
              index    = 1
              isPinned = false
              opal = [
                "pick_col ",
                "\tcomputeDiskInstanceAssetKey,",
                "\t@.\"Valid From\",",
                "    @.\"Valid To\",",
                "\tregion,",
                "    project_id,",
                "    zone",
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
                    pick_col 
                    	computeDiskInstanceAssetKey,
                    	@."Valid From",
                        @."Valid To",
                    	region,
                        project_id,
                        zone
                EOT
      },
      {
        id = "stage-9u4ktei9"
        input = [
          {
            datasetId   = null
            datasetPath = null
            inputName   = "disk"
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
          index = 3
          inputList = [
            {
              inputName   = "disk"
              inputRole   = "Data"
              isUserInput = false
              parameterId = "input-parameter-isvd5249"
            },
          ]
          label = "Zone"
          managers = [
            {
              id                     = "9dplbhks"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "hc99evj7"
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
                      "zone",
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
                    valueField    = "zone"
                  }
                  type = "table"
                }
                type = "circular"
              }
            },
            {
              id         = "vj2203h6"
              isDisabled = false
              type       = "JsonTree"
            },
          ]
          queryPresentation = {
            initialRollupFilter = {
              mode = "Last"
            }
            resultKinds = [
              "ResultKindSchema",
            ]
            rollup = {}
          }
          selectedStepId = null
          serializable   = true
          steps = [
            {
              customName    = "Input"
              customSummary = "disk"
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
              id                = "step-01ys98zx"
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
              id       = "step-pwwb7bwd"
              index    = 1
              isPinned = false
              opal = [
                "pick_col ",
                "\tcomputeDiskInstanceAssetKey,",
                "\t@.\"Valid From\",",
                "    @.\"Valid To\",",
                "\tregion,",
                "    project_id,",
                "    zone",
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
                    pick_col 
                    	computeDiskInstanceAssetKey,
                    	@."Valid From",
                        @."Valid To",
                    	region,
                        project_id,
                        zone
                EOT
      },
      {
        id = "stage-fxp6fnf3"
        input = [
          {
            datasetId   = null
            datasetPath = null
            inputName   = "disk"
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
              "0" = "disk_instance_name"
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
            tableHeight                = 460
            tableView                  = "TABULAR"
          }
          index = 4
          inputList = [
            {
              inputName   = "disk"
              inputRole   = "Data"
              isUserInput = false
              parameterId = "input-parameter-isvd5249"
            },
          ]
          label = "Disk Size"
          managers = [
            {
              id                     = "vay12foa"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "ezx1tt9k"
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
                  type = "xy"
                  xConfig = {
                    visible = true
                  }
                  yConfig = {
                    unit    = "gb"
                    visible = true
                  }
                }
                source = {
                  table = {
                    groupFields = [
                      "disk_instance_name",
                    ]
                    statsBy = {
                      fn = "count"
                    }
                    timechart = {
                      fn         = "avg"
                      fnArgs     = []
                      resolution = "AUTO"
                    }
                    transformType = "timechart"
                    type          = "xy"
                    y             = "size"
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
            rollup = {}
          }
          selectedStepId = null
          serializable   = true
          steps = [
            {
              columnStatsTable = {
                columnFunctions = {
                  architecture           = "count"
                  creationTime           = "count"
                  deleted                = "count"
                  guestOsFeatures        = "count"
                  id                     = "count"
                  instance_id            = "count"
                  instance_name          = "count"
                  labels                 = "count"
                  lastAttachTimestamp    = "count"
                  licenses               = "count"
                  physicalBlockSizeBytes = "count"
                  region                 = "count"
                  selfLink               = "count"
                  sizeGb                 = "count"
                  sourceImage            = "count"
                  sourceImageId          = "count"
                  status                 = "count"
                  tags                   = "count"
                  ttl                    = "count"
                  type                   = "count"
                  users                  = "count"
                  zone                   = "count"
                }
                datasetQueryId = {
                  ignoreCompress = false
                  queryId        = "q-85t7hb9x"
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
              customSummary = "disk"
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
              id                = "step-31m0duoc"
              index             = 0
              isPinned          = false
              opal              = []
              queryPresentation = {}
              type              = "InputStep"
            },
            {
              columnStatsTable = {
                columnFunctions = {
                  architecture                = "count"
                  computeDiskInstanceAssetKey = "count"
                  creationTime                = "count"
                  deleted                     = "count"
                  disk_instance_name          = "count"
                  guestOsFeatures             = "count"
                  id                          = "count"
                  instance_id                 = "count"
                  instance_name               = "count"
                  labels                      = "count"
                  lastAttachTimestamp         = "count"
                  licenses                    = "count"
                  physicalBlockSizeBytes      = "count"
                  region                      = "count"
                  selfLink                    = "count"
                  size                        = "count"
                  sizeGb                      = "count"
                  sourceImage                 = "count"
                  sourceImageId               = "count"
                  status                      = "count"
                  tags                        = "count"
                  ttl                         = "count"
                  type                        = "count"
                  users                       = "count"
                  zone                        = "count"
                }
                datasetQueryId = {
                  ignoreCompress = false
                  queryId        = "q-hmuu6ftx"
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
              id       = "step-t8i8qimz"
              index    = 1
              isPinned = false
              opal = [
                "pick_col ",
                "\tcomputeDiskInstanceAssetKey,",
                "    disk_instance_name,",
                "\t@.\"Valid From\",",
                "    @.\"Valid To\",",
                "\tsize: float64(sizeGb)",
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
                    pick_col 
                    	computeDiskInstanceAssetKey,
                        disk_instance_name,
                    	@."Valid From",
                        @."Valid To",
                    	size: float64(sizeGb)
                EOT
      },
      {
        id = "stage-axnglvvs"
        input = [
          {
            datasetId   = null
            datasetPath = null
            inputName   = "disk"
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
              "0" = "disk_instance_name"
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
          index = 5
          inputList = [
            {
              inputName   = "disk"
              inputRole   = "Data"
              isUserInput = false
              parameterId = "input-parameter-isvd5249"
            },
          ]
          label = "Disk Type"
          managers = [
            {
              id                     = "lrjcya6g"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "7206j8q3"
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
                      "type",
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
                    valueField    = "type"
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
            resultKinds = [
              "ResultKindSchema",
            ]
            rollup = {}
          }
          selectedStepId = null
          serializable   = true
          steps = [
            {
              columnStatsTable = {
                columnFunctions = {
                  architecture           = "count"
                  creationTime           = "count"
                  deleted                = "count"
                  guestOsFeatures        = "count"
                  id                     = "count"
                  instance_id            = "count"
                  instance_name          = "count"
                  labels                 = "count"
                  lastAttachTimestamp    = "count"
                  licenses               = "count"
                  physicalBlockSizeBytes = "count"
                  region                 = "count"
                  selfLink               = "count"
                  sizeGb                 = "count"
                  sourceImage            = "count"
                  sourceImageId          = "count"
                  status                 = "count"
                  tags                   = "count"
                  ttl                    = "count"
                  type                   = "count"
                  users                  = "count"
                  zone                   = "count"
                }
                datasetQueryId = {
                  ignoreCompress = false
                  queryId        = "q-v1qxrqq6"
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
              customSummary = "disk"
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
              id                = "step-920zdqw7"
              index             = 0
              isPinned          = false
              opal              = []
              queryPresentation = {}
              type              = "InputStep"
            },
            {
              columnStatsTable = {
                columnFunctions = {
                  architecture                = "count"
                  computeDiskInstanceAssetKey = "count"
                  creationTime                = "count"
                  deleted                     = "count"
                  disk_instance_name          = "count"
                  guestOsFeatures             = "count"
                  id                          = "count"
                  instance_id                 = "count"
                  instance_name               = "count"
                  labels                      = "count"
                  lastAttachTimestamp         = "count"
                  licenses                    = "count"
                  physicalBlockSizeBytes      = "count"
                  region                      = "count"
                  selfLink                    = "count"
                  sizeGb                      = "count"
                  sourceImage                 = "count"
                  sourceImageId               = "count"
                  status                      = "count"
                  tags                        = "count"
                  ttl                         = "count"
                  type                        = "count"
                  users                       = "count"
                  zone                        = "count"
                }
                datasetQueryId = {
                  ignoreCompress = false
                  queryId        = "q-8wuz561j"
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
              id       = "step-o38hcpwj"
              index    = 1
              isPinned = false
              opal = [
                "pick_col ",
                "\tcomputeDiskInstanceAssetKey,",
                "    disk_instance_name,",
                "\t@.\"Valid From\",",
                "    @.\"Valid To\",",
                "\ttype",
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
                    pick_col 
                    	computeDiskInstanceAssetKey,
                        disk_instance_name,
                    	@."Valid From",
                        @."Valid To",
                    	type
                EOT
      },
      {
        id = "stage-ntz4w4w2"
        input = [
          {
            datasetId   = null
            datasetPath = null
            inputName   = "disk"
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
              "0" = "disk_instance_name"
              "2" = "Valid From"
              "3" = "Valid To"
            }
            columnVisibility = {}
            columnWidths = {
              physicalBlockSizeBytes = 236
              sourceImage            = 199
              sourceImageId          = 184
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
          index = 6
          inputList = [
            {
              inputName   = "disk"
              inputRole   = "Data"
              isUserInput = false
              parameterId = "input-parameter-isvd5249"
            },
          ]
          label = "Status"
          managers = [
            {
              id                     = "yvhgs9w3"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "cuq16joo"
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
                      "status",
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
                    valueField    = "status"
                  }
                  type = "table"
                }
                type = "circular"
              }
            },
            {
              id         = "hybku7xb"
              isDisabled = false
              type       = "JsonTree"
            },
          ]
          queryPresentation = {
            initialRollupFilter = {
              mode = "Last"
            }
            resultKinds = [
              "ResultKindSchema",
            ]
            rollup = {}
          }
          selectedStepId = null
          serializable   = true
          steps = [
            {
              columnStatsTable = {
                columnFunctions = {
                  architecture           = "count"
                  creationTime           = "count"
                  deleted                = "count"
                  guestOsFeatures        = "count"
                  id                     = "count"
                  instance_id            = "count"
                  instance_name          = "count"
                  labels                 = "count"
                  lastAttachTimestamp    = "count"
                  licenses               = "count"
                  physicalBlockSizeBytes = "count"
                  region                 = "count"
                  selfLink               = "count"
                  sizeGb                 = "count"
                  sourceImage            = "count"
                  sourceImageId          = "count"
                  status                 = "count"
                  tags                   = "count"
                  ttl                    = "count"
                  type                   = "count"
                  users                  = "count"
                  zone                   = "count"
                }
                datasetQueryId = {
                  ignoreCompress = false
                  queryId        = "q-sxmc5isa"
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
              customSummary = "disk"
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
              id                = "step-5it7rbh3"
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
              id       = "step-85m7r2yh"
              index    = 1
              isPinned = false
              opal = [
                "pick_col ",
                "\tcomputeDiskInstanceAssetKey,",
                "    disk_instance_name,",
                "\t@.\"Valid From\",",
                "    @.\"Valid To\",",
                "\tstatus",
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
                    pick_col 
                    	computeDiskInstanceAssetKey,
                        disk_instance_name,
                    	@."Valid From",
                        @."Valid To",
                    	status
                EOT
      },
      {
        id = "stage-3so30otx"
        input = [
          {
            datasetId   = null
            datasetPath = null
            inputName   = "disk"
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
              "0" = "disk_instance_name"
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
            tableHeight                = 460
            tableView                  = "TABULAR"
          }
          index = 7
          inputList = [
            {
              inputName   = "disk"
              inputRole   = "Data"
              isUserInput = false
              parameterId = "input-parameter-isvd5249"
            },
          ]
          label = "Total Disk Storage Capacity"
          managers = [
            {
              id                     = "vay12foa"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "ezx1tt9k"
              isDisabled = false
              type       = "Vis"
              vis = {
                config = {
                  color           = "Default"
                  colorConfigType = "Color"
                  fieldConfig = {
                    unit    = null
                    visible = false
                  }
                  singleStatLabel = "Total Storage Capacity in GigaBytes"
                  thresholds      = null
                  type            = "singlefield"
                }
                source = {
                  table = {
                    field       = "size"
                    groupFields = []
                    statsBy = {
                      fn = "avg"
                    }
                    timechart = {
                      fn         = "sum"
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
            resultKinds = [
              "ResultKindSchema",
            ]
            rollup = {}
          }
          selectedStepId = null
          serializable   = true
          steps = [
            {
              customName    = "Input"
              customSummary = "disk"
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
              id                = "step-6zid9ryl"
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
                  queryId        = "q-j25gwjdz"
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
              id       = "step-7gt0qr9v"
              index    = 1
              isPinned = false
              opal = [
                "pick_col ",
                "\tcomputeDiskInstanceAssetKey,",
                "    disk_instance_name,",
                "\t@.\"Valid From\",",
                "    @.\"Valid To\",",
                "\tsize: float64(sizeGb)",
                "   ",
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
                    pick_col 
                    	computeDiskInstanceAssetKey,
                        disk_instance_name,
                    	@."Valid From",
                        @."Valid To",
                    	size: float64(sizeGb)
                       
                EOT
      },
      {
        id = "stage-9j3gnv6n"
        input = [
          {
            datasetId   = null
            datasetPath = null
            inputName   = "disk"
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
              "0" = "disk_instance_name"
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
          index = 8
          inputList = [
            {
              inputName   = "disk"
              inputRole   = "Data"
              isUserInput = false
              parameterId = "input-parameter-isvd5249"
            },
          ]
          label = "Max Read Bytes Count"
          managers = [
            {
              id                     = "3t0pife2"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "nmikpfxb"
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
                    unit    = "bytes"
                    visible = true
                  }
                }
                source = {
                  metric = {
                    aggregate   = "sum"
                    datasetId   = "${local.compute_metrics}"
                    description = "Auto Detected Metric"
                    groupBy = [
                      "computeDiskInstanceAssetKey",
                    ]
                    heuristics = {
                      __typename = "MetricHeuristics"
                      tags = [
                        {
                          __typename = "MetricTag"
                          column     = "computeDiskInstanceAssetKey"
                          path       = ""
                        },
                        {
                          __typename = "MetricTag"
                          column     = "zone"
                          path       = ""
                        },
                        {
                          __typename = "MetricTag"
                          column     = "region"
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
                          column     = "computeInstanceAssetKey"
                          path       = ""
                        },
                        {
                          __typename = "MetricTag"
                          column     = "compute_instance_name"
                          path       = ""
                        },
                        {
                          __typename = "MetricTag"
                          column     = "metric_labels"
                          path       = "device_name"
                        },
                        {
                          __typename = "MetricTag"
                          column     = "metric_labels"
                          path       = "storage_type"
                        },
                        {
                          __typename = "MetricTag"
                          column     = "metric_labels"
                          path       = "device_type"
                        },
                      ]
                      validLinkLabels = [
                        "Link to Compute Disk Instances",
                      ]
                    }
                    interval = null
                    link = {
                      __typename = "ForeignKey"
                      dstFields = [
                        "computeDiskInstanceAssetKey",
                      ]
                      label = "Link to Compute Disk Instances"
                      srcFields = [
                        "computeDiskInstanceAssetKey",
                      ]
                      targetDataset    = "${local.compute_disk}"
                      targetStageLabel = null
                      type             = "foreign"
                    }
                    name        = "instance_disk_max_read_bytes_count"
                    rollup      = "avg"
                    type        = "gauge"
                    unit        = "bytes"
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
                  architecture                = "count"
                  computeDiskInstanceAssetKey = "count"
                  computeInstanceAssetKey     = "count"
                  creationTime                = "count"
                  deleted                     = "count"
                  disk_id                     = "count"
                  disk_instance_name          = "count"
                  guestOsFeatures             = "count"
                  labels                      = "count"
                  lastAttachTimestamp         = "count"
                  licenses                    = "count"
                  physicalBlockSizeBytes      = "count"
                  region                      = "count"
                  selfLink                    = "count"
                  sizeGb                      = "count"
                  sourceImage                 = "count"
                  sourceImageId               = "count"
                  status                      = "count"
                  tags                        = "count"
                  ttl                         = "count"
                  type                        = "count"
                  zone                        = "count"
                }
                datasetQueryId = {
                  ignoreCompress = false
                  queryId        = "q-w5n4l55k"
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
              customSummary = "disk"
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
              id                = "step-vf8936da"
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
        id = "stage-6njbptp2"
        input = [
          {
            datasetId   = null
            datasetPath = null
            inputName   = "disk"
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
              "0" = "disk_instance_name"
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
              inputName   = "disk"
              inputRole   = "Data"
              isUserInput = false
              parameterId = "input-parameter-isvd5249"
            },
          ]
          label = "Max Write Bytes Count"
          managers = [
            {
              id                     = "3t0pife2"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "nmikpfxb"
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
                    unit    = "bytes"
                    visible = true
                  }
                }
                source = {
                  metric = {
                    aggregate   = "sum"
                    datasetId   = "${local.compute_metrics}"
                    description = "Auto Detected Metric"
                    groupBy = [
                      "computeDiskInstanceAssetKey",
                    ]
                    heuristics = {
                      __typename = "MetricHeuristics"
                      tags = [
                        {
                          __typename = "MetricTag"
                          column     = "computeDiskInstanceAssetKey"
                          path       = ""
                        },
                        {
                          __typename = "MetricTag"
                          column     = "zone"
                          path       = ""
                        },
                        {
                          __typename = "MetricTag"
                          column     = "region"
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
                          column     = "computeInstanceAssetKey"
                          path       = ""
                        },
                        {
                          __typename = "MetricTag"
                          column     = "compute_instance_name"
                          path       = ""
                        },
                        {
                          __typename = "MetricTag"
                          column     = "metric_labels"
                          path       = "device_name"
                        },
                        {
                          __typename = "MetricTag"
                          column     = "metric_labels"
                          path       = "storage_type"
                        },
                        {
                          __typename = "MetricTag"
                          column     = "metric_labels"
                          path       = "device_type"
                        },
                      ]
                      validLinkLabels = [
                        "Link to Compute Disk Instances",
                      ]
                    }
                    interval = null
                    link = {
                      __typename = "ForeignKey"
                      dstFields = [
                        "computeDiskInstanceAssetKey",
                      ]
                      label = "Link to Compute Disk Instances"
                      srcFields = [
                        "computeDiskInstanceAssetKey",
                      ]
                      targetDataset    = "${local.compute_disk}"
                      targetStageLabel = null
                      type             = "foreign"
                    }
                    name        = "instance_disk_max_write_bytes_count"
                    rollup      = "avg"
                    type        = "gauge"
                    unit        = "bytes"
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
          selectedStepId = "step-y7q44aox"
          serializable   = true
          steps = [
            {
              customName    = "Input"
              customSummary = "disk"
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
              id                = "step-y7q44aox"
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
        id = "stage-jnx5f5qb"
        input = [
          {
            datasetId   = null
            datasetPath = null
            inputName   = "disk"
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
              "0" = "disk_instance_name"
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
              inputName   = "disk"
              inputRole   = "Data"
              isUserInput = false
              parameterId = "input-parameter-isvd5249"
            },
          ]
          label = "Copy of Max Write Bytes Count"
          managers = [
            {
              id                     = "3t0pife2"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "nmikpfxb"
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
                    unit    = "ms"
                    visible = true
                  }
                }
                source = {
                  metric = {
                    aggregate   = "sum"
                    datasetId   = "${local.compute_metrics}"
                    description = <<-EOT
                                            The cumulative time spent on the I/O operations that are in progress; that is, the actual time in queue and when disks were busy. Requests issued in parallel are counted as a single one. For Container-Optimized OS, or Ubuntu running GKE.
                                        EOT
                    groupBy = [
                      "computeDiskInstanceAssetKey",
                    ]
                    heuristics = null
                    interval   = null
                    link = {
                      __typename = "ForeignKey"
                      dstFields = [
                        "computeDiskInstanceAssetKey",
                      ]
                      label = "Link to Compute Disk Instances"
                      srcFields = [
                        "computeDiskInstanceAssetKey",
                      ]
                      targetDataset    = "${local.compute_disk}"
                      targetStageLabel = null
                      type             = "foreign"
                    }
                    name        = "disk_io_time"
                    rollup      = "avg"
                    type        = "cumulativeCounter"
                    unit        = "ms"
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
          selectedStepId = "step-r9mt1zgy"
          serializable   = true
          steps = [
            {
              customName    = "Input"
              customSummary = "disk"
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
              id                = "step-r9mt1zgy"
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
        id = "stage-f8qjdlzk"
        input = [
          {
            datasetId   = null
            datasetPath = null
            inputName   = "disk"
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
            columnVisibility = {}
            columnWidths = {
              architecture = 248
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
              inputName   = "disk"
              inputRole   = "Data"
              isUserInput = false
              parameterId = "input-parameter-isvd5249"
            },
          ]
          label = "Architecture"
          managers = [
            {
              id                     = "9dplbhks"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "hc99evj7"
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
                      "architecture",
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
            resultKinds = [
              "ResultKindSchema",
            ]
            rollup = {}
          }
          selectedStepId = null
          serializable   = true
          steps = [
            {
              customName    = "Input"
              customSummary = "disk"
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
              id                = "step-pgu9sisk"
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
                  queryId        = "q-knuzwxwj"
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
              id       = "step-eg2z87xa"
              index    = 1
              isPinned = false
              opal = [
                "pick_col ",
                "\tcomputeDiskInstanceAssetKey,",
                "\t@.\"Valid From\",",
                "    @.\"Valid To\",",
                "\tregion,",
                "    project_id,",
                "    architecture",
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
                    pick_col 
                    	computeDiskInstanceAssetKey,
                    	@."Valid From",
                        @."Valid To",
                    	region,
                        project_id,
                        architecture
                EOT
      },
    ]
  )
  workspace = local.workspace
}

