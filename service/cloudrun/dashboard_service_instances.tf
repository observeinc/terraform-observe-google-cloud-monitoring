
# terraform import observe_dashboard.copy_of_cloud_run_service_instance 42047241
resource "observe_dashboard" "copy_of_cloud_run_service_instance" {
  layout = jsonencode(
    {
      autoPack = true
      gridLayout = {
        sections = [
          {
            card = {
              cardType = "section"
              closed   = false
              id       = "card-vyyyksaj"
              title    = "Dashboard Content"
            }
            items = [
              {
                card = {
                  cardType    = "parameter"
                  id          = "card-fm77734o"
                  parameterId = "service"
                }
                layout = {
                  h           = 4
                  i           = "card-fm77734o"
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
              {
                card = {
                  cardType = "stage"
                  id       = "card-3431t16d"
                  stageId  = "stage-d3muqp6x"
                }
                layout = {
                  h           = 10
                  i           = "card-3431t16d"
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
                  id       = "card-51rjt82k"
                  stageId  = "stage-usqocagm"
                }
                layout = {
                  h           = 20
                  i           = "card-51rjt82k"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 6
                  x           = 3
                  y           = 4
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-nqwlkdyn"
                  stageId  = "stage-y49asn8v"
                }
                layout = {
                  h           = 10
                  i           = "card-nqwlkdyn"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 3
                  x           = 0
                  y           = 14
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-hc5wgq94"
                  stageId  = "stage-xfaje78y"
                }
                layout = {
                  h           = 16
                  i           = "card-hc5wgq94"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 3
                  x           = 6
                  y           = 24
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-v0eklhtm"
                  stageId  = "stage-cszzz5l0"
                }
                layout = {
                  h           = 16
                  i           = "card-v0eklhtm"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 3
                  x           = 3
                  y           = 24
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-h8h60d4q"
                  stageId  = "stage-6hdreo6b"
                }
                layout = {
                  h           = 16
                  i           = "card-h8h60d4q"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 3
                  x           = 0
                  y           = 24
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-tf5ars3h"
                  stageId  = "stage-2feq36jp"
                }
                layout = {
                  h           = 14
                  i           = "card-tf5ars3h"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 3
                  x           = 6
                  y           = 40
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-ovfahzg2"
                  stageId  = "stage-c9pakqs6"
                }
                layout = {
                  h           = 14
                  i           = "card-ovfahzg2"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 3
                  x           = 3
                  y           = 40
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-2dz6n03y"
                  stageId  = "stage-3461wl06"
                }
                layout = {
                  h           = 14
                  i           = "card-2dz6n03y"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 3
                  x           = 0
                  y           = 40
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-bqjniftb"
                  stageId  = "stage-rciwhao7"
                }
                layout = {
                  h           = 15
                  i           = "card-bqjniftb"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 3
                  x           = 6
                  y           = 54
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-r4dvq46w"
                  stageId  = "stage-wjaw71sv"
                }
                layout = {
                  h           = 15
                  i           = "card-r4dvq46w"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 3
                  x           = 3
                  y           = 54
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-jr9ayy5o"
                  stageId  = "stage-zxogck66"
                }
                layout = {
                  h           = 15
                  i           = "card-jr9ayy5o"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 3
                  x           = 0
                  y           = 54
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-k5tyzb2m"
                  stageId  = "stage-736a6lgq"
                }
                layout = {
                  h           = 12
                  i           = "card-k5tyzb2m"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 9
                  x           = 0
                  y           = 69
                }
              },
            ]
            lastModified = 1680628906701
          },
        ]
      }
      stageListLayout = {
        isModified = false
        parameters = [
          {
            emptyValueEncoding    = "null"
            emptyValueLabelOption = "null"
            id                    = "service"
            name                  = "Service "
            valueKind = {
              keyForDatasetId = local.cloud_run_service_instances
              type            = "LINK"
            }
            viewType = "resource-input"
          },
        ]
        selectedStageId = "stage-y49asn8v"
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
  name = local.cloud_run_service_dashboard_name
  parameters = jsonencode(
    [
      {
        defaultValue = null
        id           = "service"
        name         = "Service "
        valueKind = {
          arrayItemType   = null
          keyForDatasetId = local.cloud_run_service_instances
          type            = "LINK"
        }
      },
    ]
  )
  stages = jsonencode(
    [
      {
        id = "stage-61ojysx3"
        input = [
          {
            datasetId   = local.cloud_run_metrics
            datasetPath = null
            inputName   = "cloud_run_metrics"
            inputRole   = "Data"
            stageId     = null
          },
        ]
        layout = {
          appearance = "COLLAPSED"
          dataTableViewState = {
            autoTableHeight              = true
            columnFooterHeight           = 0
            columnHeaderHeight           = 29
            columnOrderOverride          = {}
            columnVisibility             = {}
            columnWidths                 = {}
            containerWidth               = 2143
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
          index = 0
          inputList = [
            {
              datasetId   = local.cloud_run_metrics
              inputName   = "cloud_run_metrics"
              inputRole   = "Data"
              isUserInput = false
            },
          ]
          label = "Base Metrics - Cloud_Run_Service_Instance"
          managers = [
            {
              id                     = "16hq23lo"
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
              customSummary = "cloud_run_metrics"
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
              id                = "step-v680deql"
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
              id       = "step-1aj8w2iu"
              index    = 1
              isPinned = false
              opal = [
                "filter serviceAssetKey=$service.serviceAssetKey",
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
                    filter serviceAssetKey=$service.serviceAssetKey
                EOT
      },
      {
        id = "stage-6hdreo6b"
        input = [
          {
            datasetId   = null
            datasetPath = null
            inputName   = "cloud_run_base_metrics_stage"
            inputRole   = "Data"
            stageId     = "stage-61ojysx3"
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
            columnVisibility             = {}
            columnWidths                 = {}
            containerWidth               = 2143
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
          index = 1
          inputList = [
            {
              inputName   = "cloud_run_base_metrics_stage"
              inputRole   = "Data"
              isUserInput = false
              stageId     = "stage-61ojysx3"
            },
          ]
          label = "Container Instance Count"
          managers = [
            {
              id                     = "oxazb61t"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "umehmgid"
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
                    bounds  = {}
                    unit    = ""
                    visible = true
                  }
                }
                source = {
                  table = {
                    groupFields = [
                      "metric_labels",
                    ]
                    transformType = "none"
                    type          = "xy"
                    x             = "valid_from"
                    y             = "A_container_instance_count_sum"
                  }
                  topK = {
                    k     = 16
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
            wantBuckets = 600
          }
          selectedStepId = null
          serializable   = true
          steps = [
            {
              customName    = "Input"
              customSummary = "cloud_run_base_metrics_stage"
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
              id                = "step-4z6e381a"
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
              id       = "step-oabg6j9d"
              index    = 1
              isPinned = false
              opal = [
                "filter serviceAssetKey=$service.serviceAssetKey",
                "//lookup serviceAssetKey = @service_name.serviceAssetKey, filter_service_name : @service_name.serviceName",
                "",
                "",
                "",
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
                        alignDuration = {
                          num  = 1
                          unit = "minute"
                        }
                        autoFrame      = false
                        autoResolution = true
                        dataVis = {
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
                              bounds  = {}
                              unit    = ""
                              visible = true
                            }
                          }
                          source = {
                            table = {
                              groupFields = [
                                "metric_labels",
                              ]
                              transformType = "none"
                              type          = "xy"
                              x             = "valid_from"
                              y             = "A_container_instance_count_sum"
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
                        filterActions    = []
                        frameDuration = {
                          num  = 1
                          unit = "minute"
                        }
                        groupBy = [
                          "metric_labels",
                        ]
                        id = "metricExpression-tq4lp1l4"
                        inputSource = {
                          stageId = "stage-6hdreo6b"
                        }
                        lookupActions = []
                        metric = {
                          aggregate   = "sum"
                          datasetId   = local.cloud_run_metrics
                          description = <<-EOT
                                                        Number of container instances that exist, broken down by state.
                                                    EOT
                          heuristics = {
                            __typename = "MetricHeuristics"
                            tags = [
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
                                path       = "state"
                              },
                            ]
                            validLinkLabels = null
                          }
                          interval    = null
                          name        = "container_instance_count"
                          rollup      = "sum"
                          type        = "gauge"
                          unit        = "1"
                          userDefined = true
                        }
                        showAlignment  = true
                        showResolution = true
                        summaryMode    = "over-time"
                        type           = "metricExpression"
                        valueColumnId  = "A_container_instance_count_sum"
                      },
                    ]
                    multiExpression = {
                      filterActions = []
                      id            = "multiExpression-990we41k"
                      lookupActions = []
                      type          = "multiExpression"
                    }
                    selectedExpressionIds = [
                      "metricExpression-tq4lp1l4",
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
              id       = "step-304xylx7"
              index    = 2
              isPinned = false
              opal = [
                "align frame(back: 1m), A_container_instance_count_sum:sum(m(\"container_instance_count\"))",
                "aggregate A_container_instance_count_sum:sum(A_container_instance_count_sum), group_by(metric_labels)",
              ]
              queryPresentation = {}
              type              = "unknown"
            },
          ]
          type = "table"
          viewModel = {
            consoleValue = <<-EOT
                            align A_container_instance_count_sum:sum(m("container_instance_count"))
                            aggregate A_container_instance_count_sum:sum(A_container_instance_count_sum), group_by(metric_labels)
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
                    filter serviceAssetKey=$service.serviceAssetKey
                    //lookup serviceAssetKey = @service_name.serviceAssetKey, filter_service_name : @service_name.serviceName
                    
                    
                    
                    align frame(back: 1m), A_container_instance_count_sum:sum(m("container_instance_count"))
                    aggregate A_container_instance_count_sum:sum(A_container_instance_count_sum), group_by(metric_labels)
                EOT
      },
      {
        id = "stage-cszzz5l0"
        input = [
          {
            datasetId   = null
            datasetPath = null
            inputName   = "cloud_run_base_metrics_stage"
            inputRole   = "Data"
            stageId     = "stage-61ojysx3"
          },
        ]
        layout = {
          appearance = "VISIBLE"
          dataTableViewState = {
            autoTableHeight    = false
            columnFooterHeight = 0
            columnHeaderHeight = 29
            columnOrderOverride = {
              "0" = "valid_from"
              "1" = "valid_to"
            }
            columnVisibility             = {}
            columnWidths                 = {}
            containerWidth               = 2143
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
            tableHeight                = 359
            tableView                  = "TABULAR"
          }
          index = 2
          inputList = [
            {
              inputName   = "cloud_run_base_metrics_stage"
              inputRole   = "Data"
              isUserInput = false
              stageId     = "stage-61ojysx3"
            },
          ]
          label = "Container CPU Utilization"
          managers = [
            {
              id         = "jmid12du"
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
                    unit    = "%"
                    visible = true
                  }
                }
                source = {
                  table = {
                    groupFields   = []
                    transformType = "none"
                    type          = "xy"
                    x             = "valid_from"
                    y             = "Avg_CPU_Utilization "
                  }
                  topK = {
                    type = "Auto"
                  }
                  type = "table"
                }
                type = "timeseries"
              }
            },
            {
              id                     = "d5cntx3r"
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
            wantBuckets = 600
          }
          selectedStepId = null
          serializable   = true
          steps = [
            {
              customName    = "Input"
              customSummary = "cloud_run_base_metrics_stage"
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
              id                = "step-251hedup"
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
              id       = "step-oabg6j9d"
              index    = 1
              isPinned = false
              opal = [
                "filter serviceAssetKey=$service.serviceAssetKey",
                "//lookup serviceAssetKey = @service_name.serviceAssetKey, filter_service_name : @service_name.serviceName",
                "",
                "",
                "",
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
                        autoFrame = false
                        dataVis = {
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
                              unit    = "%"
                              visible = true
                            }
                          }
                          source = {
                            table = {
                              groupFields = [
                                "serviceAssetKey",
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
                        disableAggregate = true
                        filterActions    = []
                        frameDuration = {
                          num  = 1
                          unit = "minute"
                        }
                        groupBy = []
                        id      = "metricExpression-xo0seiwr"
                        inputSource = {
                          stageId = "stage-cszzz5l0"
                        }
                        lookupActions = [
                          {
                            params = {
                              lookups = [
                                {
                                  fields = []
                                  fkPath = []
                                },
                              ]
                            }
                            summary = null
                            type    = "AddRelatedFields"
                          },
                        ]
                        metric = {
                          aggregate   = "ob-no-reagg"
                          datasetId   = local.cloud_run_metrics
                          description = <<-EOT
                                                        Container CPU utilization distribution across all container instances.
                                                    EOT
                          heuristics  = null
                          interval    = null
                          name        = "container_cpu_utilizations"
                          rollup      = "avg"
                          type        = "delta"
                          unit        = "10^2.%"
                          userDefined = true
                        }
                        showAlignment  = true
                        showResolution = false
                        summaryMode    = "over-time"
                        type           = "metricExpression"
                        valueColumnId  = "A_container_cpu_utilizations_sum"
                      },
                      {
                        dataVis = {
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
                              unit    = "%"
                              visible = true
                            }
                          }
                          source = {
                            table = {
                              groupFields   = []
                              transformType = "none"
                              type          = "xy"
                              x             = "valid_from"
                              y             = "Avg_CPU_Utilization "
                            }
                            topK = {
                              type = "Auto"
                            }
                            type = "table"
                          }
                          type = "timeseries"
                        }
                        filterActions = []
                        formula       = "A*100"
                        id            = "formulaExpression-uzulcpcf"
                        lookupActions = []
                        name          = "Avg_CPU_Utilization "
                        type          = "formulaExpression"
                        valueColumnId = "B_formula"
                      },
                    ]
                    multiExpression = {
                      filterActions = []
                      id            = "multiExpression-yn9g2l1t"
                      lookupActions = []
                      type          = "multiExpression"
                    }
                    selectedExpressionIds = [
                      "formulaExpression-uzulcpcf",
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
              id       = "step-i6tv6zm3"
              index    = 2
              isPinned = false
              opal = [
                "@A <- @ {",
                "    align frame(back: 1m), A_container_cpu_utilizations_sum:avg(m(\"container_cpu_utilizations\"))",
                "    make_event",
                "}",
                "@B <- @A {",
                "    aggregate A: any_not_null(A_container_cpu_utilizations_sum), group_by()",
                "    make_col \"Avg_CPU_Utilization \": A*100",
                "}",
                "<- @B {}",
              ]
              queryPresentation = {}
              type              = "unknown"
            },
          ]
          type = "table"
          viewModel = {
            consoleValue = <<-EOT
                            filter serviceAssetKey=$service.serviceAssetKey
                            //lookup serviceAssetKey = @service_name.serviceAssetKey, filter_service_name : @service_name.serviceName
                            
                            
                            
                            @A <- @ {
                                align A_container_cpu_utilizations_sum:avg(m("container_cpu_utilizations"))
                                aggregate A_container_cpu_utilizations_sum:sum(A_container_cpu_utilizations_sum), group_by(serviceAssetKey)
                                make_event
                            }
                            @B <- @A {
                                aggregate A: any_not_null(A_container_cpu_utilizations_sum), group_by(serviceAssetKey)
                                make_col B_formula: A*100
                            }
                            <- @B {}
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
                    filter serviceAssetKey=$service.serviceAssetKey
                    //lookup serviceAssetKey = @service_name.serviceAssetKey, filter_service_name : @service_name.serviceName
                    
                    
                    
                    @A <- @ {
                        align frame(back: 1m), A_container_cpu_utilizations_sum:avg(m("container_cpu_utilizations"))
                        make_event
                    }
                    @B <- @A {
                        aggregate A: any_not_null(A_container_cpu_utilizations_sum), group_by()
                        make_col "Avg_CPU_Utilization ": A*100
                    }
                    <- @B {}
                EOT
      },
      {
        id = "stage-c9pakqs6"
        input = [
          {
            datasetId   = null
            datasetPath = null
            inputName   = "cloud_run_base_metrics_stage"
            inputRole   = "Data"
            stageId     = "stage-61ojysx3"
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
            columnVisibility             = {}
            columnWidths                 = {}
            containerWidth               = 2143
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
              inputName   = "cloud_run_base_metrics_stage"
              inputRole   = "Data"
              isUserInput = false
              stageId     = "stage-61ojysx3"
            },
          ]
          label = "Request Count"
          managers = [
            {
              id                     = "uaoxd2es"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "yhs5wt7l"
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
                    axisLabel = "/ sec "
                    unit      = ""
                    visible   = true
                  }
                }
                source = {
                  table = {
                    groupFields = [
                      {
                        id   = "metric_labels"
                        path = "response_code"
                      },
                    ]
                    transformType = "none"
                    type          = "xy"
                    x             = "valid_from"
                    y             = "A_request_count_sum"
                  }
                  topK = {
                    k     = 16
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
            limit          = 1000
            linkify        = true
            loadEverything = false
            progressive    = true
            resultKinds = [
              "ResultKindSchema",
            ]
            rollup      = {}
            wantBuckets = 600
          }
          renderType     = "TABLE"
          selectedStepId = null
          serializable   = true
          steps = [
            {
              customName    = "Input"
              customSummary = "cloud_run_base_metrics_stage"
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
              id                = "step-z9xdx130"
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
              id       = "step-oabg6j9d"
              index    = 1
              isPinned = false
              opal = [
                "filter serviceAssetKey=$service.serviceAssetKey",
                "//lookup serviceAssetKey = @service_name.serviceAssetKey, filter_service_name : @service_name.serviceName",
                "",
                "",
                "",
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
                        autoFrame = false
                        dataVis = {
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
                              axisLabel = "/ sec "
                              unit      = ""
                              visible   = true
                            }
                          }
                          source = {
                            table = {
                              groupFields = [
                                {
                                  id   = "metric_labels"
                                  path = "response_code"
                                },
                              ]
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
                          type = "timeseries"
                        }
                        disableAggregate = false
                        filterActions    = []
                        frameDuration = {
                          num  = 1
                          unit = "minute"
                        }
                        groupBy = [
                          {
                            id   = "metric_labels"
                            path = "response_code"
                          },
                        ]
                        id = "metricExpression-jrvjhuxy"
                        inputSource = {
                          stageId = "stage-c9pakqs6"
                        }
                        lookupActions = []
                        metric = {
                          aggregate   = "sum"
                          datasetId   = local.cloud_run_metrics
                          description = <<-EOT
                                                        Number of requests reaching the revision. Excludes requests that are not reaching your container instances for example, unauthorized requests or when maximum number of instances is reached. Captured at the end of the request lifecycle.
                                                    EOT
                          heuristics  = null
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
                      {
                        dataVis = {
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
                              axisLabel = "/ sec "
                              unit      = ""
                              visible   = true
                            }
                          }
                          source = {
                            table = {
                              groupFields = [
                                "response_code",
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
                        formula       = ""
                        id            = "formulaExpression-030g0okr"
                        lookupActions = []
                        type          = "formulaExpression"
                        valueColumnId = "B_formula"
                      },
                    ]
                    multiExpression = {
                      filterActions = []
                      id            = "multiExpression-9hlarea7"
                      lookupActions = []
                      type          = "multiExpression"
                    }
                    selectedExpressionIds = [
                      "metricExpression-jrvjhuxy",
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
              id       = "step-2pgqctot"
              index    = 2
              isPinned = false
              opal = [
                "@A <- @ {",
                "    align frame(back: 1m), A_request_count_sum:rate(m(\"request_count\"))",
                "    aggregate A_request_count_sum:sum(A_request_count_sum), group_by(string(metric_labels.response_code))",
                "}",
                "@B <- @ {",
                "}",
                "<- @A {}",
              ]
              queryPresentation = {}
              type              = "unknown"
            },
          ]
          type = "table"
          viewModel = {
            consoleValue = <<-EOT
                            filter serviceAssetKey=$service.serviceAssetKey
                            //lookup serviceAssetKey = @service_name.serviceAssetKey, filter_service_name : @service_name.serviceName
                            
                            
                            
                            @A <- @ {
                                align A_request_count_sum:avg(m("request_count"))
                                aggregate A_request_count_sum:sum(A_request_count_sum), group_by(string(metric_labels.response_code))
                            }
                            @B <- @ {
                            }
                            <- @A {}
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
                    filter serviceAssetKey=$service.serviceAssetKey
                    //lookup serviceAssetKey = @service_name.serviceAssetKey, filter_service_name : @service_name.serviceName
                    
                    
                    
                    @A <- @ {
                        align frame(back: 1m), A_request_count_sum:rate(m("request_count"))
                        aggregate A_request_count_sum:sum(A_request_count_sum), group_by(string(metric_labels.response_code))
                    }
                    @B <- @ {
                    }
                    <- @A {}
                EOT
      },
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
              container        = false
              location         = false
              project_id       = false
              revisionAssetKey = false
              serviceAssetKey  = false
              serviceName      = false
              serviceUid       = false
            }
            columnWidths = {
              "CloudSQL Instance"  = 102
              containerConcurrency = 126
              containerPort        = 87
            }
            containerWidth               = 2143
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
            rowHeaderWidth               = 33
            rowHeights                   = {}
            rowSizeIncrement             = 1
            scrollToColumn               = "containerPort"
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
          label = "Revisions Summary"
          managers = [
            {
              id                     = "w9bstvl5"
              isDisabled             = false
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "8s7g4fcl"
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
              id       = "step-uy7kmtd1"
              index    = 1
              isPinned = false
              opal = [
                "filter serviceAssetKey=$service.serviceAssetKey",
                "",
                "make_col cpuLimit:string(container.resources.limits.cpu),",
                "    memoryLimit:string(container.resources.limits.memory),",
                "    containerPort:int64(container.ports[0].containerPort),",
                "    name:string(container.ports[0].name)",
              ]
              queryPresentation = {}
              type              = "unknown"
            },
          ]
          type = "table"
          viewModel = {
            consoleValue = <<-EOT
                            filter serviceAssetKey=$service.serviceAssetKey
                            
                            make_col cpuLimit:string(container.resources.limits.cpu),
                                memoryLimit:string(container.resources.limits.memory),
                                containerPort:int64(container.ports[0].containerPort),
                                name:string(container.ports[0].name)
                        EOT
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
                    filter serviceAssetKey=$service.serviceAssetKey
                    
                    make_col cpuLimit:string(container.resources.limits.cpu),
                        memoryLimit:string(container.resources.limits.memory),
                        containerPort:int64(container.ports[0].containerPort),
                        name:string(container.ports[0].name)
                EOT
      },
      {
        id = "stage-2feq36jp"
        input = [
          {
            datasetId   = null
            datasetPath = null
            inputName   = "cloud_run_base_metrics_stage"
            inputRole   = "Data"
            stageId     = "stage-61ojysx3"
          },
        ]
        layout = {
          appearance = "VISIBLE"
          dataTableViewState = {
            autoTableHeight    = false
            columnFooterHeight = 0
            columnHeaderHeight = 29
            columnOrderOverride = {
              "0" = "valid_from"
              "1" = "serviceAssetKey"
              "2" = "valid_to"
            }
            columnVisibility             = {}
            columnWidths                 = {}
            containerWidth               = 2143
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
            tableHeight                = 444
            tableView                  = "TABULAR"
          }
          index = 5
          inputList = [
            {
              inputName   = "cloud_run_base_metrics_stage"
              inputRole   = "Data"
              isUserInput = false
              stageId     = "stage-61ojysx3"
            },
          ]
          label = "Request Latency"
          managers = [
            {
              id                     = "4hko71vc"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "6ejbfgvh"
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
                    unit    = "milliseconds"
                    visible = true
                  }
                }
                source = {
                  table = {
                    groupFields = [
                      "expression",
                    ]
                    transformType = "none"
                    type          = "xy"
                    x             = "valid_from"
                    y             = "value"
                  }
                  topK = {
                    k    = 16
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
            limit          = 1000
            linkify        = true
            loadEverything = false
            progressive    = true
            resultKinds = [
              "ResultKindSchema",
            ]
            rollup      = {}
            wantBuckets = 600
          }
          renderType     = "TABLE"
          selectedStepId = null
          serializable   = true
          steps = [
            {
              customName    = "Input"
              customSummary = "cloud_run_base_metrics_stage"
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
              id                = "step-wkm7adl1"
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
              id       = "step-jnvppp5i"
              index    = 1
              isPinned = false
              opal = [
                "@A <- @ {",
                "    make_col expression:\"P99\"",
                "    align frame(back: 1m), value:avg(m(\"request_latencies\"))",
                "    aggregate value:percentile(value, .99), group_by(expression)",
                "    make_event",
                "}",
                "@B <- @{",
                "    make_col expression:\"P95\"",
                "    align frame(back: 1m), value:avg(m(\"request_latencies\"))",
                "    aggregate value:percentile(value, .95), group_by(expression)",
                "    make_event",
                "}",
                "@C <- @ {",
                "    make_col expression:\"P50\"",
                "    align frame(back: 1m), value:avg(m(\"request_latencies\"))",
                "    aggregate value:percentile(value, .50), group_by(expression)",
                "    make_event",
                "}",
                "@A_B_C <- @A {",
                "    union @B, @C",
                "    aggregate value:any_not_null(value), group_by(expression)",
                "}",
                "<- @A_B_C {}",
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
                    @A <- @ {
                        make_col expression:"P99"
                        align frame(back: 1m), value:avg(m("request_latencies"))
                        aggregate value:percentile(value, .99), group_by(expression)
                        make_event
                    }
                    @B <- @{
                        make_col expression:"P95"
                        align frame(back: 1m), value:avg(m("request_latencies"))
                        aggregate value:percentile(value, .95), group_by(expression)
                        make_event
                    }
                    @C <- @ {
                        make_col expression:"P50"
                        align frame(back: 1m), value:avg(m("request_latencies"))
                        aggregate value:percentile(value, .50), group_by(expression)
                        make_event
                    }
                    @A_B_C <- @A {
                        union @B, @C
                        aggregate value:any_not_null(value), group_by(expression)
                    }
                    <- @A_B_C {}
                EOT
      },
      {
        id = "stage-xfaje78y"
        input = [
          {
            datasetId   = null
            datasetPath = null
            inputName   = "cloud_run_base_metrics_stage"
            inputRole   = "Data"
            stageId     = "stage-61ojysx3"
          },
        ]
        layout = {
          appearance = "VISIBLE"
          dataTableViewState = {
            autoTableHeight    = false
            columnFooterHeight = 0
            columnHeaderHeight = 29
            columnOrderOverride = {
              "0" = "valid_from"
            }
            columnVisibility             = {}
            columnWidths                 = {}
            containerWidth               = 2143
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
            tableHeight                = 444
            tableView                  = "TABULAR"
          }
          index = 6
          inputList = [
            {
              inputName   = "cloud_run_base_metrics_stage"
              inputRole   = "Data"
              isUserInput = false
              stageId     = "stage-61ojysx3"
            },
          ]
          label = "Container Memory Utilization"
          managers = [
            {
              id                     = "euzgccir"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "2edsq4v6"
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
                    unit    = "%"
                    visible = true
                  }
                }
                source = {
                  table = {
                    groupFields   = []
                    transformType = "none"
                    type          = "xy"
                    x             = "valid_from"
                    y             = "Avg_Memory_Utilization "
                  }
                  topK = {
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
            limit          = 1000
            linkify        = true
            loadEverything = false
            progressive    = true
            resultKinds = [
              "ResultKindSchema",
            ]
            rollup      = {}
            wantBuckets = 600
          }
          renderType     = "TABLE"
          selectedStepId = null
          serializable   = true
          steps = [
            {
              customName    = "Input"
              customSummary = "cloud_run_base_metrics_stage"
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
              id                = "step-lw2wb1cy"
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
                        dataVis = {
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
                              unit    = "%"
                              visible = true
                            }
                          }
                          source = {
                            table = {
                              groupFields   = []
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
                        filterActions    = []
                        frameDuration = {
                          num  = 2
                          unit = "minute"
                        }
                        groupBy = []
                        id      = "metricExpression-u7cbqg0k"
                        inputSource = {
                          stageId = "stage-xfaje78y"
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
                              "service_name",
                            ]
                          }
                          interval    = null
                          name        = "container_memory_utilizations"
                          rollup      = "avg"
                          type        = "delta"
                          unit        = "10^2.%"
                          userDefined = true
                        }
                        showAlignment  = false
                        showResolution = false
                        summaryMode    = "over-time"
                        type           = "metricExpression"
                        valueColumnId  = "A_container_memory_utilizations_sum"
                      },
                      {
                        dataVis = {
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
                              unit    = "%"
                              visible = true
                            }
                          }
                          source = {
                            table = {
                              groupFields   = []
                              transformType = "none"
                              type          = "xy"
                              x             = "valid_from"
                              y             = "Avg_Memory_Utilization "
                            }
                            topK = {
                              type = "Auto"
                            }
                            type = "table"
                          }
                          type = "timeseries"
                        }
                        filterActions = []
                        formula       = "A*100"
                        id            = "formulaExpression-ri2w35z9"
                        lookupActions = []
                        name          = "Avg_Memory_Utilization "
                        type          = "formulaExpression"
                        valueColumnId = "B_formula"
                      },
                    ]
                    multiExpression = {
                      filterActions = []
                      id            = "multiExpression-h0n4vwho"
                      lookupActions = []
                      type          = "multiExpression"
                    }
                    selectedExpressionIds = [
                      "formulaExpression-ri2w35z9",
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
              id       = "step-oyy2h77d"
              index    = 1
              isPinned = false
              opal = [
                "@A <- @ {",
                "    align frame(back: 2m), A_container_memory_utilizations_sum:avg(m(\"container_memory_utilizations\"))",
                "    aggregate A_container_memory_utilizations_sum:sum(A_container_memory_utilizations_sum), group_by()",
                "    make_event",
                "}",
                "@B <- @A {",
                "    aggregate A: any_not_null(A_container_memory_utilizations_sum), group_by()",
                "    make_col \"Avg_Memory_Utilization \": A*100",
                "}",
                "<- @B {}",
              ]
              queryPresentation = {}
              type              = "unknown"
            },
          ]
          type = "table"
          viewModel = {
            consoleValue = <<-EOT
                            @A <- @ {
                                align frame(back: 2m), A_container_memory_utilizations_sum:avg(m("container_memory_utilizations"))
                                aggregate A_container_memory_utilizations_sum:sum(A_container_memory_utilizations_sum), group_by()
                                make_event
                            }
                            @B <- @A {
                                aggregate A: any_not_null(A_container_memory_utilizations_sum), group_by()
                                make_col B_formula: A*100
                            }
                            <- @B {}
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
                    @A <- @ {
                        align frame(back: 2m), A_container_memory_utilizations_sum:avg(m("container_memory_utilizations"))
                        aggregate A_container_memory_utilizations_sum:sum(A_container_memory_utilizations_sum), group_by()
                        make_event
                    }
                    @B <- @A {
                        aggregate A: any_not_null(A_container_memory_utilizations_sum), group_by()
                        make_col "Avg_Memory_Utilization ": A*100
                    }
                    <- @B {}
                EOT
      },
      {
        id = "stage-3461wl06"
        input = [
          {
            datasetId   = null
            datasetPath = null
            inputName   = "cloud_run_base_metrics_stage"
            inputRole   = "Data"
            stageId     = "stage-61ojysx3"
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
              "2" = "serviceAssetKey"
            }
            columnVisibility             = {}
            columnWidths                 = {}
            containerWidth               = 2143
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
              inputName   = "cloud_run_base_metrics_stage"
              inputRole   = "Data"
              isUserInput = false
              stageId     = "stage-61ojysx3"
            },
          ]
          label = "Container Startup Latency"
          managers = [
            {
              id                     = "9x99v7xb"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "w42x3ai9"
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
                    unit    = "milliseconds"
                    visible = true
                  }
                }
                source = {
                  table = {
                    groupFields = []
                    statsBy = {
                      fn = "avg"
                    }
                    timechart = {
                      fn         = "avg"
                      resolution = "AUTO"
                    }
                    transformType = "none"
                    type          = "xy"
                    x             = "valid_from"
                    y             = "Avg_Container_Startup_Latency "
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
            limit          = 1000
            linkify        = true
            loadEverything = false
            progressive    = true
            resultKinds = [
              "ResultKindSchema",
            ]
            rollup      = {}
            wantBuckets = 600
          }
          renderType     = "TABLE"
          selectedStepId = null
          serializable   = true
          steps = [
            {
              customName    = "Input"
              customSummary = "cloud_run_base_metrics_stage"
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
              id                = "step-orl8wm67"
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
                              unit    = "milliseconds"
                              visible = true
                            }
                          }
                          source = {
                            table = {
                              groupFields = []
                              statsBy = {
                                fn = "avg"
                              }
                              timechart = {
                                fn         = "avg"
                                resolution = "AUTO"
                              }
                              transformType = "none"
                              type          = "xy"
                              x             = "valid_from"
                              y             = "Avg_Container_Startup_Latency "
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
                        filterActions    = []
                        frameDuration = {
                          num  = 2
                          unit = "minute"
                        }
                        groupBy = []
                        id      = "metricExpression-6kdxml53"
                        inputSource = {
                          stageId = "stage-3461wl06"
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
                              "service_name",
                            ]
                          }
                          interval    = null
                          name        = "container_startup_latencies"
                          rollup      = "avg"
                          type        = "delta"
                          unit        = "ms"
                          userDefined = true
                        }
                        name           = "Avg_Container_Startup_Latency "
                        showAlignment  = true
                        showResolution = false
                        summaryMode    = "over-time"
                        type           = "metricExpression"
                        valueColumnId  = "A_container_startup_latencies_sum"
                      },
                    ]
                    multiExpression = {
                      filterActions = []
                      id            = "multiExpression-3nzi53bk"
                      lookupActions = []
                      type          = "multiExpression"
                    }
                    selectedExpressionIds = [
                      "metricExpression-6kdxml53",
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
              id       = "step-p5dfm5ie"
              index    = 1
              isPinned = false
              opal = [
                "align \"Avg_Container_Startup_Latency \":avg(m(\"container_startup_latencies\"))",
                "aggregate \"Avg_Container_Startup_Latency \":sum(@.\"Avg_Container_Startup_Latency \"), group_by()",
              ]
              queryPresentation = {}
              type              = "unknown"
            },
          ]
          type = "table"
          viewModel = {
            consoleValue = <<-EOT
                            align "Avg_Container_Startup_Latency ":avg(m("container_startup_latencies"))
                            aggregate "Avg_Container_Startup_Latency ":sum(@."Avg_Container_Startup_Latency "), group_by()
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
                    align "Avg_Container_Startup_Latency ":avg(m("container_startup_latencies"))
                    aggregate "Avg_Container_Startup_Latency ":sum(@."Avg_Container_Startup_Latency "), group_by()
                EOT
      },
      {
        id = "stage-zxogck66"
        input = [
          {
            datasetId   = null
            datasetPath = null
            inputName   = "cloud_run_base_metrics_stage"
            inputRole   = "Data"
            stageId     = "stage-61ojysx3"
          },
        ]
        layout = {
          appearance = "VISIBLE"
          dataTableViewState = {
            autoTableHeight    = true
            columnFooterHeight = 0
            columnHeaderHeight = 29
            columnOrderOverride = {
              "0" = "metric_kind"
              "1" = "metric_labels"
              "2" = "serviceName"
              "3" = "revisionName"
              "4" = "value_type"
              "5" = "project_id"
              "6" = "region"
              "7" = "serviceAssetKey"
            }
            columnVisibility             = {}
            columnWidths                 = {}
            containerWidth               = 2143
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
              inputName   = "cloud_run_base_metrics_stage"
              inputRole   = "Data"
              isUserInput = false
              stageId     = "stage-61ojysx3"
            },
          ]
          label = "Billable Container Instance Time"
          managers = [
            {
              id                     = "xqaf05li"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "w7jaw3nm"
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
                    axisLabel = "/ sec "
                    unit      = "seconds"
                    visible   = true
                  }
                }
                source = {
                  table = {
                    groupFields = []
                    statsBy = {
                      fn = "avg"
                    }
                    timechart = {
                      fn         = "avg"
                      resolution = "AUTO"
                    }
                    transformType = "none"
                    type          = "xy"
                    x             = "valid_from"
                    y             = "Billable_Time "
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
                columnName = "A_container_billable_instance_time_avg"
              },
            ]
            wantBuckets = 600
          }
          renderType     = "TABLE"
          selectedStepId = null
          serializable   = true
          steps = [
            {
              customName    = "Input"
              customSummary = "cloud_run_base_metrics_stage"
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
              id                = "step-enoo3da8"
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
                              axisLabel = "/ sec "
                              unit      = "seconds"
                              visible   = true
                            }
                          }
                          source = {
                            table = {
                              groupFields = []
                              statsBy = {
                                fn = "avg"
                              }
                              timechart = {
                                fn         = "avg"
                                resolution = "AUTO"
                              }
                              transformType = "none"
                              type          = "xy"
                              x             = "valid_from"
                              y             = "Billable_Time "
                            }
                            topK = {
                              order = "Top"
                              type  = "Auto"
                            }
                            type = "table"
                          }
                          type = "timeseries"
                        }
                        disableAggregate = true
                        filterActions    = []
                        frameDuration = {
                          num  = 1
                          unit = "minute"
                        }
                        groupBy = []
                        id      = "metricExpression-qsmp5bi2"
                        inputSource = {
                          stageId = "stage-zxogck66"
                        }
                        lookupActions = []
                        metric = {
                          aggregate   = "ob-no-reagg"
                          datasetId   = local.cloud_run_metrics
                          description = <<-EOT
                                                        Billable time aggregated across all container instances. For a given container instance, billable time occurs when the container instance is starting or at least one request is being processed. Billable time is rounded up to the nearest 100 milliseconds. Examples: If a revision with 2 container instances has been continuously serving traffic in the last minute, the value is 2s/s with the default "rate" aligner. If a single request lasting 30ms was received by a revision in the past minute, it is rounded up to 100ms and averaged to 1.7ms/s over the minute with the default "rate" aligner.
                                                    EOT
                          heuristics = {
                            __typename = "MetricHeuristics"
                            tags = [
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
                              "service_name",
                            ]
                          }
                          interval    = null
                          name        = "container_billable_instance_time"
                          rollup      = "rate"
                          type        = "delta"
                          unit        = "s"
                          userDefined = true
                        }
                        name           = "Billable_Time "
                        showAlignment  = true
                        showResolution = false
                        summaryMode    = "over-time"
                        type           = "metricExpression"
                        valueColumnId  = "A_container_billable_instance_time_avg"
                      },
                    ]
                    multiExpression = {
                      filterActions = []
                      id            = "multiExpression-hplt6u3r"
                      lookupActions = []
                      type          = "multiExpression"
                    }
                    selectedExpressionIds = [
                      "metricExpression-qsmp5bi2",
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
              id       = "step-fbws08gk"
              index    = 1
              isPinned = false
              opal = [
                "align \"Billable_Time \":rate(m(\"container_billable_instance_time\"))",
              ]
              queryPresentation = {}
              type              = "unknown"
            },
          ]
          type = "table"
          viewModel = {
            consoleValue = <<-EOT
                            align frame(back: 2m), A_container_billable_instance_time_sum:avg(m("container_billable_instance_time"))
                            aggregate A_container_billable_instance_time_sum:sum(A_container_billable_instance_time_sum), group_by()
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
        pipeline = "align \"Billable_Time \":rate(m(\"container_billable_instance_time\"))"
      },
      {
        id = "stage-wjaw71sv"
        input = [
          {
            datasetId   = null
            datasetPath = null
            inputName   = "cloud_run_base_metrics_stage"
            inputRole   = "Data"
            stageId     = "stage-61ojysx3"
          },
        ]
        layout = {
          appearance = "VISIBLE"
          dataTableViewState = {
            autoTableHeight    = false
            columnFooterHeight = 0
            columnHeaderHeight = 29
            columnOrderOverride = {
              "1" = "valid_from"
              "2" = "valid_to"
            }
            columnVisibility             = {}
            columnWidths                 = {}
            containerWidth               = 2143
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
            tableHeight                = 444
            tableView                  = "TABULAR"
          }
          index = 9
          inputList = [
            {
              inputName   = "cloud_run_base_metrics_stage"
              inputRole   = "Data"
              isUserInput = false
              stageId     = "stage-61ojysx3"
            },
          ]
          label = "Sent Bytes"
          managers = [
            {
              id                     = "t737k3ej"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "ciivn6lr"
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
                    axisLabel = "/ s "
                    unit      = "By"
                    visible   = true
                  }
                }
                source = {
                  table = {
                    groupFields = [
                      {
                        id   = "metric_labels"
                        path = "kind"
                      },
                    ]
                    transformType = "none"
                    type          = "xy"
                    x             = "valid_from"
                    y             = "A_container_network_sent_bytes_count_sum"
                  }
                  topK = {
                    k     = 16
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
            limit          = 1000
            linkify        = true
            loadEverything = false
            progressive    = true
            resultKinds = [
              "ResultKindSchema",
            ]
            rollup      = {}
            wantBuckets = 600
          }
          renderType     = "TABLE"
          selectedStepId = null
          serializable   = true
          steps = [
            {
              customName    = "Input"
              customSummary = "cloud_run_base_metrics_stage"
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
              id                = "step-qllkhikc"
              index             = 0
              isPinned          = false
              opal              = []
              queryPresentation = {}
              type              = "InputStep"
            },
            {
              action = {
                params = {
                  columnId    = "metric"
                  columnType  = "string"
                  filterVerb  = "filter"
                  isExcluding = false
                  values = [
                    "container_network_sent_bytes_count",
                    "container_network_received_bytes_count",
                  ]
                }
                summary = null
                type    = "FilterValues"
              }
              customSummary = "metric"
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
              id       = "step-69wsnwdd"
              index    = 1
              isPinned = true
              opal = [
                "filter metric = \"container_network_sent_bytes_count\" or metric = \"container_network_received_bytes_count\"",
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
                              axisLabel = "/ s "
                              unit      = "By"
                              visible   = true
                            }
                          }
                          source = {
                            table = {
                              groupFields = [
                                {
                                  id   = "metric_labels"
                                  path = "kind"
                                },
                              ]
                              transformType = "none"
                              type          = "xy"
                              x             = "valid_from"
                              y             = "A_container_network_sent_bytes_count_sum"
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
                        filterActions    = []
                        frameDuration = {
                          num  = 5
                          unit = "minute"
                        }
                        groupBy = [
                          {
                            id   = "metric_labels"
                            path = "kind"
                          },
                        ]
                        id = "metricExpression-xcht1mnl"
                        inputSource = {
                          stageId = "stage-wjaw71sv"
                        }
                        lookupActions = []
                        metric = {
                          aggregate   = "sum"
                          datasetId   = local.cloud_run_metrics
                          description = <<-EOT
                                                        Outgoing socket and HTTP response traffic, in bytes.
                                                    EOT
                          heuristics = {
                            __typename = "MetricHeuristics"
                            tags = [
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
                                path       = "kind"
                              },
                            ]
                            validLinkLabels = [
                              "service_name",
                            ]
                          }
                          interval    = null
                          name        = "container_network_sent_bytes_count"
                          rollup      = "rate"
                          type        = "delta"
                          unit        = "By"
                          userDefined = true
                        }
                        showAlignment  = true
                        showResolution = false
                        summaryMode    = "over-time"
                        type           = "metricExpression"
                        valueColumnId  = "A_container_network_sent_bytes_count_sum"
                      },
                    ]
                    multiExpression = {
                      filterActions = []
                      id            = "multiExpression-xtpg48gm"
                      lookupActions = []
                      type          = "multiExpression"
                    }
                    selectedExpressionIds = [
                      "metricExpression-xcht1mnl",
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
              id       = "step-2l2tmqdp"
              index    = 2
              isPinned = false
              opal = [
                "align A_container_network_sent_bytes_count_sum:rate(m(\"container_network_sent_bytes_count\"))",
                "aggregate A_container_network_sent_bytes_count_sum:sum(A_container_network_sent_bytes_count_sum), group_by(string(metric_labels.kind))",
              ]
              queryPresentation = {}
              type              = "unknown"
            },
          ]
          type = "table"
          viewModel = {
            consoleValue = <<-EOT
                            align A_container_network_sent_bytes_count_sum:rate(m("container_network_sent_bytes_count"))
                            aggregate A_container_network_sent_bytes_count_sum:sum(A_container_network_sent_bytes_count_sum), group_by(string(metric_labels.kind))
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
                    filter metric = "container_network_sent_bytes_count" or metric = "container_network_received_bytes_count"
                    align A_container_network_sent_bytes_count_sum:rate(m("container_network_sent_bytes_count"))
                    aggregate A_container_network_sent_bytes_count_sum:sum(A_container_network_sent_bytes_count_sum), group_by(string(metric_labels.kind))
                EOT
      },
      {
        id = "stage-rciwhao7"
        input = [
          {
            datasetId   = null
            datasetPath = null
            inputName   = "cloud_run_base_metrics_stage"
            inputRole   = "Data"
            stageId     = "stage-61ojysx3"
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
            columnVisibility             = {}
            columnWidths                 = {}
            containerWidth               = 2190
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
          index = 10
          inputList = [
            {
              inputName   = "cloud_run_base_metrics_stage"
              inputRole   = "Data"
              isUserInput = false
              stageId     = "stage-61ojysx3"
            },
          ]
          label = "Received Bytes"
          managers = [
            {
              id                     = "s2kjxw2k"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "cr4prah0"
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
                    axisLabel = "/ s "
                    unit      = "By"
                    visible   = true
                  }
                }
                source = {
                  table = {
                    groupFields = [
                      {
                        id   = "metric_labels"
                        path = "kind"
                      },
                    ]
                    transformType = "none"
                    type          = "xy"
                    x             = "valid_from"
                    y             = "A_container_network_received_bytes_count_sum"
                  }
                  topK = {
                    k     = 16
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
            limit          = 1000
            linkify        = true
            loadEverything = false
            progressive    = true
            resultKinds = [
              "ResultKindSchema",
            ]
            rollup      = {}
            wantBuckets = 600
          }
          renderType     = "TABLE"
          selectedStepId = null
          serializable   = true
          steps = [
            {
              customName    = "Input"
              customSummary = "cloud_run_base_metrics_stage"
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
              id                = "step-079vsxx5"
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
                              axisLabel = "/ s "
                              unit      = "By"
                              visible   = true
                            }
                          }
                          source = {
                            table = {
                              groupFields = [
                                {
                                  id   = "metric_labels"
                                  path = "kind"
                                },
                              ]
                              transformType = "none"
                              type          = "xy"
                              x             = "valid_from"
                              y             = "A_container_network_received_bytes_count_sum"
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
                        filterActions    = []
                        frameDuration = {
                          num  = 5
                          unit = "minute"
                        }
                        groupBy = [
                          {
                            id   = "metric_labels"
                            path = "kind"
                          },
                        ]
                        id = "metricExpression-apar8oxo"
                        inputSource = {
                          stageId = "stage-rciwhao7"
                        }
                        lookupActions = []
                        metric = {
                          aggregate   = "sum"
                          datasetId   = local.cloud_run_metrics
                          description = <<-EOT
                                                        Incoming socket and HTTP response traffic, in bytes.
                                                    EOT
                          heuristics = {
                            __typename = "MetricHeuristics"
                            tags = [
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
                                path       = "kind"
                              },
                            ]
                            validLinkLabels = [
                              "service_name",
                            ]
                          }
                          interval    = null
                          name        = "container_network_received_bytes_count"
                          rollup      = "rate"
                          type        = "delta"
                          unit        = "By"
                          userDefined = true
                        }
                        showAlignment  = true
                        showResolution = false
                        summaryMode    = "over-time"
                        type           = "metricExpression"
                        valueColumnId  = "A_container_network_received_bytes_count_sum"
                      },
                    ]
                    multiExpression = {
                      filterActions = []
                      id            = "multiExpression-h42hujlx"
                      lookupActions = []
                      type          = "multiExpression"
                    }
                    selectedExpressionIds = [
                      "metricExpression-apar8oxo",
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
              id       = "step-3oadz2lh"
              index    = 1
              isPinned = false
              opal = [
                "align A_container_network_received_bytes_count_sum:rate(m(\"container_network_received_bytes_count\"))",
                "aggregate A_container_network_received_bytes_count_sum:sum(A_container_network_received_bytes_count_sum), group_by(string(metric_labels.kind))",
              ]
              queryPresentation = {}
              type              = "unknown"
            },
          ]
          type = "table"
          viewModel = {
            consoleValue = <<-EOT
                            align A_container_network_received_bytes_count_sum:rate(m("container_network_received_bytes_count"))
                            aggregate A_container_network_received_bytes_count_sum:sum(A_container_network_received_bytes_count_sum), group_by(string(metric_labels.kind))
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
                    align A_container_network_received_bytes_count_sum:rate(m("container_network_received_bytes_count"))
                    aggregate A_container_network_received_bytes_count_sum:sum(A_container_network_received_bytes_count_sum), group_by(string(metric_labels.kind))
                EOT
      },
      {
        id = "stage-736a6lgq"
        input = [
          {
            datasetId   = null
            datasetPath = null
            inputName   = "cloud_run_base_metrics_stage"
            inputRole   = "Data"
            stageId     = "stage-61ojysx3"
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
            }
            columnVisibility             = {}
            columnWidths                 = {}
            containerWidth               = 2143
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
          index = 11
          inputList = [
            {
              inputName   = "cloud_run_base_metrics_stage"
              inputRole   = "Data"
              isUserInput = false
              stageId     = "stage-61ojysx3"
            },
          ]
          label = "Max Concurrent Requests"
          managers = [
            {
              id                     = "vqpa4xr0"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "vu5na2zs"
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
                    visible = true
                  }
                }
                source = {
                  table = {
                    groupFields = [
                      "expression",
                    ]
                    transformType = "none"
                    type          = "xy"
                    x             = "valid_from"
                    y             = "value"
                  }
                  topK = {
                    k    = 16
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
            limit          = 1000
            linkify        = true
            loadEverything = false
            progressive    = true
            resultKinds = [
              "ResultKindSchema",
            ]
            rollup      = {}
            wantBuckets = 600
          }
          renderType     = "TABLE"
          selectedStepId = null
          serializable   = true
          steps = [
            {
              customName    = "Input"
              customSummary = "cloud_run_base_metrics_stage"
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
              id                = "step-ezagjnhn"
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
              id       = "step-zxpdvjuv"
              index    = 1
              isPinned = false
              opal = [
                "@A <- @ {",
                "    make_col expression:\"P99\"",
                "    align value:avg(m(\"container_max_request_concurrencies\"))",
                "    aggregate value:percentile(value, .99), group_by(expression)",
                "    make_event",
                "}",
                "@B <- @  {",
                "    make_col expression:\"P95\"",
                "    align value:avg(m(\"container_max_request_concurrencies\"))",
                "    aggregate value:percentile(value, .95), group_by(expression)",
                "    make_event",
                "}",
                "@C <- @ {",
                "    make_col expression:\"P50\"",
                "    align value:avg(m(\"container_max_request_concurrencies\"))",
                "    aggregate value:percentile(value, .50), group_by(expression)",
                "    make_event",
                "}",
                "@A_B_C <- @A {",
                "    union @B, @C",
                "    aggregate value:any_not_null(value), group_by(expression)",
                "}",
                "<- @A_B_C {}",
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
                    @A <- @ {
                        make_col expression:"P99"
                        align value:avg(m("container_max_request_concurrencies"))
                        aggregate value:percentile(value, .99), group_by(expression)
                        make_event
                    }
                    @B <- @  {
                        make_col expression:"P95"
                        align value:avg(m("container_max_request_concurrencies"))
                        aggregate value:percentile(value, .95), group_by(expression)
                        make_event
                    }
                    @C <- @ {
                        make_col expression:"P50"
                        align value:avg(m("container_max_request_concurrencies"))
                        aggregate value:percentile(value, .50), group_by(expression)
                        make_event
                    }
                    @A_B_C <- @A {
                        union @B, @C
                        aggregate value:any_not_null(value), group_by(expression)
                    }
                    <- @A_B_C {}
                EOT
      },
      {
        id = "stage-d3muqp6x"
        input = [
          {
            datasetId   = local.cloud_run_service_instances
            datasetPath = null
            inputName   = "cloud_run_service_instances"
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
              "0" = "serviceName"
              "2" = "Valid From"
              "3" = "Valid To"
            }
            columnVisibility = {
              revisionName = true
            }
            columnWidths                 = {}
            containerWidth               = 2143
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
          index = 12
          inputList = [
            {
              datasetId   = local.cloud_run_service_instances
              inputName   = "cloud_run_service_instances"
              inputRole   = "Data"
              isUserInput = false
            },
          ]
          label = "Latest Revision Name"
          managers = [
            {
              id                     = "5qg8pifo"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "x9f96yv7"
              isDisabled = false
              type       = "Vis"
              vis = {
                config = {
                  color           = "Default"
                  colorConfigType = "Color"
                  fieldConfig = {
                    visible = false
                  }
                  singleStatLabel = "Latest Revision Name "
                  type            = "singlefield"
                }
                source = {
                  table = {
                    field         = "revisionName"
                    groupFields   = []
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
                columnName = "Latest Revision Name "
              },
            ]
            wantBuckets = 600
          }
          renderType     = "TABLE"
          selectedStepId = null
          serializable   = true
          steps = [
            {
              customName    = "Input"
              customSummary = "cloud_run_service_instances"
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
              id                = "step-rvemw1xe"
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
              id       = "step-9cljrlo1"
              index    = 1
              isPinned = false
              opal = [
                "filter serviceAssetKey=$service.serviceAssetKey",
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
                        columnId = "revisionName"
                        dataVis = {
                          config = {
                            color           = "Default"
                            colorConfigType = "Color"
                            fieldConfig = {
                              visible = false
                            }
                            singleStatLabel = "Latest Revision Name "
                            type            = "singlefield"
                          }
                          source = {
                            table = {
                              field         = "revisionName"
                              groupFields   = []
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
                        id            = "datasetQueryExpression-3wt2d66z"
                        lookupActions = []
                        name          = "Latest Revision Name "
                        primaryKey = [
                          "serviceAssetKey",
                        ]
                        summaryFunction     = "any"
                        summaryFunctionArgs = []
                        summaryMode         = "no-aggregate"
                        type                = "datasetQueryExpression"
                      },
                    ]
                    multiExpression = {
                      filterActions = []
                      id            = "multiExpression-emrx0a9w"
                      lookupActions = []
                      type          = "multiExpression"
                    }
                    selectedExpressionIds = [
                      "datasetQueryExpression-3wt2d66z",
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
              id                = "step-bi3hewnu"
              index             = 2
              isPinned          = false
              opal              = []
              queryPresentation = {}
              type              = "unknown"
            },
          ]
          type = "table"
          viewModel = {
            consoleValue = "filter serviceAssetKey=$service.serviceAssetKey"
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
        pipeline = "filter serviceAssetKey=$service.serviceAssetKey"
      },
      {
        id = "stage-y49asn8v"
        input = [
          {
            datasetId   = local.cloud_run_service_instances
            datasetPath = null
            inputName   = "cloud_run_service_instances"
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
              "0" = "serviceName"
              "1" = "_c_traffic_path"
              "2" = "Valid From"
              "3" = "Valid To"
            }
            columnVisibility = {
              "CloudSQL Instance"        = false
              "Latest Revision Instance" = false
              "Service Instance"         = false
              _c_traffic_path            = false
              container                  = false
              deleteTimestamp            = false
              env                        = false
              image                      = false
              project_id                 = false
              revisionName               = true
              serviceAssetKey            = false
              serviceUid                 = false
            }
            columnWidths = {
              "1"              = 159
              Traffic          = 189
              _c_traffic_path  = 171
              _c_traffic_value = 505
              foo              = 268
              revisionServed   = 229
              traffic          = 968
            }
            containerWidth               = 2143
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
          index = 13
          inputList = [
            {
              datasetId   = local.cloud_run_service_instances
              inputName   = "cloud_run_service_instances"
              inputRole   = "Data"
              isUserInput = false
            },
          ]
          label = "Traffic Details"
          managers = [
            {
              id                     = "ss3pui4b"
              isDisabled             = false
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "yydcjs51"
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
              customSummary = "cloud_run_service_instances"
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
              id                = "step-e3u4d9ud"
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
              id       = "step-j7buwz6v"
              index    = 1
              isPinned = false
              opal = [
                "filter serviceAssetKey=$service.serviceAssetKey",
                "",
                "flatten_single traffic",
                "",
                "make_col percent:if_null(_c_traffic_value.percent, 0)",
                "make_col latestRevision:if(_c_traffic_value.latestRevision=true, true, false) ",
                "make_col revisionServed: string(if(_c_traffic_value.latestRevision=true, revisionName, _c_traffic_value.revisionName))",
                "",
                "pick_col ",
                "    @.\"Valid From\",",
                "    @.\"Valid To\",",
                "    serviceAssetKey,",
                "    _c_traffic_path,",
                "    revisionServed,",
                "    latestRevision,",
                "    percent",
                "",
                "set_label revisionServed",
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
                    filter serviceAssetKey=$service.serviceAssetKey
                    
                    flatten_single traffic
                    
                    make_col percent:if_null(_c_traffic_value.percent, 0)
                    make_col latestRevision:if(_c_traffic_value.latestRevision=true, true, false) 
                    make_col revisionServed: string(if(_c_traffic_value.latestRevision=true, revisionName, _c_traffic_value.revisionName))
                    
                    pick_col 
                        @."Valid From",
                        @."Valid To",
                        serviceAssetKey,
                        _c_traffic_path,
                        revisionServed,
                        latestRevision,
                        percent
                    
                    set_label revisionServed
                EOT
      },
    ]
  )
  workspace = local.workspace
}

