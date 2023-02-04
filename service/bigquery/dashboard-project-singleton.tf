resource "observe_dashboard" "bigquery_project_overview" {
  description = "Overview dashboard for Big Query project"
  layout = jsonencode(
    {
      gridLayout = {
        sections = [
          {
            card = {
              cardType = "section"
              closed   = false
              id       = "section-p756plg3"
              title    = "Dashboard Content"
            }
            items = [
              {
                card = {
                  cardType    = "parameter"
                  id          = "card-z5t18ol5"
                  parameterId = "project"
                }
                layout = {
                  h           = 4
                  i           = "card-z5t18ol5"
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
              id       = "card-pbesl7y4"
              title    = "Monitoring"
            }
            items = [
              {
                card = {
                  cardType = "stage"
                  id       = "card-av4mzka2"
                  stageId  = "stage-vp64h9fo"
                }
                layout = {
                  h           = 13
                  i           = "card-av4mzka2"
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
                  id       = "card-87pzlyyn"
                  stageId  = "stage-q74drd16"
                }
                layout = {
                  h           = 26
                  i           = "card-87pzlyyn"
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
                  id       = "card-v2xo819f"
                  stageId  = "stage-dqzbn1at"
                }
                layout = {
                  h           = 13
                  i           = "card-v2xo819f"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 4
                  x           = 8
                  y           = 13
                }
              },
            ]
          },
          {
            card = {
              cardType = "section"
              closed   = false
              id       = "section-wf7tlnra"
              title    = "Jobs"
            }
            items = [
              {
                card = {
                  cardType = "stage"
                  id       = "card-togmqwyj"
                  stageId  = "stage-40twjv29"
                }
                layout = {
                  h           = 15
                  i           = "card-togmqwyj"
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
                  cardType    = "parameter"
                  id          = "card-r0vfzuml"
                  parameterId = "job_type"
                }
                layout = {
                  h           = 4
                  i           = "card-r0vfzuml"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  resizeHandles = [
                    "e",
                  ]
                  static = false
                  w      = 4
                  x      = 0
                  y      = 15
                }
              },
              {
                card = {
                  cardType    = "parameter"
                  id          = "card-jpjwl1us"
                  parameterId = "priority"
                }
                layout = {
                  h           = 4
                  i           = "card-jpjwl1us"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  resizeHandles = [
                    "e",
                  ]
                  static = false
                  w      = 4
                  x      = 4
                  y      = 15
                }
              },
              {
                card = {
                  cardType    = "parameter"
                  id          = "card-8z47u4b6"
                  parameterId = "state"
                }
                layout = {
                  h           = 4
                  i           = "card-8z47u4b6"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  resizeHandles = [
                    "e",
                  ]
                  static = false
                  w      = 4
                  x      = 8
                  y      = 15
                }
              },
            ]
            lastModified = 1661981941309
          },
          {
            card = {
              cardType = "section"
              closed   = false
              id       = "card-zfkju3b3"
              title    = "Queries"
            }
            items = [
              {
                card = {
                  cardType = "stage"
                  id       = "card-7fwj1r3o"
                  stageId  = "stage-05ysgkw0"
                }
                layout = {
                  h           = 16
                  i           = "card-7fwj1r3o"
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
            lastModified = 1664545502297
          },
        ]
      }
      stageListLayout = {
        isModified = false
        parameters = [
          {
            allowEmpty = false
            defaultValue = {
              string = "query"
            }
            emptyValueEncoding    = "null"
            emptyValueLabelOption = "null"
            id                    = "job_type"
            name                  = "job_type"
            source                = "Stage"
            sourceColumnId        = "job_type"
            sourceStageId         = "stage-i99crhhz"
            valueKind = {
              type = "STRING"
            }
            viewType = "single-select"
          },
          {
            allowEmpty = false
            defaultValue = {
              string = "batch"
            }
            emptyValueEncoding    = "null"
            emptyValueLabelOption = "null"
            id                    = "priority"
            name                  = "priority"
            source                = "Stage"
            sourceColumnId        = "priority"
            sourceStageId         = "stage-i99crhhz"
            valueKind = {
              type = "STRING"
            }
            viewType = "single-select"
          },
          {
            allowEmpty = false
            defaultValue = {
              string = "running"
            }
            emptyValueEncoding    = "null"
            emptyValueLabelOption = "null"
            id                    = "state"
            name                  = "state"
            source                = "Stage"
            sourceColumnId        = "state"
            sourceStageId         = "stage-i99crhhz"
            valueKind = {
              type = "STRING"
            }
            viewType = "single-select"
          },
          {
            allowEmpty            = false
            emptyValueEncoding    = "null"
            emptyValueLabelOption = "null"
            id                    = "project"
            name                  = "project"
            valueKind = {
              keyForDatasetId = "${local.projects_collection_enabled}"
              type            = "LINK"
            }
            viewType = "resource-input"
          },
        ]
        selectedStageId = "stage-vp64h9fo"
        timeRange = {
          display               = "Today 10:01:45 - 14:01:45"
          endTime               = null
          millisFromCurrentTime = 14400000
          originalDisplay       = "Today 10:01:45 - 14:01:45"
          startTime             = null
          timeRangeInfo = {
            key  = "PRESETS"
            name = "Presets"
          }
          timeZone = null
        }
      }
    }
  )
  name = local.singleton_dashboard_name
  parameters = jsonencode(
    [
      {
        defaultValue = {
          string = "query"
        }
        id   = "job_type"
        name = "job_type"
        valueKind = {
          arrayItemType   = null
          keyForDatasetId = null
          type            = "STRING"
        }
      },
      {
        defaultValue = {
          string = "batch"
        }
        id   = "priority"
        name = "priority"
        valueKind = {
          arrayItemType   = null
          keyForDatasetId = null
          type            = "STRING"
        }
      },
      {
        defaultValue = {
          string = "running"
        }
        id   = "state"
        name = "state"
        valueKind = {
          arrayItemType   = null
          keyForDatasetId = null
          type            = "STRING"
        }
      },
      {
        defaultValue = null
        id           = "project"
        name         = "project"
        valueKind = {
          arrayItemType   = null
          keyForDatasetId = "41244830"
          type            = "LINK"
        }
      },
    ]
  )
  stages = jsonencode(
    [
      {
        id = "stage-05ysgkw0"
        input = [
          {
            datasetId   = "${local.bigquery_metrics}"
            datasetPath = null
            inputName   = "GCP/BigQuery Metrics"
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
          index = 0
          inputList = [
            {
              datasetId   = "${local.bigquery_metrics}"
              inputName   = "GCP/BigQuery Metrics"
              inputRole   = "Data"
              isUserInput = false
            },
          ]
          label = "Query Count"
          managers = [
            {
              id                     = "bzvf7qoy"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "dcp0a5k4"
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
                    unit    = ""
                    visible = true
                  }
                }
                source = {
                  metric = {
                    aggregate   = "sum"
                    datasetId   = "${local.bigquery_metrics}"
                    description = <<-EOT
                                            In flight queries. Sampled every 60s and may take up to 420s to display.
                                        EOT
                    groupBy = [
                      {
                        id   = "metric_labels"
                        path = "priority"
                      },
                    ]
                    heuristics = {
                      __typename = "MetricHeuristics"
                      tags = [
                        {
                          __typename = "MetricTag"
                          column     = "resource_type"
                          path       = ""
                        },
                        {
                          __typename = "MetricTag"
                          column     = "location"
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
                          column     = "dataset_id"
                          path       = ""
                        },
                        {
                          __typename = "MetricTag"
                          column     = "table_id"
                          path       = ""
                        },
                        {
                          __typename = "MetricTag"
                          column     = "metric_labels"
                          path       = "priority"
                        },
                      ]
                      validLinkLabels = [
                        "BigQuery Project",
                      ]
                    }
                    id = {
                      datasetId = "${local.bigquery_metrics}"
                      name      = "query_count"
                    }
                    interval    = 60000
                    name        = "query_count"
                    rollup      = "max"
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
            wantBuckets = 400
          }
          renderType     = "TABLE"
          selectedStepId = null
          serializable   = true
          steps = [
            {
              columnStatsTable = {
                columnFunctions = {
                  location      = "count"
                  metric        = "count"
                  metric_kind   = "count"
                  metric_labels = "count"
                  resource_type = "count"
                  value         = "count"
                  value_type    = "count"
                }
                datasetQueryId = {
                  ignoreCompress = false
                  queryId        = "q-0rmexp61"
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
              customSummary = "GCP/BigQuery Metrics"
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
              id                = "step-bom1530p"
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
        id = "stage-q74drd16"
        input = [
          {
            datasetId   = "${local.bigquery_metrics}"
            datasetPath = null
            inputName   = "GCP/BigQuery Metrics"
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
              "1" = "valid_from"
              "2" = "valid_to"
            }
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
          index = 1
          inputList = [
            {
              datasetId   = "${local.bigquery_metrics}"
              inputName   = "GCP/BigQuery Metrics"
              inputRole   = "Data"
              isUserInput = false
            },
          ]
          label = "Query Execution Times"
          managers = [
            {
              id                     = "2h3ojnv9"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "juwzxn9f"
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
                    unit    = "s"
                    visible = true
                  }
                }
                source = {
                  table = {
                    groupFields = [
                      "priority",
                    ]
                    statsBy       = {}
                    timechart     = {}
                    transformType = "none"
                    type          = "xy"
                    x             = "valid_from"
                    y             = "query_execution_times-npogc2u5"
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
                  location      = "count"
                  metric        = "count"
                  metric_kind   = "count"
                  metric_labels = "count"
                  resource_type = "count"
                  value         = "count"
                  value_type    = "count"
                }
                datasetQueryId = {
                  ignoreCompress = false
                  queryId        = "q-xg9zam0h"
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
              customSummary = "GCP/BigQuery Metrics"
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
              id                = "step-zxsje4o9"
              index             = 0
              isPinned          = false
              opal              = []
              queryPresentation = {}
              type              = "InputStep"
            },
            {
              columnStatsTable = {
                columnFunctions = {
                  location      = "count"
                  metric        = "count"
                  metric_kind   = "count"
                  metric_labels = "count"
                  resource_type = "count"
                  value         = "count"
                  value_type    = "count"
                }
                datasetQueryId = {
                  ignoreCompress = false
                  queryId        = "q-s6e00o6j"
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
              id       = "step-s78asi2t"
              index    = 1
              isPinned = false
              opal = [
                "filter metric = \"query_execution_times\" and resource_type = \"bigquery_project\" // filter out global stats",
              ]
              queryPresentation = {}
              type              = "unknown"
            },
            {
              action = {
                params = {
                  align = {
                    frame             = 60000
                    metricLinkStageId = "stage-pg4yd6q7"
                    metricsInfo = [
                      {
                        metric = {
                          aggregate   = "sum"
                          datasetId   = "${local.bigquery_metrics}"
                          description = <<-EOT
                                                        Distribution of execution times for queries that completed successfully within the last sampling interval. Incomplete and failed queries are not included. Sampled every 60s and may take up to 420s to display.
                                                    EOT
                          groupBy = [
                            {
                              id   = "metric_labels"
                              path = "priority"
                            },
                          ]
                          heuristics = {
                            __typename = "MetricHeuristics"
                            tags = [
                              {
                                __typename = "MetricTag"
                                column     = "resource_type"
                                path       = ""
                              },
                              {
                                __typename = "MetricTag"
                                column     = "location"
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
                                column     = "dataset_id"
                                path       = ""
                              },
                              {
                                __typename = "MetricTag"
                                column     = "table_id"
                                path       = ""
                              },
                              {
                                __typename = "MetricTag"
                                column     = "metric_labels"
                                path       = "priority"
                              },
                            ]
                            validLinkLabels = [
                              "BigQuery Project",
                            ]
                          }
                          id = {
                            datasetId = "${local.bigquery_metrics}"
                            name      = "query_execution_times"
                          }
                          interval    = 60000
                          name        = "query_execution_times"
                          rollup      = "avg"
                          type        = "gauge"
                          unit        = "s"
                          userDefined = true
                        }
                        valueColumnId = "query_execution_times-npogc2u5"
                      },
                    ]
                  }
                  reagg = {
                    metricsInfo = [
                      {
                        metric = {
                          aggregate   = "sum"
                          datasetId   = "${local.bigquery_metrics}"
                          description = <<-EOT
                                                        Distribution of execution times for queries that completed successfully within the last sampling interval. Incomplete and failed queries are not included. Sampled every 60s and may take up to 420s to display.
                                                    EOT
                          groupBy = [
                            {
                              id   = "metric_labels"
                              path = "priority"
                            },
                          ]
                          heuristics = {
                            __typename = "MetricHeuristics"
                            tags = [
                              {
                                __typename = "MetricTag"
                                column     = "resource_type"
                                path       = ""
                              },
                              {
                                __typename = "MetricTag"
                                column     = "location"
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
                                column     = "dataset_id"
                                path       = ""
                              },
                              {
                                __typename = "MetricTag"
                                column     = "table_id"
                                path       = ""
                              },
                              {
                                __typename = "MetricTag"
                                column     = "metric_labels"
                                path       = "priority"
                              },
                            ]
                            validLinkLabels = [
                              "BigQuery Project",
                            ]
                          }
                          id = {
                            datasetId = "${local.bigquery_metrics}"
                            name      = "query_execution_times"
                          }
                          interval    = 60000
                          name        = "query_execution_times"
                          rollup      = "avg"
                          type        = "gauge"
                          unit        = "s"
                          userDefined = true
                        }
                        valueColumnId = "query_execution_times-npogc2u5"
                      },
                    ]
                    topKParams = {
                      fields = [
                        "query_execution_times-npogc2u5",
                      ]
                      fn     = ""
                      fnArgs = []
                      k      = 100
                    }
                  }
                }
                summary = null
                type    = "MetricExpression"
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
              id       = "step-v3uvmum9"
              index    = 2
              isPinned = false
              opal = [
                "align frame(back: 1m), \"query_execution_times-npogc2u5\":avg(m(\"query_execution_times\"))",
                "aggregate \"query_execution_times-npogc2u5\":sum(@.\"query_execution_times-npogc2u5\"), group_by(string(metric_labels.priority))",
                "topk 100",
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
                    filter metric = "query_execution_times" and resource_type = "bigquery_project" // filter out global stats
                    align frame(back: 1m), "query_execution_times-npogc2u5":avg(m("query_execution_times"))
                    aggregate "query_execution_times-npogc2u5":sum(@."query_execution_times-npogc2u5"), group_by(string(metric_labels.priority))
                    topk 100
                EOT
      },
      {
        id = "stage-i99crhhz"
        input = [
          {
            datasetId   = "${local.bigquery_metrics}"
            datasetPath = null
            inputName   = "GCP/BigQuery Metrics"
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
              job_type = 141
            }
            containerWidth              = 1745
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
          index = 2
          inputList = [
            {
              datasetId   = "${local.bigquery_metrics}"
              inputName   = "GCP/BigQuery Metrics"
              inputRole   = "Data"
              isUserInput = false
            },
          ]
          label = "Jobs In Flight Parameters"
          managers = [
            {
              id                     = "ebwa0s3u"
              isDisabled             = false
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "g3ab9bsh"
              isDisabled = true
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
                    unit    = ""
                    visible = true
                  }
                }
                source = {
                  metric = {
                    aggregate   = "sum"
                    datasetId   = "${local.bigquery_metrics}"
                    description = <<-EOT
                                            In flight jobs. Sampled every 60s and may take up to 420s to display.
                                        EOT
                    groupBy     = []
                    heuristics = {
                      __typename = "MetricHeuristics"
                      tags = [
                        {
                          __typename = "MetricTag"
                          column     = "location"
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
                          column     = "resource_type"
                          path       = ""
                        },
                        {
                          __typename = "MetricTag"
                          column     = "value_type"
                          path       = ""
                        },
                        {
                          __typename = "MetricTag"
                          column     = "dataset_id"
                          path       = ""
                        },
                        {
                          __typename = "MetricTag"
                          column     = "table_id"
                          path       = ""
                        },
                        {
                          __typename = "MetricTag"
                          column     = "metric_labels"
                          path       = "state"
                        },
                        {
                          __typename = "MetricTag"
                          column     = "metric_labels"
                          path       = "job_type"
                        },
                        {
                          __typename = "MetricTag"
                          column     = "metric_labels"
                          path       = "priority"
                        },
                      ]
                      validLinkLabels = [
                        "BigQuery Project",
                      ]
                    }
                    id = {
                      datasetId = "${local.bigquery_metrics}"
                      name      = "job_num_in_flight"
                    }
                    interval    = 60000
                    name        = "job_num_in_flight"
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
                  location      = "count"
                  metric        = "count"
                  metric_kind   = "count"
                  metric_labels = "count"
                  resource_type = "count"
                  value         = "count"
                  value_type    = "count"
                }
                datasetQueryId = {
                  ignoreCompress = false
                  queryId        = "q-hmxczgjy"
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
              customSummary = "GCP/BigQuery Metrics"
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
              id                = "step-2ng487zj"
              index             = 0
              isPinned          = false
              opal              = []
              queryPresentation = {}
              type              = "InputStep"
            },
            {
              columnStatsTable = {
                columnFunctions = {
                  job_type      = "count"
                  location      = "count"
                  metric        = "count"
                  metric_kind   = "count"
                  metric_labels = "count"
                  priority      = "count"
                  resource_type = "count"
                  state         = "count"
                  value         = "count"
                  value_type    = "count"
                }
                datasetQueryId = {
                  ignoreCompress = false
                  queryId        = "q-aczomkx9"
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
              id       = "step-98mig2r1"
              index    = 1
              isPinned = false
              opal = [
                "filter resource_type = \"bigquery_project\" and metric = \"job_num_in_flight\"",
                "pick_col",
                "\ttimestamp,",
                "\tjob_type:string(metric_labels.job_type),",
                "    priority:string(metric_labels.priority),",
                "    state:string(metric_labels.state)",
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
                    filter resource_type = "bigquery_project" and metric = "job_num_in_flight"
                    pick_col
                    	timestamp,
                    	job_type:string(metric_labels.job_type),
                        priority:string(metric_labels.priority),
                        state:string(metric_labels.state)
                EOT
      },
      {
        id = "stage-40twjv29"
        input = [
          {
            datasetId   = "${local.bigquery_metrics}"
            datasetPath = null
            inputName   = "GCP/BigQuery Metrics"
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
          index = 3
          inputList = [
            {
              datasetId   = "${local.bigquery_metrics}"
              inputName   = "GCP/BigQuery Metrics"
              inputRole   = "Data"
              isUserInput = false
            },
          ]
          label = "Jobs in Flight"
          managers = [
            {
              id                     = "0titfbsc"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "m0etr1oh"
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
                    datasetId   = "${local.bigquery_metrics}"
                    description = <<-EOT
                                            In flight jobs. Sampled every 60s and may take up to 420s to display.
                                        EOT
                    groupBy     = []
                    heuristics = {
                      __typename = "MetricHeuristics"
                      tags = [
                        {
                          __typename = "MetricTag"
                          column     = "location"
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
                          column     = "resource_type"
                          path       = ""
                        },
                        {
                          __typename = "MetricTag"
                          column     = "value_type"
                          path       = ""
                        },
                        {
                          __typename = "MetricTag"
                          column     = "dataset_id"
                          path       = ""
                        },
                        {
                          __typename = "MetricTag"
                          column     = "table_id"
                          path       = ""
                        },
                        {
                          __typename = "MetricTag"
                          column     = "metric_labels"
                          path       = "state"
                        },
                        {
                          __typename = "MetricTag"
                          column     = "metric_labels"
                          path       = "job_type"
                        },
                        {
                          __typename = "MetricTag"
                          column     = "metric_labels"
                          path       = "priority"
                        },
                      ]
                      validLinkLabels = [
                        "BigQuery Project",
                      ]
                    }
                    id = {
                      datasetId = "${local.bigquery_metrics}"
                      name      = "job_num_in_flight"
                    }
                    interval    = 60000
                    name        = "job_num_in_flight"
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
            wantBuckets = 400
          }
          renderType     = "TABLE"
          selectedStepId = null
          serializable   = true
          steps = [
            {
              columnStatsTable = {
                columnFunctions = {
                  location      = "count"
                  metric        = "count"
                  metric_kind   = "count"
                  metric_labels = "count"
                  resource_type = "count"
                  value         = "count"
                  value_type    = "count"
                }
                datasetQueryId = {
                  ignoreCompress = false
                  queryId        = "q-x9yggj4b"
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
              customSummary = "GCP/BigQuery Metrics"
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
              id                = "step-jb0ovc1f"
              index             = 0
              isPinned          = false
              opal              = []
              queryPresentation = {}
              type              = "InputStep"
            },
            {
              columnStatsTable = {
                columnFunctions = {
                  location      = "count"
                  metric        = "count"
                  metric_kind   = "count"
                  metric_labels = "count"
                  resource_type = "count"
                  value         = "count"
                  value_type    = "count"
                }
                datasetQueryId = {
                  ignoreCompress = false
                  queryId        = "q-zi7gvygh"
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
              id       = "step-c2ms08d1"
              index    = 1
              isPinned = false
              opal = [
                "filter metric_labels.job_type = $job_type and metric_labels.priority = $priority and metric_labels.state = $state",
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
        pipeline = "filter metric_labels.job_type = $job_type and metric_labels.priority = $priority and metric_labels.state = $state"
      },
      {
        id = "stage-vp64h9fo"
        input = [
          {
            datasetId   = "${local.bigquery_job_logs}"
            datasetPath = null
            inputName   = "GCP/BigQuery Job Logs"
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
          index = 4
          inputList = [
            {
              datasetId   = "${local.bigquery_job_logs}"
              inputName   = "GCP/BigQuery Job Logs"
              inputRole   = "Data"
              isUserInput = false
            },
          ]
          label = "Succeeded Jobs"
          managers = [
            {
              id                     = "cxebh6e5"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "kewt1859"
              isDisabled = false
              type       = "Vis"
              vis = {
                config = {
                  color           = "Green"
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
                    field = "succeeded"
                    groupFields = [
                      "cardLabel",
                    ]
                    statsBy = {
                      fn = "avg"
                    }
                    timechart = {
                      fn         = "sum"
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
                  location = "count"
                  message  = "count"
                  severity = "count"
                }
                datasetQueryId = {
                  ignoreCompress = false
                  queryId        = "q-8kju7hac"
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
              customSummary = "GCP/BigQuery Job Logs"
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
              id                = "step-g0iwzqh8"
              index             = 0
              isPinned          = false
              opal              = []
              queryPresentation = {}
              type              = "InputStep"
            },
            {
              columnStatsTable = {
                columnFunctions = {
                  cardLabel = "count"
                  failed    = "count"
                  location  = "count"
                  message   = "count"
                  severity  = "count"
                  succeeded = "count"
                }
                datasetQueryId = {
                  ignoreCompress = false
                  queryId        = "q-p6pfbex1"
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
              id       = "step-khe5jusc"
              index    = 1
              isPinned = false
              opal = [
                "extract_regex string(message), /Summary\\: succeeded (?P<succeeded>\\d+) jobs, failed (?P<failed>\\d+) jobs\\./",
                "filter not is_null(succeeded)",
                "",
                "make_col succeeded: int64(succeeded),",
                "\tfailed: int64(failed),",
                "    cardLabel: string(\"Succeeded Jobs\")",
              ]
              queryPresentation = {}
              type              = "unknown"
            },
          ]
          type = "table"
          viewModel = {
            consoleValue = <<-EOT
                            extract_regex string(message), /Summary\: succeeded (?P<succeeded>\d+) jobs, failed (?P<failed>\d+) jobs\./
                            filter not is_null(succeeded)
                            
                            make_col succeeded: int64(succeeded),
                            	failed: int64(failed),
                                cardLabel: string("Succeeded Jobs")
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
                    extract_regex string(message), /Summary\: succeeded (?P<succeeded>\d+) jobs, failed (?P<failed>\d+) jobs\./
                    filter not is_null(succeeded)
                    
                    make_col succeeded: int64(succeeded),
                    	failed: int64(failed),
                        cardLabel: string("Succeeded Jobs")
                EOT
      },
      {
        id = "stage-dqzbn1at"
        input = [
          {
            datasetId   = "${local.bigquery_job_logs}"
            datasetPath = null
            inputName   = "GCP/BigQuery Job Logs"
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
              datasetId   = "${local.bigquery_job_logs}"
              inputName   = "GCP/BigQuery Job Logs"
              inputRole   = "Data"
              isUserInput = false
            },
          ]
          label = "Copy of Succeeded Jobs"
          managers = [
            {
              id                     = "cxebh6e5"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "kewt1859"
              isDisabled = false
              type       = "Vis"
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
                    field = "failed"
                    groupFields = [
                      "cardLabel",
                    ]
                    statsBy = {
                      fn = "avg"
                    }
                    timechart = {
                      fn         = "sum"
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
              customName    = "Input"
              customSummary = "GCP/BigQuery Job Logs"
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
              id                = "step-57e04298"
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
              id       = "step-8s8p4yls"
              index    = 1
              isPinned = false
              opal = [
                "extract_regex string(message), /Summary\\: succeeded (?P<succeeded>\\d+) jobs, failed (?P<failed>\\d+) jobs\\./",
                "filter not is_null(succeeded)",
                "",
                "make_col succeeded: int64(succeeded),",
                "\tfailed: int64(failed),",
                "    cardLabel: string(\"Failed Jobs\")",
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
                    extract_regex string(message), /Summary\: succeeded (?P<succeeded>\d+) jobs, failed (?P<failed>\d+) jobs\./
                    filter not is_null(succeeded)
                    
                    make_col succeeded: int64(succeeded),
                    	failed: int64(failed),
                        cardLabel: string("Failed Jobs")
                EOT
      },
    ]
  )
  workspace = local.workspace
}

