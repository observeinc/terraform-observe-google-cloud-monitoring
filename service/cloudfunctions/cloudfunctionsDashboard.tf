locals {
  workspace                     = var.workspace.oid
  dashboard_name                = format(var.name_format, "Monitoring")
  cloud_functions_instances     = observe_dataset.cloud_functions_instances.id
  cloud_functions_metrics       = one(observe_dataset.cloud_functions_metrics[*].id)
  cloud_functions_function_logs = observe_dataset.cloud_functions_function_logs.id
}
# terraform import observe_dashboard.cloud_functions_monitoring 41146418
resource "observe_dashboard" "cloud_functions_monitoring" {
  count = local.enable_metrics ? 1 : 0
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
                  y           = 10
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
                  y           = 22
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
                  y           = 22
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
                  y           = 39
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
                  y           = 39
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
                  h           = 11
                  i           = "card-fizc14w0"
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
            lastModified = 1660770078299
          },
        ]
      }
      stageListLayout = {
        isModified = false
        parameters = [
          {
            defaultValue = {
              datasetref = {
                datasetId = "${local.cloud_functions_instances}"
              }
            }
            id   = "cloudFunctions"
            name = "cloudFunctions"
            valueKind = {
              type = "DATASETREF"
            }
            viewType = "input"
          },
        ]
        selectedStageId = "stage-ifk44t3v"
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
          timeZone = null
        }
      }
    }
  )
  name = local.dashboard_name
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
              parentStageId          = "stage-hmpks85q"
              type                   = "Timescrubber"
            },
            {
              id            = "2xg7r566"
              isDisabled    = false
              parentStageId = "stage-hmpks85q"
              type          = "Vis"
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
            rollup = {}
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
              datasetQuery = null
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
              name              = "Input Step"
              opal              = []
              queryPresentation = {}
              renderType        = null
              summary           = "content-eng-1/Cloud Functions Function (${local.cloud_functions_instances})"
              type              = "InputStep"
            },
            {
              datasetQuery = null
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
              name     = "exists (custom)"
              opal = [
                "exists functionName = @cloudFunctions.functionName",
              ]
              queryPresentation = {}
              renderType        = null
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
            scriptTab     = "SCRIPT"
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
              parentStageId          = "stage-f0whobgm"
              type                   = "Timescrubber"
            },
            {
              id            = "2abmwvaa"
              isDisabled    = false
              parentStageId = "stage-f0whobgm"
              type          = "Vis"
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
            rollup = {}
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
              datasetQuery = null
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
              name              = "Input Step"
              opal              = []
              queryPresentation = {}
              renderType        = null
              summary           = "content-eng-1/Cloud Functions Function Metrics (${local.cloud_functions_metrics})"
              type              = "InputStep"
            },
            {
              datasetQuery = null
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
              name     = "filter (custom)"
              opal = [
                "filter metric = \"function_user_memory_bytes\"",
                "exists project_id = @cloudFunctions.projectId",
                "timechart options(empty_bins: true), duration(from_seconds(60)), _ob_value:avg(value), group_by(function_name, project_id, region)",
                "make_col _ob_value:if_null(_ob_value, 0)",
                "",
              ]
              queryPresentation = {}
              renderType        = null
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
            scriptTab     = "SCRIPT"
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
              parentStageId          = "stage-r41eirof"
              type                   = "Timescrubber"
            },
            {
              id            = "2xg7r566"
              isDisabled    = false
              parentStageId = "stage-r41eirof"
              type          = "Vis"
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
                    unit    = "By"
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
            rollup = {}
          }
          renderType     = "TABLE"
          selectedStepId = null
          serializable   = true
          steps = [
            {
              datasetQuery = null
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
              name              = "Input Step"
              opal              = []
              queryPresentation = {}
              renderType        = null
              summary           = "content-eng-1/Cloud Functions Function (${local.cloud_functions_instances})"
              type              = "InputStep"
            },
            {
              datasetQuery = null
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
              name     = "exists (custom)"
              opal = [
                "exists functionName = @cloudFunctions.functionName",
              ]
              queryPresentation = {}
              renderType        = null
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
            scriptTab     = "SCRIPT"
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
              parentStageId          = "stage-4jcselfm"
              type                   = "Timescrubber"
            },
            {
              id            = "2xg7r566"
              isDisabled    = false
              parentStageId = "stage-4jcselfm"
              type          = "Vis"
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
                    unit    = ""
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
            rollup = {}
          }
          renderType     = "TABLE"
          selectedStepId = null
          serializable   = true
          steps = [
            {
              datasetQuery = null
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
              name              = "Input Step"
              opal              = []
              queryPresentation = {}
              renderType        = null
              summary           = "content-eng-1/Cloud Functions Function (${local.cloud_functions_instances})"
              type              = "InputStep"
            },
            {
              datasetQuery = null
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
              name     = "exists (custom)"
              opal = [
                "exists functionName = @cloudFunctions.functionName",
              ]
              queryPresentation = {}
              renderType        = null
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
            scriptTab     = "SCRIPT"
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
              parentStageId          = "stage-v80el32j"
              type                   = "Timescrubber"
            },
            {
              id            = "vwk505t0"
              isDisabled    = false
              parentStageId = "stage-v80el32j"
              type          = "Vis"
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
            rollup = {}
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
              datasetQuery = null
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
              name              = "Input Step"
              opal              = []
              queryPresentation = {}
              renderType        = null
              summary           = "content-eng-1/Cloud Functions Function Metrics (${local.cloud_functions_metrics})"
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
              datasetQuery = null
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
              name     = "exists (custom)"
              opal = [
                "exists function_name = @cloudFunctions.functionName",
                "filter metric = \"function_execution_times\"",
                "timechart options(empty_bins: true), duration(from_seconds(60)), _ob_value:avg(value), group_by(function_name, project_id, region)",
                "make_col _ob_value:if_null(_ob_value, 0)",
                "",
              ]
              queryPresentation = {}
              renderType        = null
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
            scriptTab     = "SCRIPT"
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
            datasetId   = "${local.cloud_functions_function_logs}"
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
              datasetId   = "${local.cloud_functions_function_logs}"
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
              parentStageId          = "stage-ra65e7v9"
              type                   = "Timescrubber"
            },
            {
              id            = "4bh5johk"
              isDisabled    = false
              parentStageId = "stage-ra65e7v9"
              type          = "Vis"
              vis = {
                config = {
                  color           = "Red"
                  colorConfigType = "Color"
                  fieldConfig = {
                    unit    = null
                    visible = false
                  }
                  thresholds = null
                  type       = "singlefield"
                }
                source = {
                  table = {
                    field = "severity"
                    groupFields = [
                      "board_label",
                    ]
                    statsBy = {
                      fn = "count"
                    }
                    timechart = {
                      fn         = "count"
                      fnArgs     = null
                      resolution = "SINGLE"
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
              id            = "0uyzp68x"
              isDisabled    = false
              parentStageId = "stage-ra65e7v9"
              type          = "JsonTree"
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
              datasetQuery = null
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
              name              = "Input Step"
              opal              = []
              queryPresentation = {}
              renderType        = null
              summary           = "content-eng-1/Cloud Functions Function Logs (${local.cloud_functions_function_logs})"
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
                  queryId        = "q-3c4wiyrp"
                  resultKinds = [
                    "ResultKindSchema",
                    "ResultKindData",
                  ]
                  tableTypes = [
                    "TABULAR",
                  ]
                }
              }
              datasetQuery = null
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
              id       = "step-dwy2kxg1"
              index    = 1
              isPinned = false
              name     = "filter (custom)"
              opal = [
                "filter severity = \"ERROR\"",
                "exists functionName = @cloudFunctions.functionName, region = @cloudFunctions.region, projectId = @cloudFunctions.projectId",
                "make_col board_label: \"Total Errors\"",
              ]
              queryPresentation = {}
              renderType        = null
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
            scriptTab     = "SCRIPT"
            showTimeRuler = true
            stageTab      = "vis"
          }
        }
        params   = null
        pipeline = <<-EOT
                    filter severity = "ERROR"
                    exists functionName = @cloudFunctions.functionName, region = @cloudFunctions.region, projectId = @cloudFunctions.projectId
                    make_col board_label: "Total Errors"
                EOT
      },
      {
        id = "stage-ifk44t3v"
        input = [
          {
            datasetId   = "${local.cloud_functions_function_logs}"
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
              datasetId   = "${local.cloud_functions_function_logs}"
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
              parentStageId          = "stage-ifk44t3v"
              type                   = "Timescrubber"
            },
            {
              id            = "4bh5johk"
              isDisabled    = false
              parentStageId = "stage-ifk44t3v"
              type          = "Vis"
              vis = {
                config = {
                  color           = "Red"
                  colorConfigType = "Color"
                  fieldConfig = {
                    unit    = null
                    visible = false
                  }
                  thresholds = null
                  type       = "singlefield"
                }
                source = {
                  table = {
                    field = [
                      "projectId",
                      "region",
                      "functionName",
                    ]
                    groupFields = [
                      "board_label",
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
                    type          = "singlefield"
                  }
                  type = "table"
                }
                type = "singlevalue"
              }
            },
            {
              id            = "0uyzp68x"
              isDisabled    = true
              parentStageId = "stage-ifk44t3v"
              type          = "JsonTree"
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
              datasetQuery = null
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
              name              = "Input Step"
              opal              = []
              queryPresentation = {}
              renderType        = null
              summary           = "content-eng-1/Cloud Functions Function Logs (${local.cloud_functions_function_logs})"
              type              = "InputStep"
            },
            {
              columnStatsTable = {
                columnFunctions = {
                  board_label = "count"
                  logName     = "count"
                  severity    = "count"
                  textPayload = "count"
                }
                datasetQueryId = {
                  ignoreCompress = false
                  queryId        = "q-suou6nq4"
                  resultKinds = [
                    "ResultKindSchema",
                    "ResultKindData",
                  ]
                  tableTypes = [
                    "TABULAR",
                  ]
                }
              }
              datasetQuery = null
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
              id       = "step-5hia17mb"
              index    = 1
              isPinned = false
              name     = "filter (custom)"
              opal = [
                "filter severity = \"ERROR\"",
                "exists functionName = @cloudFunctions.functionName, region = @cloudFunctions.region, projectId = @cloudFunctions.projectId",
                "make_col board_label: \"Functions With Errors\"",
              ]
              queryPresentation = {}
              renderType        = null
              type              = "unknown"
            },
            {
              action = {
                params = {
                  columnIds = [
                    "projectId",
                    "region",
                    "functionName",
                  ]
                  columnTypes = [
                    "string",
                    "string",
                    "string",
                  ]
                  exclude    = true
                  filterVerb = "filter"
                  values = [
                    [
                      "terraflood-345116",
                      "us-west1",
                      "irdev-632-process-export",
                    ],
                  ]
                }
                summary = null
                type    = "FilterMulti"
              }
              columnStatsTable = {
                columnFunctions = {
                  board_label = "count"
                  logName     = "count"
                  severity    = "count"
                  textPayload = "count"
                }
                datasetQueryId = {
                  ignoreCompress = false
                  queryId        = "q-cyp8ezkf"
                  resultKinds = [
                    "ResultKindSchema",
                    "ResultKindData",
                  ]
                  tableTypes = [
                    "TABULAR",
                  ]
                }
              }
              datasetQuery = null
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
              id       = "step-k19pe4a9"
              index    = 2
              isPinned = false
              name     = "Filter Multiple Columns"
              opal = [
                "filter not (projectId = \"terraflood-345116\" and region = \"us-west1\" and functionName = \"irdev-632-process-export\")",
              ]
              queryPresentation = {}
              renderType        = null
              summary           = "terraflood-345116, us-west1, irdev-632-process-export"
              type              = "unknown"
            },
            {
              columnStatsTable = {
                columnFunctions = {
                  board_label = "count"
                  logName     = "count"
                  severity    = "count"
                  textPayload = "count"
                }
                datasetQueryId = {
                  ignoreCompress = false
                  queryId        = "q-lhtz7es4"
                  resultKinds = [
                    "ResultKindSchema",
                    "ResultKindData",
                  ]
                  tableTypes = [
                    "TABULAR",
                  ]
                }
              }
              datasetQuery = null
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
              id       = "step-ehy8ims1"
              index    = 3
              isPinned = false
              name     = " (custom)"
              opal = [
                "",
              ]
              queryPresentation = {}
              renderType        = null
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
            scriptTab     = "SCRIPT"
            showTimeRuler = true
            stageTab      = "vis"
          }
        }
        params   = null
        pipeline = <<-EOT
                    filter severity = "ERROR"
                    exists functionName = @cloudFunctions.functionName, region = @cloudFunctions.region, projectId = @cloudFunctions.projectId
                    make_col board_label: "Functions With Errors"
                    filter not (projectId = "terraflood-345116" and region = "us-west1" and functionName = "irdev-632-process-export")
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
              parentStageId          = "stage-j3zdwc7r"
              type                   = "Timescrubber"
            },
            {
              id            = "r141h2e1"
              isDisabled    = false
              parentStageId = "stage-j3zdwc7r"
              type          = "Vis"
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
            rollup = {}
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
              datasetQuery = null
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
              name              = "Input Step"
              opal              = []
              queryPresentation = {}
              renderType        = null
              summary           = "cloudFunctions (undefined)"
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
            scriptTab     = "SCRIPT"
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
              parentStageId          = "stage-367tr336"
              type                   = "Timescrubber"
            },
            {
              id            = "r141h2e1"
              isDisabled    = false
              parentStageId = "stage-367tr336"
              type          = "Vis"
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
            rollup = {}
          }
          renderType     = "TABLE"
          selectedStepId = null
          serializable   = true
          steps = [
            {
              datasetQuery = null
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
              name              = "Input Step"
              opal              = []
              queryPresentation = {}
              renderType        = null
              summary           = "cloudFunctions (undefined)"
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
            scriptTab     = "SCRIPT"
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
              parentStageId          = "stage-ziasm4uf"
              type                   = "Timescrubber"
            },
            {
              id            = "r141h2e1"
              isDisabled    = false
              parentStageId = "stage-ziasm4uf"
              type          = "Vis"
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
              id            = "hwdk03xa"
              isDisabled    = false
              parentStageId = "stage-ziasm4uf"
              type          = "JsonTree"
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
              datasetQuery = null
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
              name              = "Input Step"
              opal              = []
              queryPresentation = {}
              renderType        = null
              summary           = "cloudFunctions (undefined)"
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
            scriptTab     = "SCRIPT"
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

