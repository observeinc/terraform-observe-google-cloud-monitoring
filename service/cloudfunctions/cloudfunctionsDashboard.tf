# terraform import observe_dashboard.cloud_functions_monitoring 41228004
locals {
  cloud_functions_monitoring = {
    layout = jsonencode(
      {
        gridLayout = {
          sections = [
            {
              card = {
                cardType = "section"
                closed   = false
                id       = "section-y1ei6ido"
                title    = "Dashboard Content"
              }
              items        = []
              lastModified = 1660768719914
            },
            {
              card = {
                cardType = "section"
                closed   = false
                id       = "card-izdoi58y"
                title    = "Overview"
              }
              items = [
                {
                  card = {
                    cardType = "stage"
                    id       = "card-ny6q89y0"
                    stageId  = "stage-j3zdwc7r"
                  }
                  layout = {
                    h           = 12
                    i           = "card-ny6q89y0"
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
                    id       = "card-vi2u9xub"
                    stageId  = "stage-ziasm4uf"
                  }
                  layout = {
                    h           = 12
                    i           = "card-vi2u9xub"
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
                    id       = "card-yfie6mjm"
                    stageId  = "stage-367tr336"
                  }
                  layout = {
                    h           = 12
                    i           = "card-yfie6mjm"
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
                id       = "card-z6nwx8ox"
                title    = "Monitoring"
              }
              items = [
                {
                  card = {
                    cardType = "stage"
                    id       = "card-zuqt7268"
                    stageId  = "stage-v80el32j"
                  }
                  layout = {
                    h           = 24
                    i           = "card-zuqt7268"
                    isDraggable = true
                    isResizable = true
                    moved       = false
                    static      = false
                    w           = 9
                    x           = 0
                    y           = 0
                  }
                },
                {
                  card = {
                    cardType = "stage"
                    id       = "card-do23e8ir"
                    stageId  = "stage-ifk44t3v"
                  }
                  layout = {
                    h           = 12
                    i           = "card-do23e8ir"
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
                    id       = "card-sxenabbe"
                    stageId  = "stage-ra65e7v9"
                  }
                  layout = {
                    h           = 12
                    i           = "card-sxenabbe"
                    isDraggable = true
                    isResizable = true
                    moved       = false
                    static      = false
                    w           = 3
                    x           = 9
                    y           = 12
                  }
                },
                {
                  card = {
                    cardType = "stage"
                    id       = "card-qslh7ns1"
                    stageId  = "stage-hmpks85q"
                  }
                  layout = {
                    h           = 17
                    i           = "card-qslh7ns1"
                    isDraggable = true
                    isResizable = true
                    moved       = false
                    static      = false
                    w           = 6
                    x           = 0
                    y           = 24
                  }
                },
                {
                  card = {
                    cardType = "stage"
                    id       = "card-6xvlifbk"
                    stageId  = "stage-f0whobgm"
                  }
                  layout = {
                    h           = 17
                    i           = "card-6xvlifbk"
                    isDraggable = true
                    isResizable = true
                    moved       = false
                    static      = false
                    w           = 6
                    x           = 6
                    y           = 24
                  }
                },
                {
                  card = {
                    cardType = "stage"
                    id       = "card-bcrd1nub"
                    stageId  = "stage-4jcselfm"
                  }
                  layout = {
                    h           = 15
                    i           = "card-bcrd1nub"
                    isDraggable = true
                    isResizable = true
                    moved       = false
                    static      = false
                    w           = 6
                    x           = 0
                    y           = 41
                  }
                },
                {
                  card = {
                    cardType = "stage"
                    id       = "card-e0wr5mqu"
                    stageId  = "stage-r41eirof"
                  }
                  layout = {
                    h           = 15
                    i           = "card-e0wr5mqu"
                    isDraggable = true
                    isResizable = true
                    moved       = false
                    static      = false
                    w           = 6
                    x           = 6
                    y           = 41
                  }
                },
              ]
            },
            {
              card = {
                cardType = "section"
                closed   = false
                id       = "card-oahpdg5k"
                title    = "Documentation"
              }
              items = [
                {
                  card = {
                    cardType = "text"
                    id       = "card-fizc14w0"
                    text     = <<-EOT
                                        # Google Cloud Functions
                                        Google Cloud Functions is a lightweight compute solution for developers to create single-purpose, stand-alone functions that respond to Cloud events without the need to manage a server or runtime environment.  With Observe, you can get quick insights into:
                                        * How frequently functions are being executed
                                        * How long function executions are taking
                                        * How much memory the functions are consuming
                                        * How much data is being sent from the functions
                                        From here, you can GraphLink to the Function Logs dataset to see the logs being generated by your Google Cloud Functions.
                                    EOT
                    title    = "Untitled Text"
                  }
                  layout = {
                    h           = 13
                    i           = "card-fizc14w0"
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
                    cardType = "text"
                    id       = "card-zn0rccpm"
                    text     = <<-EOT
                                        # Notes
                                                                                
                                        **Metrics**
                                                                                
                                        Enable data collection for this app by enabling Observe’s GCP app and adding `cloudfunctions.googleapis.com/` to the `include_metric_type_prefixes` option (this is added by default in the standard configuration).
                                    EOT
                    title    = "Untitled Text"
                  }
                  layout = {
                    h           = 13
                    i           = "card-zn0rccpm"
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
              lastModified = 1664995874123
            },
          ]
        }
        stageListLayout = {
          isModified = false
          parameters = [
            {
              controlledFilterStageId = "stage-1pcbjwdr"
              datasetId               = "${local.cloud_functions_instances}"
              defaultValue = {
                datasetref = {
                  datasetId = "${local.cloud_functions_instances}"
                }
              }
              emptyValueEncoding    = "null"
              emptyValueLabelOption = "null"
              id                    = "cloudFunctions"
              name                  = "cloudFunctions"
              valueKind = {
                type = "DATASETREF"
              }
              viewType = "input"
            },
          ]
          selectedStageId = "stage-4jcselfm"
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
    name = "Google/Cloud Functions Monitoring"
    parameters = jsonencode(
      [
        {
          defaultValue = {
            array = null
            bool  = null
            datasetref = {
              datasetId   = "${local.cloud_functions_instances}"
              datasetPath = null
              stageId     = null
            }
            float64 = null
            int64   = null
            link    = null
            string  = null
          }
          id   = "cloudFunctions"
          name = "cloudFunctions"
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
          id = "stage-hmpks85q"
          input = [
            {
              datasetId   = "${local.cloud_functions_instances}"
              datasetPath = null
              inputName   = "content-eng-1/Cloud Functions Function"
              inputRole   = "Data"
              stageId     = null
            },
            {
              datasetId   = null
              datasetPath = null
              inputName   = "cloudFunctions"
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
              containerWidth              = 1324
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
                datasetId   = "${local.cloud_functions_instances}"
                inputName   = "content-eng-1/Cloud Functions Function"
                inputRole   = "Data"
                isUserInput = false
              },
              {
                inputName   = "cloudFunctions"
                inputRole   = "Data"
                isUserInput = true
                parameterId = "cloudFunctions"
              },
            ]
            label = "Active Instances"
            managers = [
              {
                id                     = "c7h7bsmg"
                isDisabled             = true
                isResourceCountEnabled = false
                type                   = "Timescrubber"
              },
              {
                id         = "2xg7r566"
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
                      unit    = ""
                      visible = true
                    }
                  }
                  source = {
                    metric = {
                      aggregate   = "sum"
                      datasetId   = "${local.cloud_functions_metrics}"
                      description = "Auto Detected Metric"
                      groupBy = [
                        "project_id",
                        "region",
                        "function_name",
                      ]
                      heuristics = {
                        __typename = "MetricHeuristics"
                        tags = [
                          {
                            __typename = "MetricTag"
                            column     = "function_name"
                            path       = ""
                          },
                          {
                            __typename = "MetricTag"
                            column     = "region"
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
                            column     = "value_type"
                            path       = ""
                          },
                        ]
                        validLinkLabels = [
                          "Cloud Function",
                        ]
                      }
                      id = {
                        datasetId = "${local.cloud_functions_metrics}"
                        name      = "function_active_instances"
                      }
                      interval = null
                      link = {
                        __typename = "ForeignKey"
                        dstFields = [
                          "projectId",
                          "region",
                          "functionName",
                        ]
                        label = "Cloud Function"
                        srcFields = [
                          "project_id",
                          "region",
                          "function_name",
                        ]
                        targetDataset    = "${local.cloud_functions_instances}"
                        targetStageLabel = null
                        type             = "foreign"
                      }
                      name        = "function_active_instances"
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
                    assetInventoryName   = "count"
                    availableMemoryMb    = "count"
                    buildId              = "count"
                    buildName            = "count"
                    description          = "count"
                    dockerRegistry       = "count"
                    entryPoint           = "count"
                    environmentVariables = "count"
                    eventTrigger         = "count"
                    functionName         = "count"
                    httpsTrigger         = "count"
                    ingressSettings      = "count"
                    maxInstances         = "count"
                    name                 = "count"
                    region               = "count"
                    runtime              = "count"
                    serviceAccountEmail  = "count"
                    sourceArchiveUrl     = "count"
                    status               = "count"
                    timeout              = "count"
                    versionId            = "count"
                  }
                  datasetQueryId = {
                    ignoreCompress = false
                    queryId        = "q-xgxo054x"
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
                customSummary = "content-eng-1/Cloud Functions Function"
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
                id                = "step-r840e8lw"
                index             = 0
                isPinned          = false
                opal              = []
                queryPresentation = {}
                type              = "InputStep"
              },
              {
                customName    = "exists (custom)"
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
                id       = "step-c2i53j2r"
                index    = 1
                isPinned = false
                opal = [
                  "exists functionName = @cloudFunctions.functionName",
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
          pipeline = "exists functionName = @cloudFunctions.functionName"
        },
        {
          id = "stage-f0whobgm"
          input = [
            {
              datasetId   = "${local.cloud_functions_metrics}"
              datasetPath = null
              inputName   = "content-eng-1/Cloud Functions Function Metrics"
              inputRole   = "Data"
              stageId     = null
            },
            {
              datasetId   = null
              datasetPath = null
              inputName   = "cloudFunctions"
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
                "0" = "function_name"
                "1" = "project_id"
                "2" = "region"
                "3" = "_c_valid_from"
                "4" = "_c_valid_to"
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
            index = 1
            inputList = [
              {
                datasetId   = "${local.cloud_functions_metrics}"
                inputName   = "content-eng-1/Cloud Functions Function Metrics"
                inputRole   = "Data"
                isUserInput = false
              },
              {
                inputName   = "cloudFunctions"
                inputRole   = "Data"
                isUserInput = true
                parameterId = "cloudFunctions"
              },
            ]
            label = "Memory Used"
            managers = [
              {
                id                     = "yz32ki92"
                isDisabled             = true
                isResourceCountEnabled = false
                type                   = "Timescrubber"
              },
              {
                id         = "2abmwvaa"
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
                        [
                          "project_id",
                          "region",
                          "function_name",
                        ],
                      ]
                      statsBy = {
                        fn = "avg"
                      }
                      timechart = {
                        fn         = "avg"
                        resolution = "AUTO"
                      }
                      transformType = "timechart"
                      type          = "xy"
                      y             = "_ob_value"
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
                    metric        = "count"
                    metric_kind   = "count"
                    metric_labels = "count"
                    value         = "count"
                    value_type    = "count"
                  }
                  datasetQueryId = {
                    ignoreCompress = false
                    queryId        = "q-amw9xfv5"
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
                customSummary = "content-eng-1/Cloud Functions Function Metrics"
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
                id                = "step-oc9s5vgc"
                index             = 0
                isPinned          = false
                opal              = []
                queryPresentation = {}
                type              = "InputStep"
              },
              {
                customName    = "filter (custom)"
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
                id       = "step-hg0fvq0s"
                index    = 1
                isPinned = false
                opal = [
                  "filter metric = \"function_user_memory_bytes\"",
                  "exists project_id = @cloudFunctions.projectId",
                  "timechart options(empty_bins: true), duration(from_seconds(60)), _ob_value:avg(value), group_by(function_name, project_id, region)",
                  "make_col _ob_value:if_null(_ob_value, 0)",
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
                    filter metric = "function_user_memory_bytes"
                    exists project_id = @cloudFunctions.projectId
                    timechart options(empty_bins: true), duration(from_seconds(60)), _ob_value:avg(value), group_by(function_name, project_id, region)
                    make_col _ob_value:if_null(_ob_value, 0)
                EOT
        },
        {
          id = "stage-r41eirof"
          input = [
            {
              datasetId   = "${local.cloud_functions_instances}"
              datasetPath = null
              inputName   = "content-eng-1/Cloud Functions Function"
              inputRole   = "Data"
              stageId     = null
            },
            {
              datasetId   = null
              datasetPath = null
              inputName   = "cloudFunctions"
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
            index = 2
            inputList = [
              {
                datasetId   = "${local.cloud_functions_instances}"
                inputName   = "content-eng-1/Cloud Functions Function"
                inputRole   = "Data"
                isUserInput = false
              },
              {
                inputName   = "cloudFunctions"
                inputRole   = "Data"
                isUserInput = true
                parameterId = "cloudFunctions"
              },
            ]
            label = "Egress"
            managers = [
              {
                id                     = "c7h7bsmg"
                isDisabled             = true
                isResourceCountEnabled = false
                type                   = "Timescrubber"
              },
              {
                id         = "2xg7r566"
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
                      unit    = "bytes/second"
                      visible = true
                    }
                  }
                  source = {
                    metric = {
                      aggregate   = "sum"
                      datasetId   = "${local.cloud_functions_metrics}"
                      description = <<-EOT
                                            Outgoing network traffic of function, in bytes. Sampled every 60s and may take up to 240s to display.
                                        EOT
                      groupBy = [
                        "project_id",
                        "region",
                        "function_name",
                      ]
                      heuristics = {
                        __typename = "MetricHeuristics"
                        tags = [
                          {
                            __typename = "MetricTag"
                            column     = "function_name"
                            path       = ""
                          },
                          {
                            __typename = "MetricTag"
                            column     = "region"
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
                            column     = "value_type"
                            path       = ""
                          },
                          {
                            __typename = "MetricTag"
                            column     = "metric_labels"
                            path       = "memory"
                          },
                          {
                            __typename = "MetricTag"
                            column     = "metric_labels"
                            path       = "trigger_type"
                          },
                        ]
                        validLinkLabels = [
                          "Cloud Function",
                        ]
                      }
                      id = {
                        datasetId = "${local.cloud_functions_metrics}"
                        name      = "function_network_egress"
                      }
                      interval = 60000
                      link = {
                        __typename = "ForeignKey"
                        dstFields = [
                          "projectId",
                          "region",
                          "functionName",
                        ]
                        label = "Cloud Function"
                        srcFields = [
                          "project_id",
                          "region",
                          "function_name",
                        ]
                        targetDataset    = "${local.cloud_functions_instances}"
                        targetStageLabel = null
                        type             = "foreign"
                      }
                      name        = "function_network_egress"
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
              rollup      = {}
              wantBuckets = 400
            }
            renderType     = "TABLE"
            selectedStepId = null
            serializable   = true
            steps = [
              {
                customName    = "Input"
                customSummary = "content-eng-1/Cloud Functions Function"
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
                id                = "step-t50292ms"
                index             = 0
                isPinned          = false
                opal              = []
                queryPresentation = {}
                type              = "InputStep"
              },
              {
                customName    = "exists (custom)"
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
                id       = "step-8dc94c4u"
                index    = 1
                isPinned = false
                opal = [
                  "exists functionName = @cloudFunctions.functionName",
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
          pipeline = "exists functionName = @cloudFunctions.functionName"
        },
        {
          id = "stage-4jcselfm"
          input = [
            {
              datasetId   = "${local.cloud_functions_instances}"
              datasetPath = null
              inputName   = "content-eng-1/Cloud Functions Function"
              inputRole   = "Data"
              stageId     = null
            },
            {
              datasetId   = null
              datasetPath = null
              inputName   = "cloudFunctions"
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
            index = 3
            inputList = [
              {
                datasetId   = "${local.cloud_functions_instances}"
                inputName   = "content-eng-1/Cloud Functions Function"
                inputRole   = "Data"
                isUserInput = false
              },
              {
                inputName   = "cloudFunctions"
                inputRole   = "Data"
                isUserInput = true
                parameterId = "cloudFunctions"
              },
            ]
            label = "Execution Rate"
            managers = [
              {
                id                     = "c7h7bsmg"
                isDisabled             = true
                isResourceCountEnabled = false
                type                   = "Timescrubber"
              },
              {
                id         = "2xg7r566"
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
                      unit    = "#/second"
                      visible = true
                    }
                  }
                  source = {
                    metric = {
                      aggregate   = "sum"
                      datasetId   = "${local.cloud_functions_metrics}"
                      description = <<-EOT
                                            Count of function executions broken down by status. Sampled every 60s and may take up to 240s to display.
                                        EOT
                      groupBy = [
                        "project_id",
                        "region",
                        "function_name",
                      ]
                      heuristics = {
                        __typename = "MetricHeuristics"
                        tags = [
                          {
                            __typename = "MetricTag"
                            column     = "function_name"
                            path       = ""
                          },
                          {
                            __typename = "MetricTag"
                            column     = "region"
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
                            column     = "value_type"
                            path       = ""
                          },
                          {
                            __typename = "MetricTag"
                            column     = "metric_labels"
                            path       = "memory"
                          },
                          {
                            __typename = "MetricTag"
                            column     = "metric_labels"
                            path       = "status"
                          },
                          {
                            __typename = "MetricTag"
                            column     = "metric_labels"
                            path       = "trigger_type"
                          },
                        ]
                        validLinkLabels = [
                          "Cloud Function",
                        ]
                      }
                      id = {
                        datasetId = "${local.cloud_functions_metrics}"
                        name      = "function_execution_count"
                      }
                      interval = 60000
                      link = {
                        __typename = "ForeignKey"
                        dstFields = [
                          "projectId",
                          "region",
                          "functionName",
                        ]
                        label = "Cloud Function"
                        srcFields = [
                          "project_id",
                          "region",
                          "function_name",
                        ]
                        targetDataset    = "${local.cloud_functions_instances}"
                        targetStageLabel = null
                        type             = "foreign"
                      }
                      name        = "function_execution_count"
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
              rollup      = {}
              wantBuckets = 400
            }
            renderType     = "TABLE"
            selectedStepId = null
            serializable   = true
            steps = [
              {
                customName    = "Input"
                customSummary = "content-eng-1/Cloud Functions Function"
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
                id                = "step-3k47l8cd"
                index             = 0
                isPinned          = false
                opal              = []
                queryPresentation = {}
                type              = "InputStep"
              },
              {
                customName    = "exists (custom)"
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
                id       = "step-l22ux62w"
                index    = 1
                isPinned = false
                opal = [
                  "exists functionName = @cloudFunctions.functionName",
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
          pipeline = "exists functionName = @cloudFunctions.functionName"
        },
        {
          id = "stage-v80el32j"
          input = [
            {
              datasetId   = "${local.cloud_functions_metrics}"
              datasetPath = null
              inputName   = "content-eng-1/Cloud Functions Function Metrics"
              inputRole   = "Data"
              stageId     = null
            },
            {
              datasetId   = null
              datasetPath = null
              inputName   = "cloudFunctions"
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
                "0" = "function_name"
                "1" = "project_id"
                "2" = "region"
                "3" = "_c_valid_from"
                "4" = "_c_valid_to"
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
            index = 4
            inputList = [
              {
                datasetId   = "${local.cloud_functions_metrics}"
                inputName   = "content-eng-1/Cloud Functions Function Metrics"
                inputRole   = "Data"
                isUserInput = false
              },
              {
                inputName   = "cloudFunctions"
                inputRole   = "Data"
                isUserInput = true
                parameterId = "cloudFunctions"
              },
            ]
            label = "Execution Times"
            managers = [
              {
                id                     = "y1s4ybc5"
                isDisabled             = true
                isResourceCountEnabled = false
                type                   = "Timescrubber"
              },
              {
                id         = "vwk505t0"
                isDisabled = false
                type       = "Vis"
                vis = {
                  config = {
                    color         = "Blue"
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
                      unit    = "nanoseconds"
                      visible = true
                    }
                  }
                  source = {
                    table = {
                      groupFields = [
                        [
                          "project_id",
                          "region",
                          "function_name",
                        ],
                      ]
                      statsBy = {
                        fn = "avg"
                      }
                      timechart = {
                        fn         = "sum"
                        fnArgs     = []
                        resolution = "AUTO"
                      }
                      transformType = "timechart"
                      type          = "xy"
                      y             = "_ob_value"
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
                    metric        = "count"
                    metric_kind   = "count"
                    metric_labels = "count"
                    value         = "count"
                    value_type    = "count"
                  }
                  datasetQueryId = {
                    ignoreCompress = false
                    queryId        = "q-gd84ob9s"
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
                customSummary = "content-eng-1/Cloud Functions Function Metrics"
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
                id                = "step-gx6aqoqd"
                index             = 0
                isPinned          = false
                opal              = []
                queryPresentation = {}
                type              = "InputStep"
              },
              {
                columnStatsTable = {
                  columnFunctions = {
                    _ob_value     = "count"
                    metric        = "count"
                    metric_kind   = "count"
                    metric_labels = "count"
                    value         = "count"
                    value_type    = "count"
                  }
                  datasetQueryId = {
                    ignoreCompress = false
                    queryId        = "q-fv0fnloz"
                    resultKinds = [
                      "ResultKindSchema",
                      "ResultKindData",
                    ]
                    tableTypes = [
                      "TABULAR",
                    ]
                  }
                }
                customName    = "exists (custom)"
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
                id       = "step-iuuszoum"
                index    = 1
                isPinned = false
                opal = [
                  "exists function_name = @cloudFunctions.functionName",
                  "filter metric = \"function_execution_times\"",
                  "timechart options(empty_bins: true), duration(from_seconds(60)), _ob_value:avg(value), group_by(function_name, project_id, region)",
                  "make_col _ob_value:if_null(_ob_value, 0)",
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
                    exists function_name = @cloudFunctions.functionName
                    filter metric = "function_execution_times"
                    timechart options(empty_bins: true), duration(from_seconds(60)), _ob_value:avg(value), group_by(function_name, project_id, region)
                    make_col _ob_value:if_null(_ob_value, 0)
                EOT
        },
        {
          id = "stage-ra65e7v9"
          input = [
            {
              datasetId   = "${local.cloud_functions_logs}"
              datasetPath = null
              inputName   = "content-eng-1/Cloud Functions Function Logs"
              inputRole   = "Data"
              stageId     = null
            },
            {
              datasetId   = null
              datasetPath = null
              inputName   = "cloudFunctions"
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
              containerWidth              = 1745
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
                datasetId   = "${local.cloud_functions_logs}"
                inputName   = "content-eng-1/Cloud Functions Function Logs"
                inputRole   = "Data"
                isUserInput = false
              },
              {
                inputName   = "cloudFunctions"
                inputRole   = "Data"
                isUserInput = true
                parameterId = "cloudFunctions"
              },
            ]
            label = "Total Errors"
            managers = [
              {
                id                     = "a9roqvkt"
                isDisabled             = true
                isResourceCountEnabled = false
                type                   = "Timescrubber"
              },
              {
                id         = "4bh5johk"
                isDisabled = false
                type       = "Vis"
                vis = {
                  config = {
                    color           = "Default"
                    colorConfigType = "Threshold"
                    fieldConfig = {
                      unit    = null
                      visible = false
                    }
                    thresholds = {
                      startingColor = "Green"
                      thresholds = [
                        {
                          exceedsColor = "Default"
                          value        = 1
                        },
                      ]
                    }
                    type = "singlefield"
                  }
                  source = {
                    table = {
                      field = "is_error"
                      groupFields = [
                        "board_label",
                      ]
                      statsBy = {
                        fn     = "sum"
                        fnArgs = []
                      }
                      timechart = {
                        fn         = "avg"
                        fnArgs     = null
                        resolution = "AUTO"
                      }
                      transformType = "statsby"
                      type          = "singlefield"
                    }
                    type = "table"
                  }
                  type = "singlevalue"
                }
              },
              {
                id         = "0uyzp68x"
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
              wantBuckets = 400
            }
            renderType     = "TABLE"
            selectedStepId = null
            serializable   = true
            steps = [
              {
                columnStatsTable = {
                  columnFunctions = {
                    logName     = "count"
                    severity    = "count"
                    textPayload = "count"
                  }
                  datasetQueryId = {
                    ignoreCompress = false
                    queryId        = "q-r3nar0ob"
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
                customSummary = "content-eng-1/Cloud Functions Function Logs"
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
                id                = "step-s0wc8jns"
                index             = 0
                isPinned          = false
                opal              = []
                queryPresentation = {}
                type              = "InputStep"
              },
              {
                columnStatsTable = {
                  columnFunctions = {
                    logName     = "count"
                    severity    = "count"
                    textPayload = "count"
                  }
                  datasetQueryId = {
                    ignoreCompress = false
                    queryId        = "q-72tlhg03"
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
                id       = "step-zcm4u1rf"
                index    = 1
                isPinned = false
                opal = [
                  "exists functionName = @cloudFunctions.functionName, region = @cloudFunctions.region, projectId = @cloudFunctions.projectId",
                  "make_col ",
                  "\tboard_label: \"Total Errors\",",
                  "    is_error: if(severity = \"ERROR\", 1, 0)",
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
                    exists functionName = @cloudFunctions.functionName, region = @cloudFunctions.region, projectId = @cloudFunctions.projectId
                    make_col 
                    \tboard_label: "Total Errors",
                        is_error: if(severity = "ERROR", 1, 0)
                EOT
        },
        {
          id = "stage-ifk44t3v"
          input = [
            {
              datasetId   = "${local.cloud_functions_logs}"
              datasetPath = null
              inputName   = "content-eng-1/Cloud Functions Function Logs"
              inputRole   = "Data"
              stageId     = null
            },
            {
              datasetId   = null
              datasetPath = null
              inputName   = "cloudFunctions"
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
                board_label  = 206
                functionName = 224
                has_errors   = 129
                logName      = 263
                severity     = 124
              }
              containerWidth              = 1745
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
                datasetId   = "${local.cloud_functions_logs}"
                inputName   = "content-eng-1/Cloud Functions Function Logs"
                inputRole   = "Data"
                isUserInput = false
              },
              {
                inputName   = "cloudFunctions"
                inputRole   = "Data"
                isUserInput = true
                parameterId = "cloudFunctions"
              },
            ]
            label = "Functions With Errors"
            managers = [
              {
                id                     = "a9roqvkt"
                isDisabled             = true
                isResourceCountEnabled = false
                type                   = "Timescrubber"
              },
              {
                id         = "4bh5johk"
                isDisabled = false
                type       = "Vis"
                vis = {
                  config = {
                    color           = "Default"
                    colorConfigType = "Threshold"
                    fieldConfig = {
                      unit    = null
                      visible = false
                    }
                    thresholds = {
                      startingColor = "Green"
                      thresholds = [
                        {
                          exceedsColor = "Default"
                          value        = 1
                        },
                      ]
                    }
                    type = "singlefield"
                  }
                  source = {
                    table = {
                      field = "has_errors"
                      groupFields = [
                        "board_label",
                      ]
                      statsBy = {
                        fn     = "sum"
                        fnArgs = []
                      }
                      timechart = {
                        fn         = "avg"
                        fnArgs     = null
                        resolution = "AUTO"
                      }
                      transformType = "statsby"
                      type          = "singlefield"
                    }
                    type = "table"
                  }
                  type = "singlevalue"
                }
              },
              {
                id         = "0uyzp68x"
                isDisabled = true
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
              wantBuckets = 400
            }
            renderType     = "TABLE"
            selectedStepId = null
            serializable   = true
            steps = [
              {
                customName    = "Input"
                customSummary = "content-eng-1/Cloud Functions Function Logs"
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
                id                = "step-fdlrr341"
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
                    queryId        = "q-nlo21f3i"
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
                id       = "step-oj6x53pj"
                index    = 1
                isPinned = false
                opal = [
                  "exists functionName = @cloudFunctions.functionName, region = @cloudFunctions.region, projectId = @cloudFunctions.projectId",
                  "",
                  "// Check each message to see if it's an error",
                  "make_col ",
                  "\tboard_label: \"Functions With Errors\",",
                  "    is_error: if(severity = \"ERROR\", 1, 0)",
                  "",
                  "// aggregate the errors for each function",
                  "statsby has_errors: if(sum(is_error) > 0, 1, 0),",
                  "  group_by(functionName, board_label)",
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
                    exists functionName = @cloudFunctions.functionName, region = @cloudFunctions.region, projectId = @cloudFunctions.projectId
                    
                    // Check each message to see if it's an error
                    make_col 
                    \tboard_label: "Functions With Errors",
                        is_error: if(severity = "ERROR", 1, 0)
                    
                    // aggregate the errors for each function
                    statsby has_errors: if(sum(is_error) > 0, 1, 0),
                      group_by(functionName, board_label)
                EOT
        },
        {
          id = "stage-j3zdwc7r"
          input = [
            {
              datasetId   = null
              datasetPath = null
              inputName   = "cloudFunctions"
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
            index = 7
            inputList = [
              {
                inputName   = "cloudFunctions"
                inputRole   = "Data"
                isUserInput = false
                parameterId = "cloudFunctions"
              },
            ]
            label = "Projects"
            managers = [
              {
                id                     = "41t2deyj"
                isDisabled             = true
                isResourceCountEnabled = false
                type                   = "Timescrubber"
              },
              {
                id         = "r141h2e1"
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
                        "projectId",
                      ]
                      statsBy = {
                        fn = "count"
                      }
                      timechart = {
                        fn         = "count"
                        resolution = "AUTO"
                      }
                      transformType = "timechart"
                      type          = "keyvalue"
                      valueField    = "projectId"
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
              wantBuckets = 400
            }
            renderType     = "TABLE"
            selectedStepId = null
            serializable   = true
            steps = [
              {
                columnStatsTable = {
                  columnFunctions = {
                    assetInventoryName   = "count"
                    availableMemoryMb    = "count"
                    buildId              = "count"
                    buildName            = "count"
                    description          = "count"
                    dockerRegistry       = "count"
                    entryPoint           = "count"
                    environmentVariables = "count"
                    eventTrigger         = "count"
                    functionName         = "count"
                    httpsTrigger         = "count"
                    ingressSettings      = "count"
                    maxInstances         = "count"
                    name                 = "count"
                    region               = "count"
                    runtime              = "count"
                    serviceAccountEmail  = "count"
                    sourceArchiveUrl     = "count"
                    status               = "count"
                    timeout              = "count"
                    versionId            = "count"
                  }
                  datasetQueryId = {
                    ignoreCompress = false
                    queryId        = "q-i17kbruv"
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
                customSummary = "cloudFunctions"
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
                id                = "step-5sfi6ep1"
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
          id = "stage-367tr336"
          input = [
            {
              datasetId   = null
              datasetPath = null
              inputName   = "cloudFunctions"
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
            index = 8
            inputList = [
              {
                inputName   = "cloudFunctions"
                inputRole   = "Data"
                isUserInput = false
                parameterId = "cloudFunctions"
              },
            ]
            label = "Runtime"
            managers = [
              {
                id                     = "41t2deyj"
                isDisabled             = true
                isResourceCountEnabled = false
                type                   = "Timescrubber"
              },
              {
                id         = "r141h2e1"
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
                        "runtime",
                      ]
                      statsBy = {
                        fn = "count"
                      }
                      timechart = {
                        fn         = "count"
                        resolution = "AUTO"
                      }
                      transformType = "timechart"
                      type          = "keyvalue"
                      valueField    = "runtime"
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
              wantBuckets = 400
            }
            renderType     = "TABLE"
            selectedStepId = null
            serializable   = true
            steps = [
              {
                customName    = "Input"
                customSummary = "cloudFunctions"
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
                id                = "step-gdte94jw"
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
          id = "stage-ziasm4uf"
          input = [
            {
              datasetId   = null
              datasetPath = null
              inputName   = "cloudFunctions"
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
            index = 9
            inputList = [
              {
                inputName   = "cloudFunctions"
                inputRole   = "Data"
                isUserInput = false
                parameterId = "cloudFunctions"
              },
            ]
            label = "Region"
            managers = [
              {
                id                     = "41t2deyj"
                isDisabled             = true
                isResourceCountEnabled = false
                type                   = "Timescrubber"
              },
              {
                id         = "r141h2e1"
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
                        resolution = "AUTO"
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
              {
                id         = "hwdk03xa"
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
              wantBuckets = 400
            }
            renderType     = "TABLE"
            selectedStepId = null
            serializable   = true
            steps = [
              {
                customName    = "Input"
                customSummary = "cloudFunctions"
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
                id                = "step-neblalxm"
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
          id = "stage-1pcbjwdr"
          input = [
            {
              datasetId   = "${local.cloud_functions_instances}"
              datasetPath = null
              inputName   = "Google/Cloud Functions Instances"
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
                datasetId   = "${local.cloud_functions_instances}"
                inputName   = "Google/Cloud Functions Instances"
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
                customSummary = "Google/Cloud Functions Instances"
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
                id       = "step-17whd990"
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
    workspace = "o:::workspace:41028411"
  }
}

resource "observe_dashboard" "cloud_functions_monitoring_dashboard" {
  layout     = local.cloud_functions_monitoring.layout
  name       = format(var.name_format, "Monitoring")
  parameters = local.cloud_functions_monitoring.parameters
  stages     = local.cloud_functions_monitoring.stages
  workspace  = var.workspace.oid
}
