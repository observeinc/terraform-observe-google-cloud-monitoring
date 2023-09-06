# terraform import observe_dashboard.cloud_functions_monitoring 43244669
resource "observe_dashboard" "cloud_functions_monitoring" {
  count       = local.cloud_functions_monitoring_v2_dashboard_enable
  description = local.cloud_functions_monitoring_v2_dashboard_description
  layout = jsonencode(
    {
      autoPack = true
      gridLayout = {
        sections = [
          {
            card = {
              cardType = "section"
              closed   = false
              id       = "card-b50m0cdr"
              title    = "Dashboard Content"
            }
            items        = []
            lastModified = 1660768719914
          },
          {
            card = {
              cardType = "section"
              closed   = false
              id       = "card-wdfd996u"
              title    = "Overview"
            }
            items = [
              {
                card = {
                  cardType = "stage"
                  id       = "card-66btphwy"
                  stageId  = "stage-j3zdwc7r"
                }
                layout = {
                  h = 12
                  i = "card-66btphwy"
                  w = 4
                  x = 0
                  y = 0
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-4jul02hb"
                  stageId  = "stage-ziasm4uf"
                }
                layout = {
                  h = 12
                  i = "card-4jul02hb"
                  w = 4
                  x = 4
                  y = 0
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-m3fvncc1"
                  stageId  = "stage-367tr336"
                }
                layout = {
                  h = 12
                  i = "card-m3fvncc1"
                  w = 4
                  x = 8
                  y = 0
                }
              },
            ]
          },
          {
            card = {
              cardType = "section"
              closed   = false
              id       = "card-gkhrcj80"
              title    = "Monitoring"
            }
            items = [
              {
                card = {
                  cardType = "stage"
                  id       = "card-kq1h026y"
                  stageId  = "stage-v80el32j"
                }
                layout = {
                  h = 24
                  i = "card-kq1h026y"
                  w = 9
                  x = 0
                  y = 0
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-x2qiv0wv"
                  stageId  = "stage-ifk44t3v"
                }
                layout = {
                  h = 12
                  i = "card-x2qiv0wv"
                  w = 3
                  x = 9
                  y = 0
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-53yq080f"
                  stageId  = "stage-ra65e7v9"
                }
                layout = {
                  h = 12
                  i = "card-53yq080f"
                  w = 3
                  x = 9
                  y = 12
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-zxbz44hs"
                  stageId  = "stage-hmpks85q"
                }
                layout = {
                  h = 17
                  i = "card-zxbz44hs"
                  w = 6
                  x = 0
                  y = 24
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-1l8wuqx3"
                  stageId  = "stage-f0whobgm"
                }
                layout = {
                  h = 17
                  i = "card-1l8wuqx3"
                  w = 6
                  x = 6
                  y = 24
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-8vuqqdsh"
                  stageId  = "stage-4jcselfm"
                }
                layout = {
                  h = 15
                  i = "card-8vuqqdsh"
                  w = 6
                  x = 0
                  y = 41
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-ot79t7wi"
                  stageId  = "stage-r41eirof"
                }
                layout = {
                  h = 15
                  i = "card-ot79t7wi"
                  w = 6
                  x = 6
                  y = 41
                }
              },
            ]
          },
          {
            card = {
              cardType = "section"
              closed   = false
              id       = "card-w2ugkzjh"
              title    = "Documentation"
            }
            items = [
              {
                card = {
                  cardType = "text"
                  id       = "card-n6h3vok2"
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
                  h = 13
                  i = "card-n6h3vok2"
                  w = 8
                  x = 0
                  y = 0
                }
              },
              {
                card = {
                  cardType = "text"
                  id       = "card-a18sgqzb"
                  text     = <<-EOT
                                        # Notes
                                                                                                                                                                                                        
                                        **Metrics**
                                                                                                                                                                                                        
                                        Enable data collection for this app by enabling Observe’s GCP app and adding `cloudfunctions.googleapis.com/` to the `include_metric_type_prefixes` option (this is added by default in the standard configuration).
                                    EOT
                  title    = "Untitled Text"
                }
                layout = {
                  h = 13
                  i = "card-a18sgqzb"
                  w = 4
                  x = 8
                  y = 0
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
            controlledFilterStageId = "stage-jjzyl2fz"
            datasetId               = local.cloud_functions_instances
            defaultValue = {
              datasetref = {
                datasetId = local.cloud_functions_instances
              }
            }
            emptyValueEncoding    = "null"
            emptyValueLabelOption = "null"
            id                    = "input-parameter-te16nn3x"
            name                  = "cloudFunctionDataset"
            valueKind = {
              type = "DATASETREF"
            }
            viewType = "input"
          },
        ]
        timeRange = {
          display               = "20 Apr 12:05:39 → 12:13:51"
          endTime               = 1682018031961
          millisFromCurrentTime = null
          originalDisplay       = "2023-04-20 12:05:39 ~ 2023-04-20 12:13:51"
          startTime             = 1682017539601.8193
          timeRangeInfo = {
            key  = "DATE_RANGE"
            name = "Date Range"
          }
          timeZone = null
        }
      }
    }
  )
  name = local.cloud_functions_monitoring_v2_dashboard_name
  parameters = jsonencode(
    [
      {
        defaultValue = {
          datasetref = {
            datasetId = local.cloud_functions_instances
          }
        }
        id   = "input-parameter-te16nn3x"
        name = "cloudFunctionDataset"
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
            datasetId   = local.cloud_functions_metrics
            datasetPath = null
            inputName   = "function_active_instances"
            inputRole   = "Data"
            stageId     = null
          },
          {
            datasetId   = local.cloud_functions_instances
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
          {
            datasetId   = local.cloud_functions_instances
            datasetPath = null
            inputName   = "filter_Cloud Function"
            inputRole   = "Data"
            stageId     = null
          },
        ]
        layout = {
          appearance = "VISIBLE"
          dataTableViewState = {
            columnOrderOverride = {
              "0" = "valid_from"
              "1" = "valid_to"
              "2" = "name"
              "4" = "Valid From"
              "5" = "Valid To"
            }
            columnVisibility            = {}
            columnWidths                = {}
            defaultColumnWidth          = 70
            disableFixedLeftColumns     = false
            minColumnWidth              = 60
            preserveCellAndRowSelection = true
            rowHeights                  = {}
            rowSizing                   = "Compact"
            selection = {
              cells                = {}
              columnSelectSequence = []
              columns              = {}
              highlightState       = {}
              rows                 = {}
              selectionType        = "table"
            }
            tableHeight = 0
          }
          index = 0
          inputList = [
            {
              datasetId   = local.cloud_functions_metrics
              inputName   = "function_active_instances"
              inputRole   = "Data"
              isUserInput = false
            },
            {
              datasetId   = local.cloud_functions_instances
              inputName   = "content-eng-1/Cloud Functions Function"
              inputRole   = "Data"
              isUserInput = false
            },
            {
              inputName   = "cloudFunctions"
              inputRole   = "Data"
              isUserInput = true
              parameterId = "input-parameter-te16nn3x"
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
                  table = {
                    groupFields = [
                      "project_id",
                      "region",
                      "function_name",
                    ]
                    transformType = "none"
                    type          = "xy"
                    x             = "valid_from"
                    y             = "A_function_active_instances_sum"
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
            limit          = 1000
            linkify        = true
            loadEverything = false
            progressive    = true
            resultKinds = [
              "ResultKindSchema",
            ]
            rollup      = {}
            wantBuckets = 250
          }
          renderType     = "TABLE"
          selectedStepId = null
          serializable   = true
          steps = [
            {
              customName    = "Input"
              customSummary = "function_active_instances"
              datasetQueryId = {
                ignoreCompress = false
                queryId        = null
                resultKinds = [
                  "ResultKindSchema",
                  "ResultKindData",
                  "ResultKindStats",
                ]
              }
              id       = "step-r840e8lw"
              index    = 0
              isPinned = false
              opal     = []
              type     = "InputStep"
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
              }
              id       = "step-6eq5t40v"
              index    = 1
              isPinned = false
              opal = [
                "exists cloudFunctionInstanceAssetKey = @cloudFunctions.cloudFunctionInstanceAssetKey",
              ]
              type = "unknown"
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
                            table = {
                              groupFields = [
                                "project_id",
                                "region",
                                "function_name",
                              ]
                              transformType = "none"
                              type          = "xy"
                              x             = "valid_from"
                              y             = "A_function_active_instances_sum"
                            }
                            topK = {
                              order = "Top"
                              type  = "Auto"
                            }
                            type = "table"
                          }
                          type = "timeseries"
                        }
                        expressionIdentifier = "A"
                        filterActions = [
                          {
                            params = {
                              foreignKey = {
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
                                targetDataset    = local.cloud_functions_instances
                                targetStageLabel = null
                                type             = "foreign"
                              }
                              joinInput = {
                                datasetId   = local.cloud_functions_instances
                                inputName   = "content-eng-1/Cloud Functions Function"
                                inputRole   = "Data"
                                isUserInput = false
                              }
                            }
                            summary = null
                            type    = "ExistsInFilter"
                          },
                        ]
                        frameDuration = {
                          num  = 2
                          unit = "minute"
                        }
                        groupBy = [
                          "project_id",
                          "region",
                          "function_name",
                        ]
                        id            = "metricExpression-vguwxfbk"
                        inputSource   = "parentStageInputSource"
                        lookupActions = []
                        metric = {
                          aggregate   = "sum"
                          datasetId   = local.cloud_functions_metrics
                          description = "Auto Detected Metric"
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
                          name        = "function_active_instances"
                          rollup      = "avg"
                          type        = "gauge"
                          unit        = ""
                          userDefined = false
                        }
                        metricLink = {
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
                          targetDataset    = local.cloud_functions_instances
                          targetStageLabel = null
                          type             = "foreign"
                        }
                        metricLinkInputSource = {
                          datasetId   = local.cloud_functions_instances
                          inputName   = "content-eng-1/Cloud Functions Function"
                          inputRole   = "Data"
                          isUserInput = false
                        }
                        showAlignment  = false
                        showResolution = false
                        summaryMode    = "over-time"
                        type           = "metricExpression"
                        valueColumnId  = "A_function_active_instances_sum"
                        viewTab        = "visualize"
                      },
                    ]
                    multiExpression = {
                      expressionIdentifier = "B"
                      filterActions        = []
                      id                   = "multiExpression-nzp2z8eb"
                      lookupActions        = []
                      type                 = "multiExpression"
                      viewTab              = "visualize"
                    }
                    selectedExpressionIds = [
                      "metricExpression-vguwxfbk",
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
              }
              id       = "step-yahe6eie"
              index    = 2
              isPinned = false
              opal = [
                "exists project_id = @\"filter_Cloud Function\".projectId, region = @\"filter_Cloud Function\".region, function_name = @\"filter_Cloud Function\".functionName",
                "align frame(back: 2m), A_function_active_instances_sum:avg(m(\"function_active_instances\"))",
                "aggregate A_function_active_instances_sum:sum(A_function_active_instances_sum), group_by(project_id, region, function_name)",
              ]
              type = "unknown"
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
                    exists cloudFunctionInstanceAssetKey = @cloudFunctions.cloudFunctionInstanceAssetKey
                    exists project_id = @"filter_Cloud Function".projectId, region = @"filter_Cloud Function".region, function_name = @"filter_Cloud Function".functionName
                    align frame(back: 2m), A_function_active_instances_sum:avg(m("function_active_instances"))
                    aggregate A_function_active_instances_sum:sum(A_function_active_instances_sum), group_by(project_id, region, function_name)
                EOT
      },
      {
        id = "stage-f0whobgm"
        input = [
          {
            datasetId   = local.cloud_functions_metrics
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
            columnOrderOverride = {
              "0" = "project_id"
              "1" = "region"
              "2" = "function_name"
              "3" = "_c_valid_from"
              "4" = "_c_valid_to"
            }
            columnVisibility            = {}
            columnWidths                = {}
            defaultColumnWidth          = 70
            disableFixedLeftColumns     = false
            minColumnWidth              = 60
            preserveCellAndRowSelection = true
            rowHeights                  = {}
            rowSizing                   = null
            selection = {
              cells                = {}
              columnSelectSequence = []
              columns              = {}
              highlightState       = {}
              rows                 = {}
              selectionType        = "table"
            }
            tableHeight = 0
          }
          index = 1
          inputList = [
            {
              datasetId   = local.cloud_functions_metrics
              inputName   = "content-eng-1/Cloud Functions Function Metrics"
              inputRole   = "Data"
              isUserInput = false
            },
            {
              inputName   = "cloudFunctions"
              inputRole   = "Data"
              isUserInput = true
              parameterId = "input-parameter-te16nn3x"
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
                    statsBy = {
                      fn = "avg"
                    }
                    timechart = {
                      fn         = "avg"
                      resolution = "AUTO"
                    }
                    transformType = "none"
                    type          = "xy"
                    x             = "_c_valid_from"
                    y             = "A__ob_value_avg"
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
            wantBuckets = 250
          }
          renderType     = "TABLE"
          selectedStepId = null
          serializable   = true
          steps = [
            {
              customName    = "Input"
              customSummary = "content-eng-1/Cloud Functions Function Metrics"
              datasetQueryId = {
                ignoreCompress = false
                queryId        = null
                resultKinds = [
                  "ResultKindSchema",
                  "ResultKindData",
                  "ResultKindStats",
                ]
              }
              id       = "step-oc9s5vgc"
              index    = 0
              isPinned = false
              opal     = []
              type     = "InputStep"
            },
            {
              customName    = "filter (custom)"
              customSummary = ""
              datasetQueryId = {
                ignoreCompress = false
                queryId        = null
                resultKinds = [
                  "ResultKindSchema",
                  "ResultKindData",
                  "ResultKindStats",
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
              type = "unknown"
            },
            {
              action = {
                params = {
                  expressionList = {
                    expressions = [
                      {
                        autoResolution = true
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
                              unit    = "bytes"
                              visible = true
                            }
                          }
                          source = {
                            table = {
                              statsBy = {
                                fn = "avg"
                              }
                              timechart = {
                                fn         = "avg"
                                resolution = "AUTO"
                              }
                              transformType = "none"
                              type          = "xy"
                              x             = "_c_valid_from"
                              y             = "A__ob_value_avg"
                            }
                            topK = {
                              order = "Top"
                              type  = "Auto"
                            }
                            type = "table"
                          }
                          type = "timeseries"
                        }
                        expressionIdentifier = "A"
                        field                = "_ob_value"
                        filterActions        = []
                        groupBy = [
                          {
                            isPrimaryKey = true
                            srcFields = [
                              "project_id",
                              "region",
                              "function_name",
                            ]
                          },
                        ]
                        id              = "datasetQueryExpression-8pvl6om2"
                        inputSource     = "parentStageInputSource"
                        lookupActions   = []
                        summarizeVerb   = "statsby"
                        summaryFunction = "avg"
                        summaryMode     = "over-time"
                        type            = "datasetQueryExpression"
                        valueColumnId   = "A__ob_value_avg"
                        viewTab         = "visualize"
                      },
                    ]
                    multiExpression = {
                      expressionIdentifier = "B"
                      filterActions        = []
                      id                   = "multiExpression-tpow2byr"
                      lookupActions        = []
                      type                 = "multiExpression"
                      viewTab              = "visualize"
                    }
                    selectedExpressionIds = [
                      "datasetQueryExpression-8pvl6om2",
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
              }
              id       = "step-x1ywuj3f"
              index    = 2
              isPinned = false
              opal = [
                "timechart options(empty_bins:true), A__ob_value_avg:avg(_ob_value), group_by(project_id, region, function_name)",
              ]
              type = "unknown"
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
                    filter metric = "function_user_memory_bytes"
                    exists project_id = @cloudFunctions.projectId
                    timechart options(empty_bins: true), duration(from_seconds(60)), _ob_value:avg(value), group_by(function_name, project_id, region)
                    make_col _ob_value:if_null(_ob_value, 0)
                    
                    timechart options(empty_bins:true), A__ob_value_avg:avg(_ob_value), group_by(project_id, region, function_name)
                EOT
      },
      {
        id = "stage-r41eirof"
        input = [
          {
            datasetId   = local.cloud_functions_metrics
            datasetPath = null
            inputName   = "function_network_egress"
            inputRole   = "Data"
            stageId     = null
          },
          {
            datasetId   = local.cloud_functions_instances
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
          {
            datasetId   = local.cloud_functions_instances
            datasetPath = null
            inputName   = "filter_Cloud Function"
            inputRole   = "Data"
            stageId     = null
          },
        ]
        layout = {
          appearance = "VISIBLE"
          dataTableViewState = {
            columnOrderOverride = {
              "0" = "valid_from"
              "1" = "valid_to"
              "2" = "name"
              "4" = "Valid From"
              "5" = "Valid To"
            }
            columnVisibility            = {}
            columnWidths                = {}
            defaultColumnWidth          = 70
            disableFixedLeftColumns     = false
            minColumnWidth              = 60
            preserveCellAndRowSelection = true
            rowHeights                  = {}
            rowSizing                   = "Compact"
            selection = {
              cells                = {}
              columnSelectSequence = []
              columns              = {}
              highlightState       = {}
              rows                 = {}
              selectionType        = "table"
            }
            tableHeight = 0
          }
          index = 2
          inputList = [
            {
              datasetId   = local.cloud_functions_metrics
              inputName   = "function_network_egress"
              inputRole   = "Data"
              isUserInput = false
            },
            {
              datasetId   = local.cloud_functions_instances
              inputName   = "content-eng-1/Cloud Functions Function"
              inputRole   = "Data"
              isUserInput = false
            },
            {
              inputName   = "cloudFunctions"
              inputRole   = "Data"
              isUserInput = true
              parameterId = "input-parameter-te16nn3x"
            },
            {
              datasetId   = local.cloud_functions_instances
              inputName   = "filter_Cloud Function"
              inputRole   = "Data"
              isUserInput = true
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
                    unit    = "By"
                    visible = true
                  }
                }
                source = {
                  table = {
                    groupFields = [
                      "project_id",
                      "region",
                      "function_name",
                    ]
                    transformType = "none"
                    type          = "xy"
                    x             = "valid_from"
                    y             = "A_function_network_egress_sum"
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
            limit          = 1000
            linkify        = true
            loadEverything = false
            progressive    = true
            resultKinds = [
              "ResultKindSchema",
            ]
            rollup      = {}
            wantBuckets = 250
          }
          renderType     = "TABLE"
          selectedStepId = null
          serializable   = true
          steps = [
            {
              customName    = "Input"
              customSummary = "function_network_egress"
              datasetQueryId = {
                ignoreCompress = false
                queryId        = null
                resultKinds = [
                  "ResultKindSchema",
                  "ResultKindData",
                  "ResultKindStats",
                ]
              }
              id       = "step-t50292ms"
              index    = 0
              isPinned = false
              opal     = []
              type     = "InputStep"
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
              }
              id       = "step-bz6d32ao"
              index    = 1
              isPinned = false
              opal = [
                "exists cloudFunctionInstanceAssetKey = @cloudFunctions.cloudFunctionInstanceAssetKey",
                "",
                "align A_function_network_egress_sum:avg(m(\"function_network_egress\"))",
                "aggregate A_function_network_egress_sum:sum(A_function_network_egress_sum), group_by(project_id, region, function_name)",
              ]
              type = "unknown"
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
                    exists cloudFunctionInstanceAssetKey = @cloudFunctions.cloudFunctionInstanceAssetKey
                    
                    align A_function_network_egress_sum:avg(m("function_network_egress"))
                    aggregate A_function_network_egress_sum:sum(A_function_network_egress_sum), group_by(project_id, region, function_name)
                EOT
      },
      {
        id = "stage-4jcselfm"
        input = [
          {
            datasetId   = local.cloud_functions_metrics
            datasetPath = null
            inputName   = "function_execution_count"
            inputRole   = "Data"
            stageId     = null
          },
          {
            datasetId   = local.cloud_functions_instances
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
            columnOrderOverride = {
              "0" = "valid_from"
              "1" = "valid_to"
              "2" = "name"
              "4" = "Valid From"
              "5" = "Valid To"
            }
            columnVisibility            = {}
            columnWidths                = {}
            defaultColumnWidth          = 70
            disableFixedLeftColumns     = false
            minColumnWidth              = 60
            preserveCellAndRowSelection = true
            rowHeights                  = {}
            rowSizing                   = "Compact"
            selection = {
              cells                = {}
              columnSelectSequence = []
              columns              = {}
              highlightState       = {}
              rows                 = {}
              selectionType        = "table"
            }
            tableHeight = 0
          }
          index = 3
          inputList = [
            {
              datasetId   = local.cloud_functions_metrics
              inputName   = "function_execution_count"
              inputRole   = "Data"
              isUserInput = false
            },
            {
              datasetId   = local.cloud_functions_instances
              inputName   = "content-eng-1/Cloud Functions Function"
              inputRole   = "Data"
              isUserInput = false
            },
            {
              inputName   = "cloudFunctions"
              inputRole   = "Data"
              isUserInput = true
              parameterId = "input-parameter-te16nn3x"
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
                    unit    = ""
                    visible = true
                  }
                }
                source = {
                  table = {
                    groupFields = [
                      "project_id",
                      "region",
                      "function_name",
                    ]
                    transformType = "none"
                    type          = "xy"
                    x             = "valid_from"
                    y             = "A_function_execution_count_sum"
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
            limit          = 1000
            linkify        = true
            loadEverything = false
            progressive    = true
            resultKinds = [
              "ResultKindSchema",
            ]
            rollup      = {}
            wantBuckets = 250
          }
          renderType     = "TABLE"
          selectedStepId = null
          serializable   = true
          steps = [
            {
              customName    = "Input"
              customSummary = "function_execution_count"
              datasetQueryId = {
                ignoreCompress = false
                queryId        = null
                resultKinds = [
                  "ResultKindSchema",
                  "ResultKindData",
                  "ResultKindStats",
                ]
              }
              id       = "step-3k47l8cd"
              index    = 0
              isPinned = false
              opal     = []
              type     = "InputStep"
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
              }
              id       = "step-zom2yho0"
              index    = 1
              isPinned = false
              opal = [
                "exists cloudFunctionInstanceAssetKey = @cloudFunctions.cloudFunctionInstanceAssetKey",
                "",
                "align A_function_execution_count_sum:avg(m(\"function_execution_count\"))",
                "aggregate A_function_execution_count_sum:sum(A_function_execution_count_sum), group_by(project_id, region, function_name)",
              ]
              type = "unknown"
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
                    exists cloudFunctionInstanceAssetKey = @cloudFunctions.cloudFunctionInstanceAssetKey
                    
                    align A_function_execution_count_sum:avg(m("function_execution_count"))
                    aggregate A_function_execution_count_sum:sum(A_function_execution_count_sum), group_by(project_id, region, function_name)
                EOT
      },
      {
        id = "stage-v80el32j"
        input = [
          {
            datasetId   = local.cloud_functions_metrics
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
            columnOrderOverride = {
              "0" = "_c_valid_from"
              "1" = "_c_valid_to"
              "2" = "project_id"
              "3" = "region"
              "4" = "function_name"
            }
            columnVisibility            = {}
            columnWidths                = {}
            defaultColumnWidth          = 70
            disableFixedLeftColumns     = false
            minColumnWidth              = 60
            preserveCellAndRowSelection = true
            rowHeights                  = {}
            rowSizing                   = "Compact"
            selection = {
              cells                = {}
              columnSelectSequence = []
              columns              = {}
              highlightState       = {}
              rows                 = {}
              selectionType        = "table"
            }
            tableHeight = 0
          }
          index = 4
          inputList = [
            {
              datasetId   = local.cloud_functions_metrics
              inputName   = "content-eng-1/Cloud Functions Function Metrics"
              inputRole   = "Data"
              isUserInput = false
            },
            {
              inputName   = "cloudFunctions"
              inputRole   = "Data"
              isUserInput = true
              parameterId = "input-parameter-te16nn3x"
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
                    statsBy = {
                      fn = "avg"
                    }
                    timechart = {
                      fn         = "sum"
                      fnArgs     = []
                      resolution = "AUTO"
                    }
                    transformType = "none"
                    type          = "xy"
                    x             = "_c_valid_from"
                    y             = "A__ob_value_sum"
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
            wantBuckets = 300
          }
          renderType     = "TABLE"
          selectedStepId = null
          serializable   = true
          steps = [
            {
              customName    = "Input"
              customSummary = "content-eng-1/Cloud Functions Function Metrics"
              datasetQueryId = {
                ignoreCompress = false
                queryId        = null
                resultKinds = [
                  "ResultKindSchema",
                  "ResultKindData",
                  "ResultKindStats",
                ]
              }
              id       = "step-gx6aqoqd"
              index    = 0
              isPinned = false
              opal     = []
              type     = "InputStep"
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
              }
              id       = "step-frwgrh7t"
              index    = 1
              isPinned = false
              opal = [
                "exists cloudFunctionInstanceAssetKey = @cloudFunctions.cloudFunctionInstanceAssetKey",
                "filter metric = \"function_execution_times\"",
                "timechart options(empty_bins: true), duration(from_seconds(60)), _ob_value:avg(value), group_by(function_name, project_id, region)",
                "make_col _ob_value:if_null(_ob_value, 0)",
                "",
              ]
              type = "unknown"
            },
            {
              action = {
                params = {
                  expressionList = {
                    expressions = [
                      {
                        autoResolution = true
                        dataVis = {
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
                              statsBy = {
                                fn = "avg"
                              }
                              timechart = {
                                fn         = "sum"
                                fnArgs     = []
                                resolution = "AUTO"
                              }
                              transformType = "none"
                              type          = "xy"
                              x             = "_c_valid_from"
                              y             = "A__ob_value_sum"
                            }
                            topK = {
                              order = "Top"
                              type  = "Auto"
                            }
                            type = "table"
                          }
                          type = "timeseries"
                        }
                        expressionIdentifier = "A"
                        field                = "_ob_value"
                        filterActions        = []
                        groupBy = [
                          {
                            isPrimaryKey = true
                            srcFields = [
                              "project_id",
                              "region",
                              "function_name",
                            ]
                          },
                        ]
                        id                  = "datasetQueryExpression-ke9yfkhh"
                        inputSource         = "parentStageInputSource"
                        lookupActions       = []
                        summarizeVerb       = "statsby"
                        summaryFunction     = "sum"
                        summaryFunctionArgs = []
                        summaryMode         = "over-time"
                        type                = "datasetQueryExpression"
                        valueColumnId       = "A__ob_value_sum"
                        viewTab             = "visualize"
                      },
                    ]
                    multiExpression = {
                      expressionIdentifier = "B"
                      filterActions        = []
                      id                   = "multiExpression-eof4r50o"
                      lookupActions        = []
                      type                 = "multiExpression"
                      viewTab              = "visualize"
                    }
                    selectedExpressionIds = [
                      "datasetQueryExpression-ke9yfkhh",
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
              }
              id       = "step-7ybtq1oo"
              index    = 2
              isPinned = false
              opal = [
                "timechart options(empty_bins:true), A__ob_value_sum:sum(_ob_value), group_by(project_id, region, function_name)",
              ]
              type = "unknown"
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
                    exists cloudFunctionInstanceAssetKey = @cloudFunctions.cloudFunctionInstanceAssetKey
                    filter metric = "function_execution_times"
                    timechart options(empty_bins: true), duration(from_seconds(60)), _ob_value:avg(value), group_by(function_name, project_id, region)
                    make_col _ob_value:if_null(_ob_value, 0)
                    
                    timechart options(empty_bins:true), A__ob_value_sum:sum(_ob_value), group_by(project_id, region, function_name)
                EOT
      },
      {
        id = "stage-ra65e7v9"
        input = [
          {
            datasetId   = local.cloud_functions_logs
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
            columnOrderOverride         = {}
            columnVisibility            = {}
            columnWidths                = {}
            defaultColumnWidth          = 70
            disableFixedLeftColumns     = false
            minColumnWidth              = 60
            preserveCellAndRowSelection = true
            rowHeights                  = {}
            rowSizing                   = "Compact"
            selection = {
              cells                = {}
              columnSelectSequence = []
              columns              = {}
              highlightState       = {}
              rows                 = {}
              selectionType        = "table"
            }
            tableHeight = 0
          }
          index = 5
          inputList = [
            {
              datasetId   = local.cloud_functions_logs
              inputName   = "content-eng-1/Cloud Functions Function Logs"
              inputRole   = "Data"
              isUserInput = false
            },
            {
              inputName   = "cloudFunctions"
              inputRole   = "Data"
              isUserInput = true
              parameterId = "input-parameter-te16nn3x"
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
                    field = "A_is_error_sum"
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
            rollup = {}
            sort = [
              {
                ascending  = true
                columnName = "A_is_error_sum"
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
              customSummary = "content-eng-1/Cloud Functions Function Logs"
              datasetQueryId = {
                ignoreCompress = false
                queryId        = null
                resultKinds = [
                  "ResultKindSchema",
                  "ResultKindData",
                  "ResultKindStats",
                ]
              }
              id       = "step-s0wc8jns"
              index    = 0
              isPinned = false
              opal     = []
              type     = "InputStep"
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
              }
              id       = "step-6y84qbo6"
              index    = 1
              isPinned = false
              opal = [
                "exists cloudFunctionInstanceAssetKey = @cloudFunctions.cloudFunctionInstanceAssetKey",
                "make_col ",
                "    board_label: \"Total Errors\",",
                "    is_error: if(severity = \"ERROR\", 1, 0)",
              ]
              type = "unknown"
            },
            {
              action = {
                params = {
                  expressionList = {
                    expressions = [
                      {
                        dataVis = {
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
                              field = "A_is_error_sum"
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
                        expressionIdentifier = "A"
                        field                = "is_error"
                        filterActions        = []
                        groupBy = [
                          "board_label",
                        ]
                        id                  = "datasetQueryExpression-jp0kjuas"
                        inputSource         = "parentStageInputSource"
                        lookupActions       = []
                        summarizeVerb       = "statsby"
                        summaryFunction     = "sum"
                        summaryFunctionArgs = []
                        summaryMode         = "single"
                        type                = "datasetQueryExpression"
                        valueColumnId       = "A_is_error_sum"
                        viewTab             = "visualize"
                      },
                    ]
                    multiExpression = {
                      expressionIdentifier = "B"
                      filterActions        = []
                      id                   = "multiExpression-ffui4lw4"
                      lookupActions        = []
                      type                 = "multiExpression"
                      viewTab              = "visualize"
                    }
                    selectedExpressionIds = [
                      "datasetQueryExpression-jp0kjuas",
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
              }
              id       = "step-oa5x0qde"
              index    = 2
              isPinned = false
              opal = [
                "statsby A_is_error_sum:sum(is_error), group_by(board_label)",
              ]
              type = "unknown"
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
                    exists cloudFunctionInstanceAssetKey = @cloudFunctions.cloudFunctionInstanceAssetKey
                    make_col 
                        board_label: "Total Errors",
                        is_error: if(severity = "ERROR", 1, 0)
                    statsby A_is_error_sum:sum(is_error), group_by(board_label)
                EOT
      },
      {
        id = "stage-ifk44t3v"
        input = [
          {
            datasetId   = local.cloud_functions_logs
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
            columnOrderOverride = {}
            columnVisibility    = {}
            columnWidths = {
              board_label  = 206
              functionName = 224
              has_errors   = 129
              logName      = 263
              severity     = 124
            }
            defaultColumnWidth          = 70
            disableFixedLeftColumns     = false
            minColumnWidth              = 60
            preserveCellAndRowSelection = true
            rowHeights                  = {}
            rowSizing                   = "Compact"
            selection = {
              cells                = {}
              columnSelectSequence = []
              columns              = {}
              highlightState       = {}
              rows                 = {}
              selectionType        = "table"
            }
            tableHeight = 0
          }
          index = 6
          inputList = [
            {
              datasetId   = local.cloud_functions_logs
              inputName   = "content-eng-1/Cloud Functions Function Logs"
              inputRole   = "Data"
              isUserInput = false
            },
            {
              inputName   = "cloudFunctions"
              inputRole   = "Data"
              isUserInput = true
              parameterId = "input-parameter-te16nn3x"
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
                    field = "A_has_errors_sum"
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
            rollup = {}
            sort = [
              {
                ascending  = true
                columnName = "A_has_errors_sum"
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
              customSummary = "content-eng-1/Cloud Functions Function Logs"
              datasetQueryId = {
                ignoreCompress = false
                queryId        = null
                resultKinds = [
                  "ResultKindSchema",
                  "ResultKindData",
                  "ResultKindStats",
                ]
              }
              id       = "step-fdlrr341"
              index    = 0
              isPinned = false
              opal     = []
              type     = "InputStep"
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
              }
              id       = "step-42usowiu"
              index    = 1
              isPinned = false
              opal = [
                "exists cloudFunctionInstanceAssetKey = @cloudFunctions.cloudFunctionInstanceAssetKey",
                "",
                "// Check each message to see if it's an error",
                "make_col ",
                "    board_label: \"Functions With Errors\",",
                "    is_error: if(severity = \"ERROR\", 1, 0)",
                "",
                "// aggregate the errors for each function",
                "statsby has_errors: if(sum(is_error) > 0, 1, 0),",
                "  group_by(functionName, board_label)",
              ]
              type = "unknown"
            },
            {
              action = {
                params = {
                  expressionList = {
                    expressions = [
                      {
                        dataVis = {
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
                              field = "A_has_errors_sum"
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
                        expressionIdentifier = "A"
                        field                = "has_errors"
                        filterActions        = []
                        groupBy = [
                          "board_label",
                        ]
                        id                  = "datasetQueryExpression-wz96yop0"
                        inputSource         = "parentStageInputSource"
                        lookupActions       = []
                        summarizeVerb       = "statsby"
                        summaryFunction     = "sum"
                        summaryFunctionArgs = []
                        summaryMode         = "single"
                        type                = "datasetQueryExpression"
                        valueColumnId       = "A_has_errors_sum"
                        viewTab             = "visualize"
                      },
                    ]
                    multiExpression = {
                      expressionIdentifier = "B"
                      filterActions        = []
                      id                   = "multiExpression-vpyisy92"
                      lookupActions        = []
                      type                 = "multiExpression"
                      viewTab              = "visualize"
                    }
                    selectedExpressionIds = [
                      "datasetQueryExpression-wz96yop0",
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
              }
              id       = "step-sah1km15"
              index    = 2
              isPinned = false
              opal = [
                "statsby A_has_errors_sum:sum(has_errors), group_by(board_label)",
              ]
              type = "unknown"
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
                    exists cloudFunctionInstanceAssetKey = @cloudFunctions.cloudFunctionInstanceAssetKey
                    
                    // Check each message to see if it's an error
                    make_col 
                        board_label: "Functions With Errors",
                        is_error: if(severity = "ERROR", 1, 0)
                    
                    // aggregate the errors for each function
                    statsby has_errors: if(sum(is_error) > 0, 1, 0),
                      group_by(functionName, board_label)
                    statsby A_has_errors_sum:sum(has_errors), group_by(board_label)
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
            columnOrderOverride = {
              "0" = "_c_valid_from"
              "1" = "_c_valid_to"
              "2" = "projectId"
              "3" = "name"
              "4" = "Valid From"
            }
            columnVisibility            = {}
            columnWidths                = {}
            defaultColumnWidth          = 70
            disableFixedLeftColumns     = false
            minColumnWidth              = 60
            preserveCellAndRowSelection = true
            rowHeights                  = {}
            rowSizing                   = "Compact"
            selection = {
              cells                = {}
              columnSelectSequence = []
              columns              = {}
              highlightState       = {}
              rows                 = {}
              selectionType        = "table"
            }
            tableHeight = 0
          }
          index = 7
          inputList = [
            {
              inputName   = "cloudFunctions"
              inputRole   = "Data"
              isUserInput = false
              parameterId = "input-parameter-te16nn3x"
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
                    transformType = "none"
                    type          = "keyvalue"
                    valueField    = "A_projectId_count"
                  }
                  topK = {
                    k     = 100
                    order = "Top"
                    type  = "Auto"
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
            wantBuckets = 150
          }
          renderType     = "TABLE"
          selectedStepId = null
          serializable   = true
          steps = [
            {
              customName    = "Input"
              customSummary = "cloudFunctions"
              datasetQueryId = {
                ignoreCompress = false
                queryId        = null
                resultKinds = [
                  "ResultKindSchema",
                  "ResultKindData",
                  "ResultKindStats",
                ]
              }
              id       = "step-5sfi6ep1"
              index    = 0
              isPinned = false
              opal     = []
              type     = "InputStep"
            },
            {
              action = {
                params = {
                  expressionList = {
                    expressions = [
                      {
                        autoResolution = true
                        dataVis = {
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
                              transformType = "none"
                              type          = "keyvalue"
                              valueField    = "A_projectId_count"
                            }
                            topK = {
                              order = "Top"
                              type  = "Auto"
                            }
                            type = "table"
                          }
                          type = "circular"
                        }
                        expressionIdentifier = "A"
                        field                = "projectId"
                        filterActions        = []
                        groupBy = [
                          "projectId",
                        ]
                        id              = "datasetQueryExpression-k2o5zxgs"
                        inputSource     = "parentStageInputSource"
                        lookupActions   = []
                        summarizeVerb   = "statsby"
                        summaryFunction = "count"
                        summaryMode     = "over-time"
                        type            = "datasetQueryExpression"
                        valueColumnId   = "A_projectId_count"
                        viewTab         = "visualize"
                      },
                    ]
                    multiExpression = {
                      expressionIdentifier = "B"
                      filterActions        = []
                      id                   = "multiExpression-b49ruqbs"
                      lookupActions        = []
                      type                 = "multiExpression"
                      viewTab              = "visualize"
                    }
                    selectedExpressionIds = [
                      "datasetQueryExpression-k2o5zxgs",
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
              }
              id       = "step-8e6w5jcd"
              index    = 1
              isPinned = false
              opal = [
                "timechart options(empty_bins:true), A_projectId_count:count(projectId), group_by(projectId)",
              ]
              type = "unknown"
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
        pipeline = "timechart options(empty_bins:true), A_projectId_count:count(projectId), group_by(projectId)"
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
            columnOrderOverride = {
              "0" = "_c_valid_from"
              "1" = "_c_valid_to"
              "2" = "name"
            }
            columnVisibility            = {}
            columnWidths                = {}
            defaultColumnWidth          = 70
            disableFixedLeftColumns     = false
            minColumnWidth              = 60
            preserveCellAndRowSelection = true
            rowHeights                  = {}
            rowSizing                   = "Compact"
            selection = {
              cells                = {}
              columnSelectSequence = []
              columns              = {}
              highlightState       = {}
              rows                 = {}
              selectionType        = "table"
            }
            tableHeight = 0
          }
          index = 8
          inputList = [
            {
              inputName   = "cloudFunctions"
              inputRole   = "Data"
              isUserInput = false
              parameterId = "input-parameter-te16nn3x"
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
                    transformType = "none"
                    type          = "keyvalue"
                    valueField    = "A_runtime_count"
                  }
                  topK = {
                    k     = 100
                    order = "Top"
                    type  = "Auto"
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
            wantBuckets = 150
          }
          renderType     = "TABLE"
          selectedStepId = null
          serializable   = true
          steps = [
            {
              customName    = "Input"
              customSummary = "cloudFunctions"
              datasetQueryId = {
                ignoreCompress = false
                queryId        = null
                resultKinds = [
                  "ResultKindSchema",
                  "ResultKindData",
                  "ResultKindStats",
                ]
              }
              id       = "step-gdte94jw"
              index    = 0
              isPinned = false
              opal     = []
              type     = "InputStep"
            },
            {
              action = {
                params = {
                  expressionList = {
                    expressions = [
                      {
                        autoResolution = true
                        dataVis = {
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
                              transformType = "none"
                              type          = "keyvalue"
                              valueField    = "A_runtime_count"
                            }
                            topK = {
                              order = "Top"
                              type  = "Auto"
                            }
                            type = "table"
                          }
                          type = "circular"
                        }
                        expressionIdentifier = "A"
                        field                = "runtime"
                        filterActions        = []
                        groupBy = [
                          "runtime",
                        ]
                        id              = "datasetQueryExpression-spuzm285"
                        inputSource     = "parentStageInputSource"
                        lookupActions   = []
                        summarizeVerb   = "statsby"
                        summaryFunction = "count"
                        summaryMode     = "over-time"
                        type            = "datasetQueryExpression"
                        valueColumnId   = "A_runtime_count"
                        viewTab         = "visualize"
                      },
                    ]
                    multiExpression = {
                      expressionIdentifier = "B"
                      filterActions        = []
                      id                   = "multiExpression-7rgztt2d"
                      lookupActions        = []
                      type                 = "multiExpression"
                      viewTab              = "visualize"
                    }
                    selectedExpressionIds = [
                      "datasetQueryExpression-spuzm285",
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
              }
              id       = "step-zlhu9vsp"
              index    = 1
              isPinned = false
              opal = [
                "timechart options(empty_bins:true), A_runtime_count:count(runtime), group_by(runtime)",
              ]
              type = "unknown"
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
        pipeline = "timechart options(empty_bins:true), A_runtime_count:count(runtime), group_by(runtime)"
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
            columnOrderOverride = {
              "0" = "_c_valid_from"
              "1" = "_c_valid_to"
              "2" = "name"
            }
            columnVisibility            = {}
            columnWidths                = {}
            defaultColumnWidth          = 70
            disableFixedLeftColumns     = false
            minColumnWidth              = 60
            preserveCellAndRowSelection = true
            rowHeights                  = {}
            rowSizing                   = "Compact"
            selection = {
              cells                = {}
              columnSelectSequence = []
              columns              = {}
              highlightState       = {}
              rows                 = {}
              selectionType        = "table"
            }
            tableHeight = 0
          }
          index = 9
          inputList = [
            {
              inputName   = "cloudFunctions"
              inputRole   = "Data"
              isUserInput = false
              parameterId = "input-parameter-te16nn3x"
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
                    transformType = "none"
                    type          = "keyvalue"
                    valueField    = "A_region_count"
                  }
                  topK = {
                    k     = 100
                    order = "Top"
                    type  = "Auto"
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
            wantBuckets = 150
          }
          renderType     = "TABLE"
          selectedStepId = null
          serializable   = true
          steps = [
            {
              customName    = "Input"
              customSummary = "cloudFunctions"
              datasetQueryId = {
                ignoreCompress = false
                queryId        = null
                resultKinds = [
                  "ResultKindSchema",
                  "ResultKindData",
                  "ResultKindStats",
                ]
              }
              id       = "step-neblalxm"
              index    = 0
              isPinned = false
              opal     = []
              type     = "InputStep"
            },
            {
              action = {
                params = {
                  expressionList = {
                    expressions = [
                      {
                        autoResolution = true
                        dataVis = {
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
                              transformType = "none"
                              type          = "keyvalue"
                              valueField    = "A_region_count"
                            }
                            topK = {
                              order = "Top"
                              type  = "Auto"
                            }
                            type = "table"
                          }
                          type = "circular"
                        }
                        expressionIdentifier = "A"
                        field                = "region"
                        filterActions        = []
                        groupBy = [
                          "region",
                        ]
                        id              = "datasetQueryExpression-jvgxupuh"
                        inputSource     = "parentStageInputSource"
                        lookupActions   = []
                        summarizeVerb   = "statsby"
                        summaryFunction = "count"
                        summaryMode     = "over-time"
                        type            = "datasetQueryExpression"
                        valueColumnId   = "A_region_count"
                        viewTab         = "visualize"
                      },
                    ]
                    multiExpression = {
                      expressionIdentifier = "B"
                      filterActions        = []
                      id                   = "multiExpression-3jr3s3kw"
                      lookupActions        = []
                      type                 = "multiExpression"
                      viewTab              = "visualize"
                    }
                    selectedExpressionIds = [
                      "datasetQueryExpression-jvgxupuh",
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
              }
              id       = "step-93014qwr"
              index    = 1
              isPinned = false
              opal = [
                "timechart options(empty_bins:true), A_region_count:count(region), group_by(region)",
              ]
              type = "unknown"
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
        pipeline = "timechart options(empty_bins:true), A_region_count:count(region), group_by(region)"
      },
      {
        id = "stage-jjzyl2fz"
        input = [
          {
            datasetId   = local.cloud_functions_instances
            datasetPath = null
            inputName   = "test_gcp_sound-sculpin/Cloud Functions Instances"
            inputRole   = "Data"
            stageId     = null
          },
        ]
        layout = {
          appearance = "HIDDEN"
          index      = 10
          inputList = [
            {
              datasetId   = local.cloud_functions_instances
              inputName   = "test_gcp_sound-sculpin/Cloud Functions Instances"
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
              customSummary = "test_gcp_sound-sculpin/Cloud Functions Instances"
              datasetQueryId = {
                ignoreCompress = false
                queryId        = null
                resultKinds = [
                  "ResultKindSchema",
                  "ResultKindData",
                  "ResultKindStats",
                ]
              }
              id       = "step-e2g8b2dd"
              index    = 0
              isPinned = false
              opal = [
                "// Filtered Dataset Controlled Filter Stage",
              ]
              type = "InputStep"
            },
            {
              action = {
                params = {
                  disabled = false
                  hint     = "#hint{skipExistsNoFilter:true}"
                }
                summary = null
                type    = "Hint"
              }
              customSummary = ""
              datasetQueryId = {
                ignoreCompress = false
                queryId        = null
                resultKinds = [
                  "ResultKindSchema",
                  "ResultKindData",
                  "ResultKindStats",
                ]
              }
              id       = "step-9p8n9lb3"
              index    = 1
              isPinned = false
              opal = [
                "#hint{skipExistsNoFilter:true}",
              ]
              type = "unknown"
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
                    // Filtered Dataset Controlled Filter Stage
                    #hint{skipExistsNoFilter:true}
                EOT
      },
    ]
  )
  workspace = local.workspace
}

