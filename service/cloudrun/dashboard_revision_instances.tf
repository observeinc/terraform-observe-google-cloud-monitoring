# terraform import observe_dashboard.cloud_run_revision_instance 42038640
resource "observe_dashboard" "cloud_run_revision_instance" {
  layout = jsonencode(
    {
      autoPack = true
      gridLayout = {
        sections = [
          {
            card = {
              cardType = "section"
              closed   = false
              id       = "card-cru9f4ks"
              title    = "Dashboard Content"
            }
            items = [
              {
                card = {
                  cardType    = "parameter"
                  id          = "card-u7nm6wii"
                  parameterId = "revision"
                }
                layout = {
                  h           = 4
                  i           = "card-u7nm6wii"
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
            ]
            lastModified = 1680636584251
          },
          {
            card = {
              cardType = "section"
              closed   = false
              id       = "card-q3xnca3m"
              title    = "General"
            }
            items = [
              {
                card = {
                  cardType = "stage"
                  id       = "card-6jwjx68k"
                  stageId  = "stage-2w0h5by8"
                }
                layout = {
                  h           = 8
                  i           = "card-6jwjx68k"
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
                  id       = "card-pqos5vv6"
                  stageId  = "stage-uzxt2gjg"
                }
                layout = {
                  h           = 16
                  i           = "card-pqos5vv6"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 6
                  x           = 6
                  y           = 0
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-xwx9uxbg"
                  stageId  = "stage-stztoqtz"
                }
                layout = {
                  h           = 16
                  i           = "card-xwx9uxbg"
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
                  id       = "card-2t3373ox"
                  stageId  = "stage-s6hd9w9r"
                }
                layout = {
                  h           = 8
                  i           = "card-2t3373ox"
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
                  id       = "card-wc3kqkyu"
                  stageId  = "stage-owvgp5ik"
                }
                layout = {
                  h           = 8
                  i           = "card-wc3kqkyu"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 2
                  x           = 4
                  y           = 8
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-mays8afi"
                  stageId  = "stage-7kiu4s55"
                }
                layout = {
                  h           = 8
                  i           = "card-mays8afi"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 2
                  x           = 2
                  y           = 8
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-lmdio52d"
                  stageId  = "stage-6q1j06k5"
                }
                layout = {
                  h           = 10
                  i           = "card-lmdio52d"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 2
                  x           = 0
                  y           = 16
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-faluz2me"
                  stageId  = "stage-7sze4czq"
                }
                layout = {
                  h           = 20
                  i           = "card-faluz2me"
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
                  id       = "card-d59a5viz"
                  stageId  = "stage-ufgma5j1"
                }
                layout = {
                  h           = 20
                  i           = "card-d59a5viz"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 5
                  x           = 2
                  y           = 16
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-3vl8ztza"
                  stageId  = "stage-9ie7yoz2"
                }
                layout = {
                  h           = 10
                  i           = "card-3vl8ztza"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 2
                  x           = 0
                  y           = 26
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-nfurvci9"
                  stageId  = "stage-9eiha1ve"
                }
                layout = {
                  h           = 16
                  i           = "card-nfurvci9"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 4
                  x           = 0
                  y           = 36
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-snujs30z"
                  stageId  = "stage-7ckxhvg3"
                }
                layout = {
                  h           = 16
                  i           = "card-snujs30z"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 4
                  x           = 4
                  y           = 36
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-0axbqg66"
                  stageId  = "stage-h556rs4j"
                }
                layout = {
                  h           = 16
                  i           = "card-0axbqg66"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 4
                  x           = 8
                  y           = 36
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-thdcnsgc"
                  stageId  = "stage-dlpgnpgk"
                }
                layout = {
                  h           = 18
                  i           = "card-thdcnsgc"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 12
                  x           = 0
                  y           = 52
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-7hpnuowh"
                  stageId  = "stage-h2x6mnph"
                }
                layout = {
                  h           = 18
                  i           = "card-7hpnuowh"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 12
                  x           = 0
                  y           = 70
                }
              },
            ]
            lastModified = 1681233175408
          },
          {
            card = {
              cardType = "section"
              closed   = false
              id       = "card-vn37dyxo"
              title    = "Information"
            }
            items = [
              {
                card = {
                  cardType = "text"
                  id       = "card-8weo4i10"
                  text     = <<-EOT
                                        ## GCP/Cloud Run Revision
                                        Each deployment to a service creates a revision. A revision consists of a specific container image, along with environment settings such as environment variables, memory limits, or concurrency value.
                                        
                                        Revisions are immutable: once a revision has been created, it cannot be modified. For example, when you deploy a container image to a new Cloud Run service, the first revision is created. If you then deploy a different container image to that same service, a second revision is created. If you subsequently set an environment variable, a third revision is created, and so on.
                                        
                                        Requests are automatically routed as soon as possible to the latest healthy service revision.
                                        
                                        For information on managing Cloud Run Revisions, visit https://cloud.google.com/run/docs/managing/revisions
                                        
                                        For information related to APIs, Terraform, or client libraries, visit https://cloud.google.com/run/docs/apis
                                    EOT
                  title    = "Untitled Text"
                }
                layout = {
                  h           = 15
                  i           = "card-8weo4i10"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 5
                  x           = 0
                  y           = 0
                }
              },
            ]
            lastModified = 1681238377501
          },
        ]
      }
      stageListLayout = {
        isModified = false
        parameters = [
          {
            emptyValueEncoding    = "null"
            emptyValueLabelOption = "null"
            id                    = "revision"
            name                  = "Revision"
            valueKind = {
              keyForDatasetId = local.cloud_run_revision_instances
              type            = "LINK"
            }
            viewType = "resource-input"
          },
        ]
        selectedStageId = "stage-h556rs4j"
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
  name = local.cloud_run_revision_dashboard_name
  parameters = jsonencode(
    [
      {
        defaultValue = null
        id           = "revision"
        name         = "Revision"
        valueKind = {
          arrayItemType   = null
          keyForDatasetId = local.cloud_run_revision_instances
          type            = "LINK"
        }
      },
    ]
  )
  stages = jsonencode(
    [
      {
        id = "stage-usqocagm"
        input = [
          {
            datasetId   = local.cloud_run_revision_instances
            datasetPath = null
            inputName   = "cloud_run_revision_instances"
            inputRole   = "Data"
            stageId     = null
          },
        ]
        layout = {
          appearance = "COLLAPSED"
          dataTableViewState = {
            autoTableHeight    = false
            columnFooterHeight = 0
            columnHeaderHeight = 29
            columnOrderOverride = {
              "0" = "revisionName"
              "2" = "Valid From"
              "3" = "Valid To"
            }
            columnVisibility = {
              database_id     = true
              serviceAssetKey = false
            }
            columnWidths                 = {}
            containerWidth               = 3023
            contextMenuXCoord            = null
            contextMenuYCoord            = null
            defaultColumnWidth           = 70
            disableFixedLeftColumns      = false
            eventLinkColumnId            = null
            fetchPageSize                = 100
            hasCalculatedColumnWidths    = false
            maxColumnWidth               = 600
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
            tableHeight                = 436
            tableView                  = "TABULAR"
          }
          index = 0
          inputList = [
            {
              datasetId   = local.cloud_run_revision_instances
              inputName   = "cloud_run_revision_instances"
              inputRole   = "Data"
              isUserInput = false
            },
          ]
          label = "Revision Instance"
          managers = [
            {
              id                     = "w9bstvl5"
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
              customName    = "Input"
              customSummary = "cloud_run_revision_instances"
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
              id                = "step-0s5j9cor"
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
              id       = "step-su861jh2"
              index    = 1
              isPinned = false
              opal = [
                "filter revisionAssetKey=$revision.revisionAssetKey",
                "",
                "set_col_visible",
                "  location:false,",
                "  project_id:false,",
                "  revisionUid:false,",
                "  revisionAssetKey:false",
                "",
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
                    filter revisionAssetKey=$revision.revisionAssetKey
                    
                    set_col_visible
                      location:false,
                      project_id:false,
                      revisionUid:false,
                      revisionAssetKey:false
                EOT
      },
      {
        id = "stage-uzxt2gjg"
        input = [
          {
            datasetId   = null
            datasetPath = null
            inputName   = "Revision Summary_-usqo"
            inputRole   = "Data"
            stageId     = "stage-usqocagm"
          },
        ]
        layout = {
          appearance = "VISIBLE"
          dataTableViewState = {
            autoTableHeight    = false
            columnFooterHeight = 0
            columnHeaderHeight = 29
            columnOrderOverride = {
              "0" = "revisionName"
              "2" = "Valid From"
              "3" = "Valid To"
            }
            columnVisibility = {
              "CloudSQL Instance"  = false
              "Revision Instance"  = false
              "Service Instance"   = false
              containerConcurrency = false
              cpuThrottling        = false
              database_id          = false
              maxScale             = false
              minScale             = false
              serviceAssetKey      = false
              serviceName          = false
              serviceUid           = false
            }
            columnWidths                 = {}
            containerWidth               = 1512
            contextMenuXCoord            = null
            contextMenuYCoord            = null
            defaultColumnWidth           = 70
            disableFixedLeftColumns      = false
            eventLinkColumnId            = null
            fetchPageSize                = 100
            hasCalculatedColumnWidths    = true
            maxColumnWidth               = 600
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
            summaryColumnOrderOverride = {}
            summaryColumnVisibility    = {}
            tableHeight                = 436
            tableView                  = "TABULAR"
          }
          index = 1
          inputList = [
            {
              inputName   = "Revision Summary_-usqo"
              inputRole   = "Data"
              isUserInput = false
              stageId     = "stage-usqocagm"
            },
          ]
          label = "Revision Summary"
          managers = [
            {
              id                     = "b22xm8hj"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
          ]
          queryPresentation = {
            initialRollupFilter = {
              mode = "Last"
            }
            rollup = {}
          }
          selectedStepId = null
          serializable   = true
          steps = [
            {
              customName    = "Input"
              customSummary = "Revision Summary_-usqo"
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
              id                = "step-jfshz1cd"
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
              id       = "step-g35z5qmf"
              index    = 1
              isPinned = false
              opal = [
                "",
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
        pipeline = ""
      },
      {
        id = "stage-stztoqtz"
        input = [
          {
            datasetId   = null
            datasetPath = null
            inputName   = "Revision Summary_-uzxt"
            inputRole   = "Data"
            stageId     = "stage-uzxt2gjg"
          },
        ]
        layout = {
          appearance = "VISIBLE"
          dataTableViewState = {
            autoTableHeight    = false
            columnFooterHeight = 0
            columnHeaderHeight = 29
            columnOrderOverride = {
              "0" = "revisionName"
              "2" = "Valid From"
              "3" = "Valid To"
            }
            columnVisibility = {
              "CloudSQL Instance"  = false
              "Revision Instance"  = false
              "Service Instance"   = false
              containerConcurrency = false
              cpuThrottling        = false
              database_id          = false
              maxScale             = false
              minScale             = false
              serviceAssetKey      = false
              serviceName          = false
              serviceUid           = false
            }
            columnWidths                 = {}
            containerWidth               = 3023
            contextMenuXCoord            = null
            contextMenuYCoord            = null
            defaultColumnWidth           = 70
            disableFixedLeftColumns      = false
            eventLinkColumnId            = null
            fetchPageSize                = 100
            hasCalculatedColumnWidths    = false
            maxColumnWidth               = 600
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
            tableHeight                = 436
            tableView                  = "TABULAR"
          }
          index = 2
          inputList = [
            {
              inputName   = "Revision Summary_-uzxt"
              inputRole   = "Data"
              isUserInput = false
              stageId     = "stage-uzxt2gjg"
            },
          ]
          label = "Revision Status"
          managers = [
            {
              id                     = "z78ut73n"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "m43x7txa"
              isDisabled = false
              type       = "Vis"
              vis = {
                config = {
                  color           = "Green"
                  colorConfigType = "Color"
                  fieldConfig = {
                    unit    = ""
                    visible = false
                  }
                  thresholds = null
                  type       = "singlefield"
                }
                source = {
                  table = {
                    field = "status"
                    groupFields = [
                      "statusMessage",
                    ]
                    statsBy = {
                      fn = "count"
                    }
                    timechart = {
                      fn         = "count"
                      fnArgs     = null
                      resolution = "AUTO"
                    }
                    transformType = "none"
                    type          = "singlefield"
                  }
                  topK = {
                    k     = 100
                    order = "Top"
                    type  = "Auto"
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
            rollup      = {}
            wantBuckets = 100
          }
          selectedStepId = null
          serializable   = true
          steps = [
            {
              customName    = "Input"
              customSummary = "Revision Summary_-uzxt"
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
              id                = "step-t8m2rbfi"
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
              id       = "step-4qgharbd"
              index    = 1
              isPinned = false
              opal = [
                "make_col",
                "  statusMessage: case(statusMessage!=\"-\", split_part(statusMessage, \". \", 1), true, \"\")",
              ]
              queryPresentation = {}
              type              = "unknown"
            },
            {
              action = {
                params = {
                  expressionList = {
                    expressions = [
                      {
                        columnId = "status"
                        dataVis = {
                          config = {
                            color           = "Green"
                            colorConfigType = "Color"
                            fieldConfig = {
                              unit    = ""
                              visible = false
                            }
                            thresholds = null
                            type       = "singlefield"
                          }
                          source = {
                            table = {
                              field = "status"
                              groupFields = [
                                "statusMessage",
                              ]
                              statsBy = {
                                fn = "count"
                              }
                              timechart = {
                                fn         = "count"
                                fnArgs     = null
                                resolution = "AUTO"
                              }
                              transformType = "none"
                              type          = "singlefield"
                            }
                            topK = {
                              order = "Top"
                              type  = "Auto"
                            }
                            type = "table"
                          }
                          type = "singlevalue"
                        }
                        filterActions = []
                        groupBy = [
                          "statusMessage",
                        ]
                        id            = "datasetQueryExpression-o6oh6lbq"
                        lookupActions = []
                        primaryKey = [
                          "revisionAssetKey",
                        ]
                        summaryFunction = "count_distinct_exact"
                        summaryMode     = "no-aggregate"
                        type            = "datasetQueryExpression"
                      },
                    ]
                    multiExpression = {
                      filterActions = []
                      id            = "multiExpression-o2jllf05"
                      lookupActions = []
                      type          = "multiExpression"
                    }
                    selectedExpressionIds = [
                      "datasetQueryExpression-o6oh6lbq",
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
              id                = "step-ktafr5q8"
              index             = 2
              isPinned          = false
              opal              = []
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
                    make_col
                      statusMessage: case(statusMessage!="-", split_part(statusMessage, ". ", 1), true, "")
                EOT
      },
      {
        id = "stage-s6hd9w9r"
        input = [
          {
            datasetId   = local.cloud_run_revision_instances
            datasetPath = null
            inputName   = "cloud_run_revision_instances"
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
              "0" = "revisionName"
              "2" = "Valid From"
              "3" = "Valid To"
            }
            columnVisibility = {
              serviceAssetKey = false
            }
            columnWidths                 = {}
            containerWidth               = 3023
            contextMenuXCoord            = null
            contextMenuYCoord            = null
            defaultColumnWidth           = 70
            disableFixedLeftColumns      = false
            eventLinkColumnId            = null
            fetchPageSize                = 100
            hasCalculatedColumnWidths    = false
            maxColumnWidth               = 600
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
          index = 3
          inputList = [
            {
              datasetId   = local.cloud_run_revision_instances
              inputName   = "cloud_run_revision_instances"
              inputRole   = "Data"
              isUserInput = false
            },
          ]
          label = "CPU Limit"
          managers = [
            {
              id                     = "0f5qgcr4"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "g978rnpg"
              isDisabled = false
              type       = "Vis"
              vis = {
                config = {
                  color           = "Blue"
                  colorConfigType = "Color"
                  fieldConfig = {
                    unit    = "millicores"
                    visible = false
                  }
                  singleStatLabel = "CPU Limit"
                  thresholds      = null
                  type            = "singlefield"
                }
                source = {
                  table = {
                    field       = "cpuLimit"
                    groupFields = []
                    statsBy = {
                      fn = "count"
                    }
                    timechart = {
                      fn         = "count"
                      fnArgs     = null
                      resolution = "AUTO"
                    }
                    transformType = "none"
                    type          = "singlefield"
                  }
                  topK = {
                    order = "Top"
                    type  = "Auto"
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
            sort = [
              {
                ascending  = true
                columnName = "A_CloudRunRevisionInstances_count_distinct_exact"
              },
            ]
            wantBuckets = 100
          }
          renderType     = "TABLE"
          selectedStepId = null
          serializable   = true
          steps = [
            {
              customName    = "Input"
              customSummary = "cloud_run_revision_instances"
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
              id                = "step-tcabsqai"
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
              id       = "step-nwp4v71o"
              index    = 1
              isPinned = false
              opal = [
                "filter revisionAssetKey=$revision.revisionAssetKey",
                "make_col",
                "  cpuLimit:string(container.resources.limits.cpu)",
              ]
              queryPresentation = {}
              type              = "unknown"
            },
            {
              action = {
                params = {
                  expressionList = {
                    expressions = [
                      {
                        columnId = "cpuLimit"
                        dataVis = {
                          config = {
                            color           = "Blue"
                            colorConfigType = "Color"
                            fieldConfig = {
                              unit    = "millicores"
                              visible = false
                            }
                            singleStatLabel = "CPU Limit"
                            thresholds      = null
                            type            = "singlefield"
                          }
                          source = {
                            table = {
                              field       = "cpuLimit"
                              groupFields = []
                              statsBy = {
                                fn = "count"
                              }
                              timechart = {
                                fn         = "count"
                                fnArgs     = null
                                resolution = "AUTO"
                              }
                              transformType = "none"
                              type          = "singlefield"
                            }
                            topK = {
                              order = "Top"
                              type  = "Auto"
                            }
                            type = "table"
                          }
                          type = "singlevalue"
                        }
                        filterActions = []
                        groupBy       = []
                        id            = "datasetQueryExpression-p0gpoin9"
                        lookupActions = []
                        primaryKey = [
                          "revisionAssetKey",
                        ]
                        summaryFunction = "count_distinct_exact"
                        summaryMode     = "no-aggregate"
                        type            = "datasetQueryExpression"
                      },
                    ]
                    multiExpression = {
                      filterActions = []
                      id            = "multiExpression-1id7s86g"
                      lookupActions = []
                      type          = "multiExpression"
                    }
                    selectedExpressionIds = [
                      "datasetQueryExpression-p0gpoin9",
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
              id                = "step-co69t1ln"
              index             = 2
              isPinned          = false
              opal              = []
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
                    filter revisionAssetKey=$revision.revisionAssetKey
                    make_col
                      cpuLimit:string(container.resources.limits.cpu)
                EOT
      },
      {
        id = "stage-7kiu4s55"
        input = [
          {
            datasetId   = local.cloud_run_revision_instances
            datasetPath = null
            inputName   = "cloud_run_revision_instances"
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
              "0" = "revisionName"
              "2" = "Valid From"
              "3" = "Valid To"
            }
            columnVisibility = {
              serviceAssetKey = false
            }
            columnWidths                 = {}
            containerWidth               = 3023
            contextMenuXCoord            = null
            contextMenuYCoord            = null
            defaultColumnWidth           = 70
            disableFixedLeftColumns      = false
            eventLinkColumnId            = null
            fetchPageSize                = 100
            hasCalculatedColumnWidths    = false
            maxColumnWidth               = 600
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
          index = 4
          inputList = [
            {
              datasetId   = local.cloud_run_revision_instances
              inputName   = "cloud_run_revision_instances"
              inputRole   = "Data"
              isUserInput = false
            },
          ]
          label = "Memory Limit"
          managers = [
            {
              id                     = "1l84ycnv"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "z05n45yu"
              isDisabled = false
              type       = "Vis"
              vis = {
                config = {
                  color           = "Blue"
                  colorConfigType = "Color"
                  fieldConfig = {
                    unit    = "Mi"
                    visible = false
                  }
                  singleStatLabel = "Memory Limit"
                  thresholds      = null
                  type            = "singlefield"
                }
                source = {
                  table = {
                    field       = "memoryLimit"
                    groupFields = []
                    statsBy = {
                      fn = "count"
                    }
                    timechart = {
                      fn         = "count"
                      fnArgs     = null
                      resolution = "AUTO"
                    }
                    transformType = "none"
                    type          = "singlefield"
                  }
                  topK = {
                    order = "Top"
                    type  = "Auto"
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
            sort = [
              {
                ascending  = true
                columnName = "A_CloudRunRevisionInstances_count_distinct_exact"
              },
            ]
            wantBuckets = 100
          }
          renderType     = "TABLE"
          selectedStepId = null
          serializable   = true
          steps = [
            {
              customName    = "Input"
              customSummary = "cloud_run_revision_instances"
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
              id                = "step-t0bhstpc"
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
              id       = "step-ml6iw5qm"
              index    = 1
              isPinned = false
              opal = [
                "filter revisionAssetKey=$revision.revisionAssetKey",
                "make_col",
                "  memoryLimit:string(container.resources.limits.memory)",
              ]
              queryPresentation = {}
              type              = "unknown"
            },
            {
              action = {
                params = {
                  expressionList = {
                    expressions = [
                      {
                        columnId = "memoryLimit"
                        dataVis = {
                          config = {
                            color           = "Blue"
                            colorConfigType = "Color"
                            fieldConfig = {
                              unit    = "Mi"
                              visible = false
                            }
                            singleStatLabel = "Memory Limit"
                            thresholds      = null
                            type            = "singlefield"
                          }
                          source = {
                            table = {
                              field       = "memoryLimit"
                              groupFields = []
                              statsBy = {
                                fn = "count"
                              }
                              timechart = {
                                fn         = "count"
                                fnArgs     = null
                                resolution = "AUTO"
                              }
                              transformType = "none"
                              type          = "singlefield"
                            }
                            topK = {
                              order = "Top"
                              type  = "Auto"
                            }
                            type = "table"
                          }
                          type = "singlevalue"
                        }
                        filterActions = []
                        groupBy       = []
                        id            = "datasetQueryExpression-qlm640sg"
                        lookupActions = []
                        primaryKey = [
                          "revisionAssetKey",
                        ]
                        summaryFunction = "count_distinct_exact"
                        summaryMode     = "no-aggregate"
                        type            = "datasetQueryExpression"
                      },
                    ]
                    multiExpression = {
                      filterActions = []
                      id            = "multiExpression-n82qu0il"
                      lookupActions = []
                      type          = "multiExpression"
                    }
                    selectedExpressionIds = [
                      "datasetQueryExpression-qlm640sg",
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
              id                = "step-8hhtyxuv"
              index             = 2
              isPinned          = false
              opal              = []
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
                    filter revisionAssetKey=$revision.revisionAssetKey
                    make_col
                      memoryLimit:string(container.resources.limits.memory)
                EOT
      },
      {
        id = "stage-2w0h5by8"
        input = [
          {
            datasetId   = null
            datasetPath = null
            inputName   = "Revision Summary_-usqo"
            inputRole   = "Data"
            stageId     = "stage-usqocagm"
          },
        ]
        layout = {
          appearance = "VISIBLE"
          dataTableViewState = {
            autoTableHeight    = true
            columnFooterHeight = 0
            columnHeaderHeight = 29
            columnOrderOverride = {
              "0" = "revisionName"
              "2" = "Valid From"
              "3" = "Valid To"
            }
            columnVisibility = {
              serviceAssetKey = false
            }
            columnWidths                 = {}
            containerWidth               = 3023
            contextMenuXCoord            = null
            contextMenuYCoord            = null
            defaultColumnWidth           = 70
            disableFixedLeftColumns      = false
            eventLinkColumnId            = null
            fetchPageSize                = 100
            hasCalculatedColumnWidths    = false
            maxColumnWidth               = 600
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
          index = 5
          inputList = [
            {
              inputName   = "Revision Summary_-usqo"
              inputRole   = "Data"
              isUserInput = false
              stageId     = "stage-usqocagm"
            },
          ]
          label = "MinScale"
          managers = [
            {
              id                     = "gxh7oycl"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "v6zkb23s"
              isDisabled = false
              type       = "Vis"
              vis = {
                config = {
                  color           = "Blue"
                  colorConfigType = "Color"
                  fieldConfig = {
                    unit    = ""
                    visible = false
                  }
                  singleStatLabel = "Min Scale"
                  thresholds      = null
                  type            = "singlefield"
                }
                source = {
                  table = {
                    field       = "minScale"
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
                  topK = {
                    order = "Top"
                    type  = "Auto"
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
            sort = [
              {
                ascending  = true
                columnName = "A_minScale_count_distinct_exact"
              },
            ]
            wantBuckets = 100
          }
          selectedStepId = null
          serializable   = true
          steps = [
            {
              customName    = "Input"
              customSummary = "Revision Summary_-usqo"
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
              id                = "step-rpokmqgu"
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
                        columnId = "minScale"
                        dataVis = {
                          config = {
                            color           = "Blue"
                            colorConfigType = "Color"
                            fieldConfig = {
                              unit    = ""
                              visible = false
                            }
                            singleStatLabel = "Min Scale"
                            thresholds      = null
                            type            = "singlefield"
                          }
                          source = {
                            table = {
                              field       = "minScale"
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
                            topK = {
                              order = "Top"
                              type  = "Auto"
                            }
                            type = "table"
                          }
                          type = "singlevalue"
                        }
                        filterActions = []
                        groupBy       = []
                        id            = "datasetQueryExpression-zt9ckuqn"
                        lookupActions = []
                        primaryKey = [
                          "revisionAssetKey",
                        ]
                        summaryFunction = "count_distinct_exact"
                        summaryMode     = "no-aggregate"
                        type            = "datasetQueryExpression"
                        valueColumnId   = "A_minScale_count_distinct_exact"
                      },
                    ]
                    multiExpression = {
                      filterActions = []
                      id            = "multiExpression-p3679gtu"
                      lookupActions = []
                      type          = "multiExpression"
                    }
                    selectedExpressionIds = [
                      "datasetQueryExpression-zt9ckuqn",
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
              id                = "step-z206yn7j"
              index             = 1
              isPinned          = false
              opal              = []
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
        pipeline = ""
      },
      {
        id = "stage-owvgp5ik"
        input = [
          {
            datasetId   = null
            datasetPath = null
            inputName   = "Revision Summary_-usqo"
            inputRole   = "Data"
            stageId     = "stage-usqocagm"
          },
        ]
        layout = {
          appearance = "VISIBLE"
          dataTableViewState = {
            autoTableHeight    = true
            columnFooterHeight = 0
            columnHeaderHeight = 29
            columnOrderOverride = {
              "0" = "revisionName"
              "2" = "Valid From"
              "3" = "Valid To"
            }
            columnVisibility = {
              serviceAssetKey = false
            }
            columnWidths                 = {}
            containerWidth               = 3023
            contextMenuXCoord            = null
            contextMenuYCoord            = null
            defaultColumnWidth           = 70
            disableFixedLeftColumns      = false
            eventLinkColumnId            = null
            fetchPageSize                = 100
            hasCalculatedColumnWidths    = false
            maxColumnWidth               = 600
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
          index = 6
          inputList = [
            {
              inputName   = "Revision Summary_-usqo"
              inputRole   = "Data"
              isUserInput = false
              stageId     = "stage-usqocagm"
            },
          ]
          label = "MaxScale"
          managers = [
            {
              id                     = "16y7gk0e"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "wdtsxjcu"
              isDisabled = false
              type       = "Vis"
              vis = {
                config = {
                  color           = "Blue"
                  colorConfigType = "Color"
                  fieldConfig = {
                    unit    = ""
                    visible = false
                  }
                  singleStatLabel = "Max Scale"
                  thresholds      = null
                  type            = "singlefield"
                }
                source = {
                  table = {
                    field       = "maxScale"
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
                  topK = {
                    order = "Top"
                    type  = "Auto"
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
            rollup      = {}
            wantBuckets = 100
          }
          selectedStepId = null
          serializable   = true
          steps = [
            {
              customName    = "Input"
              customSummary = "Revision Summary_-usqo"
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
              id                = "step-vokt4io7"
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
                        columnId = "maxScale"
                        dataVis = {
                          config = {
                            color           = "Blue"
                            colorConfigType = "Color"
                            fieldConfig = {
                              unit    = ""
                              visible = false
                            }
                            singleStatLabel = "Max Scale"
                            thresholds      = null
                            type            = "singlefield"
                          }
                          source = {
                            table = {
                              field       = "maxScale"
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
                            topK = {
                              order = "Top"
                              type  = "Auto"
                            }
                            type = "table"
                          }
                          type = "singlevalue"
                        }
                        filterActions = []
                        groupBy       = []
                        id            = "datasetQueryExpression-zt9ckuqn"
                        lookupActions = []
                        primaryKey = [
                          "revisionAssetKey",
                        ]
                        summaryFunction = "count_distinct_exact"
                        summaryMode     = "no-aggregate"
                        type            = "datasetQueryExpression"
                      },
                    ]
                    multiExpression = {
                      filterActions = []
                      id            = "multiExpression-p3679gtu"
                      lookupActions = []
                      type          = "multiExpression"
                    }
                    selectedExpressionIds = [
                      "datasetQueryExpression-zt9ckuqn",
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
              id                = "step-adpy6ra3"
              index             = 1
              isPinned          = false
              opal              = []
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
        pipeline = ""
      },
      {
        id = "stage-6q1j06k5"
        input = [
          {
            datasetId   = null
            datasetPath = null
            inputName   = "Revision Summary_-usqo"
            inputRole   = "Data"
            stageId     = "stage-usqocagm"
          },
        ]
        layout = {
          appearance = "VISIBLE"
          dataTableViewState = {
            autoTableHeight    = true
            columnFooterHeight = 0
            columnHeaderHeight = 29
            columnOrderOverride = {
              "0" = "revisionName"
              "2" = "Valid From"
              "3" = "Valid To"
            }
            columnVisibility = {
              serviceAssetKey = false
            }
            columnWidths                 = {}
            containerWidth               = 3023
            contextMenuXCoord            = null
            contextMenuYCoord            = null
            defaultColumnWidth           = 70
            disableFixedLeftColumns      = false
            eventLinkColumnId            = null
            fetchPageSize                = 100
            hasCalculatedColumnWidths    = false
            maxColumnWidth               = 600
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
          index = 7
          inputList = [
            {
              inputName   = "Revision Summary_-usqo"
              inputRole   = "Data"
              isUserInput = false
              stageId     = "stage-usqocagm"
            },
          ]
          label = "CPU Throttling"
          managers = [
            {
              id                     = "rlrc4a26"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "ijzmsbjj"
              isDisabled = false
              type       = "Vis"
              vis = {
                config = {
                  color           = "Yellow"
                  colorConfigType = "Color"
                  fieldConfig = {
                    unit    = ""
                    visible = false
                  }
                  singleStatLabel = "CPU Throttling"
                  thresholds      = null
                  type            = "singlefield"
                }
                source = {
                  table = {
                    field       = "cpuThrottling"
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
                  topK = {
                    order = "Top"
                    type  = "Auto"
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
            rollup      = {}
            wantBuckets = 100
          }
          selectedStepId = null
          serializable   = true
          steps = [
            {
              customName    = "Input"
              customSummary = "Revision Summary_-usqo"
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
              id                = "step-82640i97"
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
                        columnId = "cpuThrottling"
                        dataVis = {
                          config = {
                            color           = "Yellow"
                            colorConfigType = "Color"
                            fieldConfig = {
                              unit    = ""
                              visible = false
                            }
                            singleStatLabel = "CPU Throttling"
                            thresholds      = null
                            type            = "singlefield"
                          }
                          source = {
                            table = {
                              field       = "cpuThrottling"
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
                            topK = {
                              order = "Top"
                              type  = "Auto"
                            }
                            type = "table"
                          }
                          type = "singlevalue"
                        }
                        filterActions = []
                        groupBy       = []
                        id            = "datasetQueryExpression-zt9ckuqn"
                        lookupActions = []
                        primaryKey = [
                          "revisionAssetKey",
                        ]
                        summaryFunction = "count_distinct_exact"
                        summaryMode     = "no-aggregate"
                        type            = "datasetQueryExpression"
                      },
                    ]
                    multiExpression = {
                      filterActions = []
                      id            = "multiExpression-p3679gtu"
                      lookupActions = []
                      type          = "multiExpression"
                    }
                    selectedExpressionIds = [
                      "datasetQueryExpression-zt9ckuqn",
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
              id                = "step-yggqytdm"
              index             = 1
              isPinned          = false
              opal              = []
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
        pipeline = ""
      },
      {
        id = "stage-9ie7yoz2"
        input = [
          {
            datasetId   = null
            datasetPath = null
            inputName   = "Revision Summary_-usqo"
            inputRole   = "Data"
            stageId     = "stage-usqocagm"
          },
        ]
        layout = {
          appearance = "VISIBLE"
          dataTableViewState = {
            autoTableHeight    = true
            columnFooterHeight = 0
            columnHeaderHeight = 29
            columnOrderOverride = {
              "0" = "revisionName"
              "2" = "Valid From"
              "3" = "Valid To"
            }
            columnVisibility = {
              serviceAssetKey = false
            }
            columnWidths                 = {}
            containerWidth               = 3023
            contextMenuXCoord            = null
            contextMenuYCoord            = null
            defaultColumnWidth           = 70
            disableFixedLeftColumns      = false
            eventLinkColumnId            = null
            fetchPageSize                = 100
            hasCalculatedColumnWidths    = false
            maxColumnWidth               = 600
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
          index = 8
          inputList = [
            {
              inputName   = "Revision Summary_-usqo"
              inputRole   = "Data"
              isUserInput = false
              stageId     = "stage-usqocagm"
            },
          ]
          label = "Max Concurrency"
          managers = [
            {
              id                     = "mwsej2c5"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "kdmyjmoj"
              isDisabled = false
              type       = "Vis"
              vis = {
                config = {
                  color           = "Yellow"
                  colorConfigType = "Color"
                  fieldConfig = {
                    unit    = "rps"
                    visible = false
                  }
                  singleStatLabel = "Max Concurrency Per Container"
                  thresholds      = null
                  type            = "singlefield"
                }
                source = {
                  table = {
                    field       = "containerConcurrency"
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
                  topK = {
                    order = "Top"
                    type  = "Auto"
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
            rollup      = {}
            wantBuckets = 100
          }
          selectedStepId = null
          serializable   = true
          steps = [
            {
              customName    = "Input"
              customSummary = "Revision Summary_-usqo"
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
              id                = "step-93ie2igi"
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
                        columnId = "containerConcurrency"
                        dataVis = {
                          config = {
                            color           = "Yellow"
                            colorConfigType = "Color"
                            fieldConfig = {
                              unit    = "rps"
                              visible = false
                            }
                            singleStatLabel = "Max Concurrency Per Container"
                            thresholds      = null
                            type            = "singlefield"
                          }
                          source = {
                            table = {
                              field       = "containerConcurrency"
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
                            topK = {
                              order = "Top"
                              type  = "Auto"
                            }
                            type = "table"
                          }
                          type = "singlevalue"
                        }
                        filterActions = []
                        groupBy       = []
                        id            = "datasetQueryExpression-zt9ckuqn"
                        lookupActions = []
                        primaryKey = [
                          "revisionAssetKey",
                        ]
                        summaryFunction = "count_distinct_exact"
                        summaryMode     = "no-aggregate"
                        type            = "datasetQueryExpression"
                      },
                    ]
                    multiExpression = {
                      filterActions = []
                      id            = "multiExpression-p3679gtu"
                      lookupActions = []
                      type          = "multiExpression"
                    }
                    selectedExpressionIds = [
                      "datasetQueryExpression-zt9ckuqn",
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
              id                = "step-we73yprh"
              index             = 1
              isPinned          = false
              opal              = []
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
        pipeline = ""
      },
      {
        id = "stage-ufgma5j1"
        input = [
          {
            datasetId   = local.cloud_run_metrics
            datasetPath = null
            inputName   = "container_cpu_utilizations_from_42020094"
            inputRole   = "Data"
            stageId     = null
          },
          {
            datasetId   = null
            datasetPath = null
            inputName   = "filter_Revision Instance"
            inputRole   = "Data"
            stageId     = "stage-usqocagm"
          },
        ]
        layout = {
          appearance = "VISIBLE"
          dataTableViewState = {
            autoTableHeight    = true
            columnFooterHeight = 0
            columnHeaderHeight = 29
            columnOrderOverride = {
              "0" = "revisionName"
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
            maxColumnWidth               = 600
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
          index     = 9
          inputList = []
          label     = "Container CPU Utilization"
          managers = [
            {
              id         = "uu062h6t"
              isDisabled = false
              type       = "Vis"
              vis = {
                config = {
                  areaFillType  = "NoFill"
                  color         = "Yellow"
                  hideGridLines = false
                  legend = {
                    placement = "bottom"
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
                  table = {
                    groupFields = [
                      "revisionName",
                    ]
                    transformType = "none"
                    type          = "xy"
                    x             = "valid_from"
                    y             = "A_container_cpu_utilizations_sum"
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
              id                = "step-55ocaqub"
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
                        alignDuration = {
                          num  = 5
                          unit = "minute"
                        }
                        autoFrame = true
                        dataVis = {
                          config = {
                            areaFillType  = "NoFill"
                            color         = "Yellow"
                            hideGridLines = false
                            legend = {
                              placement = "bottom"
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
                            table = {
                              groupFields = [
                                "revisionName",
                              ]
                              transformType = "none"
                              type          = "xy"
                              x             = "valid_from"
                              y             = "A_container_cpu_utilizations_sum"
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
                                  "revisionName",
                                ]
                                label = "Revision Instance"
                                srcFields = [
                                  "revisionName",
                                ]
                                targetDataset    = local.cloud_run_revision_instances
                                targetStageLabel = null
                                type             = "foreign"
                              }
                              joinInput = {
                                stageId = "stage-usqocagm"
                              }
                            }
                            summary = null
                            type    = "ExistsInFilter"
                          },
                        ]
                        frameDuration = {
                          num  = 1
                          unit = "minute"
                        }
                        groupBy = [
                          "revisionName",
                        ]
                        id = "metricExpression-uzo9dzgn"
                        inputSource = {
                          datasetId = local.cloud_run_metrics
                        }
                        lookupActions = []
                        metric = {
                          aggregate   = "sum"
                          datasetId   = local.cloud_run_metrics
                          description = <<-EOT
                                                        Container CPU utilization distribution across all container instances.
                                                    EOT
                          heuristics = {
                            __typename = "MetricHeuristics"
                            tags = [
                              {
                                __typename = "MetricTag"
                                column     = "revisionName"
                                path       = ""
                              },
                              {
                                __typename = "MetricTag"
                                column     = "metric_kind"
                                path       = ""
                              },
                              {
                                __typename = "MetricTag"
                                column     = "project_id"
                                path       = ""
                              },
                              {
                                __typename = "MetricTag"
                                column     = "serviceAssetKey"
                                path       = ""
                              },
                              {
                                __typename = "MetricTag"
                                column     = "serviceName"
                                path       = ""
                              },
                              {
                                __typename = "MetricTag"
                                column     = "value_type"
                                path       = ""
                              },
                              {
                                __typename = "MetricTag"
                                column     = "region"
                                path       = ""
                              },
                            ]
                            validLinkLabels = [
                              "Revision Instance",
                              "Service Instance",
                            ]
                          }
                          interval    = "60000000000"
                          name        = "container_cpu_utilizations"
                          rollup      = "avg"
                          type        = "delta"
                          unit        = "10^2.%"
                          userDefined = true
                        }
                        metricLink = {
                          __typename = "ForeignKey"
                          dstFields = [
                            "revisionName",
                          ]
                          label = "Revision Instance"
                          srcFields = [
                            "revisionName",
                          ]
                          targetDataset    = local.cloud_run_revision_instances
                          targetStageLabel = null
                          type             = "foreign"
                        }
                        metricLinkInputSource = {
                          stageId = "stage-usqocagm"
                        }
                        showAlignment  = true
                        showResolution = true
                        summaryMode    = "over-time"
                        type           = "metricExpression"
                        valueColumnId  = "A_container_cpu_utilizations_sum"
                      },
                    ]
                    multiExpression = {
                      filterActions = []
                      id            = "multiExpression-iy6fpdus"
                      lookupActions = []
                      type          = "multiExpression"
                    }
                    selectedExpressionIds = [
                      "metricExpression-uzo9dzgn",
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
              id       = "step-f9jgla8j"
              index    = 1
              isPinned = false
              opal = [
                "exists revisionName = @\"filter_Revision Instance\".revisionName",
                "align A_container_cpu_utilizations_sum:avg(m(\"container_cpu_utilizations\"))",
                "aggregate A_container_cpu_utilizations_sum:sum(A_container_cpu_utilizations_sum), group_by(revisionName)",
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
                    exists revisionName = @"filter_Revision Instance".revisionName
                    align A_container_cpu_utilizations_sum:avg(m("container_cpu_utilizations"))
                    aggregate A_container_cpu_utilizations_sum:sum(A_container_cpu_utilizations_sum), group_by(revisionName)
                EOT
      },
      {
        id = "stage-7sze4czq"
        input = [
          {
            datasetId   = local.cloud_run_metrics
            datasetPath = null
            inputName   = "container_memory_utilizations_from_42020094"
            inputRole   = "Data"
            stageId     = null
          },
          {
            datasetId   = null
            datasetPath = null
            inputName   = "filter_Revision Instance"
            inputRole   = "Data"
            stageId     = "stage-usqocagm"
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
              "2" = "revisionName"
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
            maxColumnWidth               = 600
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
          index     = 10
          inputList = []
          label     = "Container Memory Utilization"
          managers = [
            {
              id         = "idk6794z"
              isDisabled = false
              type       = "Vis"
              vis = {
                config = {
                  areaFillType  = "NoFill"
                  color         = "Yellow"
                  hideGridLines = false
                  legend = {
                    placement = "bottom"
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
                        "revisionName",
                      ],
                    ]
                    transformType = "none"
                    type          = "xy"
                    x             = "valid_from"
                    y             = "B_formula"
                  }
                  topK = {
                    k    = 25
                    type = "Auto"
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
              id                = "step-ms5p9l3i"
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
                        alignDuration = {
                          num  = 5
                          unit = "minute"
                        }
                        autoFrame = true
                        dataVis = {
                          config = {
                            areaFillType  = "NoFill"
                            color         = "Default"
                            hideGridLines = false
                            legend = {
                              placement = "bottom"
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
                            table = {
                              groupFields = [
                                [
                                  "revisionName",
                                ],
                              ]
                              transformType = "none"
                              type          = "xy"
                              x             = "valid_from"
                              y             = "A_container_memory_utilizations_sum"
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
                                  "revisionName",
                                ]
                                label = "Revision Instance"
                                srcFields = [
                                  "revisionName",
                                ]
                                targetDataset    = local.cloud_run_revision_instances
                                targetStageLabel = null
                                type             = "foreign"
                              }
                              joinInput = {
                                stageId = "stage-usqocagm"
                              }
                            }
                            summary = null
                            type    = "ExistsInFilter"
                          },
                        ]
                        frameDuration = {
                          num  = 1
                          unit = "hour"
                        }
                        groupBy = [
                          [
                            "revisionName",
                          ],
                        ]
                        id = "metricExpression-uzo9dzgn"
                        inputSource = {
                          datasetId = local.cloud_run_metrics
                        }
                        lookupActions = []
                        metric = {
                          aggregate   = "sum"
                          datasetId   = local.cloud_run_metrics
                          description = <<-EOT
                                                        Container memory utilization distribution across all container instances.
                                                    EOT
                          heuristics = {
                            __typename = "MetricHeuristics"
                            tags = [
                              {
                                __typename = "MetricTag"
                                column     = "revisionName"
                                path       = ""
                              },
                              {
                                __typename = "MetricTag"
                                column     = "metric_kind"
                                path       = ""
                              },
                              {
                                __typename = "MetricTag"
                                column     = "project_id"
                                path       = ""
                              },
                              {
                                __typename = "MetricTag"
                                column     = "serviceAssetKey"
                                path       = ""
                              },
                              {
                                __typename = "MetricTag"
                                column     = "serviceName"
                                path       = ""
                              },
                              {
                                __typename = "MetricTag"
                                column     = "value_type"
                                path       = ""
                              },
                              {
                                __typename = "MetricTag"
                                column     = "region"
                                path       = ""
                              },
                            ]
                            validLinkLabels = [
                              "Revision Instance",
                              "Service Instance",
                            ]
                          }
                          interval    = "60000000000"
                          name        = "container_memory_utilizations"
                          rollup      = "avg"
                          type        = "delta"
                          unit        = "10^2.%"
                          userDefined = true
                        }
                        metricLink = {
                          __typename = "ForeignKey"
                          dstFields = [
                            "revisionName",
                          ]
                          label = "Revision Instance"
                          srcFields = [
                            "revisionName",
                          ]
                          targetDataset    = local.cloud_run_revision_instances
                          targetStageLabel = null
                          type             = "foreign"
                        }
                        metricLinkInputSource = {
                          stageId = "stage-usqocagm"
                        }
                        showAlignment  = true
                        showResolution = true
                        summaryMode    = "over-time"
                        type           = "metricExpression"
                        valueColumnId  = "A_container_memory_utilizations_sum"
                      },
                      {
                        dataVis = {
                          config = {
                            areaFillType  = "NoFill"
                            color         = "Yellow"
                            hideGridLines = false
                            legend = {
                              placement = "bottom"
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
                                  "revisionName",
                                ],
                              ]
                              transformType = "none"
                              type          = "xy"
                              x             = "valid_from"
                              y             = "B_formula"
                            }
                            topK = {
                              type = "Auto"
                            }
                            type = "table"
                          }
                          type = "timeseries"
                        }
                        filterActions = []
                        formula       = "A * 100"
                        id            = "formulaExpression-q9zeppby"
                        lookupActions = []
                        type          = "formulaExpression"
                        valueColumnId = "B_formula"
                      },
                    ]
                    multiExpression = {
                      filterActions = []
                      id            = "multiExpression-iy6fpdus"
                      lookupActions = []
                      type          = "multiExpression"
                    }
                    selectedExpressionIds = [
                      "formulaExpression-q9zeppby",
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
              id       = "step-kvbm19o2"
              index    = 1
              isPinned = false
              opal = [
                "@A <- @container_memory_utilizations_from_42020094 {",
                "    exists revisionName = @\"filter_Revision Instance\".revisionName",
                "    align A_container_memory_utilizations_sum:avg(m(\"container_memory_utilizations\"))",
                "    aggregate A_container_memory_utilizations_sum:sum(A_container_memory_utilizations_sum), group_by(revisionName)",
                "    make_event",
                "}",
                "@B <- @A {",
                "    aggregate A: any_not_null(A_container_memory_utilizations_sum), group_by(revisionName)",
                "    make_col B_formula: A*100",
                "}",
                "<- @B {}",
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
                    @A <- @container_memory_utilizations_from_42020094 {
                        exists revisionName = @"filter_Revision Instance".revisionName
                        align A_container_memory_utilizations_sum:avg(m("container_memory_utilizations"))
                        aggregate A_container_memory_utilizations_sum:sum(A_container_memory_utilizations_sum), group_by(revisionName)
                        make_event
                    }
                    @B <- @A {
                        aggregate A: any_not_null(A_container_memory_utilizations_sum), group_by(revisionName)
                        make_col B_formula: A*100
                    }
                    <- @B {}
                EOT
      },
      {
        id = "stage-7ckxhvg3"
        input = [
          {
            datasetId   = local.cloud_run_metrics
            datasetPath = null
            inputName   = "request_count_from_42020094"
            inputRole   = "Data"
            stageId     = null
          },
          {
            datasetId   = null
            datasetPath = null
            inputName   = "Revision Summary_-usqo"
            inputRole   = "Data"
            stageId     = "stage-usqocagm"
          },
        ]
        layout = {
          appearance = "VISIBLE"
          dataTableViewState = {
            autoTableHeight    = true
            columnFooterHeight = 0
            columnHeaderHeight = 29
            columnOrderOverride = {
              "0" = "revisionName"
              "1" = "valid_from"
              "2" = "valid_to"
            }
            columnVisibility = {}
            columnWidths = {
              metric_labels = 469
            }
            containerWidth               = 3023
            contextMenuXCoord            = null
            contextMenuYCoord            = null
            defaultColumnWidth           = 70
            disableFixedLeftColumns      = false
            eventLinkColumnId            = null
            fetchPageSize                = 100
            hasCalculatedColumnWidths    = false
            maxColumnWidth               = 600
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
            summaryColumnOrderOverride = {}
            summaryColumnVisibility    = {}
            tableHeight                = 0
            tableView                  = "TABULAR"
          }
          index = 11
          inputList = [
            {
              datasetId   = local.cloud_run_metrics
              inputName   = "request_count_from_42020094"
              inputRole   = "Data"
              isUserInput = false
            },
            {
              inputName   = "Revision Summary_-usqo"
              inputRole   = "Data"
              isUserInput = true
              stageId     = "stage-usqocagm"
            },
          ]
          label = "Request Throughput by Status"
          managers = [
            {
              id         = "gtlsdb5r"
              isDisabled = false
              type       = "Vis"
              vis = {
                config = {
                  areaFillType = "SolidFill"
                  legend = {
                    placement = "bottom"
                    type      = "list"
                    visible   = false
                  }
                  type                = "bar"
                  xAxisLabelPlacement = "horizontal"
                  xConfig = {
                    axisLabel = ""
                    visible   = true
                  }
                  yConfig = {
                    unit    = "requests/sec"
                    visible = true
                  }
                }
                source = {
                  table = {
                    groupFields = [
                      "response_code_class",
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
                    y             = "A_request_count_sum"
                  }
                  topK = {
                    k     = 50
                    order = "Top"
                    type  = "Auto"
                  }
                  type = "table"
                }
                type = "bar"
              }
            },
            {
              id                     = "79q2vxm3"
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
            wantBuckets = 200
          }
          selectedStepId = null
          serializable   = true
          steps = [
            {
              customName    = "Input"
              customSummary = "request_count_from_42020094"
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
              id                = "step-cpr3quyo"
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
              id       = "step-zrqazglm"
              index    = 1
              isPinned = false
              opal = [
                "exists revisionName=@\"Revision Summary_-usqo\".revisionName",
                "make_col",
                "  response_code_class:string(metric_labels.response_code_class)",
              ]
              queryPresentation = {}
              type              = "unknown"
            },
            {
              action = {
                params = {
                  expressionList = {
                    expressions = [
                      {
                        autoFrame = true
                        dataVis = {
                          config = {
                            areaFillType = "SolidFill"
                            legend = {
                              placement = "bottom"
                              type      = "list"
                              visible   = false
                            }
                            type                = "bar"
                            xAxisLabelPlacement = "horizontal"
                            xConfig = {
                              axisLabel = ""
                              visible   = true
                            }
                            yConfig = {
                              unit    = "requests/sec"
                              visible = true
                            }
                          }
                          source = {
                            table = {
                              groupFields = [
                                "response_code_class",
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
                              y             = "A_request_count_sum"
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
                          num  = 5
                          unit = "minute"
                        }
                        groupBy = [
                          "response_code_class",
                        ]
                        id = "metricExpression-ne3cfh7s"
                        inputSource = {
                          stageId = "stage-7ckxhvg3"
                        }
                        lookupActions = []
                        metric = {
                          aggregate   = "sum"
                          datasetId   = local.cloud_run_metrics
                          description = <<-EOT
                                                        Number of requests reaching the revision. Excludes requests that are not reaching your container instances for example, unauthorized requests or when maximum number of instances is reached. Captured at the end of the request lifecycle.
                                                    EOT
                          heuristics = {
                            __typename = "MetricHeuristics"
                            tags = [
                              {
                                __typename = "MetricTag"
                                column     = "revisionName"
                                path       = ""
                              },
                              {
                                __typename = "MetricTag"
                                column     = "metric_kind"
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
                                column     = "serviceAssetKey"
                                path       = ""
                              },
                              {
                                __typename = "MetricTag"
                                column     = "serviceName"
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
                                column     = "mean"
                                path       = ""
                              },
                              {
                                __typename = "MetricTag"
                                column     = "region"
                                path       = ""
                              },
                              {
                                __typename = "MetricTag"
                                column     = "metric_labels"
                                path       = "response_code"
                              },
                              {
                                __typename = "MetricTag"
                                column     = "metric_labels"
                                path       = "response_code_class"
                              },
                              {
                                __typename = "MetricTag"
                                column     = "metric_labels"
                                path       = "route"
                              },
                            ]
                            validLinkLabels = [
                              "Revision Instance",
                              "Service Instance",
                            ]
                          }
                          interval    = null
                          name        = "request_count"
                          rollup      = "rate"
                          type        = "delta"
                          unit        = "1"
                          userDefined = true
                        }
                        showAlignment  = true
                        showResolution = false
                        summaryMode    = "over-time"
                        type           = "metricExpression"
                        valueColumnId  = "A_request_count_sum"
                      },
                    ]
                    multiExpression = {
                      filterActions = []
                      id            = "multiExpression-akwar14f"
                      lookupActions = []
                      type          = "multiExpression"
                    }
                    selectedExpressionIds = [
                      "metricExpression-ne3cfh7s",
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
              id       = "step-atsrpfmf"
              index    = 2
              isPinned = false
              opal = [
                "align A_request_count_sum:rate(m(\"request_count\"))",
                "aggregate A_request_count_sum:sum(A_request_count_sum), group_by(response_code_class)",
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
                    exists revisionName=@"Revision Summary_-usqo".revisionName
                    make_col
                      response_code_class:string(metric_labels.response_code_class)
                    align A_request_count_sum:rate(m("request_count"))
                    aggregate A_request_count_sum:sum(A_request_count_sum), group_by(response_code_class)
                EOT
      },
      {
        id = "stage-h556rs4j"
        input = [
          {
            datasetId   = local.cloud_run_metrics
            datasetPath = null
            inputName   = "request_latencies_from_42020094"
            inputRole   = "Data"
            stageId     = null
          },
          {
            datasetId   = null
            datasetPath = null
            inputName   = "filter_Revision Instance"
            inputRole   = "Data"
            stageId     = "stage-uzxt2gjg"
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
              "2" = "revisionAssetKey"
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
            maxColumnWidth               = 600
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
          index     = 12
          inputList = []
          label     = "Request Latencies"
          managers = [
            {
              id         = "0scww01s"
              isDisabled = false
              type       = "Vis"
              vis = {
                config = {
                  color         = "Default"
                  hideGridLines = false
                  legend = {
                    placement = "bottom"
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
                    groupFields   = []
                    transformType = "none"
                    type          = "xy"
                    x             = "valid_from"
                    y             = "A_request_latencies_sum"
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
            wantBuckets = 200
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
              id                = "step-76i1q8yv"
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
                        alignDuration = {
                          num  = 5
                          unit = "minute"
                        }
                        autoFrame = true
                        dataVis = {
                          config = {
                            color         = "Default"
                            hideGridLines = false
                            legend = {
                              placement = "bottom"
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
                              groupFields   = []
                              transformType = "none"
                              type          = "xy"
                              x             = "valid_from"
                              y             = "A_request_latencies_sum"
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
                                  "revisionAssetKey",
                                ]
                                label = "Revision Instance"
                                srcFields = [
                                  "revisionAssetKey",
                                ]
                                targetDataset    = local.cloud_run_revision_instances
                                targetStageLabel = null
                                type             = "foreign"
                              }
                              joinInput = {
                                stageId = "stage-uzxt2gjg"
                              }
                            }
                            summary = null
                            type    = "ExistsInFilter"
                          },
                        ]
                        frameDuration = {
                          num  = 120
                          unit = "second"
                        }
                        groupBy = []
                        id      = "metricExpression-raxbbw33"
                        inputSource = {
                          datasetId = local.cloud_run_metrics
                        }
                        lookupActions = []
                        metric = {
                          aggregate   = "sum"
                          datasetId   = local.cloud_run_metrics
                          description = <<-EOT
                                                        Distribution of request latency in milliseconds reaching the revision. Latency is measured from when the request reaches the running container to when it exits. Notably, it does not include container startup latency.
                                                    EOT
                          heuristics = {
                            __typename = "MetricHeuristics"
                            tags = [
                              {
                                __typename = "MetricTag"
                                column     = "revisionAssetKey"
                                path       = ""
                              },
                              {
                                __typename = "MetricTag"
                                column     = "revisionName"
                                path       = ""
                              },
                              {
                                __typename = "MetricTag"
                                column     = "metric_kind"
                                path       = ""
                              },
                              {
                                __typename = "MetricTag"
                                column     = "project_id"
                                path       = ""
                              },
                              {
                                __typename = "MetricTag"
                                column     = "serviceAssetKey"
                                path       = ""
                              },
                              {
                                __typename = "MetricTag"
                                column     = "serviceName"
                                path       = ""
                              },
                              {
                                __typename = "MetricTag"
                                column     = "value_type"
                                path       = ""
                              },
                              {
                                __typename = "MetricTag"
                                column     = "region"
                                path       = ""
                              },
                              {
                                __typename = "MetricTag"
                                column     = "metric_labels"
                                path       = "response_code"
                              },
                              {
                                __typename = "MetricTag"
                                column     = "metric_labels"
                                path       = "response_code_class"
                              },
                              {
                                __typename = "MetricTag"
                                column     = "metric_labels"
                                path       = "route"
                              },
                            ]
                            validLinkLabels = [
                              "Revision Instance",
                              "Service Instance",
                            ]
                          }
                          interval    = "60000000000"
                          name        = "request_latencies"
                          rollup      = "avg"
                          type        = "delta"
                          unit        = "ms"
                          userDefined = true
                        }
                        metricLink = {
                          __typename = "ForeignKey"
                          dstFields = [
                            "revisionAssetKey",
                          ]
                          label = "Revision Instance"
                          srcFields = [
                            "revisionAssetKey",
                          ]
                          targetDataset    = local.cloud_run_revision_instances
                          targetStageLabel = null
                          type             = "foreign"
                        }
                        metricLinkInputSource = {
                          stageId = "stage-uzxt2gjg"
                        }
                        showAlignment  = true
                        showResolution = true
                        summaryMode    = "over-time"
                        type           = "metricExpression"
                        valueColumnId  = "A_request_latencies_sum"
                      },
                    ]
                    multiExpression = {
                      filterActions = []
                      id            = "multiExpression-2nezn6z5"
                      lookupActions = []
                      type          = "multiExpression"
                    }
                    selectedExpressionIds = [
                      "metricExpression-raxbbw33",
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
              id       = "step-b94ff54h"
              index    = 1
              isPinned = false
              opal = [
                "exists revisionAssetKey = @\"filter_Revision Instance\".revisionAssetKey",
                "align A_request_latencies_sum:avg(m(\"request_latencies\"))",
                "aggregate A_request_latencies_sum:sum(A_request_latencies_sum), group_by()",
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
                    exists revisionAssetKey = @"filter_Revision Instance".revisionAssetKey
                    align A_request_latencies_sum:avg(m("request_latencies"))
                    aggregate A_request_latencies_sum:sum(A_request_latencies_sum), group_by()
                EOT
      },
      {
        id = "stage-9eiha1ve"
        input = [
          {
            datasetId   = local.cloud_run_metrics
            datasetPath = null
            inputName   = "container_startup_latencies_from_42020094"
            inputRole   = "Data"
            stageId     = null
          },
          {
            datasetId   = null
            datasetPath = null
            inputName   = "filter_Revision Instance"
            inputRole   = "Data"
            stageId     = "stage-usqocagm"
          },
        ]
        layout = {
          appearance = "VISIBLE"
          dataTableViewState = {
            autoTableHeight    = true
            columnFooterHeight = 0
            columnHeaderHeight = 29
            columnOrderOverride = {
              "0" = "revisionName"
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
            maxColumnWidth               = 600
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
          index     = 13
          inputList = []
          label     = "Container Startup Latency"
          managers = [
            {
              id         = "wfsnr6nw"
              isDisabled = false
              type       = "Vis"
              vis = {
                config = {
                  areaFillType = "SolidFill"
                  legend = {
                    placement = "bottom"
                    type      = "list"
                    visible   = false
                  }
                  type                = "bar"
                  xAxisLabelPlacement = "horizontal"
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
                      [
                        "revisionName",
                      ],
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
                    y             = "A_container_startup_latencies_sum"
                  }
                  topK = {
                    k     = 50
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
            wantBuckets = 200
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
              id                = "step-lhh5x53j"
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
                        autoFrame = true
                        dataVis = {
                          config = {
                            areaFillType = "SolidFill"
                            legend = {
                              placement = "bottom"
                              type      = "list"
                              visible   = false
                            }
                            type                = "bar"
                            xAxisLabelPlacement = "horizontal"
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
                                [
                                  "revisionName",
                                ],
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
                              y             = "A_container_startup_latencies_sum"
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
                        filterActions = [
                          {
                            params = {
                              foreignKey = {
                                __typename = "ForeignKey"
                                dstFields = [
                                  "revisionName",
                                ]
                                label = "Revision Instance"
                                srcFields = [
                                  "revisionName",
                                ]
                                targetDataset    = local.cloud_run_revision_instances
                                targetStageLabel = null
                                type             = "foreign"
                              }
                              joinInput = {
                                stageId = "stage-usqocagm"
                              }
                            }
                            summary = null
                            type    = "ExistsInFilter"
                          },
                        ]
                        frameDuration = {
                          num  = 1
                          unit = "minute"
                        }
                        groupBy = [
                          [
                            "revisionName",
                          ],
                        ]
                        id = "metricExpression-gtbfkk7s"
                        inputSource = {
                          datasetId = local.cloud_run_metrics
                        }
                        lookupActions = []
                        metric = {
                          aggregate   = "sum"
                          datasetId   = local.cloud_run_metrics
                          description = <<-EOT
                                                        Distribution of time spent starting a new container instance in milliseconds.
                                                    EOT
                          heuristics = {
                            __typename = "MetricHeuristics"
                            tags = [
                              {
                                __typename = "MetricTag"
                                column     = "revisionName"
                                path       = ""
                              },
                              {
                                __typename = "MetricTag"
                                column     = "metric_kind"
                                path       = ""
                              },
                              {
                                __typename = "MetricTag"
                                column     = "project_id"
                                path       = ""
                              },
                              {
                                __typename = "MetricTag"
                                column     = "serviceAssetKey"
                                path       = ""
                              },
                              {
                                __typename = "MetricTag"
                                column     = "serviceName"
                                path       = ""
                              },
                              {
                                __typename = "MetricTag"
                                column     = "value_type"
                                path       = ""
                              },
                              {
                                __typename = "MetricTag"
                                column     = "region"
                                path       = ""
                              },
                            ]
                            validLinkLabels = [
                              "Revision Instance",
                              "Service Instance",
                            ]
                          }
                          interval    = "60000000000"
                          name        = "container_startup_latencies"
                          rollup      = "avg"
                          type        = "delta"
                          unit        = "ms"
                          userDefined = true
                        }
                        metricLink = {
                          __typename = "ForeignKey"
                          dstFields = [
                            "revisionName",
                          ]
                          label = "Revision Instance"
                          srcFields = [
                            "revisionName",
                          ]
                          targetDataset    = local.cloud_run_revision_instances
                          targetStageLabel = null
                          type             = "foreign"
                        }
                        metricLinkInputSource = {
                          stageId = "stage-usqocagm"
                        }
                        showAlignment  = true
                        showResolution = false
                        summaryMode    = "over-time"
                        type           = "metricExpression"
                        valueColumnId  = "A_container_startup_latencies_sum"
                      },
                    ]
                    multiExpression = {
                      filterActions = []
                      id            = "multiExpression-nah1r8er"
                      lookupActions = []
                      type          = "multiExpression"
                    }
                    selectedExpressionIds = [
                      "metricExpression-gtbfkk7s",
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
              id       = "step-hnzl3ni0"
              index    = 1
              isPinned = false
              opal = [
                "exists revisionName = @\"filter_Revision Instance\".revisionName",
                "align A_container_startup_latencies_sum:avg(m(\"container_startup_latencies\"))",
                "aggregate A_container_startup_latencies_sum:sum(A_container_startup_latencies_sum), group_by(revisionName)",
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
                    exists revisionName = @"filter_Revision Instance".revisionName
                    align A_container_startup_latencies_sum:avg(m("container_startup_latencies"))
                    aggregate A_container_startup_latencies_sum:sum(A_container_startup_latencies_sum), group_by(revisionName)
                EOT
      },
      {
        id = "stage-dlpgnpgk"
        input = [
          {
            datasetId   = local.cloud_run_logs
            datasetPath = null
            inputName   = "GCP/Cloud Run Logs"
            inputRole   = "Data"
            stageId     = null
          },
          {
            datasetId   = null
            datasetPath = null
            inputName   = "Revision Summary_-usqo"
            inputRole   = "Data"
            stageId     = "stage-usqocagm"
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
              latency = 349
            }
            containerWidth               = 3035
            contextMenuXCoord            = null
            contextMenuYCoord            = null
            defaultColumnWidth           = 70
            disableFixedLeftColumns      = false
            eventLinkColumnId            = null
            fetchPageSize                = 100
            hasCalculatedColumnWidths    = true
            maxColumnWidth               = 600
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
          index = 14
          inputList = [
            {
              datasetId   = local.cloud_run_logs
              inputName   = "GCP/Cloud Run Logs"
              inputRole   = "Data"
              isUserInput = false
            },
            {
              inputName   = "Revision Summary_-usqo"
              inputRole   = "Data"
              isUserInput = true
              stageId     = "stage-usqocagm"
            },
          ]
          label = "Slowest Requests (Top 100)"
          managers = [
            {
              id                     = "4gien97s"
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
              customSummary = "GCP/Cloud Run Logs"
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
              id                = "step-n0hsle1s"
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
              id       = "step-3nim3jpe"
              index    = 1
              isPinned = false
              opal = [
                "exists revisionName=@\"Revision Summary_-usqo\".revisionName",
                "",
                "filter logType!=\"stderr\" or severity!=\"ERROR\"",
                "",
                "pick_col",
                "  timestamp,",
                "  trace:trace,",
                "  remoteIp:string(httpRequest.remoteIp),",
                "  protocol:string(httpRequest.protocol),",
                "  userAgent:string(httpRequest.userAgent),",
                "  serverIp:string(httpRequest.serverIp),",
                "  requestMethod:string(httpRequest.requestMethod),",
                "  requestUrl:string(httpRequest.requestUrl),",
                "  requestSize:int64(httpRequest.requestSize),",
                "  status:string(httpRequest.status),",
                "  responseSize:int64(httpRequest.responseSize),",
                "  latency:latency",
                "",
                "sort desc(latency)",
                "limit 100",
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
                    exists revisionName=@"Revision Summary_-usqo".revisionName
                    
                    filter logType!="stderr" or severity!="ERROR"
                    
                    pick_col
                      timestamp,
                      trace:trace,
                      remoteIp:string(httpRequest.remoteIp),
                      protocol:string(httpRequest.protocol),
                      userAgent:string(httpRequest.userAgent),
                      serverIp:string(httpRequest.serverIp),
                      requestMethod:string(httpRequest.requestMethod),
                      requestUrl:string(httpRequest.requestUrl),
                      requestSize:int64(httpRequest.requestSize),
                      status:string(httpRequest.status),
                      responseSize:int64(httpRequest.responseSize),
                      latency:latency
                    
                    sort desc(latency)
                    limit 100
                EOT
      },
      {
        id = "stage-h2x6mnph"
        input = [
          {
            datasetId   = local.cloud_run_logs
            datasetPath = null
            inputName   = "GCP/Cloud Run Logs"
            inputRole   = "Data"
            stageId     = null
          },
          {
            datasetId   = null
            datasetPath = null
            inputName   = "Revision Summary_-usqo"
            inputRole   = "Data"
            stageId     = "stage-usqocagm"
          },
        ]
        layout = {
          appearance = "VISIBLE"
          dataTableViewState = {
            autoTableHeight     = true
            columnFooterHeight  = 0
            columnHeaderHeight  = 29
            columnOrderOverride = {}
            columnVisibility = {
              "Revision Instance" = false
              "Service Instance"  = false
            }
            columnWidths = {
              textPayload = 1721
            }
            containerWidth               = 3035
            contextMenuXCoord            = null
            contextMenuYCoord            = null
            defaultColumnWidth           = 70
            disableFixedLeftColumns      = false
            eventLinkColumnId            = null
            fetchPageSize                = 100
            hasCalculatedColumnWidths    = true
            maxColumnWidth               = 600
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
            summaryColumnOrderOverride = {}
            summaryColumnVisibility    = {}
            tableHeight                = 0
            tableView                  = "TABULAR"
          }
          index = 15
          inputList = [
            {
              datasetId   = local.cloud_run_logs
              inputName   = "GCP/Cloud Run Logs"
              inputRole   = "Data"
              isUserInput = false
            },
            {
              inputName   = "Revision Summary_-usqo"
              inputRole   = "Data"
              isUserInput = true
              stageId     = "stage-usqocagm"
            },
          ]
          label = "Error Logs"
          managers = [
            {
              id                     = "vqoiishj"
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
              customSummary = "GCP/Cloud Run Logs"
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
              id                = "step-pou6i99n"
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
              id       = "step-jll5g1we"
              index    = 1
              isPinned = false
              opal = [
                "exists revisionName=@\"Revision Summary_-usqo\".revisionName",
                "filter severity=\"ERROR\" or (logType=\"stderr\" and not contains(textPayload, \"INFO\"))",
                "",
                "set_col_visible",
                "  projectId:false,",
                "  location:false,",
                "  receiveTimestamp:false,",
                "  assetInventoryName:false,",
                "  logSource:false,",
                "  httpRequest:false,",
                "  requestMethod:false,",
                "  status:false,",
                "  responseSize:false,",
                "  latency:false,",
                "  requestUrl:false",
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
                    exists revisionName=@"Revision Summary_-usqo".revisionName
                    filter severity="ERROR" or (logType="stderr" and not contains(textPayload, "INFO"))
                    
                    set_col_visible
                      projectId:false,
                      location:false,
                      receiveTimestamp:false,
                      assetInventoryName:false,
                      logSource:false,
                      httpRequest:false,
                      requestMethod:false,
                      status:false,
                      responseSize:false,
                      latency:false,
                      requestUrl:false
                EOT
      },
    ]
  )
  workspace = local.workspace
}
