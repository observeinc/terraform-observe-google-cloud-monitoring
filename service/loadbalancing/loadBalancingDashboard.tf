locals {
  workspace                        = var.workspace.oid
  dashboard_name                   = format(var.name_format, "Monitoring")
  load_balancing_load_balancers    = observe_dataset.load_balancing_load_balancer.id
  load_balancing_metrics           = one(observe_dataset.load_balancing_metrics[*].id)
  load_balancing_config_audit_logs = observe_dataset.load_balancing_config_audit_logs.id
  load_balancing_health_checks     = observe_dataset.load_balancing_health_check.id
}

resource "observe_dashboard" "load_balancing_monitoring" {
  count       = local.enable_metrics ? 1 : 0
  description = "Dashboard for monitoring Load Balancing resources"
  layout = jsonencode(
    {
      autoPack = true
      gridLayout = {
        sections = [
          {
            card = {
              cardType = "section"
              closed   = false
              id       = "card-yprx9nci"
              title    = "Dashboard Content"
            }
            items = [
              {
                card = {
                  cardType    = "parameter"
                  id          = "card-2vgp9o1k"
                  parameterId = "loadBalancer"
                }
                layout = {
                  h = 4
                  i = "card-2vgp9o1k"
                  resizeHandles = [
                    "e",
                  ]
                  w = 4
                  x = 0
                  y = 0
                }
              },
            ]
          },
          {
            card = {
              cardType = "section"
              closed   = false
              id       = "card-t7b4x2wz"
              title    = "Overview"
            }
            items = [
              {
                card = {
                  cardType = "stage"
                  id       = "card-wfv778t0"
                  stageId  = "stage-ymij9guj"
                }
                layout = {
                  h = 9
                  i = "card-wfv778t0"
                  w = 3
                  x = 6
                  y = 0
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-ghr9cflt"
                  stageId  = "stage-tx1rkfnd"
                }
                layout = {
                  h = 9
                  i = "card-ghr9cflt"
                  w = 3
                  x = 0
                  y = 0
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-bmd2qpx4"
                  stageId  = "stage-9ft6c9cp"
                }
                layout = {
                  h = 9
                  i = "card-bmd2qpx4"
                  w = 3
                  x = 3
                  y = 0
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-3koza9dn"
                  stageId  = "stage-uho2b7y5"
                }
                layout = {
                  h = 9
                  i = "card-3koza9dn"
                  w = 3
                  x = 9
                  y = 0
                }
              },
            ]
          },
          {
            card = {
              cardType = "section"
              closed   = false
              id       = "card-5z0y5ake"
              title    = "Application (L7) Load Balancing"
            }
            items = [
              {
                card = {
                  cardType = "stage"
                  id       = "card-iry8jlwo"
                  stageId  = "stage-6x2c0fqw"
                }
                layout = {
                  h = 15
                  i = "card-iry8jlwo"
                  w = 10
                  x = 2
                  y = 0
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-tlunetrw"
                  stageId  = "stage-rrq0jgcr"
                }
                layout = {
                  h = 10
                  i = "card-tlunetrw"
                  w = 2
                  x = 0
                  y = 0
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-cajrm1je"
                  stageId  = "stage-bkt8och9"
                }
                layout = {
                  h = 10
                  i = "card-cajrm1je"
                  w = 2
                  x = 0
                  y = 10
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-axlaqeuc"
                  stageId  = "stage-y2e5spse"
                }
                layout = {
                  h = 15
                  i = "card-axlaqeuc"
                  w = 5
                  x = 7
                  y = 15
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-czwt40d4"
                  stageId  = "stage-s77mb9b4"
                }
                layout = {
                  h = 15
                  i = "card-czwt40d4"
                  w = 5
                  x = 2
                  y = 15
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-onbb8bhc"
                  stageId  = "stage-r21aa1ok"
                }
                layout = {
                  h = 10
                  i = "card-onbb8bhc"
                  w = 2
                  x = 0
                  y = 20
                }
              },
              {
                card = {
                  cardType    = "parameter"
                  id          = "card-vif6b54v"
                  parameterId = "latencyType"
                }
                layout = {
                  h = 4
                  i = "card-vif6b54v"
                  resizeHandles = [
                    "e",
                  ]
                  w = 2
                  x = 0
                  y = 30
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-8a7zifzz"
                  stageId  = "stage-tww25crx"
                }
                layout = {
                  h = 18
                  i = "card-8a7zifzz"
                  w = 10
                  x = 2
                  y = 30
                }
              },
              {
                card = {
                  cardType    = "parameter"
                  id          = "card-chcle1gy"
                  parameterId = "percentile"
                }
                layout = {
                  h = 4
                  i = "card-chcle1gy"
                  resizeHandles = [
                    "e",
                  ]
                  w = 2
                  x = 0
                  y = 34
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-zqe3zwlu"
                  stageId  = "stage-3zbaxk0o"
                }
                layout = {
                  h = 11
                  i = "card-zqe3zwlu"
                  w = 6
                  x = 6
                  y = 48
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-anylf4db"
                  stageId  = "stage-uywqiqvc"
                }
                layout = {
                  h = 11
                  i = "card-anylf4db"
                  w = 6
                  x = 0
                  y = 48
                }
              },
            ]
          },
          {
            card = {
              cardType = "section"
              closed   = false
              id       = "card-o8k1m5j0"
              title    = "Network (L4) Load Balancing"
            }
            items = [
              {
                card = {
                  cardType = "stage"
                  id       = "card-j1zlwp1t"
                  stageId  = "stage-q1xd6oka"
                }
                layout = {
                  h = 11
                  i = "card-j1zlwp1t"
                  w = 6
                  x = 0
                  y = 0
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-6s4m4no7"
                  stageId  = "stage-gcfx82a3"
                }
                layout = {
                  h = 11
                  i = "card-6s4m4no7"
                  w = 6
                  x = 6
                  y = 0
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-si8f5uxq"
                  stageId  = "stage-pmkx32rn"
                }
                layout = {
                  h = 11
                  i = "card-si8f5uxq"
                  w = 6
                  x = 6
                  y = 11
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-2dijkidx"
                  stageId  = "stage-167x70ol"
                }
                layout = {
                  h = 11
                  i = "card-2dijkidx"
                  w = 6
                  x = 0
                  y = 11
                }
              },
              {
                card = {
                  cardType    = "parameter"
                  id          = "card-5lc0gft4"
                  parameterId = "percentileL4"
                }
                layout = {
                  h = 4
                  i = "card-5lc0gft4"
                  resizeHandles = [
                    "e",
                  ]
                  w = 6
                  x = 0
                  y = 22
                }
              },
              {
                card = {
                  cardType    = "parameter"
                  id          = "card-bfcg6akk"
                  parameterId = "connectionsType"
                }
                layout = {
                  h = 4
                  i = "card-bfcg6akk"
                  resizeHandles = [
                    "e",
                  ]
                  w = 6
                  x = 6
                  y = 22
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-ed8by381"
                  stageId  = "stage-1jze8q9d"
                }
                layout = {
                  h = 15
                  i = "card-ed8by381"
                  w = 6
                  x = 0
                  y = 26
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-z5mtngjf"
                  stageId  = "stage-vvzswmar"
                }
                layout = {
                  h = 15
                  i = "card-z5mtngjf"
                  w = 6
                  x = 6
                  y = 26
                }
              },
            ]
          },
          {
            card = {
              cardType = "section"
              closed   = false
              id       = "card-8i7gse7z"
              title    = "Configurations"
            }
            items = [
              {
                card = {
                  cardType = "stage"
                  id       = "card-lgpmtjgb"
                  stageId  = "stage-vhllr1sq"
                }
                layout = {
                  h = 13
                  i = "card-lgpmtjgb"
                  w = 12
                  x = 0
                  y = 0
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-x61x4sqk"
                  stageId  = "stage-23rf8rsr"
                }
                layout = {
                  h = 12
                  i = "card-x61x4sqk"
                  w = 6
                  x = 0
                  y = 13
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-p7rydv1n"
                  stageId  = "stage-dvse0ocl"
                }
                layout = {
                  h = 12
                  i = "card-p7rydv1n"
                  w = 6
                  x = 6
                  y = 13
                }
              },
            ]
          },
          {
            card = {
              cardType = "section"
              closed   = false
              id       = "card-ngdipeyk"
              title    = "Note & Documentation"
            }
            items = [
              {
                card = {
                  cardType = "text"
                  id       = "card-c2nhkgbe"
                  text     = <<-EOT
                                        # Cloud Load Balancing
                                                                                
                                        A load balancer distributes user traffic across multiple instances of your applications. By spreading the load, load balancing reduces the risk that your applications experience performance issues.
                                                                                
                                        ![Sample Overview](https://cloud.google.com/static/load-balancing/images/lb-simple-overview.svg)
                                                                                
                                        https://cloud.google.com/load-balancing/docs/load-balancing-overview
                                    EOT
                  title    = "Untitled Text"
                }
                layout = {
                  h = 27
                  i = "card-c2nhkgbe"
                  w = 6
                  x = 0
                  y = 0
                }
              },
              {
                card = {
                  cardType = "text"
                  id       = "card-b83hm84u"
                  text     = <<-EOT
                                        # Notes
                                                                                
                                        **Metrics**
                                                                                
                                        Enable data collection for this app by enabling Observe’s GCP app and adding `loadbalancing.googleapis.com` to the `include_metric_type_prefixes` option (this is added by default in the standard configuration).
                                                                                
                                        **Logs**
                                                                                
                                        To enable logs [edit your backend service and select "enable logging."](https://cloud.google.com/load-balancing/docs/https/https-logging-monitoring#logging) Logs for backend buckets are enabled by default.  
                                                                                
                                        **Health Check Logs**
                                                                                
                                        Health check logs capture state-changes of your LB backend groups. To enable them, [edit your health check and set the "Logs" radio button to "on".](https://cloud.google.com/load-balancing/docs/health-check-logging#enabling_and_disabling_logging)
                                    EOT
                  title    = "Untitled Text"
                }
                layout = {
                  h = 27
                  i = "card-b83hm84u"
                  w = 6
                  x = 6
                  y = 0
                }
              },
            ]
            lastModified = 1663281859420
          },
        ]
      }
      stageListLayout = {
        isModified = false
        parameters = [
          {
            controlledFilterStageId = "stage-g03tiiey"
            datasetId               = local.load_balancing_load_balancers
            defaultValue = {
              datasetref = {
                datasetId = local.load_balancing_load_balancers
              }
            }
            emptyValueEncoding    = "null"
            emptyValueLabelOption = "null"
            id                    = "loadBalancer"
            name                  = "Load Balancer"
            valueKind = {
              type = "DATASETREF"
            }
            viewType = "input"
          },
          {
            allowEmpty = false
            defaultValue = {
              string = "total_latencies"
            }
            emptyValueEncoding    = "null"
            emptyValueLabelOption = "null"
            id                    = "latencyType"
            name                  = "Latency Type"
            source                = "CustomData"
            sourceCustomData = {
              "Backend Latency" = "backend_latencies"
              "Frontend RTT"    = "frontend_tcp_rtt"
              "Total Latency"   = "total_latencies"
            }
            valueKind = {
              type = "STRING"
            }
            viewType = "single-select"
          },
          {
            allowEmpty = false
            defaultValue = {
              string = "avg"
            }
            emptyValueEncoding    = "null"
            emptyValueLabelOption = "null"
            id                    = "percentile"
            name                  = "Percentile"
            source                = "CustomData"
            sourceCustomData = {
              avg = "avg"
              p05 = "p05"
              p50 = "p50"
              p95 = "p95"
              p99 = "p99"
            }
            valueKind = {
              type = "STRING"
            }
            viewType = "single-select"
          },
          {
            allowEmpty = false
            defaultValue = {
              string = "open_connections"
            }
            emptyValueEncoding    = "null"
            emptyValueLabelOption = "null"
            id                    = "connectionsType"
            name                  = "Connections Type"
            source                = "CustomData"
            sourceCustomData = {
              Closed = "closed_connections"
              New    = "new_connections"
              Open   = "open_connections"
            }
            valueKind = {
              type = "STRING"
            }
            viewType = "single-select"
          },
          {
            allowEmpty = true
            defaultValue = {
              string = ""
            }
            emptyValueEncoding    = "Empty String"
            emptyValueLabelOption = "null"
            id                    = "responseCode"
            name                  = "Response Code"
            valueKind = {
              type = "STRING"
            }
            viewType = "text"
          },
          {
            allowEmpty = false
            defaultValue = {
              string = "avg"
            }
            emptyValueEncoding    = "null"
            emptyValueLabelOption = "null"
            id                    = "percentileL4"
            name                  = "Percentile"
            source                = "CustomData"
            sourceCustomData = {
              avg = "avg"
              p05 = "p05"
              p50 = "p50"
              p95 = "p95"
              p99 = "p99"
            }
            valueKind = {
              type = "STRING"
            }
            viewType = "single-select"
          },
        ]
        selectedStageId = "stage-tww25crx"
        timeRange = {
          display               = "Past 30 days"
          endTime               = null
          millisFromCurrentTime = 2592000000
          originalDisplay       = "Past 30 days"
          startTime             = null
          timeRangeInfo = {
            key        = "PRESETS"
            name       = "Presets"
            presetType = "PAST_30_DAYS"
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
          datasetref = {
            datasetId = local.load_balancing_load_balancers
          }
        }
        id   = "loadBalancer"
        name = "Load Balancer"
        valueKind = {
          arrayItemType   = null
          keyForDatasetId = null
          type            = "DATASETREF"
        }
      },
      {
        defaultValue = {
          string = "total_latencies"
        }
        id   = "latencyType"
        name = "Latency Type"
        valueKind = {
          arrayItemType   = null
          keyForDatasetId = null
          type            = "STRING"
        }
      },
      {
        defaultValue = {
          string = "avg"
        }
        id   = "percentile"
        name = "Percentile"
        valueKind = {
          arrayItemType   = null
          keyForDatasetId = null
          type            = "STRING"
        }
      },
      {
        defaultValue = {
          string = "open_connections"
        }
        id   = "connectionsType"
        name = "Connections Type"
        valueKind = {
          arrayItemType   = null
          keyForDatasetId = null
          type            = "STRING"
        }
      },
      {
        defaultValue = {
          string = ""
        }
        id   = "responseCode"
        name = "Response Code"
        valueKind = {
          arrayItemType   = null
          keyForDatasetId = null
          type            = "STRING"
        }
      },
      {
        defaultValue = {
          string = "avg"
        }
        id   = "percentileL4"
        name = "Percentile"
        valueKind = {
          arrayItemType   = null
          keyForDatasetId = null
          type            = "STRING"
        }
      },
    ]
  )
  stages = jsonencode(
    [
      {
        id = "stage-uywqiqvc"
        input = [
          {
            datasetId   = local.load_balancing_metrics
            datasetPath = null
            inputName   = "Google/GCP/Load Balancing Metrics"
            inputRole   = "Data"
            stageId     = null
          },
          {
            datasetId   = null
            datasetPath = null
            inputName   = "loadBalancer"
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
              "0" = "url_map_name"
              "1" = "backend_target_name"
              "2" = "_c_valid_from"
              "3" = "_c_valid_to"
            }
            columnVisibility             = {}
            columnWidths                 = {}
            containerWidth               = 1243
            contextMenuXCoord            = null
            contextMenuYCoord            = null
            defaultColumnWidth           = 70
            disableFixedLeftColumns      = false
            eventLinkColumnId            = null
            fetchPageSize                = 100
            hasCalculatedColumnWidths    = false
            maxColumnWidth               = 400
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
              datasetId   = local.load_balancing_metrics
              inputName   = "Google/GCP/Load Balancing Metrics"
              inputRole   = "Data"
              isUserInput = false
            },
            {
              inputName   = "loadBalancer"
              inputRole   = "Data"
              isUserInput = true
              parameterId = "loadBalancer"
            },
          ]
          label = "Request Throughput"
          managers = [
            {
              id                     = "922fvncz"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "nq9wtmo5"
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
                    unit    = "bytes"
                    visible = true
                  }
                }
                source = {
                  table = {
                    groupFields = [
                      "load_balancer_name",
                      [
                        "backend_target_name",
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
                    y             = "A_value_avg"
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
              customSummary = "Google/GCP/Load Balancing Metrics"
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
              id                = "step-apecuofk"
              index             = 0
              isPinned          = false
              opal              = []
              queryPresentation = {}
              type              = "InputStep"
            },
            {
              customName    = "exists (custom)"
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
              id       = "step-16npc8kq"
              index    = 1
              isPinned = false
              opal = [
                "exists load_balancer_name = @loadBalancer.name",
                "",
                "filter ends_with(metric, \"request_bytes_count\")",
                "\tand not metric = \"https_backend_request_bytes_count\"",
                "",
                "timechart value:sum(value), group_by(load_balancer_name, backend_target_name)",
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
                        autoResolution = true
                        columnId       = "value"
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
                              unit    = "bytes"
                              visible = true
                            }
                          }
                          source = {
                            table = {
                              groupFields = [
                                "load_balancer_name",
                                [
                                  "backend_target_name",
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
                              y             = "A_value_avg"
                            }
                            topK = {
                              order = "Top"
                              type  = "Auto"
                            }
                            type = "table"
                          }
                          type = "timeseries"
                        }
                        filterActions = []
                        groupBy = [
                          "load_balancer_name",
                          [
                            "backend_target_name",
                          ],
                        ]
                        id              = "datasetQueryExpression-vv4y6jxd"
                        lookupActions   = []
                        summarizeVerb   = "statsby"
                        summaryFunction = "avg"
                        summaryMode     = "over-time"
                        type            = "datasetQueryExpression"
                        valueColumnId   = "A_value_avg"
                        viewTab         = "visualize"
                      },
                    ]
                    multiExpression = {
                      filterActions = []
                      id            = "multiExpression-073l6gm7"
                      lookupActions = []
                      type          = "multiExpression"
                      viewTab       = "visualize"
                    }
                    selectedExpressionIds = [
                      "datasetQueryExpression-vv4y6jxd",
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
              id       = "step-sgz3uh5f"
              index    = 2
              isPinned = false
              opal = [
                "timechart options(empty_bins:true), A_value_avg:avg(value), group_by(load_balancer_name, backend_target_name)",
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
                    exists load_balancer_name = @loadBalancer.name
                    
                    filter ends_with(metric, "request_bytes_count")
                    	and not metric = "https_backend_request_bytes_count"
                    
                    timechart value:sum(value), group_by(load_balancer_name, backend_target_name)
                    timechart options(empty_bins:true), A_value_avg:avg(value), group_by(load_balancer_name, backend_target_name)
                EOT
      },
      {
        id = "stage-3zbaxk0o"
        input = [
          {
            datasetId   = local.load_balancing_metrics
            datasetPath = null
            inputName   = "Google/GCP/Load Balancing Metrics"
            inputRole   = "Data"
            stageId     = null
          },
          {
            datasetId   = null
            datasetPath = null
            inputName   = "loadBalancer"
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
              "0" = "url_map_name"
              "1" = "backend_target_name"
              "2" = "_c_valid_from"
              "3" = "_c_valid_to"
            }
            columnVisibility             = {}
            columnWidths                 = {}
            containerWidth               = 1253
            contextMenuXCoord            = null
            contextMenuYCoord            = null
            defaultColumnWidth           = 70
            disableFixedLeftColumns      = false
            eventLinkColumnId            = null
            fetchPageSize                = 100
            hasCalculatedColumnWidths    = false
            maxColumnWidth               = 400
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
              datasetId   = local.load_balancing_metrics
              inputName   = "Google/GCP/Load Balancing Metrics"
              inputRole   = "Data"
              isUserInput = false
            },
            {
              inputName   = "loadBalancer"
              inputRole   = "Data"
              isUserInput = true
              parameterId = "loadBalancer"
            },
          ]
          label = "Response Throughput"
          managers = [
            {
              id                     = "922fvncz"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "nq9wtmo5"
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
                    unit    = "bytes"
                    visible = true
                  }
                }
                source = {
                  table = {
                    groupFields = [
                      "load_balancer_name",
                      [
                        "backend_target_name",
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
                    y             = "A_value_avg"
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
              customSummary = "Google/GCP/Load Balancing Metrics"
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
              id                = "step-trrfcjgm"
              index             = 0
              isPinned          = false
              opal              = []
              queryPresentation = {}
              type              = "InputStep"
            },
            {
              customName    = "exists (custom)"
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
              id       = "step-5x9h9m7x"
              index    = 1
              isPinned = false
              opal = [
                "exists load_balancer_name = @loadBalancer.name",
                "",
                "filter ends_with(metric, \"response_bytes_count\")",
                "\tand not metric = \"https_backend_response_bytes_count\"",
                "",
                "timechart value:sum(value), group_by(load_balancer_name, backend_target_name)",
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
                        autoResolution = true
                        columnId       = "value"
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
                              unit    = "bytes"
                              visible = true
                            }
                          }
                          source = {
                            table = {
                              groupFields = [
                                "load_balancer_name",
                                [
                                  "backend_target_name",
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
                              y             = "A_value_avg"
                            }
                            topK = {
                              order = "Top"
                              type  = "Auto"
                            }
                            type = "table"
                          }
                          type = "timeseries"
                        }
                        filterActions = []
                        groupBy = [
                          "load_balancer_name",
                          [
                            "backend_target_name",
                          ],
                        ]
                        id              = "datasetQueryExpression-y7x7az80"
                        lookupActions   = []
                        summarizeVerb   = "statsby"
                        summaryFunction = "avg"
                        summaryMode     = "over-time"
                        type            = "datasetQueryExpression"
                        valueColumnId   = "A_value_avg"
                        viewTab         = "visualize"
                      },
                    ]
                    multiExpression = {
                      filterActions = []
                      id            = "multiExpression-p1vm9ntd"
                      lookupActions = []
                      type          = "multiExpression"
                      viewTab       = "visualize"
                    }
                    selectedExpressionIds = [
                      "datasetQueryExpression-y7x7az80",
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
              id       = "step-eeti7rcp"
              index    = 2
              isPinned = false
              opal = [
                "timechart options(empty_bins:true), A_value_avg:avg(value), group_by(load_balancer_name, backend_target_name)",
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
                    exists load_balancer_name = @loadBalancer.name
                    
                    filter ends_with(metric, "response_bytes_count")
                    	and not metric = "https_backend_response_bytes_count"
                    
                    timechart value:sum(value), group_by(load_balancer_name, backend_target_name)
                    timechart options(empty_bins:true), A_value_avg:avg(value), group_by(load_balancer_name, backend_target_name)
                EOT
      },
      {
        id = "stage-q1xd6oka"
        input = [
          {
            datasetId   = local.load_balancing_metrics
            datasetPath = null
            inputName   = "Google/GCP/Load Balancing Metrics"
            inputRole   = "Data"
            stageId     = null
          },
          {
            datasetId   = null
            datasetPath = null
            inputName   = "loadBalancer"
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
              "0" = "start_time"
              "1" = "url_map_name"
              "2" = "_c_valid_to"
              "3" = "backend_target_name"
            }
            columnVisibility             = {}
            columnWidths                 = {}
            containerWidth               = 1253
            contextMenuXCoord            = null
            contextMenuYCoord            = null
            defaultColumnWidth           = 70
            disableFixedLeftColumns      = false
            eventLinkColumnId            = null
            fetchPageSize                = 100
            hasCalculatedColumnWidths    = false
            maxColumnWidth               = 400
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
          index = 2
          inputList = [
            {
              datasetId   = local.load_balancing_metrics
              inputName   = "Google/GCP/Load Balancing Metrics"
              inputRole   = "Data"
              isUserInput = false
            },
            {
              inputName   = "loadBalancer"
              inputRole   = "Data"
              isUserInput = true
              parameterId = "loadBalancer"
            },
          ]
          label = "Bytes In"
          managers = [
            {
              id                     = "pvaa64q0"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "3ad3xba9"
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
                    unit    = "bytes"
                    visible = true
                  }
                }
                source = {
                  table = {
                    groupFields = [
                      "load_balancer_name",
                    ]
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
                    y             = "A_value_sum"
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
              customSummary = "Google/GCP/Load Balancing Metrics"
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
              id                = "step-hpgny8xg"
              index             = 0
              isPinned          = false
              opal              = []
              queryPresentation = {}
              type              = "InputStep"
            },
            {
              customName    = "// (custom)"
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
              id       = "step-af9lh82i"
              index    = 1
              isPinned = false
              opal = [
                "// todo: add a hidden stage to list available group_by options from available metric_label values",
                "// todo: add parameter for those labels",
                "// todo: group this graph by that parameter",
                "",
                "exists load_balancer_name = @loadBalancer.name",
                "filter ends_with(metric, \"ingress_bytes_count\")",
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
                        autoResolution = true
                        columnId       = "value"
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
                              unit    = "bytes"
                              visible = true
                            }
                          }
                          source = {
                            table = {
                              groupFields = [
                                "load_balancer_name",
                              ]
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
                              y             = "A_value_sum"
                            }
                            topK = {
                              order = "Top"
                              type  = "Auto"
                            }
                            type = "table"
                          }
                          type = "timeseries"
                        }
                        filterActions = []
                        groupBy = [
                          "load_balancer_name",
                        ]
                        id                  = "datasetQueryExpression-dir1bb22"
                        lookupActions       = []
                        summarizeVerb       = "statsby"
                        summaryFunction     = "sum"
                        summaryFunctionArgs = []
                        summaryMode         = "over-time"
                        type                = "datasetQueryExpression"
                        valueColumnId       = "A_value_sum"
                        viewTab             = "visualize"
                      },
                    ]
                    multiExpression = {
                      filterActions = []
                      id            = "multiExpression-ohxuouv9"
                      lookupActions = []
                      type          = "multiExpression"
                      viewTab       = "visualize"
                    }
                    selectedExpressionIds = [
                      "datasetQueryExpression-dir1bb22",
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
              id       = "step-9h8qux62"
              index    = 2
              isPinned = false
              opal = [
                "timechart options(empty_bins:true), A_value_sum:sum(value), group_by(load_balancer_name)",
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
                    // todo: add a hidden stage to list available group_by options from available metric_label values
                    // todo: add parameter for those labels
                    // todo: group this graph by that parameter
                    
                    exists load_balancer_name = @loadBalancer.name
                    filter ends_with(metric, "ingress_bytes_count")
                    
                    timechart options(empty_bins:true), A_value_sum:sum(value), group_by(load_balancer_name)
                EOT
      },
      {
        id = "stage-167x70ol"
        input = [
          {
            datasetId   = local.load_balancing_metrics
            datasetPath = null
            inputName   = "Google/GCP/Load Balancing Metrics"
            inputRole   = "Data"
            stageId     = null
          },
          {
            datasetId   = null
            datasetPath = null
            inputName   = "loadBalancer"
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
              "0" = "start_time"
              "1" = "url_map_name"
              "2" = "_c_valid_to"
              "3" = "backend_target_name"
            }
            columnVisibility             = {}
            columnWidths                 = {}
            containerWidth               = 1253
            contextMenuXCoord            = null
            contextMenuYCoord            = null
            defaultColumnWidth           = 70
            disableFixedLeftColumns      = false
            eventLinkColumnId            = null
            fetchPageSize                = 100
            hasCalculatedColumnWidths    = false
            maxColumnWidth               = 400
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
              datasetId   = local.load_balancing_metrics
              inputName   = "Google/GCP/Load Balancing Metrics"
              inputRole   = "Data"
              isUserInput = false
            },
            {
              inputName   = "loadBalancer"
              inputRole   = "Data"
              isUserInput = true
              parameterId = "loadBalancer"
            },
          ]
          label = "Packets In"
          managers = [
            {
              id                     = "pvaa64q0"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "3ad3xba9"
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
                      "load_balancer_name",
                    ]
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
                    y             = "A_value_sum"
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
              customSummary = "Google/GCP/Load Balancing Metrics"
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
              id                = "step-dw7f2f8x"
              index             = 0
              isPinned          = false
              opal              = []
              queryPresentation = {}
              type              = "InputStep"
            },
            {
              customName    = "// (custom)"
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
              id       = "step-pnb89tdx"
              index    = 1
              isPinned = false
              opal = [
                "// todo: add a hidden stage to list available group_by options from available metric_label values",
                "// todo: add parameter for those labels",
                "// todo: group this graph by that parameter",
                "",
                "exists load_balancer_name = @loadBalancer.name",
                "filter ends_with(metric, \"ingress_packets_count\")",
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
                        autoResolution = true
                        columnId       = "value"
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
                              visible = true
                            }
                          }
                          source = {
                            table = {
                              groupFields = [
                                "load_balancer_name",
                              ]
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
                              y             = "A_value_sum"
                            }
                            topK = {
                              order = "Top"
                              type  = "Auto"
                            }
                            type = "table"
                          }
                          type = "timeseries"
                        }
                        filterActions = []
                        groupBy = [
                          "load_balancer_name",
                        ]
                        id                  = "datasetQueryExpression-lyjtu635"
                        lookupActions       = []
                        summarizeVerb       = "statsby"
                        summaryFunction     = "sum"
                        summaryFunctionArgs = []
                        summaryMode         = "over-time"
                        type                = "datasetQueryExpression"
                        valueColumnId       = "A_value_sum"
                        viewTab             = "visualize"
                      },
                    ]
                    multiExpression = {
                      filterActions = []
                      id            = "multiExpression-uard1v2e"
                      lookupActions = []
                      type          = "multiExpression"
                      viewTab       = "visualize"
                    }
                    selectedExpressionIds = [
                      "datasetQueryExpression-lyjtu635",
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
              id       = "step-lojrpmlf"
              index    = 2
              isPinned = false
              opal = [
                "timechart options(empty_bins:true), A_value_sum:sum(value), group_by(load_balancer_name)",
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
                    // todo: add a hidden stage to list available group_by options from available metric_label values
                    // todo: add parameter for those labels
                    // todo: group this graph by that parameter
                    
                    exists load_balancer_name = @loadBalancer.name
                    filter ends_with(metric, "ingress_packets_count")
                    
                    timechart options(empty_bins:true), A_value_sum:sum(value), group_by(load_balancer_name)
                EOT
      },
      {
        id = "stage-gcfx82a3"
        input = [
          {
            datasetId   = local.load_balancing_metrics
            datasetPath = null
            inputName   = "Google/GCP/Load Balancing Metrics"
            inputRole   = "Data"
            stageId     = null
          },
          {
            datasetId   = null
            datasetPath = null
            inputName   = "loadBalancer"
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
              "0" = "start_time"
              "1" = "url_map_name"
              "2" = "_c_valid_to"
              "3" = "backend_target_name"
            }
            columnVisibility             = {}
            columnWidths                 = {}
            containerWidth               = 1243
            contextMenuXCoord            = null
            contextMenuYCoord            = null
            defaultColumnWidth           = 70
            disableFixedLeftColumns      = false
            eventLinkColumnId            = null
            fetchPageSize                = 100
            hasCalculatedColumnWidths    = false
            maxColumnWidth               = 400
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
              datasetId   = local.load_balancing_metrics
              inputName   = "Google/GCP/Load Balancing Metrics"
              inputRole   = "Data"
              isUserInput = false
            },
            {
              inputName   = "loadBalancer"
              inputRole   = "Data"
              isUserInput = true
              parameterId = "loadBalancer"
            },
          ]
          label = "Bytes Out"
          managers = [
            {
              id                     = "pvaa64q0"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "3ad3xba9"
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
                    unit    = "bytes"
                    visible = true
                  }
                }
                source = {
                  table = {
                    groupFields = [
                      "load_balancer_name",
                    ]
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
                    y             = "A_value_sum"
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
              customSummary = "Google/GCP/Load Balancing Metrics"
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
              id                = "step-846rscsn"
              index             = 0
              isPinned          = false
              opal              = []
              queryPresentation = {}
              type              = "InputStep"
            },
            {
              customName    = "// (custom)"
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
              id       = "step-7mk6l4ut"
              index    = 1
              isPinned = false
              opal = [
                "// todo: add a hidden stage to list available group_by options from available metric_label values",
                "// todo: add parameter for those labels",
                "// todo: group this graph by that parameter",
                "",
                "exists load_balancer_name = @loadBalancer.name",
                "filter ends_with(metric, \"egress_bytes_count\")",
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
                        autoResolution = true
                        columnId       = "value"
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
                              unit    = "bytes"
                              visible = true
                            }
                          }
                          source = {
                            table = {
                              groupFields = [
                                "load_balancer_name",
                              ]
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
                              y             = "A_value_sum"
                            }
                            topK = {
                              order = "Top"
                              type  = "Auto"
                            }
                            type = "table"
                          }
                          type = "timeseries"
                        }
                        filterActions = []
                        groupBy = [
                          "load_balancer_name",
                        ]
                        id                  = "datasetQueryExpression-rfv5vv1w"
                        lookupActions       = []
                        summarizeVerb       = "statsby"
                        summaryFunction     = "sum"
                        summaryFunctionArgs = []
                        summaryMode         = "over-time"
                        type                = "datasetQueryExpression"
                        valueColumnId       = "A_value_sum"
                        viewTab             = "visualize"
                      },
                    ]
                    multiExpression = {
                      filterActions = []
                      id            = "multiExpression-tpue553e"
                      lookupActions = []
                      type          = "multiExpression"
                      viewTab       = "visualize"
                    }
                    selectedExpressionIds = [
                      "datasetQueryExpression-rfv5vv1w",
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
              id       = "step-loxdxr7b"
              index    = 2
              isPinned = false
              opal = [
                "timechart options(empty_bins:true), A_value_sum:sum(value), group_by(load_balancer_name)",
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
                    // todo: add a hidden stage to list available group_by options from available metric_label values
                    // todo: add parameter for those labels
                    // todo: group this graph by that parameter
                    
                    exists load_balancer_name = @loadBalancer.name
                    filter ends_with(metric, "egress_bytes_count")
                    
                    timechart options(empty_bins:true), A_value_sum:sum(value), group_by(load_balancer_name)
                EOT
      },
      {
        id = "stage-pmkx32rn"
        input = [
          {
            datasetId   = local.load_balancing_metrics
            datasetPath = null
            inputName   = "Google/GCP/Load Balancing Metrics"
            inputRole   = "Data"
            stageId     = null
          },
          {
            datasetId   = null
            datasetPath = null
            inputName   = "loadBalancer"
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
              "0" = "url_map_name"
              "1" = "_c_valid_from"
              "2" = "_c_valid_to"
              "3" = "backend_target_name"
            }
            columnVisibility             = {}
            columnWidths                 = {}
            containerWidth               = 1253
            contextMenuXCoord            = null
            contextMenuYCoord            = null
            defaultColumnWidth           = 70
            disableFixedLeftColumns      = false
            eventLinkColumnId            = null
            fetchPageSize                = 100
            hasCalculatedColumnWidths    = false
            maxColumnWidth               = 400
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
              datasetId   = local.load_balancing_metrics
              inputName   = "Google/GCP/Load Balancing Metrics"
              inputRole   = "Data"
              isUserInput = false
            },
            {
              inputName   = "loadBalancer"
              inputRole   = "Data"
              isUserInput = true
              parameterId = "loadBalancer"
            },
          ]
          label = "Packets Out"
          managers = [
            {
              id                     = "pvaa64q0"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "3ad3xba9"
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
                      "load_balancer_name",
                    ]
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
                    y             = "A_value_sum"
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
              customSummary = "Google/GCP/Load Balancing Metrics"
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
              id                = "step-jo3fazrq"
              index             = 0
              isPinned          = false
              opal              = []
              queryPresentation = {}
              type              = "InputStep"
            },
            {
              customName    = "// (custom)"
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
              id       = "step-v0gv6rz2"
              index    = 1
              isPinned = false
              opal = [
                "// todo: add a hidden stage to list available group_by options from available metric_label values",
                "// todo: add parameter for those labels",
                "// todo: group this graph by that parameter",
                "",
                "exists load_balancer_name = @loadBalancer.name",
                "filter ends_with(metric, \"egress_packets_count\")",
                "",
                "timechart value:sum(value), group_by(load_balancer_name)",
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
                        autoResolution = true
                        columnId       = "value"
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
                              visible = true
                            }
                          }
                          source = {
                            table = {
                              groupFields = [
                                "load_balancer_name",
                              ]
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
                              y             = "A_value_sum"
                            }
                            topK = {
                              order = "Top"
                              type  = "Auto"
                            }
                            type = "table"
                          }
                          type = "timeseries"
                        }
                        filterActions = []
                        groupBy = [
                          "load_balancer_name",
                        ]
                        id                  = "datasetQueryExpression-6xt57ifo"
                        lookupActions       = []
                        summarizeVerb       = "statsby"
                        summaryFunction     = "sum"
                        summaryFunctionArgs = []
                        summaryMode         = "over-time"
                        type                = "datasetQueryExpression"
                        valueColumnId       = "A_value_sum"
                        viewTab             = "visualize"
                      },
                    ]
                    multiExpression = {
                      filterActions = []
                      id            = "multiExpression-ckljjhu0"
                      lookupActions = []
                      type          = "multiExpression"
                      viewTab       = "visualize"
                    }
                    selectedExpressionIds = [
                      "datasetQueryExpression-6xt57ifo",
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
              id       = "step-az6cu7i0"
              index    = 2
              isPinned = false
              opal = [
                "timechart options(empty_bins:true), A_value_sum:sum(value), group_by(load_balancer_name)",
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
                    // todo: add a hidden stage to list available group_by options from available metric_label values
                    // todo: add parameter for those labels
                    // todo: group this graph by that parameter
                    
                    exists load_balancer_name = @loadBalancer.name
                    filter ends_with(metric, "egress_packets_count")
                    
                    timechart value:sum(value), group_by(load_balancer_name)
                    timechart options(empty_bins:true), A_value_sum:sum(value), group_by(load_balancer_name)
                EOT
      },
      {
        id = "stage-vvzswmar"
        input = [
          {
            datasetId   = local.load_balancing_metrics
            datasetPath = null
            inputName   = "Google/GCP/Load Balancing Metrics"
            inputRole   = "Data"
            stageId     = null
          },
          {
            datasetId   = null
            datasetPath = null
            inputName   = "loadBalancer"
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
              "0" = "url_map_name"
              "1" = "_c_valid_from"
              "2" = "_c_valid_to"
              "3" = "backend_target_name"
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
            maxColumnWidth               = 400
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
              datasetId   = local.load_balancing_metrics
              inputName   = "Google/GCP/Load Balancing Metrics"
              inputRole   = "Data"
              isUserInput = false
            },
            {
              inputName   = "loadBalancer"
              inputRole   = "Data"
              isUserInput = true
              parameterId = "loadBalancer"
            },
          ]
          label = "TCP Connections"
          managers = [
            {
              id                     = "pvaa64q0"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "3ad3xba9"
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
                      "load_balancer_name",
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
                    y             = "A_value_avg"
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
              customSummary = "Google/GCP/Load Balancing Metrics"
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
              id                = "step-kwfg7yzj"
              index             = 0
              isPinned          = false
              opal              = []
              queryPresentation = {}
              type              = "InputStep"
            },
            {
              customName    = "// (custom)"
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
              id       = "step-rodpx8oe"
              index    = 1
              isPinned = false
              opal = [
                "// todo: add a hidden stage to list available group_by options from available metric_label values",
                "// todo: add parameter for those labels",
                "// todo: group this graph by that parameter",
                "",
                "exists load_balancer_name = @loadBalancer.name",
                "filter metric = strcat(\"tcp_ssl_proxy_\", $connectionsType)",
                "",
                "timechart value:sum(value), group_by(load_balancer_name)",
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
                        autoResolution = true
                        columnId       = "value"
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
                              visible = true
                            }
                          }
                          source = {
                            table = {
                              groupFields = [
                                "load_balancer_name",
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
                              y             = "A_value_avg"
                            }
                            topK = {
                              order = "Top"
                              type  = "Auto"
                            }
                            type = "table"
                          }
                          type = "timeseries"
                        }
                        filterActions = []
                        groupBy = [
                          "load_balancer_name",
                        ]
                        id              = "datasetQueryExpression-pym70qtl"
                        lookupActions   = []
                        summarizeVerb   = "statsby"
                        summaryFunction = "avg"
                        summaryMode     = "over-time"
                        type            = "datasetQueryExpression"
                        valueColumnId   = "A_value_avg"
                        viewTab         = "visualize"
                      },
                    ]
                    multiExpression = {
                      filterActions = []
                      id            = "multiExpression-2aw2eft6"
                      lookupActions = []
                      type          = "multiExpression"
                      viewTab       = "visualize"
                    }
                    selectedExpressionIds = [
                      "datasetQueryExpression-pym70qtl",
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
              id       = "step-06k36z8u"
              index    = 2
              isPinned = false
              opal = [
                "timechart options(empty_bins:true), A_value_avg:avg(value), group_by(load_balancer_name)",
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
                    // todo: add a hidden stage to list available group_by options from available metric_label values
                    // todo: add parameter for those labels
                    // todo: group this graph by that parameter
                    
                    exists load_balancer_name = @loadBalancer.name
                    filter metric = strcat("tcp_ssl_proxy_", $connectionsType)
                    
                    timechart value:sum(value), group_by(load_balancer_name)
                    timechart options(empty_bins:true), A_value_avg:avg(value), group_by(load_balancer_name)
                EOT
      },
      {
        id = "stage-tww25crx"
        input = [
          {
            datasetId   = local.load_balancing_metrics
            datasetPath = null
            inputName   = "Google/GCP/Load Balancing Metrics"
            inputRole   = "Data"
            stageId     = null
          },
          {
            datasetId   = null
            datasetPath = null
            inputName   = "loadBalancer"
            inputRole   = "Data"
            stageId     = null
          },
          {
            datasetId   = local.load_balancing_load_balancers
            datasetPath = null
            inputName   = "Google/GCP/Load Balancing Load Balancers"
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
              "0" = "start_time"
              "1" = "_c_valid_from"
              "2" = "_c_valid_to"
              "3" = "url_map_name"
            }
            columnVisibility = {}
            columnWidths = {
              _c_percentiles_value   = 144
              original_value         = 115
              percentile_aggregation = 139
            }
            containerWidth               = 1253
            contextMenuXCoord            = null
            contextMenuYCoord            = null
            defaultColumnWidth           = 70
            disableFixedLeftColumns      = false
            eventLinkColumnId            = null
            fetchPageSize                = 100
            hasCalculatedColumnWidths    = false
            maxColumnWidth               = 400
            maxMeasuredColumnHeaderWidth = {}
            maxMeasuredColumnWidth       = {}
            maxMeasuredRowHeight         = {}
            minColumnWidth               = 60
            minRowHeight                 = 30
            preserveCellAndRowSelection  = true
            rowHeaderWidth               = 50
            rowHeights                   = {}
            rowSizeIncrement             = 1
            scrollToColumn               = "percentiles"
            scrollToRow                  = 2
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
              datasetId   = local.load_balancing_metrics
              inputName   = "Google/GCP/Load Balancing Metrics"
              inputRole   = "Data"
              isUserInput = false
            },
            {
              inputName   = "loadBalancer"
              inputRole   = "Data"
              isUserInput = true
              parameterId = "loadBalancer"
            },
            {
              datasetId   = local.load_balancing_load_balancers
              inputName   = "Google/GCP/Load Balancing Load Balancers"
              inputRole   = "Data"
              isUserInput = false
            },
          ]
          label = "Latency"
          managers = [
            {
              id                     = "aqc3ihlz"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "y13pm47z"
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
                      "groupByField",
                    ]
                    statsBy = {
                      fn = "avg"
                    }
                    timechart = {
                      fn         = "any"
                      fnArgs     = []
                      resolution = "AUTO"
                    }
                    transformType = "none"
                    type          = "xy"
                    y             = "A_value_any"
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
              customSummary = "Google/GCP/Load Balancing Metrics"
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
              id                = "step-qpsx355k"
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
              id       = "step-pfa5hjyh"
              index    = 1
              isPinned = false
              opal = [
                "exists load_balancer_name = @loadBalancer.name",
                "filter starts_with(metric, \"https_\") and ends_with(metric, $latencyType)",
                "rename_col original_value:value",
                "make_col distribution_metadata:if_null(distribution_metadata, make_object(avg:true))",
                "make_col percentiles:make_object(",
                "    p99:if(float64(distribution_metadata.p_low) <= 0.99 and 0.99 < float64(distribution_metadata.p_up), ",
                "        distribution_metadata.bucket_low + ((float64(distribution_metadata.bucket_up) - distribution_metadata.bucket_low)*(0.99-distribution_metadata.p_low)/(float64(distribution_metadata.p_up)-distribution_metadata.p_low)), ",
                "        float64_null()),",
                "    p95:if(distribution_metadata.p_low <= 0.95 and 0.95 < distribution_metadata.p_up, ",
                "        distribution_metadata.bucket_low + ((float64(distribution_metadata.bucket_up) - distribution_metadata.bucket_low)*(0.95-distribution_metadata.p_low)/(float64(distribution_metadata.p_up)-distribution_metadata.p_low)), ",
                "        float64_null()),",
                "    p50:if(distribution_metadata.p_low <= 0.50 and 0.50 < distribution_metadata.p_up, ",
                "        distribution_metadata.bucket_low + ((float64(distribution_metadata.bucket_up) - distribution_metadata.bucket_low)*(0.50-distribution_metadata.p_low)/(float64(distribution_metadata.p_up)-distribution_metadata.p_low)), ",
                "        float64_null()),",
                "    p05:if(distribution_metadata.p_low <= 0.05 and 0.05 < distribution_metadata.p_up, ",
                "        distribution_metadata.bucket_low + ((float64(distribution_metadata.bucket_up) - distribution_metadata.bucket_low)*(0.05-distribution_metadata.p_low)/(float64(distribution_metadata.p_up)-distribution_metadata.p_low)), ",
                "        float64_null()),",
                "    avg:if(distribution_metadata.avg = true, float64(original_value), float64_null()))",
                "",
                "flatten_single percentiles",
                "make_col lb_count:window(count_distinct_exact(load_balancer_name))",
                "rename_col percentile_aggregation:_c_percentiles_path",
                "make_col percAggFilter: if(lb_count = 1, not is_null(percentile_aggregation), percentile_aggregation = $percentile)",
                "filter percAggFilter",
                "make_col ",
                "    value:@.\"_c_percentiles_value\",",
                "    groupByField:case(",
                "        lb_count = 1, percentile_aggregation,",
                "        true, load_balancer_name)",
                "timechart value:avg(float64(value)), group_by(groupByField)",
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
                        autoResolution = true
                        columnId       = "value"
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
                              groupFields = [
                                "groupByField",
                              ]
                              statsBy = {
                                fn = "avg"
                              }
                              timechart = {
                                fn         = "any"
                                fnArgs     = []
                                resolution = "AUTO"
                              }
                              transformType = "none"
                              type          = "xy"
                              y             = "A_value_any"
                            }
                            topK = {
                              order = "Top"
                              type  = "Auto"
                            }
                            type = "table"
                          }
                          type = "timeseries"
                        }
                        filterActions = []
                        groupBy = [
                          "groupByField",
                        ]
                        id                  = "datasetQueryExpression-il1onxwj"
                        lookupActions       = []
                        summarizeVerb       = "statsby"
                        summaryFunction     = "any"
                        summaryFunctionArgs = []
                        summaryMode         = "over-time"
                        type                = "datasetQueryExpression"
                        valueColumnId       = "A_value_any"
                        viewTab             = "visualize"
                      },
                    ]
                    multiExpression = {
                      filterActions = []
                      id            = "multiExpression-oykttekv"
                      lookupActions = []
                      type          = "multiExpression"
                      viewTab       = "visualize"
                    }
                    selectedExpressionIds = [
                      "datasetQueryExpression-il1onxwj",
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
              id       = "step-qpvfdnt7"
              index    = 2
              isPinned = false
              opal = [
                "timechart options(empty_bins:true), A_value_any:any(value), group_by(groupByField)",
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
                    exists load_balancer_name = @loadBalancer.name
                    filter starts_with(metric, "https_") and ends_with(metric, $latencyType)
                    rename_col original_value:value
                    make_col distribution_metadata:if_null(distribution_metadata, make_object(avg:true))
                    make_col percentiles:make_object(
                        p99:if(float64(distribution_metadata.p_low) <= 0.99 and 0.99 < float64(distribution_metadata.p_up), 
                            distribution_metadata.bucket_low + ((float64(distribution_metadata.bucket_up) - distribution_metadata.bucket_low)*(0.99-distribution_metadata.p_low)/(float64(distribution_metadata.p_up)-distribution_metadata.p_low)), 
                            float64_null()),
                        p95:if(distribution_metadata.p_low <= 0.95 and 0.95 < distribution_metadata.p_up, 
                            distribution_metadata.bucket_low + ((float64(distribution_metadata.bucket_up) - distribution_metadata.bucket_low)*(0.95-distribution_metadata.p_low)/(float64(distribution_metadata.p_up)-distribution_metadata.p_low)), 
                            float64_null()),
                        p50:if(distribution_metadata.p_low <= 0.50 and 0.50 < distribution_metadata.p_up, 
                            distribution_metadata.bucket_low + ((float64(distribution_metadata.bucket_up) - distribution_metadata.bucket_low)*(0.50-distribution_metadata.p_low)/(float64(distribution_metadata.p_up)-distribution_metadata.p_low)), 
                            float64_null()),
                        p05:if(distribution_metadata.p_low <= 0.05 and 0.05 < distribution_metadata.p_up, 
                            distribution_metadata.bucket_low + ((float64(distribution_metadata.bucket_up) - distribution_metadata.bucket_low)*(0.05-distribution_metadata.p_low)/(float64(distribution_metadata.p_up)-distribution_metadata.p_low)), 
                            float64_null()),
                        avg:if(distribution_metadata.avg = true, float64(original_value), float64_null()))
                    
                    flatten_single percentiles
                    make_col lb_count:window(count_distinct_exact(load_balancer_name))
                    rename_col percentile_aggregation:_c_percentiles_path
                    make_col percAggFilter: if(lb_count = 1, not is_null(percentile_aggregation), percentile_aggregation = $percentile)
                    filter percAggFilter
                    make_col 
                        value:@."_c_percentiles_value",
                        groupByField:case(
                            lb_count = 1, percentile_aggregation,
                            true, load_balancer_name)
                    timechart value:avg(float64(value)), group_by(groupByField)
                    
                    timechart options(empty_bins:true), A_value_any:any(value), group_by(groupByField)
                EOT
      },
      {
        id = "stage-1jze8q9d"
        input = [
          {
            datasetId   = local.load_balancing_metrics
            datasetPath = null
            inputName   = "Google/GCP/Load Balancing Metrics"
            inputRole   = "Data"
            stageId     = null
          },
          {
            datasetId   = null
            datasetPath = null
            inputName   = "loadBalancer"
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
              "0" = "url_map_name"
              "1" = "_c_valid_from"
              "2" = "_c_valid_to"
              "3" = "backend_target_name"
            }
            columnVisibility             = {}
            columnWidths                 = {}
            containerWidth               = 1253
            contextMenuXCoord            = null
            contextMenuYCoord            = null
            defaultColumnWidth           = 70
            disableFixedLeftColumns      = false
            eventLinkColumnId            = null
            fetchPageSize                = 100
            hasCalculatedColumnWidths    = false
            maxColumnWidth               = 400
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
              datasetId   = local.load_balancing_metrics
              inputName   = "Google/GCP/Load Balancing Metrics"
              inputRole   = "Data"
              isUserInput = false
            },
            {
              inputName   = "loadBalancer"
              inputRole   = "Data"
              isUserInput = true
              parameterId = "loadBalancer"
            },
          ]
          label = "RTT"
          managers = [
            {
              id                     = "pvaa64q0"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "3ad3xba9"
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
                      "groupByField",
                    ]
                    statsBy = {
                      fn = "avg"
                    }
                    timechart = {
                      fn         = "any"
                      fnArgs     = []
                      resolution = "AUTO"
                    }
                    transformType = "none"
                    type          = "xy"
                    y             = "A_value_any"
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
              customSummary = "Google/GCP/Load Balancing Metrics"
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
              id                = "step-k2txb7ed"
              index             = 0
              isPinned          = false
              opal              = []
              queryPresentation = {}
              type              = "InputStep"
            },
            {
              customName    = "// (custom)"
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
              id       = "step-emh0u40y"
              index    = 1
              isPinned = false
              opal = [
                "// todo: add a hidden stage to list available group_by options from available metric_label values",
                "// todo: add parameter for those labels",
                "// todo: group this graph by that parameter",
                "",
                "exists load_balancer_name = @loadBalancer.name",
                "filter in(metric, \"tcp_ssl_proxy_frontend_tcp_rtt\", \"l3_external_rtt_latencies\", \"l3_internal_rtt_latencies\")",
                "",
                "//timechart value:sum(value), group_by(load_balancer_name)",
                "",
                "rename_col original_value:value",
                "make_col distribution_metadata:if_null(distribution_metadata, make_object(avg:true))",
                "make_col percentiles:make_object(",
                "\tp99:if(float64(distribution_metadata.p_low) <= 0.99 and 0.99 < float64(distribution_metadata.p_up), ",
                "\t\tdistribution_metadata.bucket_low + ((float64(distribution_metadata.bucket_up) - distribution_metadata.bucket_low)*(0.99-distribution_metadata.p_low)/(float64(distribution_metadata.p_up)-distribution_metadata.p_low)), ",
                "        float64_null()),",
                "    p95:if(distribution_metadata.p_low <= 0.95 and 0.95 < distribution_metadata.p_up, ",
                "\t\tdistribution_metadata.bucket_low + ((float64(distribution_metadata.bucket_up) - distribution_metadata.bucket_low)*(0.95-distribution_metadata.p_low)/(float64(distribution_metadata.p_up)-distribution_metadata.p_low)), ",
                "        float64_null()),",
                "    p50:if(distribution_metadata.p_low <= 0.50 and 0.50 < distribution_metadata.p_up, ",
                "\t\tdistribution_metadata.bucket_low + ((float64(distribution_metadata.bucket_up) - distribution_metadata.bucket_low)*(0.50-distribution_metadata.p_low)/(float64(distribution_metadata.p_up)-distribution_metadata.p_low)), ",
                "        float64_null()),",
                "    p05:if(distribution_metadata.p_low <= 0.05 and 0.05 < distribution_metadata.p_up, ",
                "\t\tdistribution_metadata.bucket_low + ((float64(distribution_metadata.bucket_up) - distribution_metadata.bucket_low)*(0.05-distribution_metadata.p_low)/(float64(distribution_metadata.p_up)-distribution_metadata.p_low)), ",
                "        float64_null()),",
                "    avg:if(distribution_metadata.avg = true, float64(original_value), float64_null()))",
                "",
                "flatten_single percentiles",
                "make_col lb_count:window(count_distinct_exact(load_balancer_name))",
                "rename_col percentile_aggregation:_c_percentiles_path",
                "filter if(lb_count = 1, not is_null(percentile_aggregation), percentile_aggregation = $percentileL4)",
                "make_col ",
                "\tvalue:@.\"_c_percentiles_value\",",
                "    groupByField:case(",
                "    \tlb_count = 1, percentile_aggregation,",
                "        true, load_balancer_name)",
                "timechart value:avg(float64(value)), group_by(groupByField)",
                "/*",
                "make_col percentiles:make_object(",
                "\tp99:window(percentile_cont(original_value, 0.99)), ",
                "\tp95:window(percentile(original_value, 0.95)), ",
                "\tp50:window(percentile(original_value, 0.5)), ",
                "\tp05:window(percentile(original_value, 0.05)),",
                "\tavg:window(avg(original_value)))",
                "flatten_single percentiles",
                "rename_col percentile_aggregation:_c_percentiles_path",
                "make_col lb_count:window(count_distinct_exact(load_balancer_name))",
                "make_col ",
                "\tvalue:case(",
                "      lb_count = 1, @.\"_c_percentiles_value\",",
                "      true, case(",
                "        $percentile = \"avg\", window(avg(original_value)),",
                "        $percentile = \"p99\", window(percentile_cont(original_value, 0.99)),",
                "        $percentile = \"p98\", window(percentile(original_value, 0.98)),",
                "        $percentile = \"p95\", window(percentile(original_value, 0.95)),",
                "        $percentile = \"p90\", window(percentile(original_value, 0.90)),",
                "        $percentile = \"p75\", window(percentile(original_value, 0.75)),",
                "        $percentile = \"p50\", window(percentile(original_value, 0.50)),",
                "        $percentile = \"p05\", window(percentile(original_value, 0.05)),",
                "        true, window(avg(original_value)))),",
                "    groupByField:case(",
                "    \tlb_count = 1, percentile_aggregation,",
                "        true, load_balancer_name)",
                "//timechart value:sum(float64(value)), group_by(groupByField)",
                "*/",
                "",
                "/*",
                "make_col value:case(",
                "\t$percentile = \"avg\", window(avg(value)),",
                "    $percentile = \"p99\", window(percentile(value, 0.99)),",
                "    $percentile = \"p98\", window(percentile(value, 0.98)),",
                "    $percentile = \"p95\", window(percentile(value, 0.95)),",
                "    $percentile = \"p90\", window(percentile(value, 0.90)),",
                "    $percentile = \"p75\", window(percentile(value, 0.75)),",
                "    $percentile = \"p50\", window(percentile(value, 0.50)),",
                "    $percentile = \"p05\", window(percentile(value, 0.05)),",
                "    true, window(avg(value)))",
                "",
                "timechart value:sum(value), group_by(load_balancer_name)",
                "*/",
                "//filter (load_balancer_name = \"estib-cloudrun-url-map\" and forwarding_rule_name = \"estib-cloudrun\" and backend_name = \"serverless-neg\")",
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
                        autoResolution = true
                        columnId       = "value"
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
                              groupFields = [
                                "groupByField",
                              ]
                              statsBy = {
                                fn = "avg"
                              }
                              timechart = {
                                fn         = "any"
                                fnArgs     = []
                                resolution = "AUTO"
                              }
                              transformType = "none"
                              type          = "xy"
                              y             = "A_value_any"
                            }
                            topK = {
                              order = "Top"
                              type  = "Auto"
                            }
                            type = "table"
                          }
                          type = "timeseries"
                        }
                        filterActions = []
                        groupBy = [
                          "groupByField",
                        ]
                        id                  = "datasetQueryExpression-sayh6n4k"
                        lookupActions       = []
                        summarizeVerb       = "statsby"
                        summaryFunction     = "any"
                        summaryFunctionArgs = []
                        summaryMode         = "over-time"
                        type                = "datasetQueryExpression"
                        valueColumnId       = "A_value_any"
                        viewTab             = "visualize"
                      },
                    ]
                    multiExpression = {
                      filterActions = []
                      id            = "multiExpression-080cs5cj"
                      lookupActions = []
                      type          = "multiExpression"
                      viewTab       = "visualize"
                    }
                    selectedExpressionIds = [
                      "datasetQueryExpression-sayh6n4k",
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
              id       = "step-uaupapry"
              index    = 2
              isPinned = false
              opal = [
                "timechart options(empty_bins:true), A_value_any:any(value), group_by(groupByField)",
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
                    // todo: add a hidden stage to list available group_by options from available metric_label values
                    // todo: add parameter for those labels
                    // todo: group this graph by that parameter
                    
                    exists load_balancer_name = @loadBalancer.name
                    filter in(metric, "tcp_ssl_proxy_frontend_tcp_rtt", "l3_external_rtt_latencies", "l3_internal_rtt_latencies")
                    
                    //timechart value:sum(value), group_by(load_balancer_name)
                    
                    rename_col original_value:value
                    make_col distribution_metadata:if_null(distribution_metadata, make_object(avg:true))
                    make_col percentiles:make_object(
                    	p99:if(float64(distribution_metadata.p_low) <= 0.99 and 0.99 < float64(distribution_metadata.p_up), 
                    		distribution_metadata.bucket_low + ((float64(distribution_metadata.bucket_up) - distribution_metadata.bucket_low)*(0.99-distribution_metadata.p_low)/(float64(distribution_metadata.p_up)-distribution_metadata.p_low)), 
                            float64_null()),
                        p95:if(distribution_metadata.p_low <= 0.95 and 0.95 < distribution_metadata.p_up, 
                    		distribution_metadata.bucket_low + ((float64(distribution_metadata.bucket_up) - distribution_metadata.bucket_low)*(0.95-distribution_metadata.p_low)/(float64(distribution_metadata.p_up)-distribution_metadata.p_low)), 
                            float64_null()),
                        p50:if(distribution_metadata.p_low <= 0.50 and 0.50 < distribution_metadata.p_up, 
                    		distribution_metadata.bucket_low + ((float64(distribution_metadata.bucket_up) - distribution_metadata.bucket_low)*(0.50-distribution_metadata.p_low)/(float64(distribution_metadata.p_up)-distribution_metadata.p_low)), 
                            float64_null()),
                        p05:if(distribution_metadata.p_low <= 0.05 and 0.05 < distribution_metadata.p_up, 
                    		distribution_metadata.bucket_low + ((float64(distribution_metadata.bucket_up) - distribution_metadata.bucket_low)*(0.05-distribution_metadata.p_low)/(float64(distribution_metadata.p_up)-distribution_metadata.p_low)), 
                            float64_null()),
                        avg:if(distribution_metadata.avg = true, float64(original_value), float64_null()))
                    
                    flatten_single percentiles
                    make_col lb_count:window(count_distinct_exact(load_balancer_name))
                    rename_col percentile_aggregation:_c_percentiles_path
                    filter if(lb_count = 1, not is_null(percentile_aggregation), percentile_aggregation = $percentileL4)
                    make_col 
                    	value:@."_c_percentiles_value",
                        groupByField:case(
                        	lb_count = 1, percentile_aggregation,
                            true, load_balancer_name)
                    timechart value:avg(float64(value)), group_by(groupByField)
                    /*
                    make_col percentiles:make_object(
                    	p99:window(percentile_cont(original_value, 0.99)), 
                    	p95:window(percentile(original_value, 0.95)), 
                    	p50:window(percentile(original_value, 0.5)), 
                    	p05:window(percentile(original_value, 0.05)),
                    	avg:window(avg(original_value)))
                    flatten_single percentiles
                    rename_col percentile_aggregation:_c_percentiles_path
                    make_col lb_count:window(count_distinct_exact(load_balancer_name))
                    make_col 
                    	value:case(
                          lb_count = 1, @."_c_percentiles_value",
                          true, case(
                            $percentile = "avg", window(avg(original_value)),
                            $percentile = "p99", window(percentile_cont(original_value, 0.99)),
                            $percentile = "p98", window(percentile(original_value, 0.98)),
                            $percentile = "p95", window(percentile(original_value, 0.95)),
                            $percentile = "p90", window(percentile(original_value, 0.90)),
                            $percentile = "p75", window(percentile(original_value, 0.75)),
                            $percentile = "p50", window(percentile(original_value, 0.50)),
                            $percentile = "p05", window(percentile(original_value, 0.05)),
                            true, window(avg(original_value)))),
                        groupByField:case(
                        	lb_count = 1, percentile_aggregation,
                            true, load_balancer_name)
                    //timechart value:sum(float64(value)), group_by(groupByField)
                    */
                    
                    /*
                    make_col value:case(
                    	$percentile = "avg", window(avg(value)),
                        $percentile = "p99", window(percentile(value, 0.99)),
                        $percentile = "p98", window(percentile(value, 0.98)),
                        $percentile = "p95", window(percentile(value, 0.95)),
                        $percentile = "p90", window(percentile(value, 0.90)),
                        $percentile = "p75", window(percentile(value, 0.75)),
                        $percentile = "p50", window(percentile(value, 0.50)),
                        $percentile = "p05", window(percentile(value, 0.05)),
                        true, window(avg(value)))
                    
                    timechart value:sum(value), group_by(load_balancer_name)
                    */
                    //filter (load_balancer_name = "estib-cloudrun-url-map" and forwarding_rule_name = "estib-cloudrun" and backend_name = "serverless-neg")
                    timechart options(empty_bins:true), A_value_any:any(value), group_by(groupByField)
                EOT
      },
      {
        id = "stage-tx1rkfnd"
        input = [
          {
            datasetId   = null
            datasetPath = null
            inputName   = "loadBalancer"
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
            columnVisibility             = {}
            columnWidths                 = {}
            containerWidth               = 1253
            contextMenuXCoord            = null
            contextMenuYCoord            = null
            defaultColumnWidth           = 70
            disableFixedLeftColumns      = false
            eventLinkColumnId            = null
            fetchPageSize                = 100
            hasCalculatedColumnWidths    = false
            maxColumnWidth               = 400
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
          index = 9
          inputList = [
            {
              inputName   = "loadBalancer"
              inputRole   = "Data"
              isUserInput = false
              parameterId = "loadBalancer"
            },
          ]
          label = "Project"
          managers = [
            {
              id                     = "o7h4gmvb"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "pojap6rs"
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
                      fn         = "count_distinct"
                      fnArgs     = []
                      resolution = "SINGLE"
                    }
                    transformType = "none"
                    type          = "keyvalue"
                    valueField    = "A_name_count_distinct"
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
            rollup = {}
            sort = [
              {
                ascending  = false
                columnName = "A_name_count_distinct"
              },
            ]
            wantBuckets = 1
          }
          renderType     = "TABLE"
          selectedStepId = null
          serializable   = true
          steps = [
            {
              customName    = "Input"
              customSummary = "loadBalancer"
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
              id                = "step-2sr7ur1m"
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
                        autoResolution = true
                        columnId       = "name"
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
                                "project_id",
                              ]
                              statsBy = {
                                fn = "count"
                              }
                              timechart = {
                                fn         = "count_distinct"
                                fnArgs     = []
                                resolution = "SINGLE"
                              }
                              transformType = "none"
                              type          = "keyvalue"
                              valueField    = "A_name_count_distinct"
                            }
                            topK = {
                              order = "Top"
                              type  = "Auto"
                            }
                            type = "table"
                          }
                          type = "circular"
                        }
                        filterActions = []
                        groupBy = [
                          "project_id",
                        ]
                        id                  = "datasetQueryExpression-23igc6ef"
                        lookupActions       = []
                        summarizeVerb       = "statsby"
                        summaryFunction     = "count_distinct"
                        summaryFunctionArgs = []
                        summaryMode         = "single"
                        type                = "datasetQueryExpression"
                        valueColumnId       = "A_name_count_distinct"
                        viewTab             = "visualize"
                      },
                    ]
                    multiExpression = {
                      filterActions = []
                      id            = "multiExpression-gak8ja51"
                      lookupActions = []
                      type          = "multiExpression"
                      viewTab       = "visualize"
                    }
                    selectedExpressionIds = [
                      "datasetQueryExpression-23igc6ef",
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
              id       = "step-zbqyneuv"
              index    = 1
              isPinned = false
              opal = [
                "statsby A_name_count_distinct:count_distinct(name), group_by(project_id)",
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
        pipeline = "statsby A_name_count_distinct:count_distinct(name), group_by(project_id)"
      },
      {
        id = "stage-9ft6c9cp"
        input = [
          {
            datasetId   = null
            datasetPath = null
            inputName   = "loadBalancer"
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
            maxColumnWidth               = 400
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
              inputName   = "loadBalancer"
              inputRole   = "Data"
              isUserInput = false
              parameterId = "loadBalancer"
            },
          ]
          label = "Region"
          managers = [
            {
              id                     = "o7h4gmvb"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "pojap6rs"
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
                      fn         = "count_distinct"
                      fnArgs     = []
                      resolution = "SINGLE"
                    }
                    transformType = "none"
                    type          = "keyvalue"
                    valueField    = "A_name_count_distinct"
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
            rollup = {}
            sort = [
              {
                ascending  = false
                columnName = "A_name_count_distinct"
              },
            ]
            wantBuckets = 1
          }
          renderType     = "TABLE"
          selectedStepId = null
          serializable   = true
          steps = [
            {
              customName    = "Input"
              customSummary = "loadBalancer"
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
              id                = "step-arlwhvog"
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
                        autoResolution = true
                        columnId       = "name"
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
                                fn         = "count_distinct"
                                fnArgs     = []
                                resolution = "SINGLE"
                              }
                              transformType = "none"
                              type          = "keyvalue"
                              valueField    = "A_name_count_distinct"
                            }
                            topK = {
                              order = "Top"
                              type  = "Auto"
                            }
                            type = "table"
                          }
                          type = "circular"
                        }
                        filterActions = []
                        groupBy = [
                          "region",
                        ]
                        id                  = "datasetQueryExpression-71ddrpz6"
                        lookupActions       = []
                        summarizeVerb       = "statsby"
                        summaryFunction     = "count_distinct"
                        summaryFunctionArgs = []
                        summaryMode         = "single"
                        type                = "datasetQueryExpression"
                        valueColumnId       = "A_name_count_distinct"
                        viewTab             = "visualize"
                      },
                    ]
                    multiExpression = {
                      filterActions = []
                      id            = "multiExpression-xnwws4rm"
                      lookupActions = []
                      type          = "multiExpression"
                      viewTab       = "visualize"
                    }
                    selectedExpressionIds = [
                      "datasetQueryExpression-71ddrpz6",
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
              id       = "step-69bshx3n"
              index    = 1
              isPinned = false
              opal = [
                "statsby A_name_count_distinct:count_distinct(name), group_by(region)",
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
        pipeline = "statsby A_name_count_distinct:count_distinct(name), group_by(region)"
      },
      {
        id = "stage-vqzhut38"
        input = [
          {
            datasetId   = null
            datasetPath = null
            inputName   = "loadBalancer"
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
            maxColumnWidth               = 400
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
              inputName   = "loadBalancer"
              inputRole   = "Data"
              isUserInput = false
              parameterId = "loadBalancer"
            },
          ]
          label = "Load Balancing Scheme"
          managers = [
            {
              id                     = "o7h4gmvb"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "pojap6rs"
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
                      "loadBalancingScheme",
                    ]
                    statsBy = {
                      fn = "count"
                    }
                    timechart = {
                      fn         = "count_distinct"
                      fnArgs     = []
                      resolution = "SINGLE"
                    }
                    transformType = "none"
                    type          = "keyvalue"
                    valueField    = "A_name_count_distinct"
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
            rollup = {}
            sort = [
              {
                ascending  = false
                columnName = "A_name_count_distinct"
              },
            ]
            wantBuckets = 1
          }
          renderType     = "TABLE"
          selectedStepId = null
          serializable   = true
          steps = [
            {
              customName    = "Input"
              customSummary = "loadBalancer"
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
              id                = "step-3bmf3v0v"
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
                        autoResolution = true
                        columnId       = "name"
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
                                "loadBalancingScheme",
                              ]
                              statsBy = {
                                fn = "count"
                              }
                              timechart = {
                                fn         = "count_distinct"
                                fnArgs     = []
                                resolution = "SINGLE"
                              }
                              transformType = "none"
                              type          = "keyvalue"
                              valueField    = "A_name_count_distinct"
                            }
                            topK = {
                              order = "Top"
                              type  = "Auto"
                            }
                            type = "table"
                          }
                          type = "circular"
                        }
                        filterActions = []
                        groupBy = [
                          "loadBalancingScheme",
                        ]
                        id                  = "datasetQueryExpression-tbz91fzk"
                        lookupActions       = []
                        summarizeVerb       = "statsby"
                        summaryFunction     = "count_distinct"
                        summaryFunctionArgs = []
                        summaryMode         = "single"
                        type                = "datasetQueryExpression"
                        valueColumnId       = "A_name_count_distinct"
                        viewTab             = "visualize"
                      },
                    ]
                    multiExpression = {
                      filterActions = []
                      id            = "multiExpression-fe8gv4hy"
                      lookupActions = []
                      type          = "multiExpression"
                      viewTab       = "visualize"
                    }
                    selectedExpressionIds = [
                      "datasetQueryExpression-tbz91fzk",
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
              id       = "step-6ii2ormf"
              index    = 1
              isPinned = false
              opal = [
                "statsby A_name_count_distinct:count_distinct(name), group_by(loadBalancingScheme)",
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
        pipeline = "statsby A_name_count_distinct:count_distinct(name), group_by(loadBalancingScheme)"
      },
      {
        id = "stage-uho2b7y5"
        input = [
          {
            datasetId   = null
            datasetPath = null
            inputName   = "loadBalancer"
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
            columnVisibility             = {}
            columnWidths                 = {}
            containerWidth               = 1253
            contextMenuXCoord            = null
            contextMenuYCoord            = null
            defaultColumnWidth           = 70
            disableFixedLeftColumns      = false
            eventLinkColumnId            = null
            fetchPageSize                = 100
            hasCalculatedColumnWidths    = false
            maxColumnWidth               = 400
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
              inputName   = "loadBalancer"
              inputRole   = "Data"
              isUserInput = false
              parameterId = "loadBalancer"
            },
          ]
          label = "Backend Health"
          managers = [
            {
              id                     = "wnyr5erh"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "o0521p7w"
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
                      "healthState",
                    ]
                    statsBy = {
                      fn     = "sum"
                      fnArgs = []
                    }
                    timechart = {
                      fn         = "avg"
                      resolution = "SINGLE"
                    }
                    transformType = "none"
                    type          = "keyvalue"
                    valueField    = "A_value_sum"
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
            rollup = {}
            sort = [
              {
                ascending  = false
                columnName = "A_value_sum"
              },
            ]
            wantBuckets = 1
          }
          renderType     = "TABLE"
          selectedStepId = null
          serializable   = true
          steps = [
            {
              customName    = "Input"
              customSummary = "loadBalancer"
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
              id                = "step-vg8087q3"
              index             = 0
              isPinned          = false
              opal              = []
              queryPresentation = {}
              type              = "InputStep"
            },
            {
              customName    = "make_col (custom)"
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
              id       = "step-tgyphli8"
              index    = 1
              isPinned = false
              opal = [
                "make_col ",
                "\tbackendHealthStates:make_object(",
                "    \thealthy:defaultServiceHealthyStatusGroups,",
                "        unhealthy:defaultServiceUnhealthyStatusGroups,",
                "        unknown:defaultServiceUnknownStatusGroups,",
                "        null:defaultServiceNullStatusGroups)",
                "flatten_single backendHealthStates",
                "",
                "rename_col ",
                "\tvalue:@.\"_c_backendHealthStates_value\",",
                "    healthState:@.\"_c_backendHealthStates_path\"",
                "",
                "",
                "statsby value:last(int64(value)), group_by(name, healthState)    ",
                "//statsby value:sum(int64(value)), group_by(name, healthState)",
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
                        columnId = "value"
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
                                "healthState",
                              ]
                              statsBy = {
                                fn     = "sum"
                                fnArgs = []
                              }
                              timechart = {
                                fn         = "avg"
                                resolution = "SINGLE"
                              }
                              transformType = "none"
                              type          = "keyvalue"
                              valueField    = "A_value_sum"
                            }
                            topK = {
                              order = "Top"
                              type  = "Auto"
                            }
                            type = "table"
                          }
                          type = "circular"
                        }
                        filterActions = []
                        groupBy = [
                          "healthState",
                        ]
                        id                  = "datasetQueryExpression-skjfbadf"
                        lookupActions       = []
                        summarizeVerb       = "statsby"
                        summaryFunction     = "sum"
                        summaryFunctionArgs = []
                        summaryMode         = "single"
                        type                = "datasetQueryExpression"
                        valueColumnId       = "A_value_sum"
                        viewTab             = "visualize"
                      },
                    ]
                    multiExpression = {
                      filterActions = []
                      id            = "multiExpression-yxm5ffb0"
                      lookupActions = []
                      type          = "multiExpression"
                      viewTab       = "visualize"
                    }
                    selectedExpressionIds = [
                      "datasetQueryExpression-skjfbadf",
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
              id       = "step-dukecoqx"
              index    = 2
              isPinned = false
              opal = [
                "statsby A_value_sum:sum(value), group_by(healthState)",
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
                    make_col 
                    	backendHealthStates:make_object(
                        	healthy:defaultServiceHealthyStatusGroups,
                            unhealthy:defaultServiceUnhealthyStatusGroups,
                            unknown:defaultServiceUnknownStatusGroups,
                            null:defaultServiceNullStatusGroups)
                    flatten_single backendHealthStates
                    
                    rename_col 
                    	value:@."_c_backendHealthStates_value",
                        healthState:@."_c_backendHealthStates_path"
                    
                    
                    statsby value:last(int64(value)), group_by(name, healthState)    
                    //statsby value:sum(int64(value)), group_by(name, healthState)
                    statsby A_value_sum:sum(value), group_by(healthState)
                EOT
      },
      {
        id = "stage-6x2c0fqw"
        input = [
          {
            datasetId   = local.load_balancing_metrics
            datasetPath = null
            inputName   = "Backup_Google/GCP/Load Balancing Metrics"
            inputRole   = "Data"
            stageId     = null
          },
          {
            datasetId   = null
            datasetPath = null
            inputName   = "loadBalancer"
            inputRole   = "Data"
            stageId     = null
          },
        ]
        layout = {
          appearance = "VISIBLE"
          dataTableViewState = {
            autoTableHeight              = true
            columnFooterHeight           = 0
            columnHeaderHeight           = 29
            columnOrderOverride          = {}
            columnVisibility             = {}
            columnWidths                 = {}
            containerWidth               = 1253
            contextMenuXCoord            = null
            contextMenuYCoord            = null
            defaultColumnWidth           = 70
            disableFixedLeftColumns      = false
            eventLinkColumnId            = null
            fetchPageSize                = 100
            hasCalculatedColumnWidths    = false
            maxColumnWidth               = 400
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
          index = 13
          inputList = [
            {
              datasetId   = local.load_balancing_metrics
              inputName   = "Backup_Google/GCP/Load Balancing Metrics"
              inputRole   = "Data"
              isUserInput = false
            },
            {
              inputName   = "loadBalancer"
              inputRole   = "Data"
              isUserInput = true
              parameterId = "loadBalancer"
            },
          ]
          label = "2xx & 3xx Requests"
          managers = [
            {
              id                     = "4fzkybfv"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "eyn7sn1c"
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
                      [
                        "backend_target_name",
                      ],
                      "load_balancer_name",
                    ]
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
                    y             = "A_value_sum"
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
              customSummary = "Backup_Google/GCP/Load Balancing Metrics"
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
              id                = "step-jwfu65w9"
              index             = 0
              isPinned          = false
              opal              = []
              queryPresentation = {}
              type              = "InputStep"
            },
            {
              customName    = "exists (custom)"
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
              id       = "step-z5s2nesv"
              index    = 1
              isPinned = false
              opal = [
                "exists load_balancer_name = @loadBalancer.name",
                "filter ends_with(metric, \"request_count\")",
                "\tand not metric = \"https_backend_request_count\"",
                "    and in(string(metric_labels.response_code_class), \"200\", \"300\")",
                "make_col ",
                "    response_code_class:string(metric_labels.response_code_class)",
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
                        autoResolution = true
                        columnId       = "value"
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
                              visible = true
                            }
                          }
                          source = {
                            table = {
                              groupFields = [
                                [
                                  "backend_target_name",
                                ],
                                "load_balancer_name",
                              ]
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
                              y             = "A_value_sum"
                            }
                            topK = {
                              order = "Top"
                              type  = "Auto"
                            }
                            type = "table"
                          }
                          type = "timeseries"
                        }
                        filterActions = []
                        groupBy = [
                          [
                            "backend_target_name",
                          ],
                          "load_balancer_name",
                        ]
                        id                  = "datasetQueryExpression-vj3f78gs"
                        lookupActions       = []
                        summarizeVerb       = "statsby"
                        summaryFunction     = "sum"
                        summaryFunctionArgs = []
                        summaryMode         = "over-time"
                        type                = "datasetQueryExpression"
                        valueColumnId       = "A_value_sum"
                        viewTab             = "visualize"
                      },
                    ]
                    multiExpression = {
                      filterActions = []
                      id            = "multiExpression-1bbx99gh"
                      lookupActions = []
                      type          = "multiExpression"
                      viewTab       = "visualize"
                    }
                    selectedExpressionIds = [
                      "datasetQueryExpression-vj3f78gs",
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
              id       = "step-0a8rbrd6"
              index    = 2
              isPinned = false
              opal = [
                "timechart options(empty_bins:true), A_value_sum:sum(value), group_by(backend_target_name, load_balancer_name)",
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
                    exists load_balancer_name = @loadBalancer.name
                    filter ends_with(metric, "request_count")
                    	and not metric = "https_backend_request_count"
                        and in(string(metric_labels.response_code_class), "200", "300")
                    make_col 
                        response_code_class:string(metric_labels.response_code_class)
                    
                    timechart options(empty_bins:true), A_value_sum:sum(value), group_by(backend_target_name, load_balancer_name)
                EOT
      },
      {
        id = "stage-s77mb9b4"
        input = [
          {
            datasetId   = local.load_balancing_metrics
            datasetPath = null
            inputName   = "Backup_Google/GCP/Load Balancing Metrics"
            inputRole   = "Data"
            stageId     = null
          },
          {
            datasetId   = null
            datasetPath = null
            inputName   = "loadBalancer"
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
              "1" = "backend_target_name"
              "2" = "_c_valid_from"
              "3" = "_c_valid_to"
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
            maxColumnWidth               = 400
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
          index = 14
          inputList = [
            {
              datasetId   = local.load_balancing_metrics
              inputName   = "Backup_Google/GCP/Load Balancing Metrics"
              inputRole   = "Data"
              isUserInput = false
            },
            {
              inputName   = "loadBalancer"
              inputRole   = "Data"
              isUserInput = true
              parameterId = "loadBalancer"
            },
          ]
          label = "4xx Requests"
          managers = [
            {
              id                     = "4fzkybfv"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "eyn7sn1c"
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
                      [
                        "backend_target_name",
                      ],
                      "load_balancer_name",
                    ]
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
                    y             = "A_value_sum"
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
              customSummary = "Backup_Google/GCP/Load Balancing Metrics"
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
              id                = "step-3x9ryprh"
              index             = 0
              isPinned          = false
              opal              = []
              queryPresentation = {}
              type              = "InputStep"
            },
            {
              customName    = "exists (custom)"
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
              id       = "step-uyev47pm"
              index    = 1
              isPinned = false
              opal = [
                "exists load_balancer_name = @loadBalancer.name",
                "filter ends_with(metric, \"request_count\")",
                "\tand not metric = \"https_backend_request_count\"",
                "    and metric_labels.response_code_class = \"400\"",
                "make_col ",
                "    response_code_class:string(metric_labels.response_code_class)",
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
                        autoResolution = true
                        columnId       = "value"
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
                              visible = true
                            }
                          }
                          source = {
                            table = {
                              groupFields = [
                                [
                                  "backend_target_name",
                                ],
                                "load_balancer_name",
                              ]
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
                              y             = "A_value_sum"
                            }
                            topK = {
                              order = "Top"
                              type  = "Auto"
                            }
                            type = "table"
                          }
                          type = "timeseries"
                        }
                        filterActions = []
                        groupBy = [
                          [
                            "backend_target_name",
                          ],
                          "load_balancer_name",
                        ]
                        id                  = "datasetQueryExpression-qq1ohy4s"
                        lookupActions       = []
                        summarizeVerb       = "statsby"
                        summaryFunction     = "sum"
                        summaryFunctionArgs = []
                        summaryMode         = "over-time"
                        type                = "datasetQueryExpression"
                        valueColumnId       = "A_value_sum"
                        viewTab             = "visualize"
                      },
                    ]
                    multiExpression = {
                      filterActions = []
                      id            = "multiExpression-2iatn4wv"
                      lookupActions = []
                      type          = "multiExpression"
                      viewTab       = "visualize"
                    }
                    selectedExpressionIds = [
                      "datasetQueryExpression-qq1ohy4s",
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
              id       = "step-n0azwm78"
              index    = 2
              isPinned = false
              opal = [
                "timechart options(empty_bins:true), A_value_sum:sum(value), group_by(backend_target_name, load_balancer_name)",
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
                    exists load_balancer_name = @loadBalancer.name
                    filter ends_with(metric, "request_count")
                    	and not metric = "https_backend_request_count"
                        and metric_labels.response_code_class = "400"
                    make_col 
                        response_code_class:string(metric_labels.response_code_class)
                    
                    timechart options(empty_bins:true), A_value_sum:sum(value), group_by(backend_target_name, load_balancer_name)
                EOT
      },
      {
        id = "stage-y2e5spse"
        input = [
          {
            datasetId   = local.load_balancing_metrics
            datasetPath = null
            inputName   = "Backup_Google/GCP/Load Balancing Metrics"
            inputRole   = "Data"
            stageId     = null
          },
          {
            datasetId   = null
            datasetPath = null
            inputName   = "loadBalancer"
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
              "1" = "backend_target_name"
              "2" = "_c_valid_from"
              "3" = "_c_valid_to"
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
            maxColumnWidth               = 400
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
          index = 15
          inputList = [
            {
              datasetId   = local.load_balancing_metrics
              inputName   = "Backup_Google/GCP/Load Balancing Metrics"
              inputRole   = "Data"
              isUserInput = false
            },
            {
              inputName   = "loadBalancer"
              inputRole   = "Data"
              isUserInput = true
              parameterId = "loadBalancer"
            },
          ]
          label = "5xx Requests"
          managers = [
            {
              id                     = "4fzkybfv"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "eyn7sn1c"
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
                      [
                        "backend_target_name",
                      ],
                      "load_balancer_name",
                    ]
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
                    y             = "A_value_sum"
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
              customSummary = "Backup_Google/GCP/Load Balancing Metrics"
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
              id                = "step-r7e88hxl"
              index             = 0
              isPinned          = false
              opal              = []
              queryPresentation = {}
              type              = "InputStep"
            },
            {
              customName    = "exists (custom)"
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
              id       = "step-mlhs2b0f"
              index    = 1
              isPinned = false
              opal = [
                "exists load_balancer_name = @loadBalancer.name",
                "filter ends_with(metric, \"request_count\")",
                "\tand not metric = \"https_backend_request_count\"",
                "    and metric_labels.response_code_class = \"500\"",
                "make_col ",
                "    response_code_class:string(metric_labels.response_code_class)",
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
                        autoResolution = true
                        columnId       = "value"
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
                              visible = true
                            }
                          }
                          source = {
                            table = {
                              groupFields = [
                                [
                                  "backend_target_name",
                                ],
                                "load_balancer_name",
                              ]
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
                              y             = "A_value_sum"
                            }
                            topK = {
                              order = "Top"
                              type  = "Auto"
                            }
                            type = "table"
                          }
                          type = "timeseries"
                        }
                        filterActions = []
                        groupBy = [
                          [
                            "backend_target_name",
                          ],
                          "load_balancer_name",
                        ]
                        id                  = "datasetQueryExpression-zailn1zd"
                        lookupActions       = []
                        summarizeVerb       = "statsby"
                        summaryFunction     = "sum"
                        summaryFunctionArgs = []
                        summaryMode         = "over-time"
                        type                = "datasetQueryExpression"
                        valueColumnId       = "A_value_sum"
                        viewTab             = "visualize"
                      },
                    ]
                    multiExpression = {
                      filterActions = []
                      id            = "multiExpression-ul53aezm"
                      lookupActions = []
                      type          = "multiExpression"
                      viewTab       = "visualize"
                    }
                    selectedExpressionIds = [
                      "datasetQueryExpression-zailn1zd",
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
              id       = "step-bwhzcn2y"
              index    = 2
              isPinned = false
              opal = [
                "timechart options(empty_bins:true), A_value_sum:sum(value), group_by(backend_target_name, load_balancer_name)",
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
                    exists load_balancer_name = @loadBalancer.name
                    filter ends_with(metric, "request_count")
                    	and not metric = "https_backend_request_count"
                        and metric_labels.response_code_class = "500"
                    make_col 
                        response_code_class:string(metric_labels.response_code_class)
                    
                    timechart options(empty_bins:true), A_value_sum:sum(value), group_by(backend_target_name, load_balancer_name)
                EOT
      },
      {
        id = "stage-rrq0jgcr"
        input = [
          {
            datasetId   = local.load_balancing_metrics
            datasetPath = null
            inputName   = "Google/GCP/Load Balancing Metrics"
            inputRole   = "Data"
            stageId     = null
          },
          {
            datasetId   = null
            datasetPath = null
            inputName   = "loadBalancer"
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
              backend_name = 360
            }
            containerWidth               = null
            contextMenuXCoord            = null
            contextMenuYCoord            = null
            defaultColumnWidth           = 70
            disableFixedLeftColumns      = false
            eventLinkColumnId            = null
            fetchPageSize                = 100
            hasCalculatedColumnWidths    = false
            maxColumnWidth               = 400
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
          index = 16
          inputList = [
            {
              datasetId   = local.load_balancing_metrics
              inputName   = "Google/GCP/Load Balancing Metrics"
              inputRole   = "Data"
              isUserInput = false
            },
            {
              inputName   = "loadBalancer"
              inputRole   = "Data"
              isUserInput = true
              parameterId = "loadBalancer"
            },
          ]
          label = "2xx & 3xx Count"
          managers = [
            {
              id                     = "qc3reb64"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "mnn5y7v3"
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
                  singleStatLabel = "2xx & 3xx"
                  thresholds      = null
                  type            = "singlefield"
                }
                source = {
                  table = {
                    field = "A_value_sum"
                    groupFields = [
                      "label",
                    ]
                    statsBy = {
                      fn = "avg"
                    }
                    timechart = {
                      fn         = "sum"
                      fnArgs     = []
                      resolution = "SINGLE"
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
                columnName = "A_value_sum"
              },
            ]
            wantBuckets = 1
          }
          renderType     = "TABLE"
          selectedStepId = null
          serializable   = true
          steps = [
            {
              customName    = "Input"
              customSummary = "Google/GCP/Load Balancing Metrics"
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
              id                = "step-kejxazlm"
              index             = 0
              isPinned          = false
              opal              = []
              queryPresentation = {}
              type              = "InputStep"
            },
            {
              customName    = "exists (custom)"
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
              id       = "step-8cb8u7a4"
              index    = 1
              isPinned = false
              opal = [
                "exists load_balancer_name = @loadBalancer.name",
                "filter ends_with(metric, \"request_count\")",
                "\tand not metric = \"https_backend_request_count\"",
                "make_col ",
                "    response_code_class:string(metric_labels.response_code_class),",
                "    label:\"\"",
                "filter in(response_code_class, \"200\", \"300\")",
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
                        autoResolution = true
                        columnId       = "value"
                        dataVis = {
                          config = {
                            color           = "Green"
                            colorConfigType = "Color"
                            fieldConfig = {
                              unit    = null
                              visible = false
                            }
                            singleStatLabel = "2xx & 3xx"
                            thresholds      = null
                            type            = "singlefield"
                          }
                          source = {
                            table = {
                              field = "A_value_sum"
                              groupFields = [
                                "label",
                              ]
                              statsBy = {
                                fn = "avg"
                              }
                              timechart = {
                                fn         = "sum"
                                fnArgs     = []
                                resolution = "SINGLE"
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
                          "label",
                        ]
                        id                  = "datasetQueryExpression-d7t2dnut"
                        lookupActions       = []
                        summarizeVerb       = "statsby"
                        summaryFunction     = "sum"
                        summaryFunctionArgs = []
                        summaryMode         = "single"
                        type                = "datasetQueryExpression"
                        valueColumnId       = "A_value_sum"
                        viewTab             = "visualize"
                      },
                    ]
                    multiExpression = {
                      filterActions = []
                      id            = "multiExpression-10pl0gnz"
                      lookupActions = []
                      type          = "multiExpression"
                      viewTab       = "visualize"
                    }
                    selectedExpressionIds = [
                      "datasetQueryExpression-d7t2dnut",
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
              id       = "step-uts7ht7d"
              index    = 2
              isPinned = false
              opal = [
                "statsby A_value_sum:sum(value), group_by(label)",
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
                    exists load_balancer_name = @loadBalancer.name
                    filter ends_with(metric, "request_count")
                    	and not metric = "https_backend_request_count"
                    make_col 
                        response_code_class:string(metric_labels.response_code_class),
                        label:""
                    filter in(response_code_class, "200", "300")
                    
                    statsby A_value_sum:sum(value), group_by(label)
                EOT
      },
      {
        id = "stage-bkt8och9"
        input = [
          {
            datasetId   = local.load_balancing_metrics
            datasetPath = null
            inputName   = "Google/GCP/Load Balancing Metrics"
            inputRole   = "Data"
            stageId     = null
          },
          {
            datasetId   = null
            datasetPath = null
            inputName   = "loadBalancer"
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
              backend_name = 360
            }
            containerWidth               = null
            contextMenuXCoord            = null
            contextMenuYCoord            = null
            defaultColumnWidth           = 70
            disableFixedLeftColumns      = false
            eventLinkColumnId            = null
            fetchPageSize                = 100
            hasCalculatedColumnWidths    = false
            maxColumnWidth               = 400
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
          index = 17
          inputList = [
            {
              datasetId   = local.load_balancing_metrics
              inputName   = "Google/GCP/Load Balancing Metrics"
              inputRole   = "Data"
              isUserInput = false
            },
            {
              inputName   = "loadBalancer"
              inputRole   = "Data"
              isUserInput = true
              parameterId = "loadBalancer"
            },
          ]
          label = "4xx Count"
          managers = [
            {
              id                     = "qc3reb64"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "mnn5y7v3"
              isDisabled = false
              type       = "Vis"
              vis = {
                config = {
                  color           = "Yellow"
                  colorConfigType = "Color"
                  fieldConfig = {
                    unit    = null
                    visible = false
                  }
                  singleStatLabel = "4xx Counts"
                  thresholds = {
                    startingColor = "Green"
                    thresholds = [
                      {
                        exceedsColor = "Yellow"
                        value        = 0
                      },
                    ]
                  }
                  type = "singlefield"
                }
                source = {
                  table = {
                    field = "A_value_sum"
                    groupFields = [
                      "label",
                    ]
                    statsBy = {
                      fn = "avg"
                    }
                    timechart = {
                      fn         = "sum"
                      fnArgs     = []
                      resolution = "SINGLE"
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
                columnName = "A_value_sum"
              },
            ]
            wantBuckets = 1
          }
          renderType     = "TABLE"
          selectedStepId = null
          serializable   = true
          steps = [
            {
              customName    = "Input"
              customSummary = "Google/GCP/Load Balancing Metrics"
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
              id                = "step-ajdh73qx"
              index             = 0
              isPinned          = false
              opal              = []
              queryPresentation = {}
              type              = "InputStep"
            },
            {
              customName    = "exists (custom)"
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
              id       = "step-xk3vhpcm"
              index    = 1
              isPinned = false
              opal = [
                "exists load_balancer_name = @loadBalancer.name",
                "filter ends_with(metric, \"request_count\")",
                "\tand not metric = \"https_backend_request_count\"",
                "    and metric_labels.response_code_class = \"400\"",
                "make_col ",
                "    response_code_class:string(metric_labels.response_code_class),",
                "    label:\"\"",
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
                        autoResolution = true
                        columnId       = "value"
                        dataVis = {
                          config = {
                            color           = "Yellow"
                            colorConfigType = "Color"
                            fieldConfig = {
                              unit    = null
                              visible = false
                            }
                            singleStatLabel = "4xx Counts"
                            thresholds = {
                              startingColor = "Green"
                              thresholds = [
                                {
                                  exceedsColor = "Yellow"
                                  value        = 0
                                },
                              ]
                            }
                            type = "singlefield"
                          }
                          source = {
                            table = {
                              field = "A_value_sum"
                              groupFields = [
                                "label",
                              ]
                              statsBy = {
                                fn = "avg"
                              }
                              timechart = {
                                fn         = "sum"
                                fnArgs     = []
                                resolution = "SINGLE"
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
                          "label",
                        ]
                        id                  = "datasetQueryExpression-hvxkxsta"
                        lookupActions       = []
                        summarizeVerb       = "statsby"
                        summaryFunction     = "sum"
                        summaryFunctionArgs = []
                        summaryMode         = "single"
                        type                = "datasetQueryExpression"
                        valueColumnId       = "A_value_sum"
                        viewTab             = "visualize"
                      },
                    ]
                    multiExpression = {
                      filterActions = []
                      id            = "multiExpression-vov38z7g"
                      lookupActions = []
                      type          = "multiExpression"
                      viewTab       = "visualize"
                    }
                    selectedExpressionIds = [
                      "datasetQueryExpression-hvxkxsta",
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
              id       = "step-pim50vhb"
              index    = 2
              isPinned = false
              opal = [
                "statsby A_value_sum:sum(value), group_by(label)",
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
                    exists load_balancer_name = @loadBalancer.name
                    filter ends_with(metric, "request_count")
                    	and not metric = "https_backend_request_count"
                        and metric_labels.response_code_class = "400"
                    make_col 
                        response_code_class:string(metric_labels.response_code_class),
                        label:""
                    
                    statsby A_value_sum:sum(value), group_by(label)
                EOT
      },
      {
        id = "stage-r21aa1ok"
        input = [
          {
            datasetId   = local.load_balancing_metrics
            datasetPath = null
            inputName   = "Google/GCP/Load Balancing Metrics"
            inputRole   = "Data"
            stageId     = null
          },
          {
            datasetId   = null
            datasetPath = null
            inputName   = "loadBalancer"
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
              backend_name = 360
            }
            containerWidth               = null
            contextMenuXCoord            = null
            contextMenuYCoord            = null
            defaultColumnWidth           = 70
            disableFixedLeftColumns      = false
            eventLinkColumnId            = null
            fetchPageSize                = 100
            hasCalculatedColumnWidths    = false
            maxColumnWidth               = 400
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
          index = 18
          inputList = [
            {
              datasetId   = local.load_balancing_metrics
              inputName   = "Google/GCP/Load Balancing Metrics"
              inputRole   = "Data"
              isUserInput = false
            },
            {
              inputName   = "loadBalancer"
              inputRole   = "Data"
              isUserInput = true
              parameterId = "loadBalancer"
            },
          ]
          label = "5xx Count"
          managers = [
            {
              id                     = "qc3reb64"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "mnn5y7v3"
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
                  singleStatLabel = "5xx Counts"
                  thresholds = {
                    startingColor = "Green"
                    thresholds = [
                      {
                        exceedsColor = "Yellow"
                        value        = 0
                      },
                    ]
                  }
                  type = "singlefield"
                }
                source = {
                  table = {
                    field = "A_value_sum"
                    groupFields = [
                      "label",
                    ]
                    statsBy = {
                      fn = "avg"
                    }
                    timechart = {
                      fn         = "sum"
                      fnArgs     = []
                      resolution = "SINGLE"
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
                columnName = "A_value_sum"
              },
            ]
            wantBuckets = 1
          }
          renderType     = "TABLE"
          selectedStepId = null
          serializable   = true
          steps = [
            {
              customName    = "Input"
              customSummary = "Google/GCP/Load Balancing Metrics"
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
              id                = "step-4zjh8ntm"
              index             = 0
              isPinned          = false
              opal              = []
              queryPresentation = {}
              type              = "InputStep"
            },
            {
              customName    = "exists (custom)"
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
              id       = "step-ny97zb9l"
              index    = 1
              isPinned = false
              opal = [
                "exists load_balancer_name = @loadBalancer.name",
                "filter ends_with(metric, \"request_count\")",
                "\tand not metric = \"https_backend_request_count\"",
                "    and metric_labels.response_code_class = \"500\"",
                "make_col ",
                "    response_code_class:string(metric_labels.response_code_class),",
                "    label:\"\"",
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
                        autoResolution = true
                        columnId       = "value"
                        dataVis = {
                          config = {
                            color           = "Red"
                            colorConfigType = "Color"
                            fieldConfig = {
                              unit    = null
                              visible = false
                            }
                            singleStatLabel = "5xx Counts"
                            thresholds = {
                              startingColor = "Green"
                              thresholds = [
                                {
                                  exceedsColor = "Yellow"
                                  value        = 0
                                },
                              ]
                            }
                            type = "singlefield"
                          }
                          source = {
                            table = {
                              field = "A_value_sum"
                              groupFields = [
                                "label",
                              ]
                              statsBy = {
                                fn = "avg"
                              }
                              timechart = {
                                fn         = "sum"
                                fnArgs     = []
                                resolution = "SINGLE"
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
                          "label",
                        ]
                        id                  = "datasetQueryExpression-pm1ouaht"
                        lookupActions       = []
                        summarizeVerb       = "statsby"
                        summaryFunction     = "sum"
                        summaryFunctionArgs = []
                        summaryMode         = "single"
                        type                = "datasetQueryExpression"
                        valueColumnId       = "A_value_sum"
                        viewTab             = "visualize"
                      },
                    ]
                    multiExpression = {
                      filterActions = []
                      id            = "multiExpression-n0or30m6"
                      lookupActions = []
                      type          = "multiExpression"
                      viewTab       = "visualize"
                    }
                    selectedExpressionIds = [
                      "datasetQueryExpression-pm1ouaht",
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
              id       = "step-218i4gt3"
              index    = 2
              isPinned = false
              opal = [
                "statsby A_value_sum:sum(value), group_by(label)",
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
                    exists load_balancer_name = @loadBalancer.name
                    filter ends_with(metric, "request_count")
                    	and not metric = "https_backend_request_count"
                        and metric_labels.response_code_class = "500"
                    make_col 
                        response_code_class:string(metric_labels.response_code_class),
                        label:""
                    
                    statsby A_value_sum:sum(value), group_by(label)
                EOT
      },
      {
        id = "stage-rnz800xh"
        input = [
          {
            datasetId   = local.load_balancing_config_audit_logs
            datasetPath = null
            inputName   = "Backup_Google/GCP/Load Balancing Config Audit Logs"
            inputRole   = "Data"
            stageId     = null
          },
          {
            datasetId   = null
            datasetPath = null
            inputName   = "loadBalancer"
            inputRole   = "Data"
            stageId     = null
          },
        ]
        layout = {
          appearance = "VISIBLE"
          dataTableViewState = {
            autoTableHeight              = true
            columnFooterHeight           = 0
            columnHeaderHeight           = 29
            columnOrderOverride          = {}
            columnVisibility             = {}
            columnWidths                 = {}
            containerWidth               = 1288
            contextMenuXCoord            = null
            contextMenuYCoord            = null
            defaultColumnWidth           = 70
            disableFixedLeftColumns      = false
            eventLinkColumnId            = null
            fetchPageSize                = 100
            hasCalculatedColumnWidths    = false
            maxColumnWidth               = 400
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
          index = 19
          inputList = [
            {
              datasetId   = local.load_balancing_config_audit_logs
              inputName   = "Backup_Google/GCP/Load Balancing Config Audit Logs"
              inputRole   = "Data"
              isUserInput = false
            },
            {
              inputName   = "loadBalancer"
              inputRole   = "Data"
              isUserInput = true
              parameterId = "loadBalancer"
            },
          ]
          label = "audit logs - backendservices"
          managers = [
            {
              id                     = "kr97nzxt"
              isDisabled             = false
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "drz4sdmu"
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
              customSummary = "Backup_Google/GCP/Load Balancing Config Audit Logs"
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
              id                = "step-wrf741n1"
              index             = 0
              isPinned          = false
              opal              = []
              queryPresentation = {}
              type              = "InputStep"
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
                tableTypes = [
                  "TABULAR",
                  "SUMMARY",
                ]
              }
              id       = "step-zmkb85za"
              index    = 1
              isPinned = false
              opal = [
                "filter ends_with(logName, \"cloudaudit.googleapis.com%2Factivity\")",
                "filter in(resourceKind, \"backendServices\", \"regionBackendServices\", \"backendBuckets\")",
                "exists resourceName = @loadBalancer.defaultServiceName",
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
                    filter ends_with(logName, "cloudaudit.googleapis.com%2Factivity")
                    filter in(resourceKind, "backendServices", "regionBackendServices", "backendBuckets")
                    exists resourceName = @loadBalancer.defaultServiceName
                EOT
      },
      {
        id = "stage-bh2zikve"
        input = [
          {
            datasetId   = local.load_balancing_config_audit_logs
            datasetPath = null
            inputName   = "Backup_Google/GCP/Load Balancing Config Audit Logs"
            inputRole   = "Data"
            stageId     = null
          },
          {
            datasetId   = null
            datasetPath = null
            inputName   = "loadBalancer"
            inputRole   = "Data"
            stageId     = null
          },
        ]
        layout = {
          appearance = "VISIBLE"
          dataTableViewState = {
            autoTableHeight              = true
            columnFooterHeight           = 0
            columnHeaderHeight           = 29
            columnOrderOverride          = {}
            columnVisibility             = {}
            columnWidths                 = {}
            containerWidth               = 1288
            contextMenuXCoord            = null
            contextMenuYCoord            = null
            defaultColumnWidth           = 70
            disableFixedLeftColumns      = false
            eventLinkColumnId            = null
            fetchPageSize                = 100
            hasCalculatedColumnWidths    = false
            maxColumnWidth               = 400
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
          index = 20
          inputList = [
            {
              datasetId   = local.load_balancing_config_audit_logs
              inputName   = "Backup_Google/GCP/Load Balancing Config Audit Logs"
              inputRole   = "Data"
              isUserInput = false
            },
            {
              inputName   = "loadBalancer"
              inputRole   = "Data"
              isUserInput = true
              parameterId = "loadBalancer"
            },
          ]
          label = "audit logs - url_maps"
          managers = [
            {
              id                     = "kr97nzxt"
              isDisabled             = false
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "mddgyiax"
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
              customSummary = "Backup_Google/GCP/Load Balancing Config Audit Logs"
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
              id                = "step-jyasiyjf"
              index             = 0
              isPinned          = false
              opal              = []
              queryPresentation = {}
              type              = "InputStep"
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
                tableTypes = [
                  "TABULAR",
                  "SUMMARY",
                ]
              }
              id       = "step-k0dl5www"
              index    = 1
              isPinned = false
              opal = [
                "filter ends_with(logName, \"cloudaudit.googleapis.com%2Factivity\")",
                "filter in(resourceKind, \"urlMaps\", \"regionUrlMap\")",
                "exists resourceName = @loadBalancer.urlMapName",
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
                    filter ends_with(logName, "cloudaudit.googleapis.com%2Factivity")
                    filter in(resourceKind, "urlMaps", "regionUrlMap")
                    exists resourceName = @loadBalancer.urlMapName
                EOT
      },
      {
        id = "stage-mxe2zska"
        input = [
          {
            datasetId   = local.load_balancing_config_audit_logs
            datasetPath = null
            inputName   = "Backup_Google/GCP/Load Balancing Config Audit Logs"
            inputRole   = "Data"
            stageId     = null
          },
          {
            datasetId   = null
            datasetPath = null
            inputName   = "loadBalancer"
            inputRole   = "Data"
            stageId     = null
          },
        ]
        layout = {
          appearance = "VISIBLE"
          dataTableViewState = {
            autoTableHeight              = true
            columnFooterHeight           = 0
            columnHeaderHeight           = 29
            columnOrderOverride          = {}
            columnVisibility             = {}
            columnWidths                 = {}
            containerWidth               = 1288
            contextMenuXCoord            = null
            contextMenuYCoord            = null
            defaultColumnWidth           = 70
            disableFixedLeftColumns      = false
            eventLinkColumnId            = null
            fetchPageSize                = 100
            hasCalculatedColumnWidths    = false
            maxColumnWidth               = 400
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
          index = 21
          inputList = [
            {
              datasetId   = local.load_balancing_config_audit_logs
              inputName   = "Backup_Google/GCP/Load Balancing Config Audit Logs"
              inputRole   = "Data"
              isUserInput = false
            },
            {
              inputName   = "loadBalancer"
              inputRole   = "Data"
              isUserInput = true
              parameterId = "loadBalancer"
            },
          ]
          label = "audit logs - forwarding_rules"
          managers = [
            {
              id                     = "kr97nzxt"
              isDisabled             = false
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "dzeeadf7"
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
              customSummary = "Backup_Google/GCP/Load Balancing Config Audit Logs"
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
              id                = "step-iie04a99"
              index             = 0
              isPinned          = false
              opal              = []
              queryPresentation = {}
              type              = "InputStep"
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
                tableTypes = [
                  "TABULAR",
                  "SUMMARY",
                ]
              }
              id       = "step-4ckxmgxu"
              index    = 1
              isPinned = false
              opal = [
                "filter ends_with(logName, \"cloudaudit.googleapis.com%2Factivity\")",
                "filter in(resourceKind, \"forwardingRules\", \"globalForwardingRules\")",
                "exists resourceName = @loadBalancer.frontEnd",
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
                    filter ends_with(logName, "cloudaudit.googleapis.com%2Factivity")
                    filter in(resourceKind, "forwardingRules", "globalForwardingRules")
                    exists resourceName = @loadBalancer.frontEnd
                EOT
      },
      {
        id = "stage-9kd7zyuk"
        input = [
          {
            datasetId   = local.load_balancing_config_audit_logs
            datasetPath = null
            inputName   = "Backup_Google/GCP/Load Balancing Config Audit Logs"
            inputRole   = "Data"
            stageId     = null
          },
          {
            datasetId   = null
            datasetPath = null
            inputName   = "loadBalancer"
            inputRole   = "Data"
            stageId     = null
          },
        ]
        layout = {
          appearance = "VISIBLE"
          dataTableViewState = {
            autoTableHeight              = true
            columnFooterHeight           = 0
            columnHeaderHeight           = 29
            columnOrderOverride          = {}
            columnVisibility             = {}
            columnWidths                 = {}
            containerWidth               = 1288
            contextMenuXCoord            = null
            contextMenuYCoord            = null
            defaultColumnWidth           = 70
            disableFixedLeftColumns      = false
            eventLinkColumnId            = null
            fetchPageSize                = 100
            hasCalculatedColumnWidths    = false
            maxColumnWidth               = 400
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
          index = 22
          inputList = [
            {
              datasetId   = local.load_balancing_config_audit_logs
              inputName   = "Backup_Google/GCP/Load Balancing Config Audit Logs"
              inputRole   = "Data"
              isUserInput = false
            },
            {
              inputName   = "loadBalancer"
              inputRole   = "Data"
              isUserInput = true
              parameterId = "loadBalancer"
            },
          ]
          label = "audit logs - target_proxies"
          managers = [
            {
              id                     = "kr97nzxt"
              isDisabled             = false
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "d19az8pe"
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
              customSummary = "Backup_Google/GCP/Load Balancing Config Audit Logs"
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
              id                = "step-1swt3b1p"
              index             = 0
              isPinned          = false
              opal              = []
              queryPresentation = {}
              type              = "InputStep"
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
                tableTypes = [
                  "TABULAR",
                  "SUMMARY",
                ]
              }
              id       = "step-2gs5eemq"
              index    = 1
              isPinned = false
              opal = [
                "filter ends_with(logName, \"cloudaudit.googleapis.com%2Factivity\")",
                "filter in(resourceKind, \"targetHttpProxies\", \"targetHttpsProxies\", \"targetSslProxies\", \"targetTcpProxies\")",
                "exists resourceName = @loadBalancer.targetProxyName",
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
                    filter ends_with(logName, "cloudaudit.googleapis.com%2Factivity")
                    filter in(resourceKind, "targetHttpProxies", "targetHttpsProxies", "targetSslProxies", "targetTcpProxies")
                    exists resourceName = @loadBalancer.targetProxyName
                EOT
      },
      {
        id = "stage-vhllr1sq"
        input = [
          {
            datasetId   = null
            datasetPath = null
            inputName   = "audit logs - backendservices_-rnz8"
            inputRole   = "Data"
            stageId     = "stage-rnz800xh"
          },
          {
            datasetId   = null
            datasetPath = null
            inputName   = "audit logs - url_maps_-bh2z"
            inputRole   = "Data"
            stageId     = "stage-bh2zikve"
          },
          {
            datasetId   = null
            datasetPath = null
            inputName   = "audit logs - forwarding_rules_-mxe2"
            inputRole   = "Data"
            stageId     = "stage-mxe2zska"
          },
          {
            datasetId   = null
            datasetPath = null
            inputName   = "audit logs - target_proxies_-9kd7"
            inputRole   = "Data"
            stageId     = "stage-9kd7zyuk"
          },
        ]
        layout = {
          appearance = "VISIBLE"
          dataTableViewState = {
            autoTableHeight              = true
            columnFooterHeight           = 0
            columnHeaderHeight           = 29
            columnOrderOverride          = {}
            columnVisibility             = {}
            columnWidths                 = {}
            containerWidth               = 1288
            contextMenuXCoord            = null
            contextMenuYCoord            = null
            defaultColumnWidth           = 70
            disableFixedLeftColumns      = false
            eventLinkColumnId            = null
            fetchPageSize                = 100
            hasCalculatedColumnWidths    = false
            maxColumnWidth               = 400
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
          index = 23
          inputList = [
            {
              inputName   = "audit logs - backendservices_-rnz8"
              inputRole   = "Data"
              isUserInput = false
              stageId     = "stage-rnz800xh"
            },
            {
              inputName   = "audit logs - url_maps_-bh2z"
              inputRole   = "Data"
              isUserInput = true
              stageId     = "stage-bh2zikve"
            },
            {
              inputName   = "audit logs - forwarding_rules_-mxe2"
              inputRole   = "Data"
              isUserInput = true
              stageId     = "stage-mxe2zska"
            },
            {
              inputName   = "audit logs - target_proxies_-9kd7"
              inputRole   = "Data"
              isUserInput = true
              stageId     = "stage-9kd7zyuk"
            },
          ]
          label = "Audit Logs - LB Configuration Changes"
          managers = [
            {
              id                     = "6chx5svk"
              isDisabled             = false
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "n4sic814"
              isDisabled = false
              type       = "JsonTree"
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
              customSummary = "audit logs - backendservices_-rnz8"
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
              id                = "step-scvqcq4z"
              index             = 0
              isPinned          = false
              opal              = []
              queryPresentation = {}
              type              = "InputStep"
            },
            {
              customName    = "union (custom)"
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
              id       = "step-pl9n4i65"
              index    = 1
              isPinned = false
              opal = [
                "union @\"audit logs - url_maps_-bh2z\", @\"audit logs - forwarding_rules_-mxe2\", @\"audit logs - target_proxies_-9kd7\"",
                "make_col ",
                "\tauthenticationInfo:protoPayload.authenticationInfo, ",
                "    methodName:string(protoPayload.methodName), ",
                "    resourceKind:split_part(string(protoPayload.resourceName), \"/\", -2),",
                "    response:object(protoPayload.response)",
                "   ",
                "filter not is_null(response)",
                "",
                "pick_col ",
                "\ttimestamp, ",
                "    resourceKind,",
                "    resourceName,",
                "    methodName, ",
                "    authenticationInfo,",
                "    response",
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
                    union @"audit logs - url_maps_-bh2z", @"audit logs - forwarding_rules_-mxe2", @"audit logs - target_proxies_-9kd7"
                    make_col 
                    	authenticationInfo:protoPayload.authenticationInfo, 
                        methodName:string(protoPayload.methodName), 
                        resourceKind:split_part(string(protoPayload.resourceName), "/", -2),
                        response:object(protoPayload.response)
                       
                    filter not is_null(response)
                    
                    pick_col 
                    	timestamp, 
                        resourceKind,
                        resourceName,
                        methodName, 
                        authenticationInfo,
                        response
                EOT
      },
      {
        id = "stage-dvse0ocl"
        input = [
          {
            datasetId   = null
            datasetPath = null
            inputName   = "loadBalancer"
            inputRole   = "Data"
            stageId     = null
          },
          {
            datasetId   = local.load_balancing_health_checks
            datasetPath = null
            inputName   = "Backup_Google/GCP/Load Balancing Health Checks"
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
              "1" = "_c_defaultServiceHeathchecks_path"
              "2" = "Valid From"
              "3" = "Valid To"
            }
            columnVisibility = {}
            columnWidths = {
              _c_defaultServiceHeathchecks_path  = 126
              _c_defaultServiceHeathchecks_value = 1022
              healthcheck                        = 275
              load_balancer_name                 = 248
              logConfig                          = 215
              name                               = 220
            }
            containerWidth               = 1288
            contextMenuXCoord            = null
            contextMenuYCoord            = null
            defaultColumnWidth           = 70
            disableFixedLeftColumns      = false
            eventLinkColumnId            = null
            fetchPageSize                = 100
            hasCalculatedColumnWidths    = false
            maxColumnWidth               = 400
            maxMeasuredColumnHeaderWidth = {}
            maxMeasuredColumnWidth       = {}
            maxMeasuredRowHeight         = {}
            minColumnWidth               = 60
            minRowHeight                 = 30
            preserveCellAndRowSelection  = true
            rowHeaderWidth               = 33
            rowHeights                   = {}
            rowSizeIncrement             = 1
            scrollToColumn               = "defaultServiceHeathchecks"
            scrollToRow                  = 3
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
          index = 24
          inputList = [
            {
              inputName   = "loadBalancer"
              inputRole   = "Data"
              isUserInput = false
              parameterId = "loadBalancer"
            },
            {
              datasetId   = local.load_balancing_health_checks
              inputName   = "Backup_Google/GCP/Load Balancing Health Checks"
              inputRole   = "Data"
              isUserInput = true
            },
          ]
          label = "Health Checks with Logging Disabled"
          managers = [
            {
              id                     = "axqybbt8"
              isDisabled             = false
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "7ruizb4o"
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
              customSummary = "loadBalancer"
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
              id                = "step-br5z6ovc"
              index             = 0
              isPinned          = false
              opal              = []
              queryPresentation = {}
              type              = "InputStep"
            },
            {
              customName    = "pick_col (custom)"
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
              id       = "step-rf8nqqcm"
              index    = 1
              isPinned = false
              opal = [
                "pick_col",
                "\tname,",
                "    @.\"Valid From\",",
                "    @.\"Valid To\",",
                "    defaultServiceHeathchecks",
                "    ",
                "flatten_single defaultServiceHeathchecks",
                "make_col ",
                "\t_c_defaultServiceHeathchecks_value:string(_c_defaultServiceHeathchecks_value),",
                "    healthcheck:split_part(string(_c_defaultServiceHeathchecks_value),\"/\",-1)",
                "",
                "lookup @.\"_c_defaultServiceHeathchecks_value\"=@\"Backup_Google/GCP/Load Balancing Health Checks\".selfLink, logConfig:@\"Backup_Google/GCP/Load Balancing Health Checks\".logConfig",
                "filter is_null(logConfig) and not is_null(healthcheck)",
                "rename_col load_balancer_name:name",
                "colshow ",
                "\t_c_defaultServiceHeathchecks_path:false,",
                "    _c_defaultServiceHeathchecks_value:false,",
                "    logConfig:false",
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
                    pick_col
                    	name,
                        @."Valid From",
                        @."Valid To",
                        defaultServiceHeathchecks
                        
                    flatten_single defaultServiceHeathchecks
                    make_col 
                    	_c_defaultServiceHeathchecks_value:string(_c_defaultServiceHeathchecks_value),
                        healthcheck:split_part(string(_c_defaultServiceHeathchecks_value),"/",-1)
                    
                    lookup @."_c_defaultServiceHeathchecks_value"=@"Backup_Google/GCP/Load Balancing Health Checks".selfLink, logConfig:@"Backup_Google/GCP/Load Balancing Health Checks".logConfig
                    filter is_null(logConfig) and not is_null(healthcheck)
                    rename_col load_balancer_name:name
                    colshow 
                    	_c_defaultServiceHeathchecks_path:false,
                        _c_defaultServiceHeathchecks_value:false,
                        logConfig:false
                EOT
      },
      {
        id = "stage-23rf8rsr"
        input = [
          {
            datasetId   = null
            datasetPath = null
            inputName   = "loadBalancer"
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
              load_balancer_name = 233
              logging            = 227
            }
            containerWidth               = 1288
            contextMenuXCoord            = null
            contextMenuYCoord            = null
            defaultColumnWidth           = 70
            disableFixedLeftColumns      = false
            eventLinkColumnId            = null
            fetchPageSize                = 100
            hasCalculatedColumnWidths    = false
            maxColumnWidth               = 400
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
          index = 25
          inputList = [
            {
              inputName   = "loadBalancer"
              inputRole   = "Data"
              isUserInput = false
              parameterId = "loadBalancer"
            },
          ]
          label = "Backend Services with Logs Disabled or Sampled"
          managers = [
            {
              id                     = "f7fiubwg"
              isDisabled             = false
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "rp2fgxdp"
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
              customSummary = "loadBalancer"
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
              id                = "step-6hpu0jmd"
              index             = 0
              isPinned          = false
              opal              = []
              queryPresentation = {}
              type              = "InputStep"
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
                tableTypes = [
                  "TABULAR",
                  "SUMMARY",
                ]
              }
              id       = "step-fe8h464k"
              index    = 1
              isPinned = false
              opal = [
                "filter is_null(defaultServiceLogConfig) or float64(defaultServiceLogConfig.sampleRate) < 1",
                "make_col ",
                "\tlogging:case(",
                "    \tis_null(defaultServiceLogConfig), \"disabled\",",
                "        true, strcat(\"sampling to \", string(round((float64(defaultServiceLogConfig.sampleRate))*100,2)), \"%\"))",
                "",
                "rename_col",
                "\tload_balancer_name:name,",
                "    BackendService:defaultServiceName",
                "",
                "pick_col ",
                "\tload_balancer_name,",
                "    @.\"Valid From\",",
                "    @.\"Valid To\",",
                "    BackendService,",
                "    logging",
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
                    filter is_null(defaultServiceLogConfig) or float64(defaultServiceLogConfig.sampleRate) < 1
                    make_col 
                    	logging:case(
                        	is_null(defaultServiceLogConfig), "disabled",
                            true, strcat("sampling to ", string(round((float64(defaultServiceLogConfig.sampleRate))*100,2)), "%"))
                    
                    rename_col
                    	load_balancer_name:name,
                        BackendService:defaultServiceName
                    
                    pick_col 
                    	load_balancer_name,
                        @."Valid From",
                        @."Valid To",
                        BackendService,
                        logging
                EOT
      },
      {
        id = "stage-ymij9guj"
        input = [
          {
            datasetId   = null
            datasetPath = null
            inputName   = "loadBalancer"
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
              defaultServiceProtocol = 170
            }
            containerWidth               = 1253
            contextMenuXCoord            = null
            contextMenuYCoord            = null
            defaultColumnWidth           = 70
            disableFixedLeftColumns      = false
            eventLinkColumnId            = null
            fetchPageSize                = 100
            hasCalculatedColumnWidths    = false
            maxColumnWidth               = 400
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
          index = 26
          inputList = [
            {
              inputName   = "loadBalancer"
              inputRole   = "Data"
              isUserInput = false
              parameterId = "loadBalancer"
            },
          ]
          label = "Type"
          managers = [
            {
              id                     = "ktrurf2q"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "whhgag7g"
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
                      "defaultServiceProtocol",
                    ]
                    statsBy = {
                      fn = "count"
                    }
                    timechart = {
                      fn         = "count_distinct"
                      fnArgs     = []
                      resolution = "SINGLE"
                    }
                    transformType = "none"
                    type          = "keyvalue"
                    valueField    = "A_name_count_distinct"
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
            rollup = {}
            sort = [
              {
                ascending  = false
                columnName = "A_name_count_distinct"
              },
            ]
            wantBuckets = 1
          }
          renderType     = "TABLE"
          selectedStepId = null
          serializable   = true
          steps = [
            {
              customName    = "Input"
              customSummary = "loadBalancer"
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
              id                = "step-e4bhcayi"
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
                        autoResolution = true
                        columnId       = "name"
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
                                "defaultServiceProtocol",
                              ]
                              statsBy = {
                                fn = "count"
                              }
                              timechart = {
                                fn         = "count_distinct"
                                fnArgs     = []
                                resolution = "SINGLE"
                              }
                              transformType = "none"
                              type          = "keyvalue"
                              valueField    = "A_name_count_distinct"
                            }
                            topK = {
                              order = "Top"
                              type  = "Auto"
                            }
                            type = "table"
                          }
                          type = "circular"
                        }
                        filterActions = []
                        groupBy = [
                          "defaultServiceProtocol",
                        ]
                        id                  = "datasetQueryExpression-al5t6tye"
                        lookupActions       = []
                        summarizeVerb       = "statsby"
                        summaryFunction     = "count_distinct"
                        summaryFunctionArgs = []
                        summaryMode         = "single"
                        type                = "datasetQueryExpression"
                        valueColumnId       = "A_name_count_distinct"
                        viewTab             = "visualize"
                      },
                    ]
                    multiExpression = {
                      filterActions = []
                      id            = "multiExpression-dpq129wm"
                      lookupActions = []
                      type          = "multiExpression"
                      viewTab       = "visualize"
                    }
                    selectedExpressionIds = [
                      "datasetQueryExpression-al5t6tye",
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
              id       = "step-nhc2pzt8"
              index    = 1
              isPinned = false
              opal = [
                "statsby A_name_count_distinct:count_distinct(name), group_by(defaultServiceProtocol)",
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
        pipeline = "statsby A_name_count_distinct:count_distinct(name), group_by(defaultServiceProtocol)"
      },
      {
        id = "stage-g03tiiey"
        input = [
          {
            datasetId   = local.load_balancing_load_balancers
            datasetPath = null
            inputName   = "dev/Load Balancing Load Balancers"
            inputRole   = "Data"
            stageId     = null
          },
        ]
        layout = {
          appearance = "HIDDEN"
          index      = 27
          inputList = [
            {
              datasetId   = local.load_balancing_load_balancers
              inputName   = "dev/Load Balancing Load Balancers"
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
              customSummary = "dev/Load Balancing Load Balancers"
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
              id       = "step-r5clkskc"
              index    = 0
              isPinned = false
              opal = [
                "// Filtered Dataset Controlled Filter Stage",
              ]
              queryPresentation = {}
              type              = "InputStep"
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
                tableTypes = [
                  "TABULAR",
                  "SUMMARY",
                ]
              }
              id       = "step-6blx7255"
              index    = 1
              isPinned = false
              opal = [
                "#hint{skipExistsNoFilter:true}",
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
                    // Filtered Dataset Controlled Filter Stage
                    #hint{skipExistsNoFilter:true}
                EOT
      },
    ]
  )
  workspace = local.workspace
}

