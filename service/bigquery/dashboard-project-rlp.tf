resource "observe_dashboard" "bigquery_project" {
  description = "Overview dashboard for Big Query project"
  layout = jsonencode(
    {
      gridLayout = {
        sections = [
          {
            card = {
              cardType = "section"
              closed   = false
              id       = "section-5ym90y6e"
              title    = "Dashboard Content"
            }
            items        = []
            lastModified = 1660227782561
          },
          {
            card = {
              cardType = "section"
              closed   = false
              id       = "card-mlni3jeo"
              title    = "Monitoring"
            }
            items = [
              {
                card = {
                  cardType = "stage"
                  id       = "card-upoyfglg"
                  stageId  = "stage-s2699v7w"
                }
                layout = {
                  h           = 14
                  i           = "card-upoyfglg"
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
                  id       = "card-m01a6q5q"
                  stageId  = "stage-z0jt4uxu"
                }
                layout = {
                  h           = 28
                  i           = "card-m01a6q5q"
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
                  id       = "card-nbqpgof0"
                  stageId  = "stage-ddhb1f5d"
                }
                layout = {
                  h           = 14
                  i           = "card-nbqpgof0"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 4
                  x           = 8
                  y           = 14
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-xixbp53j"
                  stageId  = "stage-0gkg2i6q"
                }
                layout = {
                  h           = 19
                  i           = "card-xixbp53j"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 6
                  x           = 0
                  y           = 28
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-wyjb3o8u"
                  stageId  = "stage-c08qvrlg"
                }
                layout = {
                  h           = 19
                  i           = "card-wyjb3o8u"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 6
                  x           = 6
                  y           = 28
                }
              },
            ]
            lastModified = 1660228042747
          },
          {
            card = {
              cardType = "section"
              closed   = false
              id       = "card-4woox7zb"
              title    = "Documentation"
            }
            items = [
              {
                card = {
                  cardType = "text"
                  id       = "card-vu4t70e7"
                  text     = <<-EOT
                                        BigQuery is a serverless, multicloud data warehouse designed for business agility. With Observes BigQuery dashboard, you can get the following from at a glance:
                                        
                                        * Query Execution times to monitor performance
                                        * Number of jobs in flight filterable by job type, state, and priority
                                        * Number of bytes being processed
                                        
                                        From here you can GraphLink to:
                                        
                                        * BigQuery Logs
                                        * BigQuery Tables
                                        * BigQuery Datasets
                                    EOT
                  title    = "Untitled Text"
                }
                layout = {
                  h           = 14
                  i           = "card-vu4t70e7"
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
            lastModified = 1661978635801
          },
        ]
      }
      stageListLayout = {
        isModified = false
        parameters = [
          {
            controlledFilterStageId = "stage-u6a45ve1"
            datasetId               = "${local.projects_collection_enabled}"
            defaultValue = {
              datasetref = {
                datasetId = "${local.projects_collection_enabled}"
              }
            }
            emptyValueEncoding    = "null"
            emptyValueLabelOption = "null"
            id                    = "project"
            name                  = "project"
            valueKind = {
              type = "DATASETREF"
            }
            viewType = "input"
          },
        ]
        selectedStageId = "stage-c08qvrlg"
        timeRange = {
          display               = "Past 24 hours"
          endTime               = null
          millisFromCurrentTime = 86400000
          originalDisplay       = "Past 24 hours"
          startTime             = null
          timeRangeInfo = {
            key        = "PRESETS"
            name       = "Presets"
            presetType = "PAST_24_HOURS"
          }
          timeZone = null
        }
      }
    }
  )
  name = local.project_dashboard_name
  parameters = jsonencode(
    [
      {
        defaultValue = {
          array = null
          bool  = null
          datasetref = {
            datasetId   = "${local.projects_collection_enabled}"
            datasetPath = null
            stageId     = null
          }
          float64 = null
          int64   = null
          link    = null
          string  = null
        }
        id   = "project"
        name = "project"
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
        id = "stage-c08qvrlg"
        input = [
          {
            datasetId   = "${local.bigquery_metrics}"
            datasetPath = null
            inputName   = "content-eng-1/BigQuery Metrics"
            inputRole   = "Data"
            stageId     = null
          },
          {
            datasetId   = null
            datasetPath = null
            inputName   = "project"
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
              inputName   = "content-eng-1/BigQuery Metrics"
              inputRole   = "Data"
              isUserInput = false
            },
            {
              inputName   = "project"
              inputRole   = "Data"
              isUserInput = true
              parameterId = "project"
            },
          ]
          label = "Query Count"
          managers = [
            {
              id                     = "07vpi936"
              isDisabled             = true
              isResourceCountEnabled = false
              parentStageId          = "stage-c08qvrlg"
              type                   = "Timescrubber"
            },
            {
              id            = "jo62l7s8"
              isDisabled    = false
              parentStageId = "stage-c08qvrlg"
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
                  table = {
                    groupFields = [
                      "project_id",
                    ]
                    statsBy       = {}
                    timechart     = {}
                    transformType = "none"
                    type          = "xy"
                    x             = "valid_from"
                    y             = "query_count-zpoos07l"
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
                  metric           = "count"
                  metric_kind      = "count"
                  metric_kind_text = "count"
                  metric_labels    = "count"
                  metric_namespace = "count"
                  metric_type      = "count"
                  resource_labels  = "count"
                  resource_type    = "count"
                  value            = "count"
                  value_type       = "count"
                  value_type_text  = "count"
                }
                datasetQueryId = {
                  ignoreCompress = false
                  queryId        = "q-e612pr1d"
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
              customSummary = "content-eng-1/BigQuery Metrics"
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
              id                = "step-8hseg6mq"
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
              id       = "step-90qw1wof"
              index    = 1
              isPinned = false
              opal = [
                "exists project_id = @project.project_id",
                "set_label project_id",
              ]
              queryPresentation = {}
              type              = "unknown"
            },
            {
              action = {
                params = {
                  align = {
                    frame             = 60000
                    metricLinkStageId = "stage-ks563qwj"
                    metricsInfo = [
                      {
                        metric = {
                          aggregate   = "sum"
                          datasetId   = "${local.bigquery_metrics}"
                          description = <<-EOT
                                                        In flight queries. Sampled every 60s and may take up to 420s to display.
                                                    EOT
                          groupBy = [
                            "project_id",
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
                        valueColumnId = "query_count-zpoos07l"
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
                                                        In flight queries. Sampled every 60s and may take up to 420s to display.
                                                    EOT
                          groupBy = [
                            "project_id",
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
                        valueColumnId = "query_count-zpoos07l"
                      },
                    ]
                    topKParams = {
                      fields = [
                        "query_count-zpoos07l",
                      ]
                      fn     = ""
                      fnArgs = []
                      k      = 12
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
              id       = "step-8kvg2gu1"
              index    = 2
              isPinned = false
              opal = [
                "align frame(back: 1m), \"query_count-zpoos07l\":max(m(\"query_count\"))",
                "aggregate \"query_count-zpoos07l\":sum(@.\"query_count-zpoos07l\"), group_by(project_id)",
                "topk 12",
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
            scriptTab     = "SCRIPT"
            showTimeRuler = true
            stageTab      = "vis"
          }
        }
        params   = null
        pipeline = <<-EOT
                    exists project_id = @project.project_id
                    set_label project_id
                    align frame(back: 1m), "query_count-zpoos07l":max(m("query_count"))
                    aggregate "query_count-zpoos07l":sum(@."query_count-zpoos07l"), group_by(project_id)
                    topk 12
                EOT
      },
      {
        id = "stage-s2699v7w"
        input = [
          {
            datasetId   = "${local.bigquery_job_logs}"
            datasetPath = null
            inputName   = "content-eng-1/BigQuery Logs"
            inputRole   = "Data"
            stageId     = null
          },
          {
            datasetId   = null
            datasetPath = null
            inputName   = "project"
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
              protoPayload = 1077
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
          index = 1
          inputList = [
            {
              datasetId   = "${local.bigquery_job_logs}"
              inputName   = "content-eng-1/BigQuery Logs"
              inputRole   = "Data"
              isUserInput = true
            },
            {
              inputName   = "project"
              inputRole   = "Data"
              isUserInput = true
              parameterId = "project"
            },
          ]
          label = "Failed Jobs"
          managers = [
            {
              id                     = "ax34yuat"
              isDisabled             = true
              isResourceCountEnabled = false
              parentStageId          = "stage-s2699v7w"
              type                   = "Timescrubber"
            },
            {
              id            = "4b4mvipg"
              isDisabled    = false
              parentStageId = "stage-s2699v7w"
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
            rollup = {}
          }
          renderType     = "TABLE"
          selectedStepId = null
          serializable   = true
          steps = [
            {
              columnStatsTable = {
                columnFunctions = {
                  dataset_id   = "count"
                  insertId     = "count"
                  jsonPayload  = "count"
                  location     = "count"
                  logName      = "count"
                  messageId    = "count"
                  project_id   = "count"
                  protoPayload = "count"
                  severity     = "count"
                }
                datasetQueryId = {
                  ignoreCompress = false
                  queryId        = "q-dwb0b6gx"
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
              customSummary = "content-eng-1/BigQuery Logs"
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
              id                = "step-6r4t2y4l"
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
              id       = "step-qunpqmsc"
              index    = 1
              isPinned = false
              opal = [
                "exists project_id = @project.project_id",
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
            scriptTab     = "SCRIPT"
            showTimeRuler = true
            stageTab      = "vis"
          }
        }
        params   = null
        pipeline = <<-EOT
                    exists project_id = @project.project_id
                    extract_regex string(message), /Summary\: succeeded (?P<succeeded>\d+) jobs, failed (?P<failed>\d+) jobs\./
                    filter not is_null(succeeded)
                    
                    make_col succeeded: int64(succeeded),
                    	failed: int64(failed),
                        cardLabel: string("Failed Jobs")
                EOT
      },
      {
        id = "stage-ddhb1f5d"
        input = [
          {
            datasetId   = "${local.bigquery_job_logs}"
            datasetPath = null
            inputName   = "content-eng-1/BigQuery Logs"
            inputRole   = "Data"
            stageId     = null
          },
          {
            datasetId   = null
            datasetPath = null
            inputName   = "project"
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
              protoPayload = 1077
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
          index = 2
          inputList = [
            {
              datasetId   = "${local.bigquery_job_logs}"
              inputName   = "content-eng-1/BigQuery Logs"
              inputRole   = "Data"
              isUserInput = true
            },
            {
              inputName   = "project"
              inputRole   = "Data"
              isUserInput = true
              parameterId = "project"
            },
          ]
          label = "Succeeded Jobs"
          managers = [
            {
              id                     = "ax34yuat"
              isDisabled             = true
              isResourceCountEnabled = false
              parentStageId          = "stage-ddhb1f5d"
              type                   = "Timescrubber"
            },
            {
              id            = "4b4mvipg"
              isDisabled    = false
              parentStageId = "stage-ddhb1f5d"
              type          = "Vis"
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
            rollup = {}
          }
          renderType     = "TABLE"
          selectedStepId = null
          serializable   = true
          steps = [
            {
              customName    = "Input"
              customSummary = "content-eng-1/BigQuery Logs"
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
              id                = "step-9xi2b5hi"
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
                  queryId        = "q-f9ah9xsi"
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
              id       = "step-pee02a4n"
              index    = 1
              isPinned = false
              opal = [
                "exists project_id = @project.project_id",
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
                            exists project_id = @project.project_id
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
            scriptTab     = "SCRIPT"
            showTimeRuler = true
            stageTab      = "vis"
          }
        }
        params   = null
        pipeline = <<-EOT
                    exists project_id = @project.project_id
                    extract_regex string(message), /Summary\: succeeded (?P<succeeded>\d+) jobs, failed (?P<failed>\d+) jobs\./
                    filter not is_null(succeeded)
                    
                    make_col succeeded: int64(succeeded),
                    	failed: int64(failed),
                        cardLabel: string("Succeeded Jobs")
                EOT
      },
      {
        id = "stage-0gkg2i6q"
        input = [
          {
            datasetId   = "${local.bigquery_metrics}"
            datasetPath = null
            inputName   = "content-eng-1/BigQuery Metrics"
            inputRole   = "Data"
            stageId     = null
          },
          {
            datasetId   = null
            datasetPath = null
            inputName   = "project"
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
              "1" = "valid_from"
              "2" = "valid_to"
              "3" = "timestamp"
            }
            columnVisibility = {
              project_id = true
            }
            columnWidths = {
              project_id = 203
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
              cells = {}
              columnSelectSequence = [
                "BigQuery Project",
              ]
              columns = {
                "BigQuery Project" = true
              }
              highlightState = {}
              rows           = {}
              selectionType  = "column"
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
              inputName   = "content-eng-1/BigQuery Metrics"
              inputRole   = "Data"
              isUserInput = false
            },
            {
              inputName   = "project"
              inputRole   = "Data"
              isUserInput = true
              parameterId = "project"
            },
          ]
          label = "Jobs In Flight"
          managers = [
            {
              id                     = "vsptmr63"
              isDisabled             = true
              isResourceCountEnabled = false
              parentStageId          = "stage-0gkg2i6q"
              type                   = "Timescrubber"
            },
            {
              id            = "03ed2koa"
              isDisabled    = false
              parentStageId = "stage-0gkg2i6q"
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
                  table = {
                    groupFields = [
                      "project_id",
                    ]
                    statsBy       = {}
                    timechart     = {}
                    transformType = "none"
                    type          = "xy"
                    x             = "valid_from"
                    y             = "job_num_in_flight-v0g97dz0"
                  }
                  type = "table"
                }
                type = "timeseries"
              }
            },
            {
              id            = "yn15g8w8"
              isDisabled    = true
              parentStageId = "stage-0gkg2i6q"
              queryPresentation = {
                resultKinds = [
                  "ResultKindSchema",
                  "ResultKindStats",
                ]
              }
              stepId = "step-6s2tc0pf"
              type   = "StepOutput"
            },
            {
              columnId = "BigQuery Project"
              foreignKey = {
                dstFields = [
                  "project_id",
                ]
                label = "BigQuery Project"
                srcFields = [
                  "project_id",
                ]
                targetDataset    = "${local.projects_collection_enabled}"
                targetLabelField = "projectNumber"
                type             = "linked"
              }
              id            = "1kha8h07"
              isDisabled    = true
              parentStageId = "stage-0gkg2i6q"
              searchTerm    = ""
              type          = "FacetFilter"
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
                  metric           = "count"
                  metric_kind      = "count"
                  metric_kind_text = "count"
                  metric_labels    = "count"
                  metric_namespace = "count"
                  metric_type      = "count"
                  resource_labels  = "count"
                  resource_type    = "count"
                  value            = "count"
                  value_type       = "count"
                  value_type_text  = "count"
                }
                datasetQueryId = {
                  ignoreCompress = false
                  queryId        = "q-vllj6bvq"
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
              customSummary = "content-eng-1/BigQuery Metrics"
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
              id                = "step-6s2tc0pf"
              index             = 0
              isPinned          = false
              opal              = []
              queryPresentation = {}
              type              = "InputStep"
            },
            {
              columnStatsTable = {
                columnFunctions = {
                  location         = "count"
                  metric           = "count"
                  metric_kind      = "count"
                  metric_kind_text = "count"
                  metric_labels    = "count"
                  metric_namespace = "count"
                  metric_type      = "count"
                  resource_labels  = "count"
                  resource_type    = "count"
                  value            = "count"
                  value_type       = "count"
                  value_type_text  = "count"
                }
                datasetQueryId = {
                  ignoreCompress = false
                  queryId        = "q-bai12ib4"
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
              id       = "step-hgh0xk5i"
              index    = 1
              isPinned = false
              opal = [
                "exists project_id = @project.project_id",
                "filter resource_type = \"bigquery_project\"",
                "set_label project_id",
              ]
              queryPresentation = {}
              type              = "unknown"
            },
            {
              action = {
                params = {
                  align = {
                    frame             = 60000
                    metricLinkStageId = "stage-qqcty9vo"
                    metricsInfo = [
                      {
                        metric = {
                          aggregate   = "sum"
                          datasetId   = "${local.bigquery_metrics}"
                          description = <<-EOT
                                                        In flight jobs. Sampled every 60s and may take up to 420s to display.
                                                    EOT
                          groupBy = [
                            "project_id",
                          ]
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
                                path       = "priority"
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
                        valueColumnId = "job_num_in_flight-v0g97dz0"
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
                                                        In flight jobs. Sampled every 60s and may take up to 420s to display.
                                                    EOT
                          groupBy = [
                            "project_id",
                          ]
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
                                path       = "priority"
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
                        valueColumnId = "job_num_in_flight-v0g97dz0"
                      },
                    ]
                    topKParams = {
                      fields = [
                        "job_num_in_flight-v0g97dz0",
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
              id       = "step-pvzsck0u"
              index    = 2
              isPinned = false
              opal = [
                "align frame(back: 1m), \"job_num_in_flight-v0g97dz0\":avg(m(\"job_num_in_flight\"))",
                "aggregate \"job_num_in_flight-v0g97dz0\":sum(@.\"job_num_in_flight-v0g97dz0\"), group_by(project_id)",
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
            scriptTab     = "SCRIPT"
            showTimeRuler = true
            stageTab      = "vis"
          }
        }
        params   = null
        pipeline = <<-EOT
                    exists project_id = @project.project_id
                    filter resource_type = "bigquery_project"
                    set_label project_id
                    align frame(back: 1m), "job_num_in_flight-v0g97dz0":avg(m("job_num_in_flight"))
                    aggregate "job_num_in_flight-v0g97dz0":sum(@."job_num_in_flight-v0g97dz0"), group_by(project_id)
                    topk 100
                EOT
      },
      {
        id = "stage-u6a45ve1"
        input = [
          {
            datasetId   = "${local.projects_collection_enabled}"
            datasetPath = null
            inputName   = "GCP/Projects"
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
          index = 4
          inputList = [
            {
              datasetId   = "${local.projects_collection_enabled}"
              inputName   = "GCP/Projects"
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
              customSummary = "GCP/Projects"
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
              id       = "step-f4erwk1x"
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
            scriptTab     = "SCRIPT"
            showTimeRuler = true
            stageTab      = "table"
          }
        }
        params   = null
        pipeline = "// Filtered Dataset Controlled Filter Stage"
      },
      {
        id = "stage-z0jt4uxu"
        input = [
          {
            datasetId   = "${local.bigquery_metrics}"
            datasetPath = null
            inputName   = "GCP/BigQuery Metrics"
            inputRole   = "Data"
            stageId     = null
          },
          {
            datasetId   = null
            datasetPath = null
            inputName   = "project"
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
          index = 5
          inputList = [
            {
              datasetId   = "${local.bigquery_metrics}"
              inputName   = "GCP/BigQuery Metrics"
              inputRole   = "Data"
              isUserInput = false
            },
            {
              inputName   = "project"
              inputRole   = "Data"
              isUserInput = true
              parameterId = "project"
            },
          ]
          label = "Execution Times"
          managers = [
            {
              id                     = "w6dsd5ka"
              isDisabled             = true
              isResourceCountEnabled = false
              parentStageId          = "stage-z0jt4uxu"
              type                   = "Timescrubber"
            },
            {
              id            = "24r28n92"
              isDisabled    = false
              parentStageId = "stage-z0jt4uxu"
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
                    unit    = "s"
                    visible = true
                  }
                }
                source = {
                  table = {
                    groupFields = [
                      "project_id",
                    ]
                    statsBy       = {}
                    timechart     = {}
                    transformType = "none"
                    type          = "xy"
                    x             = "valid_from"
                    y             = "query_execution_times-azulb18k"
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
                  queryId        = "q-g84h20ig"
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
              id                = "step-2ath3t1v"
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
              id       = "step-pfqv94q0"
              index    = 1
              isPinned = false
              opal = [
                "exists project_id = @project.project_id",
                "align frame(back: 10m), \"query_execution_times-azulb18k\":avg(m(\"query_execution_times\"))",
                "aggregate \"query_execution_times-azulb18k\":sum(@.\"query_execution_times-azulb18k\"), group_by(project_id)",
                "topk 100",
                "set_label project_id",
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
            scriptTab     = "SCRIPT"
            showTimeRuler = true
            stageTab      = "vis"
          }
        }
        params   = null
        pipeline = <<-EOT
                    exists project_id = @project.project_id
                    align frame(back: 10m), "query_execution_times-azulb18k":avg(m("query_execution_times"))
                    aggregate "query_execution_times-azulb18k":sum(@."query_execution_times-azulb18k"), group_by(project_id)
                    topk 100
                    set_label project_id
                EOT
      },
    ]
  )
  workspace = local.workspace
}

