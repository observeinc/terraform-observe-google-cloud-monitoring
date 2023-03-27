resource "observe_dashboard" "cloud_run_service_instance_v2" {
  workspace = local.workspace
  name      = local.cloud_run_service_dashboard_name
  layout = jsonencode(
    {
      autoPack = true
      gridLayout = {
        sections = [
          {
            card = {
              cardType = "section"
              closed   = false
              id       = "card-sio0wo9l"
              title    = "Dashboard Content"
            }
            items = [
              {
                card = {
                  cardType    = "parameter"
                  id          = "card-s1py9frc"
                  parameterId = "service"
                }
                layout = {
                  h = 4
                  i = "card-s1py9frc"
                  resizeHandles = [
                    "e",
                  ]
                  w = 4
                  x = 0
                  y = 0
                }
              },
            ]
            lastModified = 1680822734037
          },
          {
            card = {
              cardType = "section"
              closed   = false
              id       = "card-qt1gb03m"
              title    = "Revision Details"
            }
            items = [
              {
                card = {
                  cardType = "stage"
                  id       = "card-ljuojk0d"
                  stageId  = "stage-2udnz4r7"
                }
                layout = {
                  h = 25
                  i = "card-ljuojk0d"
                  w = 9
                  x = 3
                  y = 0
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-4ewvspvd"
                  stageId  = "stage-tikxgeiy"
                }
                layout = {
                  h = 13
                  i = "card-4ewvspvd"
                  w = 3
                  x = 0
                  y = 0
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-n2vg5ic5"
                  stageId  = "stage-6pi63cfb"
                }
                layout = {
                  h = 12
                  i = "card-n2vg5ic5"
                  w = 3
                  x = 0
                  y = 13
                }
              },
            ]
            lastModified = 1680822743333
          },
          {
            card = {
              cardType = "section"
              closed   = false
              id       = "card-q2g2yzd1"
              title    = "Container Details"
            }
            items = [
              {
                card = {
                  cardType = "stage"
                  id       = "card-zcd76xf2"
                  stageId  = "stage-zwqero1i"
                }
                layout = {
                  h = 21
                  i = "card-zcd76xf2"
                  w = 6
                  x = 0
                  y = 0
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-okhyfpao"
                  stageId  = "stage-cg4hxb3x"
                }
                layout = {
                  h = 21
                  i = "card-okhyfpao"
                  w = 6
                  x = 6
                  y = 0
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-wi6y9ugb"
                  stageId  = "stage-xrmdkudf"
                }
                layout = {
                  h = 17
                  i = "card-wi6y9ugb"
                  w = 4
                  x = 8
                  y = 21
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-1591rd4b"
                  stageId  = "stage-d3ljrh52"
                }
                layout = {
                  h = 17
                  i = "card-1591rd4b"
                  w = 4
                  x = 4
                  y = 21
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-mjf59xmg"
                  stageId  = "stage-t2vuomtv"
                }
                layout = {
                  h = 17
                  i = "card-mjf59xmg"
                  w = 4
                  x = 0
                  y = 21
                }
              },
            ]
          },
          {
            card = {
              cardType = "section"
              closed   = false
              id       = "card-v7scqiqd"
              title    = "Network Details"
            }
            items = [
              {
                card = {
                  cardType = "stage"
                  id       = "card-i4m4k140"
                  stageId  = "stage-2u03u331"
                }
                layout = {
                  h = 17
                  i = "card-i4m4k140"
                  w = 3
                  x = 0
                  y = 0
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-1angjz4q"
                  stageId  = "stage-2rzxxu14"
                }
                layout = {
                  h = 17
                  i = "card-1angjz4q"
                  w = 3
                  x = 3
                  y = 0
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-9f558uca"
                  stageId  = "stage-c7a8fd4q"
                }
                layout = {
                  h = 17
                  i = "card-9f558uca"
                  w = 3
                  x = 6
                  y = 0
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-wpbycml9"
                  stageId  = "stage-m4ho1t3t"
                }
                layout = {
                  h = 17
                  i = "card-wpbycml9"
                  w = 3
                  x = 9
                  y = 0
                }
              },
            ]
            lastModified = 1684181003236
          },
          {
            card = {
              cardType = "section"
              closed   = false
              id       = "card-5trzv51x"
              title    = "Information"
            }
            items = [
              {
                card = {
                  cardType = "text"
                  id       = "card-bwefchq3"
                  text     = <<-EOT
                                        ## GCP/Cloud Run Revision
                                        Services are the main resources of Cloud Run. Each service has a unique and permanent URL that will not change over time as you deploy new revisions to it. The service's permanent domain consists of the service name and a hash. You create a new service by deploying a container image to it for the first time.
                                                                                
                                        For information on managing Cloud Run Services, visit https://cloud.google.com/run/docs/managing/services
                                                                                
                                        For information related to APIs, Terraform, or client libraries, visit https://cloud.google.com/run/docs/apis
                                    EOT
                  title    = "Untitled Text"
                }
                layout = {
                  h = 15
                  i = "card-bwefchq3"
                  w = 4
                  x = 0
                  y = 0
                }
              },
            ]
            lastModified = 1684181445457
          },
        ]
      }
      stageListLayout = {
        isModified = false
        parameters = [
          {
            allowEmpty = true
            defaultValue = {
              link = null
            }
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
        selectedStageId = "stage-2u03u331"
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
  parameters = jsonencode(
    [
      {
        defaultValue = {
          link = null
        }
        id   = "service"
        name = "Service "
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
        id = "stage-62v8m9nt"
        input = [
          {
            datasetId   = local.cloud_run_service_instances
            datasetPath = null
            inputName   = "GCP/Cloud Run Service Instances"
            inputRole   = "Data"
            stageId     = null
          },
        ]
        layout = {
          appearance = "COLLAPSED"
          dataTableViewState = {
            autoTableHeight    = true
            columnFooterHeight = 0
            columnHeaderHeight = 29
            columnOrderOverride = {
              "0" = "serviceName"
              "2" = "Valid From"
              "3" = "Valid To"
            }
            columnVisibility             = {}
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
          index = 0
          inputList = [
            {
              datasetId   = local.cloud_run_service_instances
              inputName   = "GCP/Cloud Run Service Instances"
              inputRole   = "Data"
              isUserInput = false
            },
          ]
          label = "Service Instance"
          managers = [
            {
              id                     = "n22lz1v1"
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
              customSummary = "GCP/Cloud Run Service Instances"
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
              id                = "step-8bebht2h"
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
              id       = "step-rl4m4t76"
              index    = 1
              isPinned = false
              opal = [
                "filter if(not is_null($service), serviceAssetKey=$service.serviceAssetKey, true)",
                "",
                "set_col_visible",
                "  location:false,",
                "  project_id:false,",
                "  serviceUid:false,",
                "  serviceAssetKey:false",
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
                    filter if(not is_null($service), serviceAssetKey=$service.serviceAssetKey, true)
                    
                    set_col_visible
                      location:false,
                      project_id:false,
                      serviceUid:false,
                      serviceAssetKey:false
                EOT
      },
      {
        id = "stage-t2vuomtv"
        input = [
          {
            datasetId   = local.cloud_run_metrics
            datasetPath = null
            inputName   = "container_instance_count_from_42350178"
            inputRole   = "Data"
            stageId     = null
          },
          {
            datasetId   = null
            datasetPath = null
            inputName   = "filter_Service Instance"
            inputRole   = "Data"
            stageId     = "stage-62v8m9nt"
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
          index     = 1
          inputList = []
          label     = "Container Instance Counts"
          managers = [
            {
              id         = "6n17oerx"
              isDisabled = false
              type       = "Vis"
              vis = {
                config = {
                  color         = "Default"
                  hideGridLines = false
                  legend = {
                    type    = "list"
                    visible = false
                  }
                  lineCurveType = "Linear"
                  thresholds = {
                    drawType      = "Lines"
                    mode          = "Percentage"
                    startingColor = "Default"
                    thresholds = [
                      {
                        exceedsColor = "Red"
                        value        = 0
                      },
                    ]
                    visible = false
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
                      {
                        id   = "metric_labels"
                        path = "state"
                      },
                    ]
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
                    y             = "A_container_instance_count_sum"
                  }
                  topK = {
                    k     = 66
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
            wantBuckets = 150
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
              id                = "step-n35475ys"
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
                              type    = "list"
                              visible = false
                            }
                            lineCurveType = "Linear"
                            thresholds = {
                              drawType      = "Lines"
                              mode          = "Percentage"
                              startingColor = "Default"
                              thresholds = [
                                {
                                  exceedsColor = "Red"
                                  value        = 0
                                },
                              ]
                              visible = false
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
                                {
                                  id   = "metric_labels"
                                  path = "state"
                                },
                              ]
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
                        filterActions = [
                          {
                            params = {
                              foreignKey = {
                                __typename = "ForeignKey"
                                dstFields = [
                                  "serviceAssetKey",
                                ]
                                label = "Service Instance"
                                srcFields = [
                                  "serviceAssetKey",
                                ]
                                targetDataset    = local.cloud_run_service_instances
                                targetStageLabel = null
                                type             = "foreign"
                              }
                              joinInput = {
                                stageId = "stage-62v8m9nt"
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
                          {
                            id   = "metric_labels"
                            path = "state"
                          },
                        ]
                        id = "metricExpression-9m2ao8oc"
                        inputSource = {
                          datasetId = local.cloud_run_metrics
                        }
                        lookupActions = []
                        metric = {
                          aggregate           = "sum"
                          datasetId           = local.cloud_run_metrics
                          description         = <<-EOT
                                                        Number of container instances that exist, broken down by state.
                                                    EOT
                          heuristics          = null
                          name                = "container_instance_count"
                          rollup              = "max"
                          suggestedBucketSize = "60000000000"
                          type                = "gauge"
                          unit                = "1"
                          userDefined         = true
                        }
                        metricLink = {
                          __typename = "ForeignKey"
                          dstFields = [
                            "serviceAssetKey",
                          ]
                          label = "Service Instance"
                          srcFields = [
                            "serviceAssetKey",
                          ]
                          targetDataset    = local.cloud_run_service_instances
                          targetStageLabel = null
                          type             = "foreign"
                        }
                        metricLinkInputSource = {
                          stageId = "stage-62v8m9nt"
                        }
                        showAlignment  = true
                        showResolution = false
                        summaryMode    = "over-time"
                        type           = "metricExpression"
                        valueColumnId  = "A_container_instance_count_sum"
                      },
                    ]
                    multiExpression = {
                      filterActions = []
                      id            = "multiExpression-e82j0yo9"
                      lookupActions = []
                      type          = "multiExpression"
                    }
                    selectedExpressionIds = [
                      "metricExpression-9m2ao8oc",
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
              id       = "step-8qpr0m7n"
              index    = 1
              isPinned = false
              opal = [
                "exists serviceAssetKey = @\"filter_Service Instance\".serviceAssetKey",
                "align A_container_instance_count_sum:max(m(\"container_instance_count\"))",
                "aggregate A_container_instance_count_sum:sum(A_container_instance_count_sum), group_by(string(metric_labels.state))",
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
                    exists serviceAssetKey = @"filter_Service Instance".serviceAssetKey
                    align A_container_instance_count_sum:max(m("container_instance_count"))
                    aggregate A_container_instance_count_sum:sum(A_container_instance_count_sum), group_by(string(metric_labels.state))
                EOT
      },
      {
        id = "stage-zwqero1i"
        input = [
          {
            datasetId   = local.cloud_run_metrics
            datasetPath = null
            inputName   = "container_cpu_utilizations_from_42350178"
            inputRole   = "Data"
            stageId     = null
          },
          {
            datasetId   = null
            datasetPath = null
            inputName   = "filter_Service Instance"
            inputRole   = "Data"
            stageId     = "stage-62v8m9nt"
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
          index     = 2
          inputList = []
          label     = "Container CPU Utilizations"
          managers = [
            {
              id         = "lo7zdo4c"
              isDisabled = false
              type       = "Vis"
              vis = {
                config = {
                  color         = "Default"
                  hideGridLines = false
                  legend = {
                    type    = "list"
                    visible = false
                  }
                  type = "xy"
                  xConfig = {
                    visible = true
                  }
                  yConfig = {
                    unit    = "percent (0.0-1.0)"
                    visible = true
                  }
                }
                source = {
                  table = {
                    groupFields = [
                      [
                        "revisionAssetKey",
                      ],
                    ]
                    transformType = "none"
                    type          = "xy"
                    x             = "valid_from"
                    y             = "A_container_cpu_utilizations_sum"
                  }
                  topK = {
                    k     = 40
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
            wantBuckets = 250
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
              id                = "step-mykftex5"
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
                        dataVis = {
                          config = {
                            color         = "Default"
                            hideGridLines = false
                            legend = {
                              type    = "list"
                              visible = false
                            }
                            type = "xy"
                            xConfig = {
                              visible = true
                            }
                            yConfig = {
                              unit    = "percent (0.0-1.0)"
                              visible = true
                            }
                          }
                          source = {
                            table = {
                              groupFields = [
                                [
                                  "revisionAssetKey",
                                ],
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
                                  "serviceAssetKey",
                                ]
                                label = "Service Instance"
                                srcFields = [
                                  "serviceAssetKey",
                                ]
                                targetDataset    = local.cloud_run_service_instances
                                targetStageLabel = null
                                type             = "foreign"
                              }
                              joinInput = {
                                stageId = "stage-62v8m9nt"
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
                            "revisionAssetKey",
                          ],
                        ]
                        id = "metricExpression-rwru4emp"
                        inputSource = {
                          datasetId = local.cloud_run_metrics
                        }
                        lookupActions = []
                        metric = {
                          aggregate           = "sum"
                          datasetId           = local.cloud_run_metrics
                          description         = <<-EOT
                                                        Container CPU utilization distribution across all container instances.
                                                    EOT
                          heuristics          = null
                          name                = "container_cpu_utilizations"
                          rollup              = "avg"
                          suggestedBucketSize = "60000000000"
                          type                = "delta"
                          unit                = "10^2.%"
                          userDefined         = true
                        }
                        metricLink = {
                          __typename = "ForeignKey"
                          dstFields = [
                            "serviceAssetKey",
                          ]
                          label = "Service Instance"
                          srcFields = [
                            "serviceAssetKey",
                          ]
                          targetDataset    = local.cloud_run_service_instances
                          targetStageLabel = null
                          type             = "foreign"
                        }
                        metricLinkInputSource = {
                          stageId = "stage-62v8m9nt"
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
                      id            = "multiExpression-b28irga9"
                      lookupActions = []
                      type          = "multiExpression"
                    }
                    selectedExpressionIds = [
                      "metricExpression-rwru4emp",
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
              id       = "step-berjk2v7"
              index    = 1
              isPinned = false
              opal = [
                "exists serviceAssetKey = @\"filter_Service Instance\".serviceAssetKey",
                "align A_container_cpu_utilizations_sum:avg(m(\"container_cpu_utilizations\"))",
                "aggregate A_container_cpu_utilizations_sum:sum(A_container_cpu_utilizations_sum), group_by(revisionAssetKey)",
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
                    exists serviceAssetKey = @"filter_Service Instance".serviceAssetKey
                    align A_container_cpu_utilizations_sum:avg(m("container_cpu_utilizations"))
                    aggregate A_container_cpu_utilizations_sum:sum(A_container_cpu_utilizations_sum), group_by(revisionAssetKey)
                EOT
      },
      {
        id = "stage-cg4hxb3x"
        input = [
          {
            datasetId   = local.cloud_run_metrics
            datasetPath = null
            inputName   = "container_memory_utilizations_from_42350178"
            inputRole   = "Data"
            stageId     = null
          },
          {
            datasetId   = null
            datasetPath = null
            inputName   = "filter_Service Instance"
            inputRole   = "Data"
            stageId     = "stage-62v8m9nt"
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
          index     = 3
          inputList = []
          label     = "Container Memory Utilizations"
          managers = [
            {
              id         = "cabj0jv7"
              isDisabled = false
              type       = "Vis"
              vis = {
                config = {
                  color         = "Default"
                  hideGridLines = false
                  legend = {
                    type    = "list"
                    visible = false
                  }
                  type = "xy"
                  xConfig = {
                    visible = true
                  }
                  yConfig = {
                    unit    = "percent (0.0-1.0)"
                    visible = true
                  }
                }
                source = {
                  table = {
                    groupFields = [
                      [
                        "revisionAssetKey",
                      ],
                    ]
                    transformType = "none"
                    type          = "xy"
                    x             = "valid_from"
                    y             = "A_container_memory_utilizations_sum"
                  }
                  topK = {
                    k     = 40
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
            wantBuckets = 250
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
              id                = "step-zuxr1eel"
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
                              type    = "list"
                              visible = false
                            }
                            type = "xy"
                            xConfig = {
                              visible = true
                            }
                            yConfig = {
                              unit    = "percent (0.0-1.0)"
                              visible = true
                            }
                          }
                          source = {
                            table = {
                              groupFields = [
                                [
                                  "revisionAssetKey",
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
                                  "serviceAssetKey",
                                ]
                                label = "Service Instance"
                                srcFields = [
                                  "serviceAssetKey",
                                ]
                                targetDataset    = local.cloud_run_service_instances
                                targetStageLabel = null
                                type             = "foreign"
                              }
                              joinInput = {
                                stageId = "stage-62v8m9nt"
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
                            "revisionAssetKey",
                          ],
                        ]
                        id = "metricExpression-f6da0wat"
                        inputSource = {
                          datasetId = local.cloud_run_metrics
                        }
                        lookupActions = []
                        metric = {
                          aggregate           = "sum"
                          datasetId           = local.cloud_run_metrics
                          description         = <<-EOT
                                                        Container memory utilization distribution across all container instances.
                                                    EOT
                          heuristics          = null
                          name                = "container_memory_utilizations"
                          rollup              = "avg"
                          suggestedBucketSize = "60000000000"
                          type                = "delta"
                          unit                = "10^2.%"
                          userDefined         = true
                        }
                        metricLink = {
                          __typename = "ForeignKey"
                          dstFields = [
                            "serviceAssetKey",
                          ]
                          label = "Service Instance"
                          srcFields = [
                            "serviceAssetKey",
                          ]
                          targetDataset    = local.cloud_run_service_instances
                          targetStageLabel = null
                          type             = "foreign"
                        }
                        metricLinkInputSource = {
                          stageId = "stage-62v8m9nt"
                        }
                        showAlignment  = true
                        showResolution = false
                        summaryMode    = "over-time"
                        type           = "metricExpression"
                        valueColumnId  = "A_container_memory_utilizations_sum"
                      },
                    ]
                    multiExpression = {
                      filterActions = []
                      id            = "multiExpression-nctws0q4"
                      lookupActions = []
                      type          = "multiExpression"
                    }
                    selectedExpressionIds = [
                      "metricExpression-f6da0wat",
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
              id       = "step-f2evlsiu"
              index    = 1
              isPinned = false
              opal = [
                "exists serviceAssetKey = @\"filter_Service Instance\".serviceAssetKey",
                "align A_container_memory_utilizations_sum:avg(m(\"container_memory_utilizations\"))",
                "aggregate A_container_memory_utilizations_sum:sum(A_container_memory_utilizations_sum), group_by(revisionAssetKey)",
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
                    exists serviceAssetKey = @"filter_Service Instance".serviceAssetKey
                    align A_container_memory_utilizations_sum:avg(m("container_memory_utilizations"))
                    aggregate A_container_memory_utilizations_sum:sum(A_container_memory_utilizations_sum), group_by(revisionAssetKey)
                EOT
      },
      {
        id = "stage-2u03u331"
        input = [
          {
            datasetId   = local.cloud_run_metrics
            datasetPath = null
            inputName   = "request_count_from_42350178"
            inputRole   = "Data"
            stageId     = null
          },
          {
            datasetId   = null
            datasetPath = null
            inputName   = "filter_Service Instance"
            inputRole   = "Data"
            stageId     = "stage-62v8m9nt"
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
          index     = 4
          inputList = []
          label     = "Request Throughput"
          managers = [
            {
              id         = "5iedun2q"
              isDisabled = false
              type       = "Vis"
              vis = {
                config = {
                  color         = "Default"
                  hideGridLines = false
                  legend = {
                    type    = "list"
                    visible = false
                  }
                  thresholds = {
                    startingColor = "Default"
                    thresholds    = []
                    visible       = false
                  }
                  type = "xy"
                  xConfig = {
                    visible = true
                  }
                  yConfig = {
                    unit    = "requests/sec"
                    visible = true
                  }
                }
                source = {
                  table = {
                    groupFields = [
                      [
                        "revisionAssetKey",
                      ],
                    ]
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
                    y             = "A_request_count_sum"
                  }
                  topK = {
                    k     = 100
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
            wantBuckets = 100
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
              id                = "step-rz2dfhxy"
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
                              type    = "list"
                              visible = false
                            }
                            thresholds = {
                              startingColor = "Default"
                              thresholds    = []
                              visible       = false
                            }
                            type = "xy"
                            xConfig = {
                              visible = true
                            }
                            yConfig = {
                              unit    = "requests/sec"
                              visible = true
                            }
                          }
                          source = {
                            table = {
                              groupFields = [
                                [
                                  "revisionAssetKey",
                                ],
                              ]
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
                        filterActions = [
                          {
                            params = {
                              foreignKey = {
                                __typename = "ForeignKey"
                                dstFields = [
                                  "serviceAssetKey",
                                ]
                                label = "Service Instance"
                                srcFields = [
                                  "serviceAssetKey",
                                ]
                                targetDataset    = local.cloud_run_service_instances
                                targetStageLabel = null
                                type             = "foreign"
                              }
                              joinInput = {
                                stageId = "stage-62v8m9nt"
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
                            "revisionAssetKey",
                          ],
                        ]
                        id = "metricExpression-zz59c2x5"
                        inputSource = {
                          datasetId = local.cloud_run_metrics
                        }
                        lookupActions = []
                        metric = {
                          aggregate           = "sum"
                          datasetId           = local.cloud_run_metrics
                          description         = <<-EOT
                                                        Number of requests reaching the revision. Excludes requests that are not reaching your container instances for example, unauthorized requests or when maximum number of instances is reached. Captured at the end of the request lifecycle.
                                                    EOT
                          heuristics          = null
                          name                = "request_count"
                          rollup              = "rate"
                          suggestedBucketSize = "60000000000"
                          type                = "delta"
                          unit                = "1"
                          userDefined         = true
                        }
                        metricLink = {
                          __typename = "ForeignKey"
                          dstFields = [
                            "serviceAssetKey",
                          ]
                          label = "Service Instance"
                          srcFields = [
                            "serviceAssetKey",
                          ]
                          targetDataset    = local.cloud_run_service_instances
                          targetStageLabel = null
                          type             = "foreign"
                        }
                        metricLinkInputSource = {
                          stageId = "stage-62v8m9nt"
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
                      id            = "multiExpression-h8yda36p"
                      lookupActions = []
                      type          = "multiExpression"
                    }
                    selectedExpressionIds = [
                      "metricExpression-zz59c2x5",
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
              id       = "step-qpjatyt2"
              index    = 1
              isPinned = false
              opal = [
                "exists serviceAssetKey = @\"filter_Service Instance\".serviceAssetKey",
                "align A_request_count_sum:rate(m(\"request_count\"))",
                "aggregate A_request_count_sum:sum(A_request_count_sum), group_by(revisionAssetKey)",
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
                    exists serviceAssetKey = @"filter_Service Instance".serviceAssetKey
                    align A_request_count_sum:rate(m("request_count"))
                    aggregate A_request_count_sum:sum(A_request_count_sum), group_by(revisionAssetKey)
                EOT
      },
      {
        id = "stage-2rzxxu14"
        input = [
          {
            datasetId   = local.cloud_run_metrics
            datasetPath = null
            inputName   = "request_latencies_from_42350178"
            inputRole   = "Data"
            stageId     = null
          },
          {
            datasetId   = null
            datasetPath = null
            inputName   = "filter_Service Instance"
            inputRole   = "Data"
            stageId     = "stage-62v8m9nt"
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
          index     = 5
          inputList = []
          label     = "Request Latencies"
          managers = [
            {
              id         = "3pwigjow"
              isDisabled = false
              type       = "Vis"
              vis = {
                config = {
                  color         = "Default"
                  hideGridLines = false
                  legend = {
                    type    = "list"
                    visible = false
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
                  table = {
                    groupFields = [
                      [
                        "revisionAssetKey",
                      ],
                    ]
                    transformType = "none"
                    type          = "xy"
                    x             = "valid_from"
                    y             = "A_request_latencies_sum"
                  }
                  topK = {
                    k     = 100
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
            wantBuckets = 100
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
              id                = "step-n4bg2hbp"
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
                        dataVis = {
                          config = {
                            color         = "Default"
                            hideGridLines = false
                            legend = {
                              type    = "list"
                              visible = false
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
                            table = {
                              groupFields = [
                                [
                                  "revisionAssetKey",
                                ],
                              ]
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
                                  "serviceAssetKey",
                                ]
                                label = "Service Instance"
                                srcFields = [
                                  "serviceAssetKey",
                                ]
                                targetDataset    = local.cloud_run_service_instances
                                targetStageLabel = null
                                type             = "foreign"
                              }
                              joinInput = {
                                stageId = "stage-62v8m9nt"
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
                            "revisionAssetKey",
                          ],
                        ]
                        id = "metricExpression-yetr3vic"
                        inputSource = {
                          datasetId = local.cloud_run_metrics
                        }
                        lookupActions = []
                        metric = {
                          aggregate           = "sum"
                          datasetId           = local.cloud_run_metrics
                          description         = <<-EOT
                                                        Distribution of request latency in milliseconds reaching the revision. Latency is measured from when the request reaches the running container to when it exits. Notably, it does not include container startup latency.
                                                    EOT
                          heuristics          = null
                          name                = "request_latencies"
                          rollup              = "avg"
                          suggestedBucketSize = "60000000000"
                          type                = "delta"
                          unit                = "ms"
                          userDefined         = true
                        }
                        metricLink = {
                          __typename = "ForeignKey"
                          dstFields = [
                            "serviceAssetKey",
                          ]
                          label = "Service Instance"
                          srcFields = [
                            "serviceAssetKey",
                          ]
                          targetDataset    = local.cloud_run_service_instances
                          targetStageLabel = null
                          type             = "foreign"
                        }
                        metricLinkInputSource = {
                          stageId = "stage-62v8m9nt"
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
                      id            = "multiExpression-9arqviyw"
                      lookupActions = []
                      type          = "multiExpression"
                    }
                    selectedExpressionIds = [
                      "metricExpression-yetr3vic",
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
              id       = "step-5x35rhhh"
              index    = 1
              isPinned = false
              opal = [
                "exists serviceAssetKey = @\"filter_Service Instance\".serviceAssetKey",
                "align A_request_latencies_sum:avg(m(\"request_latencies\"))",
                "aggregate A_request_latencies_sum:sum(A_request_latencies_sum), group_by(revisionAssetKey)",
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
                    exists serviceAssetKey = @"filter_Service Instance".serviceAssetKey
                    align A_request_latencies_sum:avg(m("request_latencies"))
                    aggregate A_request_latencies_sum:sum(A_request_latencies_sum), group_by(revisionAssetKey)
                EOT
      },
      {
        id = "stage-d3ljrh52"
        input = [
          {
            datasetId   = local.cloud_run_metrics
            datasetPath = null
            inputName   = "container_startup_latencies_from_42350178"
            inputRole   = "Data"
            stageId     = null
          },
          {
            datasetId   = null
            datasetPath = null
            inputName   = "filter_Service Instance"
            inputRole   = "Data"
            stageId     = "stage-62v8m9nt"
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
          index     = 6
          inputList = []
          label     = "Container Startup Latencies"
          managers = [
            {
              id         = "dfk900gv"
              isDisabled = false
              type       = "Vis"
              vis = {
                config = {
                  areaFillType = "SolidFill"
                  colorMapping = [
                    {
                      color = ""
                      key   = ""
                    },
                  ]
                  legend = {
                    type    = "list"
                    visible = false
                  }
                  thresholds = {
                    startingColor = "Default"
                    thresholds    = []
                    visible       = false
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
                        "revisionAssetKey",
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
                    k     = 100
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
            wantBuckets = 10
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
              id                = "step-hs6chypg"
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
                            areaFillType = "SolidFill"
                            colorMapping = [
                              {
                                color = ""
                                key   = ""
                              },
                            ]
                            legend = {
                              type    = "list"
                              visible = false
                            }
                            thresholds = {
                              startingColor = "Default"
                              thresholds    = []
                              visible       = false
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
                                  "revisionAssetKey",
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
                                  "serviceAssetKey",
                                ]
                                label = "Service Instance"
                                srcFields = [
                                  "serviceAssetKey",
                                ]
                                targetDataset    = local.cloud_run_service_instances
                                targetStageLabel = null
                                type             = "foreign"
                              }
                              joinInput = {
                                stageId = "stage-62v8m9nt"
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
                            "revisionAssetKey",
                          ],
                        ]
                        id = "metricExpression-9g8tsm8y"
                        inputSource = {
                          datasetId = local.cloud_run_metrics
                        }
                        lookupActions = []
                        metric = {
                          aggregate           = "sum"
                          datasetId           = local.cloud_run_metrics
                          description         = <<-EOT
                                                        Distribution of time spent starting a new container instance in milliseconds.
                                                    EOT
                          heuristics          = null
                          name                = "container_startup_latencies"
                          rollup              = "max"
                          suggestedBucketSize = "60000000000"
                          type                = "delta"
                          unit                = "ms"
                          userDefined         = true
                        }
                        metricLink = {
                          __typename = "ForeignKey"
                          dstFields = [
                            "serviceAssetKey",
                          ]
                          label = "Service Instance"
                          srcFields = [
                            "serviceAssetKey",
                          ]
                          targetDataset    = local.cloud_run_service_instances
                          targetStageLabel = null
                          type             = "foreign"
                        }
                        metricLinkInputSource = {
                          stageId = "stage-62v8m9nt"
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
                      id            = "multiExpression-v0i0mvpi"
                      lookupActions = []
                      type          = "multiExpression"
                    }
                    selectedExpressionIds = [
                      "metricExpression-9g8tsm8y",
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
              id       = "step-zgato4yw"
              index    = 1
              isPinned = false
              opal = [
                "exists serviceAssetKey = @\"filter_Service Instance\".serviceAssetKey",
                "align A_container_startup_latencies_sum:max(m(\"container_startup_latencies\"))",
                "aggregate A_container_startup_latencies_sum:sum(A_container_startup_latencies_sum), group_by(revisionAssetKey)",
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
                    exists serviceAssetKey = @"filter_Service Instance".serviceAssetKey
                    align A_container_startup_latencies_sum:max(m("container_startup_latencies"))
                    aggregate A_container_startup_latencies_sum:sum(A_container_startup_latencies_sum), group_by(revisionAssetKey)
                EOT
      },
      {
        id = "stage-xrmdkudf"
        input = [
          {
            datasetId   = local.cloud_run_metrics
            datasetPath = null
            inputName   = "container_billable_instance_time_from_42350178"
            inputRole   = "Data"
            stageId     = null
          },
          {
            datasetId   = null
            datasetPath = null
            inputName   = "filter_Service Instance"
            inputRole   = "Data"
            stageId     = "stage-62v8m9nt"
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
          index     = 7
          inputList = []
          label     = "Billable Container Instance Time"
          managers = [
            {
              id         = "r04ke260"
              isDisabled = false
              type       = "Vis"
              vis = {
                config = {
                  color         = "Default"
                  hideGridLines = false
                  legend = {
                    type    = "list"
                    visible = false
                  }
                  thresholds = {
                    startingColor = "Default"
                    thresholds    = []
                    visible       = false
                  }
                  type = "xy"
                  xConfig = {
                    visible = true
                  }
                  yConfig = {
                    unit    = "seconds"
                    visible = true
                  }
                }
                source = {
                  table = {
                    groupFields = [
                      [
                        "revisionAssetKey",
                      ],
                    ]
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
                    y             = "A_container_billable_instance_time_sum"
                  }
                  topK = {
                    k     = 66
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
            rollup = {}
            sort = [
              {
                ascending  = true
                columnName = "A_container_billable_instance_time_sum"
              },
            ]
            wantBuckets = 150
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
              id                = "step-3s58fd7b"
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
                        dataVis = {
                          config = {
                            color         = "Default"
                            hideGridLines = false
                            legend = {
                              type    = "list"
                              visible = false
                            }
                            thresholds = {
                              startingColor = "Default"
                              thresholds    = []
                              visible       = false
                            }
                            type = "xy"
                            xConfig = {
                              visible = true
                            }
                            yConfig = {
                              unit    = "seconds"
                              visible = true
                            }
                          }
                          source = {
                            table = {
                              groupFields = [
                                [
                                  "revisionAssetKey",
                                ],
                              ]
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
                              y             = "A_container_billable_instance_time_sum"
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
                                  "serviceAssetKey",
                                ]
                                label = "Service Instance"
                                srcFields = [
                                  "serviceAssetKey",
                                ]
                                targetDataset    = local.cloud_run_service_instances
                                targetStageLabel = null
                                type             = "foreign"
                              }
                              joinInput = {
                                stageId = "stage-62v8m9nt"
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
                            "revisionAssetKey",
                          ],
                        ]
                        id = "metricExpression-c52xgla4"
                        inputSource = {
                          datasetId = local.cloud_run_metrics
                        }
                        lookupActions = []
                        metric = {
                          aggregate           = "sum"
                          datasetId           = local.cloud_run_metrics
                          description         = <<-EOT
                                                        Billable time aggregated across all container instances. For a given container instance, billable time occurs when the container instance is starting or at least one request is being processed. Billable time is rounded up to the nearest 100 milliseconds. Examples: If a revision with 2 container instances has been continuously serving traffic in the last minute, the value is 2s/s with the default "rate" aligner. If a single request lasting 30ms was received by a revision in the past minute, it is rounded up to 100ms and averaged to 1.7ms/s over the minute with the default "rate" aligner.
                                                    EOT
                          heuristics          = null
                          name                = "container_billable_instance_time"
                          rollup              = "sum"
                          suggestedBucketSize = "60000000000"
                          type                = "delta"
                          unit                = "s"
                          userDefined         = true
                        }
                        metricLink = {
                          __typename = "ForeignKey"
                          dstFields = [
                            "serviceAssetKey",
                          ]
                          label = "Service Instance"
                          srcFields = [
                            "serviceAssetKey",
                          ]
                          targetDataset    = local.cloud_run_service_instances
                          targetStageLabel = null
                          type             = "foreign"
                        }
                        metricLinkInputSource = {
                          stageId = "stage-62v8m9nt"
                        }
                        showAlignment  = true
                        showResolution = true
                        summaryMode    = "over-time"
                        type           = "metricExpression"
                        valueColumnId  = "A_container_billable_instance_time_sum"
                      },
                    ]
                    multiExpression = {
                      filterActions = []
                      id            = "multiExpression-9liyb5bj"
                      lookupActions = []
                      type          = "multiExpression"
                    }
                    selectedExpressionIds = [
                      "metricExpression-c52xgla4",
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
              id       = "step-dxi7wt91"
              index    = 1
              isPinned = false
              opal = [
                "exists serviceAssetKey = @\"filter_Service Instance\".serviceAssetKey",
                "align A_container_billable_instance_time_sum:sum(m(\"container_billable_instance_time\"))",
                "aggregate A_container_billable_instance_time_sum:sum(A_container_billable_instance_time_sum), group_by(revisionAssetKey)",
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
                    exists serviceAssetKey = @"filter_Service Instance".serviceAssetKey
                    align A_container_billable_instance_time_sum:sum(m("container_billable_instance_time"))
                    aggregate A_container_billable_instance_time_sum:sum(A_container_billable_instance_time_sum), group_by(revisionAssetKey)
                EOT
      },
      {
        id = "stage-c7a8fd4q"
        input = [
          {
            datasetId   = local.cloud_run_metrics
            datasetPath = null
            inputName   = "container_network_sent_bytes_count_from_42350178"
            inputRole   = "Data"
            stageId     = null
          },
          {
            datasetId   = null
            datasetPath = null
            inputName   = "filter_Service Instance"
            inputRole   = "Data"
            stageId     = "stage-62v8m9nt"
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
          index     = 8
          inputList = []
          label     = "Sent Bytes"
          managers = [
            {
              id         = "mgowdyvi"
              isDisabled = false
              type       = "Vis"
              vis = {
                config = {
                  color         = "Default"
                  hideGridLines = false
                  legend = {
                    type    = "list"
                    visible = false
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
                  table = {
                    groupFields = [
                      [
                        "revisionAssetKey",
                      ],
                    ]
                    transformType = "none"
                    type          = "xy"
                    x             = "valid_from"
                    y             = "A_container_network_sent_bytes_count_sum"
                  }
                  topK = {
                    k     = 100
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
            wantBuckets = 100
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
              id                = "step-llzwoxh9"
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
                              type    = "list"
                              visible = false
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
                            table = {
                              groupFields = [
                                [
                                  "revisionAssetKey",
                                ],
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
                        filterActions = [
                          {
                            params = {
                              foreignKey = {
                                __typename = "ForeignKey"
                                dstFields = [
                                  "serviceAssetKey",
                                ]
                                label = "Service Instance"
                                srcFields = [
                                  "serviceAssetKey",
                                ]
                                targetDataset    = local.cloud_run_service_instances
                                targetStageLabel = null
                                type             = "foreign"
                              }
                              joinInput = {
                                stageId = "stage-62v8m9nt"
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
                            "revisionAssetKey",
                          ],
                        ]
                        id = "metricExpression-c0201gcz"
                        inputSource = {
                          datasetId = local.cloud_run_metrics
                        }
                        lookupActions = []
                        metric = {
                          aggregate           = "sum"
                          datasetId           = local.cloud_run_metrics
                          description         = <<-EOT
                                                        Outgoing socket and HTTP response traffic, in bytes.
                                                    EOT
                          heuristics          = null
                          name                = "container_network_sent_bytes_count"
                          rollup              = "sum"
                          suggestedBucketSize = "60000000000"
                          type                = "delta"
                          unit                = "By"
                          userDefined         = true
                        }
                        metricLink = {
                          __typename = "ForeignKey"
                          dstFields = [
                            "serviceAssetKey",
                          ]
                          label = "Service Instance"
                          srcFields = [
                            "serviceAssetKey",
                          ]
                          targetDataset    = local.cloud_run_service_instances
                          targetStageLabel = null
                          type             = "foreign"
                        }
                        metricLinkInputSource = {
                          stageId = "stage-62v8m9nt"
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
                      id            = "multiExpression-2uipsar5"
                      lookupActions = []
                      type          = "multiExpression"
                    }
                    selectedExpressionIds = [
                      "metricExpression-c0201gcz",
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
              id       = "step-d91wx3g0"
              index    = 1
              isPinned = false
              opal = [
                "exists serviceAssetKey = @\"filter_Service Instance\".serviceAssetKey",
                "align A_container_network_sent_bytes_count_sum:sum(m(\"container_network_sent_bytes_count\"))",
                "aggregate A_container_network_sent_bytes_count_sum:sum(A_container_network_sent_bytes_count_sum), group_by(revisionAssetKey)",
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
                    exists serviceAssetKey = @"filter_Service Instance".serviceAssetKey
                    align A_container_network_sent_bytes_count_sum:sum(m("container_network_sent_bytes_count"))
                    aggregate A_container_network_sent_bytes_count_sum:sum(A_container_network_sent_bytes_count_sum), group_by(revisionAssetKey)
                EOT
      },
      {
        id = "stage-m4ho1t3t"
        input = [
          {
            datasetId   = local.cloud_run_metrics
            datasetPath = null
            inputName   = "container_network_received_bytes_count_from_42350178"
            inputRole   = "Data"
            stageId     = null
          },
          {
            datasetId   = null
            datasetPath = null
            inputName   = "filter_Service Instance"
            inputRole   = "Data"
            stageId     = "stage-62v8m9nt"
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
          label     = "Received Bytes"
          managers = [
            {
              id         = "kxaoxfdh"
              isDisabled = false
              type       = "Vis"
              vis = {
                config = {
                  color         = "Default"
                  hideGridLines = false
                  legend = {
                    type    = "list"
                    visible = false
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
                  table = {
                    groupFields = [
                      [
                        "revisionAssetKey",
                      ],
                    ]
                    transformType = "none"
                    type          = "xy"
                    x             = "valid_from"
                    y             = "A_container_network_received_bytes_count_sum"
                  }
                  topK = {
                    k     = 100
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
            wantBuckets = 100
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
              id                = "step-zryfk9l6"
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
                              type    = "list"
                              visible = false
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
                            table = {
                              groupFields = [
                                [
                                  "revisionAssetKey",
                                ],
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
                        filterActions = [
                          {
                            params = {
                              foreignKey = {
                                __typename = "ForeignKey"
                                dstFields = [
                                  "serviceAssetKey",
                                ]
                                label = "Service Instance"
                                srcFields = [
                                  "serviceAssetKey",
                                ]
                                targetDataset    = local.cloud_run_service_instances
                                targetStageLabel = null
                                type             = "foreign"
                              }
                              joinInput = {
                                stageId = "stage-62v8m9nt"
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
                            "revisionAssetKey",
                          ],
                        ]
                        id = "metricExpression-vwb5snk7"
                        inputSource = {
                          datasetId = local.cloud_run_metrics
                        }
                        lookupActions = []
                        metric = {
                          aggregate           = "sum"
                          datasetId           = local.cloud_run_metrics
                          description         = <<-EOT
                                                        Incoming socket and HTTP response traffic, in bytes.
                                                    EOT
                          heuristics          = null
                          name                = "container_network_received_bytes_count"
                          rollup              = "sum"
                          suggestedBucketSize = "60000000000"
                          type                = "delta"
                          unit                = "By"
                          userDefined         = true
                        }
                        metricLink = {
                          __typename = "ForeignKey"
                          dstFields = [
                            "serviceAssetKey",
                          ]
                          label = "Service Instance"
                          srcFields = [
                            "serviceAssetKey",
                          ]
                          targetDataset    = local.cloud_run_service_instances
                          targetStageLabel = null
                          type             = "foreign"
                        }
                        metricLinkInputSource = {
                          stageId = "stage-62v8m9nt"
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
                      id            = "multiExpression-l3vffkco"
                      lookupActions = []
                      type          = "multiExpression"
                    }
                    selectedExpressionIds = [
                      "metricExpression-vwb5snk7",
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
              id       = "step-f6rtlm5d"
              index    = 1
              isPinned = false
              opal = [
                "exists serviceAssetKey = @\"filter_Service Instance\".serviceAssetKey",
                "align A_container_network_received_bytes_count_sum:sum(m(\"container_network_received_bytes_count\"))",
                "aggregate A_container_network_received_bytes_count_sum:sum(A_container_network_received_bytes_count_sum), group_by(revisionAssetKey)",
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
                    exists serviceAssetKey = @"filter_Service Instance".serviceAssetKey
                    align A_container_network_received_bytes_count_sum:sum(m("container_network_received_bytes_count"))
                    aggregate A_container_network_received_bytes_count_sum:sum(A_container_network_received_bytes_count_sum), group_by(revisionAssetKey)
                EOT
      },
      {
        id = "stage-2udnz4r7"
        input = [
          {
            datasetId   = local.cloud_run_revision_instances
            datasetPath = null
            inputName   = "GCP/Cloud Run Revision Instances"
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
            containerWidth               = 2250
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
              cells = {
                revisionName = {
                  "0" = true
                }
              }
              columnSelectSequence = []
              columns              = {}
              highlightState       = {}
              rows                 = {}
              selectionType        = "cell"
            }
            summaryColumnOrderOverride = {}
            summaryColumnVisibility    = {}
            tableHeight                = 0
            tableView                  = "TABULAR"
          }
          index = 10
          inputList = [
            {
              datasetId   = local.cloud_run_revision_instances
              inputName   = "GCP/Cloud Run Revision Instances"
              inputRole   = "Data"
              isUserInput = false
            },
          ]
          label = "Revisions Summary"
          managers = [
            {
              id                     = "tip1pktl"
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
              customSummary = "GCP/Cloud Run Revision Instances"
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
              id                = "step-nndfiju6"
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
              id       = "step-4tzldunv"
              index    = 1
              isPinned = false
              opal = [
                "filter if(not is_null($service), serviceAssetKey=$service.serviceAssetKey, true)",
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
        pipeline = "filter if(not is_null($service), serviceAssetKey=$service.serviceAssetKey, true)"
      },
      {
        id = "stage-6pi63cfb"
        input = [
          {
            datasetId   = null
            datasetPath = null
            inputName   = "Service Instance_-62v8"
            inputRole   = "Data"
            stageId     = "stage-62v8m9nt"
          },
          {
            datasetId   = local.cloud_run_revision_instances
            datasetPath = null
            inputName   = "GCP/Cloud Run Revision Instances"
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
              "0" = "Valid From"
              "1" = "Valid To"
              "2" = "serviceName"
            }
            columnVisibility = {
              revisionName = false
            }
            columnWidths                 = {}
            containerWidth               = 734
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
              cells = {}
              columnSelectSequence = [
                "Revision Instance",
              ]
              columns = {
                "Revision Instance" = true
              }
              highlightState = {}
              rows           = {}
              selectionType  = "column"
            }
            summaryColumnOrderOverride = {}
            summaryColumnVisibility    = {}
            tableHeight                = 0
            tableView                  = "TABULAR"
          }
          index = 11
          inputList = [
            {
              inputName   = "Service Instance_-62v8"
              inputRole   = "Data"
              isUserInput = false
              stageId     = "stage-62v8m9nt"
            },
            {
              datasetId   = local.cloud_run_revision_instances
              inputName   = "GCP/Cloud Run Revision Instances"
              inputRole   = "Data"
              isUserInput = true
            },
          ]
          label = "Traffic Details"
          managers = [
            {
              id                     = "9jz0dpsf"
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
              customSummary = "Service Instance_-62v8"
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
              id                = "step-qu5fumkx"
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
              id       = "step-zu2ir352"
              index    = 1
              isPinned = false
              opal = [
                "flatten_single traffic",
                "make_col",
                "  percent:if_null(_c_traffic_value.percent, 0),",
                "  latestRevision:if(path_exists(_c_traffic_value, \"latestRevision\"), _c_traffic_value.latestRevision, string(_c_traffic_value.revisionName)=revisionName),",
                "  revisionServed: string(if(_c_traffic_value.latestRevision=true, revisionName, _c_traffic_value.revisionName))",
                "make_interval",
                "pick_col ",
                "    @.\"Valid From\",",
                "    @.\"Valid To\",",
                "    serviceAssetKey,",
                "    revisionName:revisionServed,",
                "    latestRevision,",
                "    percent",
                "",
                "set_link \"Revision Instance\", revisionName:@\"GCP/Cloud Run Revision Instances\".revisionName",
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
                    flatten_single traffic
                    make_col
                      percent:if_null(_c_traffic_value.percent, 0),
                      latestRevision:if(path_exists(_c_traffic_value, "latestRevision"), _c_traffic_value.latestRevision, string(_c_traffic_value.revisionName)=revisionName),
                      revisionServed: string(if(_c_traffic_value.latestRevision=true, revisionName, _c_traffic_value.revisionName))
                    make_interval
                    pick_col 
                        @."Valid From",
                        @."Valid To",
                        serviceAssetKey,
                        revisionName:revisionServed,
                        latestRevision,
                        percent
                    
                    set_link "Revision Instance", revisionName:@"GCP/Cloud Run Revision Instances".revisionName
                EOT
      },
      {
        id = "stage-tikxgeiy"
        input = [
          {
            datasetId   = null
            datasetPath = null
            inputName   = "Service Instance_-62v8"
            inputRole   = "Data"
            stageId     = "stage-62v8m9nt"
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
            columnVisibility             = {}
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
          index = 12
          inputList = [
            {
              inputName   = "Service Instance_-62v8"
              inputRole   = "Data"
              isUserInput = false
              stageId     = "stage-62v8m9nt"
            },
          ]
          label = "Latest Revision Name"
          managers = [
            {
              id                     = "7dqn5d4x"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "yiad7yi6"
              isDisabled = false
              type       = "Vis"
              vis = {
                config = {
                  color           = "Default"
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
                    field       = "Latest Revision Instance"
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
              customSummary = "Service Instance_-62v8"
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
              id                = "step-j4pye76m"
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
                        columnFk = {
                          dstFields = [
                            "revisionName",
                          ]
                          label = "Latest Revision Instance"
                          srcFields = [
                            "revisionName",
                          ]
                          targetDataset    = local.cloud_run_revision_instances
                          targetLabelField = "revisionName"
                          type             = "linked"
                        }
                        columnId = "Latest Revision Instance"
                        dataVis = {
                          config = {
                            color           = "Default"
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
                              field       = "Latest Revision Instance"
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
                        id            = "datasetQueryExpression-5uym02ex"
                        lookupActions = []
                        primaryKey = [
                          "serviceAssetKey",
                        ]
                        summaryFunction = "count_distinct_exact"
                        summaryMode     = "no-aggregate"
                        type            = "datasetQueryExpression"
                      },
                    ]
                    multiExpression = {
                      filterActions = []
                      id            = "multiExpression-imrukqw6"
                      lookupActions = []
                      type          = "multiExpression"
                    }
                    selectedExpressionIds = [
                      "datasetQueryExpression-5uym02ex",
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
              id                = "step-9k6r1rqd"
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
    ]
  )
}
