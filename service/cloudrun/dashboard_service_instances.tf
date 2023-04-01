
resource "observe_dashboard" "dashboard_service_instances" {
  count = local.dashboards.dashboard_service_instances.create ? 1 : 0
  layout = jsonencode(
    {
      autoPack = true
      gridLayout = {
        sections = [
          {
            card = {
              cardType = "section"
              closed   = false
              id       = "card-y84fyzan"
              title    = "Dashboard Content"
            }
            items = [
              {
                card = {
                  cardType    = "parameter"
                  id          = "card-m0y1ktdk"
                  parameterId = "service"
                }
                layout = {
                  h           = 4
                  i           = "card-m0y1ktdk"
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
                  id       = "card-i6z87bnc"
                  stageId  = "stage-usqocagm"
                }
                layout = {
                  h           = 10
                  i           = "card-i6z87bnc"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 9
                  x           = 0
                  y           = 4
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-7k796de6"
                  stageId  = "stage-cszzz5l0"
                }
                layout = {
                  h           = 16
                  i           = "card-7k796de6"
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
                  id       = "card-kk5holav"
                  stageId  = "stage-c9pakqs6"
                }
                layout = {
                  h           = 16
                  i           = "card-kk5holav"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 3
                  x           = 3
                  y           = 14
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-v54eozud"
                  stageId  = "stage-6hdreo6b"
                }
                layout = {
                  h           = 16
                  i           = "card-v54eozud"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 3
                  x           = 6
                  y           = 14
                }
              },
            ]
            lastModified = 1680309179493
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
              keyForDatasetId = "42000388"
              type            = "LINK"
            }
            viewType = "resource-input"
          },
        ]
        selectedStageId = "stage-usqocagm"
        timeRange = {
          display               = "Today 16:32:52 → 17:32:52"
          endTime               = null
          millisFromCurrentTime = 3600000
          originalDisplay       = "Past 60 minutes"
          startTime             = null
          timeRangeInfo = {
            key        = "PRESETS"
            name       = "Presets"
            presetType = "PAST_60_MINUTES"
          }
        }
      }
    }
  )
  name = local.dashboards.dashboard_service_instances.name
  parameters = jsonencode(
    [
      {
        defaultValue = null
        id           = "service"
        name         = "Service "
        valueKind = {
          arrayItemType   = null
          keyForDatasetId = "42000388"
          type            = "LINK"
        }
      },
    ]
  )
  stages = jsonencode(
    [
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
          index = 0
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
              customSummary = "test_gcp_sure-leopard/Cloud Run Metrics"
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
                          datasetId   = local.dashboards.dashboard_service_instances.datasets["cloud_run_metrics"].id
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
            tableHeight                = 359
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
          label = "CPU Utilization"
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
                    groupFields = [
                      "serviceAssetKey",
                    ]
                    transformType = "none"
                    type          = "xy"
                    x             = "valid_from"
                    y             = "B_formula"
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
              customSummary = "test_gcp_sure-leopard/Cloud Run Metrics"
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
                        disableAggregate = false
                        filterActions    = []
                        frameDuration = {
                          num  = 2
                          unit = "minute"
                        }
                        groupBy = [
                          "serviceAssetKey",
                        ]
                        id = "metricExpression-xo0seiwr"
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
                          aggregate   = "sum"
                          datasetId   = local.dashboards.dashboard_service_instances.datasets["cloud_run_metrics"].id
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
                        showAlignment  = false
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
                              groupFields = [
                                "serviceAssetKey",
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
                        formula       = "A*100"
                        id            = "formulaExpression-uzulcpcf"
                        lookupActions = []
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
                "    align frame(back: 2m), A_container_cpu_utilizations_sum:avg(m(\"container_cpu_utilizations\"))",
                "    aggregate A_container_cpu_utilizations_sum:sum(A_container_cpu_utilizations_sum), group_by(serviceAssetKey)",
                "    make_event",
                "}",
                "@B <- @A {",
                "    aggregate A: any_not_null(A_container_cpu_utilizations_sum), group_by(serviceAssetKey)",
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
            consoleValue = <<-EOT
                            @A <- @ {
                                align frame(back: 2m), A_container_cpu_utilizations_sum:avg(m("container_cpu_utilizations"))
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
                        align frame(back: 2m), A_container_cpu_utilizations_sum:avg(m("container_cpu_utilizations"))
                        aggregate A_container_cpu_utilizations_sum:sum(A_container_cpu_utilizations_sum), group_by(serviceAssetKey)
                        make_event
                    }
                    @B <- @A {
                        aggregate A: any_not_null(A_container_cpu_utilizations_sum), group_by(serviceAssetKey)
                        make_col B_formula: A*100
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
          index = 2
          inputList = [
            {
              inputName   = "cloud_run_base_metrics_stage"
              inputRole   = "Data"
              isUserInput = false
              stageId     = "stage-61ojysx3"
            },
          ]
          label = "Container Request Count"
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
              customSummary = "test_gcp_sure-leopard/Cloud Run Metrics"
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
                              unit    = ""
                              visible = true
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
                          num  = 2
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
                          datasetId   = local.dashboards.dashboard_service_instances.datasets["cloud_run_metrics"].id
                          description = <<-EOT
                                                        Number of requests reaching the revision. Excludes requests that are not reaching your container instances for example, unauthorized requests or when maximum number of instances is reached. Captured at the end of the request lifecycle.
                                                    EOT
                          heuristics  = null
                          interval    = null
                          name        = "request_count"
                          rollup      = "avg"
                          type        = "delta"
                          unit        = "1"
                          userDefined = true
                        }
                        showAlignment  = false
                        showResolution = false
                        summaryMode    = "over-time"
                        type           = "metricExpression"
                        valueColumnId  = "A_request_count_sum"
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
                "align frame(back: 2m), A_request_count_sum:avg(m(\"request_count\"))",
                "aggregate A_request_count_sum:sum(A_request_count_sum), group_by(string(metric_labels.response_code))",
              ]
              queryPresentation = {}
              type              = "unknown"
            },
          ]
          type = "table"
          viewModel = {
            consoleValue = <<-EOT
                            align frame(back: 2m), A_request_count_sum:avg(m("request_count"))
                            aggregate A_request_count_sum:sum(A_request_count_sum), group_by(string(metric_labels.response_code))
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

                    align frame(back: 2m), A_request_count_sum:avg(m("request_count"))
                    aggregate A_request_count_sum:sum(A_request_count_sum), group_by(string(metric_labels.response_code))
                EOT
      },
      {
        id = "stage-61ojysx3"
        input = [
          {
            datasetId   = local.dashboards.dashboard_service_instances.datasets["cloud_run_metrics"].id
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
          index = 3
          inputList = [
            {
              datasetId   = local.dashboards.dashboard_service_instances.datasets["cloud_run_metrics"].id
              inputName   = "cloud_run_metrics"
              inputRole   = "Data"
              isUserInput = false
            },
          ]
          label = "Base Metrics - Cloud Run Service Instance"
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
              customSummary = "test_gcp_sure-leopard/Cloud Run Metrics"
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
        id = "stage-usqocagm"
        input = [
          {
            datasetId   = local.dashboards.dashboard_service_instances.datasets["cloud_run_revision_instances"].id
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
          index = 4
          inputList = [
            {
              datasetId   = local.dashboards.dashboard_service_instances.datasets["cloud_run_revision_instances"].id
              inputName   = "cloud_run_revision_instances"
              inputRole   = "Data"
              isUserInput = false
            },
          ]
          label = "Revision Summary"
          managers = [
            {
              id                     = "w9bstvl5"
              isDisabled             = false
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "558sc1hf"
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
              customSummary = "test_gcp_sure-leopard/Cloud Run Revision Instances"
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
              id       = "step-qhaf3y8p"
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
    ]
  )
  workspace = var.workspace.oid
}
