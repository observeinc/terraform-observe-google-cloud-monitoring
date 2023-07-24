# terraform import observe_dashboard.redis_monitoring 42909069
resource "observe_dashboard" "redis_monitoring" {
  description = local.dashboard_description
  layout = jsonencode(
    {
      autoPack = true
      gridLayout = {
        sections = [
          {
            card = {
              cardType = "section"
              closed   = false
              id       = "card-ykwek5af"
              title    = "Untitled Section"
            }
            items = []
          },
          {
            card = {
              cardType = "section"
              closed   = false
              id       = "card-gq0xqleb"
              title    = "Summary"
            }
            items = [
              {
                card = {
                  cardType = "stage"
                  id       = "card-ucrq2g0o"
                  stageId  = "stage-gd5a7ls5"
                }
                layout = {
                  h = 11
                  i = "card-ucrq2g0o"
                  w = 2
                  x = 6
                  y = 0
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-5p8l1ce1"
                  stageId  = "stage-q5223la6"
                }
                layout = {
                  h = 11
                  i = "card-5p8l1ce1"
                  w = 2
                  x = 4
                  y = 0
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-tkebrzkz"
                  stageId  = "stage-kkg69631"
                }
                layout = {
                  h = 11
                  i = "card-tkebrzkz"
                  w = 2
                  x = 8
                  y = 0
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-il6i1lxc"
                  stageId  = "stage-95dn11kb"
                }
                layout = {
                  h = 11
                  i = "card-il6i1lxc"
                  w = 2
                  x = 10
                  y = 0
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-8l0g4evt"
                  stageId  = "stage-sblyl8hv"
                }
                layout = {
                  h = 11
                  i = "card-8l0g4evt"
                  w = 2
                  x = 0
                  y = 0
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-p4c7s55i"
                  stageId  = "stage-z5l9wra8"
                }
                layout = {
                  h = 11
                  i = "card-p4c7s55i"
                  w = 2
                  x = 2
                  y = 0
                }
              },
            ]
            lastModified = 1676329754532
          },
          {
            card = {
              cardType = "section"
              closed   = false
              id       = "card-okpfhe0u"
              title    = "Monitoring"
            }
            items = [
              {
                card = {
                  cardType = "stage"
                  id       = "card-loacysqv"
                  stageId  = "stage-m6kykgl1"
                }
                layout = {
                  h = 19
                  i = "card-loacysqv"
                  w = 5
                  x = 7
                  y = 0
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-fxtxltqt"
                  stageId  = "stage-5il4u0ht"
                }
                layout = {
                  h = 10
                  i = "card-fxtxltqt"
                  w = 7
                  x = 0
                  y = 0
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-le2wcr8z"
                  stageId  = "stage-ltpfsi5n"
                }
                layout = {
                  h = 9
                  i = "card-le2wcr8z"
                  w = 7
                  x = 0
                  y = 10
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-2rz3mq6i"
                  stageId  = "stage-4vx5oqwq"
                }
                layout = {
                  h = 12
                  i = "card-2rz3mq6i"
                  w = 4
                  x = 8
                  y = 19
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-a565f3f6"
                  stageId  = "stage-xa7yo712"
                }
                layout = {
                  h = 12
                  i = "card-a565f3f6"
                  w = 4
                  x = 4
                  y = 19
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-aw85e1ak"
                  stageId  = "stage-xmeu7adi"
                }
                layout = {
                  h = 12
                  i = "card-aw85e1ak"
                  w = 4
                  x = 0
                  y = 19
                }
              },
            ]
            lastModified = 1676483032638
          },
          {
            card = {
              cardType = "section"
              closed   = false
              id       = "card-nocx01u5"
              title    = "Keys"
            }
            items = [
              {
                card = {
                  cardType = "stage"
                  id       = "card-7c1ajq10"
                  stageId  = "stage-9y2jp9iw"
                }
                layout = {
                  h = 11
                  i = "card-7c1ajq10"
                  w = 7
                  x = 5
                  y = 0
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-jx4653zt"
                  stageId  = "stage-5flbedut"
                }
                layout = {
                  h = 22
                  i = "card-jx4653zt"
                  w = 2
                  x = 0
                  y = 0
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-ghl5od53"
                  stageId  = "stage-f935xw0s"
                }
                layout = {
                  h = 11
                  i = "card-ghl5od53"
                  w = 3
                  x = 2
                  y = 0
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-phvavoqg"
                  stageId  = "stage-9x9a8h1f"
                }
                layout = {
                  h = 11
                  i = "card-phvavoqg"
                  w = 7
                  x = 5
                  y = 11
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-uijx2o45"
                  stageId  = "stage-pwabkz2q"
                }
                layout = {
                  h = 11
                  i = "card-uijx2o45"
                  w = 3
                  x = 2
                  y = 11
                }
              },
            ]
            lastModified = 1676483632999
          },
          {
            card = {
              cardType = "section"
              closed   = false
              id       = "card-s4liuycf"
              title    = "Documentation"
            }
            items = [
              {
                card = {
                  cardType = "text"
                  id       = "card-q82nmp1i"
                  text     = <<-EOT
                                        ### Memorystore for Redis
                                                                                                                                                                                                                                                                                        
                                        [https://cloud.google.com/memorystore/docs/redis/redis-overview](https://cloud.google.com/memorystore/docs/redis/redis-overview)
                                                                                                                                                                                                                                                                                        
                                        Memorystore for Redis provides a fully-managed service that is powered by the Redis in-memory data store to build application caches that provide sub-millisecond data access.
                                                                                                                                                                                                                                                                                        
                                        ### Use cases for Memorystore for Redis
                                                                                                                                                                                                                                                                                        
                                        Memorystore for Redis provides a fast, in-memory store for use cases that require fast, real-time processing of data. From simple caching use cases to real time analytics, Memorystore for Redis provides the performance you need.
                                    EOT
                  title    = "Untitled Text"
                }
                layout = {
                  h = 14
                  i = "card-q82nmp1i"
                  w = 6
                  x = 0
                  y = 0
                }
              },
              {
                card = {
                  cardType = "text"
                  id       = "card-9qq3m6lp"
                  text     = <<-EOT
                                        ### Notes
                                        Metrics are sampled every 60s and may take up to 240s to display.
                                                                                                                                                                                                                                                                                                                                                                        
                                        To use this application you must implement the terraform-google-collection and the terraform google module with enable_service_redis set to true.
                                    EOT
                  title    = "Untitled Text"
                }
                layout = {
                  h = 14
                  i = "card-9qq3m6lp"
                  w = 6
                  x = 6
                  y = 0
                }
              },
            ]
            lastModified = 1677186168796
          },
        ]
      }
      stageListLayout = {
        isModified = false
        parameters = [
          {
            controlledFilterStageId = "stage-5if3k3ks"
            datasetId               = local.redis_instance
            defaultValue = {
              datasetref = {
                datasetId = local.redis_instance
              }
            }
            emptyValueEncoding    = "null"
            emptyValueLabelOption = "null"
            id                    = "input-parameter-5maomrv2"
            name                  = "redis"
            valueKind = {
              type = "DATASETREF"
            }
            viewType = "input"
          },
        ]
        selectedStageId = "stage-ltpfsi5n"
        timeRange = {
          display               = "Today 11:35:32 → 12:35:32"
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
  name = local.dashboard_name
  parameters = jsonencode(
    [
      {
        defaultValue = {
          datasetref = {
            datasetId = local.redis_instance
          }
        }
        id   = "input-parameter-5maomrv2"
        name = "redis"
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
        id = "stage-5if3k3ks"
        input = [
          {
            datasetId   = local.redis_instance
            datasetPath = null
            inputName   = "test_gcp_learning-bedbug/Redis Instance"
            inputRole   = "Data"
            stageId     = null
          },
        ]
        layout = {
          appearance = "HIDDEN"
          index      = 0
          inputList = [
            {
              datasetId   = local.redis_instance
              inputName   = "test_gcp_learning-bedbug/Redis Instance"
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
              customSummary = "test_gcp_learning-bedbug/Redis Instance"
              datasetQueryId = {
                ignoreCompress = false
                queryId        = null
                resultKinds = [
                  "ResultKindSchema",
                  "ResultKindData",
                  "ResultKindStats",
                ]
              }
              id       = "step-ezmooa2t"
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
              }
              id       = "step-wc5dp1qn"
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
      {
        id = "stage-95dn11kb"
        input = [
          {
            datasetId   = null
            datasetPath = null
            inputName   = "redis"
            inputRole   = "Data"
            stageId     = null
          },
        ]
        layout = {
          appearance = "VISIBLE"
          dataTableViewState = {
            columnOrderOverride = {
              "1" = "_c_valid_from"
              "2" = "_c_valid_to"
              "3" = "Valid From"
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
          index = 1
          inputList = [
            {
              inputName   = "redis"
              inputRole   = "Data"
              isUserInput = false
              parameterId = "input-parameter-5maomrv2"
            },
          ]
          label = "State"
          managers = [
            {
              id                     = "zf657dwn"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "87a34pjn"
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
                      "state",
                    ]
                    statsBy = {
                      fn = "avg"
                    }
                    timechart = {
                      fn         = "avg"
                      resolution = "SINGLE"
                    }
                    transformType = "none"
                    type          = "keyvalue"
                    valueField    = "A__ob_value_avg"
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
              id         = "jssp7cxm"
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
                ascending  = false
                columnName = "A__ob_value_avg"
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
              customSummary = "redis"
              datasetQueryId = {
                ignoreCompress = false
                queryId        = null
                resultKinds = [
                  "ResultKindSchema",
                  "ResultKindData",
                  "ResultKindStats",
                ]
              }
              id                = "step-meveek96"
              index             = 0
              isPinned          = false
              opal              = []
              queryPresentation = {}
              type              = "InputStep"
            },
            {
              action = {
                params = {
                  emptyBins   = true
                  field       = "state"
                  fn          = "count_distinct"
                  fnArguments = []
                  groupBy = [
                    "state",
                  ]
                  valueColumnId = "_ob_value"
                }
                summary = null
                type    = "Timechart"
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
              id       = "step-42jxcf50"
              index    = 1
              isPinned = false
              opal = [
                "timechart options(empty_bins:true), _ob_value:count_distinct(state), group_by(state)",
              ]
              queryPresentation = {}
              type              = "unknown"
            },
            {
              action = {
                params = {
                  fields = [
                    "_ob_value",
                  ]
                  fn     = "max"
                  fnArgs = []
                  k      = 16
                  order  = "Top"
                }
                summary = null
                type    = "TopK"
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
              id       = "step-smau91h0"
              index    = 2
              isPinned = false
              opal = [
                "topk 16, max(_ob_value)",
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
                        columnId       = "_ob_value"
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
                                "state",
                              ]
                              statsBy = {
                                fn = "avg"
                              }
                              timechart = {
                                fn         = "avg"
                                resolution = "SINGLE"
                              }
                              transformType = "none"
                              type          = "keyvalue"
                              valueField    = "A__ob_value_avg"
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
                        filterActions        = []
                        groupBy = [
                          "state",
                        ]
                        id              = "datasetQueryExpression-38oboevq"
                        inputSource     = "parentStageInputSource"
                        lookupActions   = []
                        summarizeVerb   = "statsby"
                        summaryFunction = "avg"
                        summaryMode     = "single"
                        type            = "datasetQueryExpression"
                        valueColumnId   = "A__ob_value_avg"
                        viewTab         = "visualize"
                      },
                    ]
                    multiExpression = {
                      expressionIdentifier = "A"
                      filterActions        = []
                      id                   = "multiExpression-z8d7itsc"
                      lookupActions        = []
                      type                 = "multiExpression"
                      viewTab              = "visualize"
                    }
                    selectedExpressionIds = [
                      "datasetQueryExpression-38oboevq",
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
              id       = "step-azc8mrh4"
              index    = 3
              isPinned = false
              opal = [
                "statsby A__ob_value_avg:avg(_ob_value), group_by(state)",
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
                    timechart options(empty_bins:true), _ob_value:count_distinct(state), group_by(state)
                    topk 16, max(_ob_value)
                    statsby A__ob_value_avg:avg(_ob_value), group_by(state)
                EOT
      },
      {
        id = "stage-xa7yo712"
        input = [
          {
            datasetId   = local.redis_metrics
            datasetPath = null
            inputName   = "commands_calls_from_GCP/Redis Metrics"
            inputRole   = "Data"
            stageId     = null
          },
          {
            datasetId   = null
            datasetPath = null
            inputName   = "redis"
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
              "2" = "instance_pkey"
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
              datasetId   = local.redis_metrics
              inputName   = "commands_calls_from_GCP/Redis Metrics"
              inputRole   = "Data"
              isUserInput = true
            },
            {
              inputName   = "redis"
              inputRole   = "Data"
              isUserInput = true
              parameterId = "input-parameter-5maomrv2"
            },
          ]
          label = "Primary Node Command Calls"
          managers = [
            {
              id         = "q7b65ikg"
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
                    axisLabel = "Calls"
                    visible   = true
                  }
                }
                source = {
                  table = {
                    groupFields = [
                      "hostname",
                    ]
                    transformType = "none"
                    type          = "xy"
                    x             = "valid_from"
                    y             = "metric_commands_calls_ybcszjy4"
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
            {
              id                     = "bg8lt21q"
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
            wantBuckets = 150
          }
          selectedStepId = null
          serializable   = true
          steps = [
            {
              customName    = "Input"
              customSummary = "commands_calls_from_GCP/Redis Metrics"
              datasetQueryId = {
                ignoreCompress = false
                queryId        = null
                resultKinds = [
                  "ResultKindSchema",
                  "ResultKindData",
                  "ResultKindStats",
                ]
              }
              id                = "step-miimkhzs"
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
              }
              id       = "step-2wzfhvmj"
              index    = 1
              isPinned = false
              opal = [
                "@A <- @\"commands_calls_from_GCP/Redis Metrics\" {",
                "    filter role = \"primary\" ",
                "    join instance_pkey = @redis.instance_pkey",
                "    align 2m, metric_commands_calls_ybcszjy4:avg(m(\"commands_calls\"))",
                "    aggregate metric_commands_calls_ybcszjy4:sum(metric_commands_calls_ybcszjy4), group_by(hostname)",
                "}",
                "<- @A {}",
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
                    @A <- @"commands_calls_from_GCP/Redis Metrics" {
                        filter role = "primary" 
                        join instance_pkey = @redis.instance_pkey
                        align 2m, metric_commands_calls_ybcszjy4:avg(m("commands_calls"))
                        aggregate metric_commands_calls_ybcszjy4:sum(metric_commands_calls_ybcszjy4), group_by(hostname)
                    }
                    <- @A {}
                EOT
      },
      {
        id = "stage-5il4u0ht"
        input = [
          {
            datasetId   = null
            datasetPath = null
            inputName   = "redis"
            inputRole   = "Data"
            stageId     = null
          },
          {
            datasetId   = local.redis_metrics
            datasetPath = null
            inputName   = "stats_cpu_utilization_from_GCP/Redis Metrics"
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
              "2" = "instance_pkey"
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
              inputName   = "redis"
              inputRole   = "Data"
              isUserInput = true
              parameterId = "input-parameter-5maomrv2"
            },
            {
              datasetId   = local.redis_metrics
              inputName   = "stats_cpu_utilization_from_GCP/Redis Metrics"
              inputRole   = "Data"
              isUserInput = true
            },
          ]
          label = "Primary Node CPU Seconds"
          managers = [
            {
              id         = "bscqgy00"
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
                    unit    = "seconds"
                    visible = true
                  }
                }
                source = {
                  table = {
                    groupFields = [
                      "hostname",
                    ]
                    transformType = "none"
                    type          = "xy"
                    x             = "valid_from"
                    y             = "metric_stats_cpu_utilization_8ieslylf"
                  }
                  topK = {
                    k     = 33
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
            wantBuckets = 300
          }
          selectedStepId = null
          serializable   = true
          steps = [
            {
              customName    = "Input"
              customSummary = "redis"
              datasetQueryId = {
                ignoreCompress = false
                queryId        = null
                resultKinds = [
                  "ResultKindSchema",
                  "ResultKindData",
                  "ResultKindStats",
                ]
              }
              id                = "step-0h6suh18"
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
              }
              id       = "step-3clsnsh3"
              index    = 1
              isPinned = false
              opal = [
                "@A <- @\"stats_cpu_utilization_from_GCP/Redis Metrics\" {",
                "    filter role = \"primary\"",
                "    join instance_pkey = @redis.instance_pkey",
                "    align 2m, metric_stats_cpu_utilization_8ieslylf:rate(m(\"stats_cpu_utilization\"))",
                "    aggregate metric_stats_cpu_utilization_8ieslylf:sum(metric_stats_cpu_utilization_8ieslylf), group_by(hostname)",
                "}",
                "<- @A {}",
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
                    @A <- @"stats_cpu_utilization_from_GCP/Redis Metrics" {
                        filter role = "primary"
                        join instance_pkey = @redis.instance_pkey
                        align 2m, metric_stats_cpu_utilization_8ieslylf:rate(m("stats_cpu_utilization"))
                        aggregate metric_stats_cpu_utilization_8ieslylf:sum(metric_stats_cpu_utilization_8ieslylf), group_by(hostname)
                    }
                    <- @A {}
                EOT
      },
      {
        id = "stage-5flbedut"
        input = [
          {
            datasetId   = null
            datasetPath = null
            inputName   = "redis"
            inputRole   = "Data"
            stageId     = null
          },
          {
            datasetId   = local.redis_metrics
            datasetPath = null
            inputName   = "keyspace_keys_from_GCP/Redis Metrics"
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
              "2" = "instance_pkey"
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
              inputName   = "redis"
              inputRole   = "Data"
              isUserInput = true
              parameterId = "input-parameter-5maomrv2"
            },
            {
              datasetId   = local.redis_metrics
              inputName   = "keyspace_keys_from_GCP/Redis Metrics"
              inputRole   = "Data"
              isUserInput = true
            },
          ]
          label = "Keys"
          managers = [
            {
              id         = "o6w848lt"
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
                    visible = true
                  }
                }
                source = {
                  table = {
                    groupFields = [
                      "hostname",
                    ]
                    transformType = "none"
                    type          = "xy"
                    x             = "valid_from"
                    y             = "metric_keyspace_keys_gutc2399"
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
            wantBuckets = 50
          }
          selectedStepId = null
          serializable   = true
          steps = [
            {
              customName    = "Input"
              customSummary = "redis"
              datasetQueryId = {
                ignoreCompress = false
                queryId        = null
                resultKinds = [
                  "ResultKindSchema",
                  "ResultKindData",
                  "ResultKindStats",
                ]
              }
              id                = "step-8sp3ytp8"
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
              }
              id       = "step-o2phd1zi"
              index    = 1
              isPinned = false
              opal = [
                "@A <- @\"keyspace_keys_from_GCP/Redis Metrics\" {",
                "    filter role = \"primary\"",
                "    join instance_pkey = @redis.instance_pkey",
                "    align 2m, metric_keyspace_keys_gutc2399:avg(m(\"keyspace_keys\"))",
                "    aggregate metric_keyspace_keys_gutc2399:sum(metric_keyspace_keys_gutc2399), group_by(hostname)",
                "}",
                "<- @A {}",
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
                    @A <- @"keyspace_keys_from_GCP/Redis Metrics" {
                        filter role = "primary"
                        join instance_pkey = @redis.instance_pkey
                        align 2m, metric_keyspace_keys_gutc2399:avg(m("keyspace_keys"))
                        aggregate metric_keyspace_keys_gutc2399:sum(metric_keyspace_keys_gutc2399), group_by(hostname)
                    }
                    <- @A {}
                EOT
      },
      {
        id = "stage-xmeu7adi"
        input = [
          {
            datasetId   = null
            datasetPath = null
            inputName   = "redis"
            inputRole   = "Data"
            stageId     = null
          },
          {
            datasetId   = local.redis_metrics
            datasetPath = null
            inputName   = "clients_connected_from_GCP/Redis Metrics"
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
              "2" = "instance_pkey"
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
          index = 5
          inputList = [
            {
              inputName   = "redis"
              inputRole   = "Data"
              isUserInput = true
              parameterId = "input-parameter-5maomrv2"
            },
            {
              datasetId   = local.redis_metrics
              inputName   = "clients_connected_from_GCP/Redis Metrics"
              inputRole   = "Data"
              isUserInput = true
            },
          ]
          label = "Clients Connected"
          managers = [
            {
              id         = "4vf3mj9l"
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
                  type    = "xy"
                  xConfig = {}
                  yConfig = {
                    visible = true
                  }
                }
                source = {
                  table = {
                    groupFields = [
                      "hostname",
                    ]
                    transformType = "none"
                    type          = "xy"
                    x             = "valid_from"
                    y             = "metric_clients_connected_3x4tfwpv"
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
            {
              id                     = "ihjkcyoq"
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
            wantBuckets = 150
          }
          selectedStepId = null
          serializable   = true
          steps = [
            {
              customName    = "Input"
              customSummary = "redis"
              datasetQueryId = {
                ignoreCompress = false
                queryId        = null
                resultKinds = [
                  "ResultKindSchema",
                  "ResultKindData",
                  "ResultKindStats",
                ]
              }
              id                = "step-kjxngiz3"
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
              }
              id       = "step-jbdsj9ch"
              index    = 1
              isPinned = false
              opal = [
                "@A <- @\"clients_connected_from_GCP/Redis Metrics\" {",
                "    filter role = \"primary\"",
                "    join instance_pkey = @redis.instance_pkey",
                "    align 2m, metric_clients_connected_3x4tfwpv:avg(m(\"clients_connected\"))",
                "    aggregate metric_clients_connected_3x4tfwpv:sum(metric_clients_connected_3x4tfwpv), group_by(hostname)",
                "}",
                "<- @A {}",
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
                    @A <- @"clients_connected_from_GCP/Redis Metrics" {
                        filter role = "primary"
                        join instance_pkey = @redis.instance_pkey
                        align 2m, metric_clients_connected_3x4tfwpv:avg(m("clients_connected"))
                        aggregate metric_clients_connected_3x4tfwpv:sum(metric_clients_connected_3x4tfwpv), group_by(hostname)
                    }
                    <- @A {}
                EOT
      },
      {
        id = "stage-m6kykgl1"
        input = [
          {
            datasetId   = local.redis_metrics
            datasetPath = null
            inputName   = "stats_memory_usage_ratio_from_test_gcp_learning-bedbug/Redis Metrics"
            inputRole   = "Data"
            stageId     = null
          },
          {
            datasetId   = null
            datasetPath = null
            inputName   = "redis"
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
              "2" = "instance_pkey"
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
          index = 6
          inputList = [
            {
              datasetId   = local.redis_metrics
              inputName   = "stats_memory_usage_ratio_from_test_gcp_learning-bedbug/Redis Metrics"
              inputRole   = "Data"
              isUserInput = true
            },
            {
              inputName   = "redis"
              inputRole   = "Data"
              isUserInput = true
              parameterId = "input-parameter-5maomrv2"
            },
          ]
          label = "Memory Usage Ratio"
          managers = [
            {
              id         = "d2amf0wk"
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
                    bounds = {
                      end   = 100
                      start = 0
                    }
                    unit    = "%"
                    visible = true
                  }
                }
                source = {
                  table = {
                    groupFields = [
                      "hostname",
                    ]
                    transformType = "none"
                    type          = "xy"
                    x             = "valid_from"
                    y             = "metric_stats_memory_usage_ratio_44v2388h"
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
              customSummary = "stats_memory_usage_ratio_from_test_gcp_learning-bedbug/Redis Metrics"
              datasetQueryId = {
                ignoreCompress = false
                queryId        = null
                resultKinds = [
                  "ResultKindSchema",
                  "ResultKindData",
                  "ResultKindStats",
                ]
              }
              id                = "step-pvq3lxt2"
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
              }
              id       = "step-0bozlyiv"
              index    = 1
              isPinned = false
              opal = [
                "filter role = \"primary\"",
                "join instance_pkey = @redis.instance_pkey",
                "align 2m, metric_stats_memory_usage_ratio_44v2388h:avg(m(\"stats_memory_usage_ratio\"))",
                "aggregate metric_stats_memory_usage_ratio_44v2388h:sum(metric_stats_memory_usage_ratio_44v2388h*100), group_by(hostname)",
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
            stageTab      = "vis"
          }
        }
        params   = null
        pipeline = <<-EOT
                    filter role = "primary"
                    join instance_pkey = @redis.instance_pkey
                    align 2m, metric_stats_memory_usage_ratio_44v2388h:avg(m("stats_memory_usage_ratio"))
                    aggregate metric_stats_memory_usage_ratio_44v2388h:sum(metric_stats_memory_usage_ratio_44v2388h*100), group_by(hostname)
                EOT
      },
      {
        id = "stage-ltpfsi5n"
        input = [
          {
            datasetId   = null
            datasetPath = null
            inputName   = "redis"
            inputRole   = "Data"
            stageId     = null
          },
          {
            datasetId   = local.redis_metrics
            datasetPath = null
            inputName   = "stats_network_traffic_from_GCP/Redis Metrics"
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
              "2" = "instance_pkey"
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
              inputName   = "redis"
              inputRole   = "Data"
              isUserInput = true
              parameterId = "input-parameter-5maomrv2"
            },
            {
              datasetId   = local.redis_metrics
              inputName   = "stats_network_traffic_from_GCP/Redis Metrics"
              inputRole   = "Data"
              isUserInput = true
            },
          ]
          label = "Network Traffic"
          managers = [
            {
              id         = "nr07lpgw"
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
                    axisLabel = "Bytes/Second"
                    unit      = "By"
                    visible   = true
                  }
                }
                source = {
                  table = {
                    groupFields = [
                      "hostname",
                    ]
                    transformType = "none"
                    type          = "xy"
                    x             = "valid_from"
                    y             = "metric_stats_network_traffic_5me9224l"
                  }
                  topK = {
                    k     = 33
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
            wantBuckets = 300
          }
          selectedStepId = null
          serializable   = true
          steps = [
            {
              customName    = "Input"
              customSummary = "redis"
              datasetQueryId = {
                ignoreCompress = false
                queryId        = null
                resultKinds = [
                  "ResultKindSchema",
                  "ResultKindData",
                  "ResultKindStats",
                ]
              }
              id                = "step-y4kuszgm"
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
              }
              id       = "step-8rsgb0h4"
              index    = 1
              isPinned = false
              opal = [
                "@A <- @\"stats_network_traffic_from_GCP/Redis Metrics\" {",
                "    filter role = \"primary\"",
                "    join instance_pkey = @redis.instance_pkey",
                "    align metric_stats_network_traffic_5me9224l:rate(m(\"stats_network_traffic\"))",
                "    aggregate metric_stats_network_traffic_5me9224l:sum(metric_stats_network_traffic_5me9224l), group_by(hostname)",
                "}",
                "<- @A {}",
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
                    @A <- @"stats_network_traffic_from_GCP/Redis Metrics" {
                        filter role = "primary"
                        join instance_pkey = @redis.instance_pkey
                        align metric_stats_network_traffic_5me9224l:rate(m("stats_network_traffic"))
                        aggregate metric_stats_network_traffic_5me9224l:sum(metric_stats_network_traffic_5me9224l), group_by(hostname)
                    }
                    <- @A {}
                EOT
      },
      {
        id = "stage-4vx5oqwq"
        input = [
          {
            datasetId   = null
            datasetPath = null
            inputName   = "redis"
            inputRole   = "Data"
            stageId     = null
          },
          {
            datasetId   = local.redis_metrics
            datasetPath = null
            inputName   = "stats_connections_total_from_GCP/Redis Metrics"
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
              "2" = "instance_pkey"
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
              inputName   = "redis"
              inputRole   = "Data"
              isUserInput = true
              parameterId = "input-parameter-5maomrv2"
            },
            {
              datasetId   = local.redis_metrics
              inputName   = "stats_connections_total_from_GCP/Redis Metrics"
              inputRole   = "Data"
              isUserInput = true
            },
          ]
          label = "Total Connections"
          managers = [
            {
              id         = "hp1uw60d"
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
                    unit    = "1"
                    visible = true
                  }
                }
                source = {
                  table = {
                    groupFields = [
                      "hostname",
                    ]
                    transformType = "none"
                    type          = "xy"
                    x             = "valid_from"
                    y             = "metric_stats_connections_total_46w7dr1w"
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
              customSummary = "redis"
              datasetQueryId = {
                ignoreCompress = false
                queryId        = null
                resultKinds = [
                  "ResultKindSchema",
                  "ResultKindData",
                  "ResultKindStats",
                ]
              }
              id                = "step-c6yl476d"
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
              }
              id       = "step-kfx4ez88"
              index    = 1
              isPinned = false
              opal = [
                "@A <- @\"stats_connections_total_from_GCP/Redis Metrics\" {",
                "    filter role = \"primary\"",
                "    join instance_pkey = @redis.instance_pkey",
                "    align 2m, metric_stats_connections_total_46w7dr1w:avg(m(\"stats_connections_total\"))",
                "    aggregate metric_stats_connections_total_46w7dr1w:sum(metric_stats_connections_total_46w7dr1w), group_by(hostname)",
                "}",
                "<- @A {}",
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
                    @A <- @"stats_connections_total_from_GCP/Redis Metrics" {
                        filter role = "primary"
                        join instance_pkey = @redis.instance_pkey
                        align 2m, metric_stats_connections_total_46w7dr1w:avg(m("stats_connections_total"))
                        aggregate metric_stats_connections_total_46w7dr1w:sum(metric_stats_connections_total_46w7dr1w), group_by(hostname)
                    }
                    <- @A {}
                EOT
      },
      {
        id = "stage-pwabkz2q"
        input = [
          {
            datasetId   = null
            datasetPath = null
            inputName   = "redis"
            inputRole   = "Data"
            stageId     = null
          },
          {
            datasetId   = local.redis_metrics
            datasetPath = null
            inputName   = "keyspace_avg_ttl_from_GCP/Redis Metrics"
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
              "2" = "instance_pkey"
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
              inputName   = "redis"
              inputRole   = "Data"
              isUserInput = true
              parameterId = "input-parameter-5maomrv2"
            },
            {
              datasetId   = local.redis_metrics
              inputName   = "keyspace_avg_ttl_from_GCP/Redis Metrics"
              inputRole   = "Data"
              isUserInput = true
            },
          ]
          label = "Keys Average TTL"
          managers = [
            {
              id         = "hj2eq1zz"
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
                    visible = true
                  }
                }
                source = {
                  table = {
                    groupFields = [
                      "hostname",
                    ]
                    transformType = "none"
                    type          = "xy"
                    x             = "valid_from"
                    y             = "metric_keyspace_avg_ttl_7s5qqdnq"
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
              customSummary = "redis"
              datasetQueryId = {
                ignoreCompress = false
                queryId        = null
                resultKinds = [
                  "ResultKindSchema",
                  "ResultKindData",
                  "ResultKindStats",
                ]
              }
              id                = "step-bitmvbp2"
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
              }
              id       = "step-9rz6bmsb"
              index    = 1
              isPinned = false
              opal = [
                "@A <- @\"keyspace_avg_ttl_from_GCP/Redis Metrics\" {",
                "    filter role = \"primary\"",
                "    join instance_pkey = @redis.instance_pkey",
                "    align 2m, metric_keyspace_avg_ttl_7s5qqdnq:avg(m(\"keyspace_avg_ttl\"))",
                "    aggregate metric_keyspace_avg_ttl_7s5qqdnq:sum(metric_keyspace_avg_ttl_7s5qqdnq), group_by(hostname)",
                "}",
                "<- @A {}",
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
                    @A <- @"keyspace_avg_ttl_from_GCP/Redis Metrics" {
                        filter role = "primary"
                        join instance_pkey = @redis.instance_pkey
                        align 2m, metric_keyspace_avg_ttl_7s5qqdnq:avg(m("keyspace_avg_ttl"))
                        aggregate metric_keyspace_avg_ttl_7s5qqdnq:sum(metric_keyspace_avg_ttl_7s5qqdnq), group_by(hostname)
                    }
                    <- @A {}
                EOT
      },
      {
        id = "stage-f935xw0s"
        input = [
          {
            datasetId   = null
            datasetPath = null
            inputName   = "redis"
            inputRole   = "Data"
            stageId     = null
          },
          {
            datasetId   = local.redis_metrics
            datasetPath = null
            inputName   = "stats_expired_keys_from_GCP/Redis Metrics"
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
              "2" = "instance_pkey"
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
          index = 10
          inputList = [
            {
              inputName   = "redis"
              inputRole   = "Data"
              isUserInput = true
              parameterId = "input-parameter-5maomrv2"
            },
            {
              datasetId   = local.redis_metrics
              inputName   = "stats_expired_keys_from_GCP/Redis Metrics"
              inputRole   = "Data"
              isUserInput = true
            },
          ]
          label = "Expired Keys"
          managers = [
            {
              id         = "ex2hdk6v"
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
                    visible = true
                  }
                }
                source = {
                  table = {
                    groupFields = [
                      "hostname",
                    ]
                    transformType = "none"
                    type          = "xy"
                    x             = "valid_from"
                    y             = "metric_stats_expired_keys_wbhf0r7g"
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
              customSummary = "redis"
              datasetQueryId = {
                ignoreCompress = false
                queryId        = null
                resultKinds = [
                  "ResultKindSchema",
                  "ResultKindData",
                  "ResultKindStats",
                ]
              }
              id                = "step-b748og96"
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
              }
              id       = "step-pivsl0wv"
              index    = 1
              isPinned = false
              opal = [
                "@A <- @\"stats_expired_keys_from_GCP/Redis Metrics\" {",
                "    filter role = \"primary\"",
                "    join instance_pkey = @redis.instance_pkey",
                "    align 2m, metric_stats_expired_keys_wbhf0r7g:avg(m(\"stats_expired_keys\"))",
                "    aggregate metric_stats_expired_keys_wbhf0r7g:sum(metric_stats_expired_keys_wbhf0r7g), group_by(hostname)",
                "}",
                "<- @A {}",
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
                    @A <- @"stats_expired_keys_from_GCP/Redis Metrics" {
                        filter role = "primary"
                        join instance_pkey = @redis.instance_pkey
                        align 2m, metric_stats_expired_keys_wbhf0r7g:avg(m("stats_expired_keys"))
                        aggregate metric_stats_expired_keys_wbhf0r7g:sum(metric_stats_expired_keys_wbhf0r7g), group_by(hostname)
                    }
                    <- @A {}
                EOT
      },
      {
        id = "stage-9y2jp9iw"
        input = [
          {
            datasetId   = null
            datasetPath = null
            inputName   = "redis"
            inputRole   = "Data"
            stageId     = null
          },
          {
            datasetId   = local.redis_metrics
            datasetPath = null
            inputName   = "stats_keyspace_hits_from_GCP/Redis Metrics"
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
              "2" = "instance_pkey"
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
          index = 11
          inputList = [
            {
              inputName   = "redis"
              inputRole   = "Data"
              isUserInput = true
              parameterId = "input-parameter-5maomrv2"
            },
            {
              datasetId   = local.redis_metrics
              inputName   = "stats_keyspace_hits_from_GCP/Redis Metrics"
              inputRole   = "Data"
              isUserInput = true
            },
          ]
          label = "Key Hits"
          managers = [
            {
              id         = "tjh15j3k"
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
                    unit    = "1"
                    visible = true
                  }
                }
                source = {
                  table = {
                    groupFields = [
                      "hostname",
                    ]
                    transformType = "none"
                    type          = "xy"
                    x             = "valid_from"
                    y             = "metric_stats_keyspace_hits_zk0gg3ud"
                  }
                  topK = {
                    k     = 33
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
            wantBuckets = 300
          }
          selectedStepId = null
          serializable   = true
          steps = [
            {
              customName    = "Input"
              customSummary = "redis"
              datasetQueryId = {
                ignoreCompress = false
                queryId        = null
                resultKinds = [
                  "ResultKindSchema",
                  "ResultKindData",
                  "ResultKindStats",
                ]
              }
              id                = "step-sxo4fg9d"
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
              }
              id       = "step-33co3fso"
              index    = 1
              isPinned = false
              opal = [
                "@A <- @\"stats_keyspace_hits_from_GCP/Redis Metrics\" {",
                "    filter role = \"primary\"",
                "    join instance_pkey = @redis.instance_pkey",
                "    align 2m, metric_stats_keyspace_hits_zk0gg3ud:avg(m(\"stats_keyspace_hits\"))",
                "    aggregate metric_stats_keyspace_hits_zk0gg3ud:sum(metric_stats_keyspace_hits_zk0gg3ud), group_by(hostname)",
                "}",
                "<- @A {}",
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
                    @A <- @"stats_keyspace_hits_from_GCP/Redis Metrics" {
                        filter role = "primary"
                        join instance_pkey = @redis.instance_pkey
                        align 2m, metric_stats_keyspace_hits_zk0gg3ud:avg(m("stats_keyspace_hits"))
                        aggregate metric_stats_keyspace_hits_zk0gg3ud:sum(metric_stats_keyspace_hits_zk0gg3ud), group_by(hostname)
                    }
                    <- @A {}
                EOT
      },
      {
        id = "stage-9x9a8h1f"
        input = [
          {
            datasetId   = null
            datasetPath = null
            inputName   = "redis"
            inputRole   = "Data"
            stageId     = null
          },
          {
            datasetId   = local.redis_metrics
            datasetPath = null
            inputName   = "stats_keyspace_misses_from_GCP/Redis Metrics"
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
              "2" = "instance_pkey"
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
          index = 12
          inputList = [
            {
              inputName   = "redis"
              inputRole   = "Data"
              isUserInput = true
              parameterId = "input-parameter-5maomrv2"
            },
            {
              datasetId   = local.redis_metrics
              inputName   = "stats_keyspace_misses_from_GCP/Redis Metrics"
              inputRole   = "Data"
              isUserInput = true
            },
          ]
          label = "Key Misses"
          managers = [
            {
              id         = "wu2ar5ea"
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
                    unit    = "1"
                    visible = true
                  }
                }
                source = {
                  table = {
                    groupFields = [
                      [
                        "instance_pkey",
                      ],
                    ]
                    transformType = "none"
                    type          = "xy"
                    x             = "valid_from"
                    y             = "metric_stats_keyspace_misses_85e379pl"
                  }
                  topK = {
                    k     = 33
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
            wantBuckets = 300
          }
          selectedStepId = null
          serializable   = true
          steps = [
            {
              customName    = "Input"
              customSummary = "redis"
              datasetQueryId = {
                ignoreCompress = false
                queryId        = null
                resultKinds = [
                  "ResultKindSchema",
                  "ResultKindData",
                  "ResultKindStats",
                ]
              }
              id                = "step-hcgpv754"
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
              }
              id       = "step-8i2zuwf2"
              index    = 1
              isPinned = false
              opal = [
                "@A <- @\"stats_keyspace_misses_from_GCP/Redis Metrics\" {",
                "    filter role = \"primary\"",
                "    join instance_pkey = @redis.instance_pkey",
                "    align 2m, metric_stats_keyspace_misses_85e379pl:avg(m(\"stats_keyspace_misses\"))",
                "    aggregate metric_stats_keyspace_misses_85e379pl:sum(metric_stats_keyspace_misses_85e379pl), group_by(instance_pkey)",
                "}",
                "<- @A {}",
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
                    @A <- @"stats_keyspace_misses_from_GCP/Redis Metrics" {
                        filter role = "primary"
                        join instance_pkey = @redis.instance_pkey
                        align 2m, metric_stats_keyspace_misses_85e379pl:avg(m("stats_keyspace_misses"))
                        aggregate metric_stats_keyspace_misses_85e379pl:sum(metric_stats_keyspace_misses_85e379pl), group_by(instance_pkey)
                    }
                    <- @A {}
                EOT
      },
      {
        id = "stage-debafcpb"
        input = [
          {
            datasetId   = null
            datasetPath = null
            inputName   = "redis"
            inputRole   = "Data"
            stageId     = null
          },
          {
            datasetId   = local.redis_metrics
            datasetPath = null
            inputName   = "keyspace_keys_with_expiration_from_GCP/Redis Metrics"
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
              "2" = "instance_pkey"
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
          index = 13
          inputList = [
            {
              inputName   = "redis"
              inputRole   = "Data"
              isUserInput = true
              parameterId = "input-parameter-5maomrv2"
            },
            {
              datasetId   = local.redis_metrics
              inputName   = "keyspace_keys_with_expiration_from_GCP/Redis Metrics"
              inputRole   = "Data"
              isUserInput = true
            },
          ]
          label = "Keys With Expiration"
          managers = [
            {
              id         = "rzsgrawi"
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
                    unit    = "1"
                    visible = true
                  }
                }
                source = {
                  table = {
                    groupFields = [
                      "hostname",
                    ]
                    transformType = "none"
                    type          = "xy"
                    x             = "valid_from"
                    y             = "metric_keyspace_keys_with_expiration_ov8o9z71"
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
              customSummary = "redis"
              datasetQueryId = {
                ignoreCompress = false
                queryId        = null
                resultKinds = [
                  "ResultKindSchema",
                  "ResultKindData",
                  "ResultKindStats",
                ]
              }
              id                = "step-w411f7au"
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
              }
              id       = "step-hg1v3wgw"
              index    = 1
              isPinned = false
              opal = [
                "@A <- @\"keyspace_keys_with_expiration_from_GCP/Redis Metrics\" {",
                "    filter role = \"primary\"",
                "    join instance_pkey = @redis.instance_pkey",
                "    align 2m, metric_keyspace_keys_with_expiration_ov8o9z71:avg(m(\"keyspace_keys_with_expiration\"))",
                "    aggregate metric_keyspace_keys_with_expiration_ov8o9z71:sum(metric_keyspace_keys_with_expiration_ov8o9z71), group_by(hostname)",
                "}",
                "<- @A {}",
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
                    @A <- @"keyspace_keys_with_expiration_from_GCP/Redis Metrics" {
                        filter role = "primary"
                        join instance_pkey = @redis.instance_pkey
                        align 2m, metric_keyspace_keys_with_expiration_ov8o9z71:avg(m("keyspace_keys_with_expiration"))
                        aggregate metric_keyspace_keys_with_expiration_ov8o9z71:sum(metric_keyspace_keys_with_expiration_ov8o9z71), group_by(hostname)
                    }
                    <- @A {}
                EOT
      },
      {
        id = "stage-gd5a7ls5"
        input = [
          {
            datasetId   = null
            datasetPath = null
            inputName   = "redis"
            inputRole   = "Data"
            stageId     = null
          },
        ]
        layout = {
          appearance = "VISIBLE"
          dataTableViewState = {
            columnOrderOverride = {
              "1" = "Valid From"
              "2" = "Valid To"
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
          index = 14
          inputList = [
            {
              inputName   = "redis"
              inputRole   = "Data"
              isUserInput = false
              parameterId = "input-parameter-5maomrv2"
            },
          ]
          label = "Projects"
          managers = [
            {
              id                     = "rlzhgruy"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "77zo5egf"
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
                    valueField    = "A_project_id_count_distinct"
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
                columnName = "A_project_id_count_distinct"
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
              customSummary = "redis"
              datasetQueryId = {
                ignoreCompress = false
                queryId        = null
                resultKinds = [
                  "ResultKindSchema",
                  "ResultKindData",
                  "ResultKindStats",
                ]
              }
              id                = "step-a5undelg"
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
                        columnId       = "project_id"
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
                              valueField    = "A_project_id_count_distinct"
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
                        filterActions        = []
                        groupBy = [
                          "project_id",
                        ]
                        id                  = "datasetQueryExpression-j101a6ko"
                        inputSource         = "parentStageInputSource"
                        lookupActions       = []
                        summarizeVerb       = "statsby"
                        summaryFunction     = "count_distinct"
                        summaryFunctionArgs = []
                        summaryMode         = "single"
                        type                = "datasetQueryExpression"
                        valueColumnId       = "A_project_id_count_distinct"
                        viewTab             = "visualize"
                      },
                    ]
                    multiExpression = {
                      expressionIdentifier = "A"
                      filterActions        = []
                      id                   = "multiExpression-rncipu6c"
                      lookupActions        = []
                      type                 = "multiExpression"
                      viewTab              = "visualize"
                    }
                    selectedExpressionIds = [
                      "datasetQueryExpression-j101a6ko",
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
              id       = "step-nkzn4l2l"
              index    = 1
              isPinned = false
              opal = [
                "statsby A_project_id_count_distinct:count_distinct(project_id), group_by(project_id)",
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
        pipeline = "statsby A_project_id_count_distinct:count_distinct(project_id), group_by(project_id)"
      },
      {
        id = "stage-q5223la6"
        input = [
          {
            datasetId   = null
            datasetPath = null
            inputName   = "redis"
            inputRole   = "Data"
            stageId     = null
          },
        ]
        layout = {
          appearance = "VISIBLE"
          dataTableViewState = {
            columnOrderOverride = {
              "1" = "Valid From"
              "2" = "Valid To"
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
          index = 15
          inputList = [
            {
              inputName   = "redis"
              inputRole   = "Data"
              isUserInput = false
              parameterId = "input-parameter-5maomrv2"
            },
          ]
          label = "Zones"
          managers = [
            {
              id                     = "8409ne7z"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "2b6a13qw"
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
                      "locationId",
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
                    valueField    = "A_locationId_count_distinct"
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
                columnName = "A_locationId_count_distinct"
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
              customSummary = "redis"
              datasetQueryId = {
                ignoreCompress = false
                queryId        = null
                resultKinds = [
                  "ResultKindSchema",
                  "ResultKindData",
                  "ResultKindStats",
                ]
              }
              id                = "step-yoae4ksn"
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
                        columnId       = "locationId"
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
                                "locationId",
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
                              valueField    = "A_locationId_count_distinct"
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
                        filterActions        = []
                        groupBy = [
                          "locationId",
                        ]
                        id                  = "datasetQueryExpression-binff4a6"
                        inputSource         = "parentStageInputSource"
                        lookupActions       = []
                        summarizeVerb       = "statsby"
                        summaryFunction     = "count_distinct"
                        summaryFunctionArgs = []
                        summaryMode         = "single"
                        type                = "datasetQueryExpression"
                        valueColumnId       = "A_locationId_count_distinct"
                        viewTab             = "visualize"
                      },
                    ]
                    multiExpression = {
                      expressionIdentifier = "A"
                      filterActions        = []
                      id                   = "multiExpression-4fjkbpw0"
                      lookupActions        = []
                      type                 = "multiExpression"
                      viewTab              = "visualize"
                    }
                    selectedExpressionIds = [
                      "datasetQueryExpression-binff4a6",
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
              id       = "step-9lbdqot8"
              index    = 1
              isPinned = false
              opal = [
                "statsby A_locationId_count_distinct:count_distinct(locationId), group_by(locationId)",
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
        pipeline = "statsby A_locationId_count_distinct:count_distinct(locationId), group_by(locationId)"
      },
      {
        id = "stage-z5l9wra8"
        input = [
          {
            datasetId   = null
            datasetPath = null
            inputName   = "redis"
            inputRole   = "Data"
            stageId     = null
          },
        ]
        layout = {
          appearance = "VISIBLE"
          dataTableViewState = {
            columnOrderOverride = {
              "1" = "Valid From"
              "2" = "Valid To"
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
          index = 16
          inputList = [
            {
              inputName   = "redis"
              inputRole   = "Data"
              isUserInput = false
              parameterId = "input-parameter-5maomrv2"
            },
          ]
          label = "Region"
          managers = [
            {
              id                     = "vgqy7vpf"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "s0lk7uja"
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
                      "location",
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
                    valueField    = "A_location_count_distinct"
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
              id         = "wpeyitrn"
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
                ascending  = false
                columnName = "A_location_count_distinct"
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
              customSummary = "redis"
              datasetQueryId = {
                ignoreCompress = false
                queryId        = null
                resultKinds = [
                  "ResultKindSchema",
                  "ResultKindData",
                  "ResultKindStats",
                ]
              }
              id                = "step-qsc07rzc"
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
                        columnId       = "location"
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
                                "location",
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
                              valueField    = "A_location_count_distinct"
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
                        filterActions        = []
                        groupBy = [
                          "location",
                        ]
                        id                  = "datasetQueryExpression-r357cpom"
                        inputSource         = "parentStageInputSource"
                        lookupActions       = []
                        summarizeVerb       = "statsby"
                        summaryFunction     = "count_distinct"
                        summaryFunctionArgs = []
                        summaryMode         = "single"
                        type                = "datasetQueryExpression"
                        valueColumnId       = "A_location_count_distinct"
                        viewTab             = "visualize"
                      },
                    ]
                    multiExpression = {
                      expressionIdentifier = "A"
                      filterActions        = []
                      id                   = "multiExpression-ildf1kvv"
                      lookupActions        = []
                      type                 = "multiExpression"
                      viewTab              = "visualize"
                    }
                    selectedExpressionIds = [
                      "datasetQueryExpression-r357cpom",
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
              id       = "step-wmtzyibs"
              index    = 1
              isPinned = false
              opal = [
                "statsby A_location_count_distinct:count_distinct(location), group_by(location)",
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
        pipeline = "statsby A_location_count_distinct:count_distinct(location), group_by(location)"
      },
      {
        id = "stage-kkg69631"
        input = [
          {
            datasetId   = null
            datasetPath = null
            inputName   = "redis"
            inputRole   = "Data"
            stageId     = null
          },
        ]
        layout = {
          appearance = "VISIBLE"
          dataTableViewState = {
            columnOrderOverride = {
              "1" = "Valid From"
              "2" = "Valid To"
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
          index = 17
          inputList = [
            {
              inputName   = "redis"
              inputRole   = "Data"
              isUserInput = false
              parameterId = "input-parameter-5maomrv2"
            },
          ]
          label = "Version"
          managers = [
            {
              id                     = "lco46ype"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "rt2vlrrv"
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
                      "redisVersion",
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
                    valueField    = "A_redisVersion_count_distinct"
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
              id         = "8e0cv2a7"
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
                ascending  = false
                columnName = "A_redisVersion_count_distinct"
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
              customSummary = "redis"
              datasetQueryId = {
                ignoreCompress = false
                queryId        = null
                resultKinds = [
                  "ResultKindSchema",
                  "ResultKindData",
                  "ResultKindStats",
                ]
              }
              id                = "step-6ie65a7p"
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
                        columnId       = "redisVersion"
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
                                "redisVersion",
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
                              valueField    = "A_redisVersion_count_distinct"
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
                        filterActions        = []
                        groupBy = [
                          "redisVersion",
                        ]
                        id                  = "datasetQueryExpression-p0ybs5qk"
                        inputSource         = "parentStageInputSource"
                        lookupActions       = []
                        summarizeVerb       = "statsby"
                        summaryFunction     = "count_distinct"
                        summaryFunctionArgs = []
                        summaryMode         = "single"
                        type                = "datasetQueryExpression"
                        valueColumnId       = "A_redisVersion_count_distinct"
                        viewTab             = "visualize"
                      },
                    ]
                    multiExpression = {
                      expressionIdentifier = "A"
                      filterActions        = []
                      id                   = "multiExpression-uhccjx4v"
                      lookupActions        = []
                      type                 = "multiExpression"
                      viewTab              = "visualize"
                    }
                    selectedExpressionIds = [
                      "datasetQueryExpression-p0ybs5qk",
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
              id       = "step-pq1mqoym"
              index    = 1
              isPinned = false
              opal = [
                "statsby A_redisVersion_count_distinct:count_distinct(redisVersion), group_by(redisVersion)",
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
        pipeline = "statsby A_redisVersion_count_distinct:count_distinct(redisVersion), group_by(redisVersion)"
      },
      {
        id = "stage-sblyl8hv"
        input = [
          {
            datasetId   = null
            datasetPath = null
            inputName   = "redis"
            inputRole   = "Data"
            stageId     = null
          },
        ]
        layout = {
          appearance = "VISIBLE"
          dataTableViewState = {
            columnOrderOverride = {
              "1" = "Valid From"
              "2" = "Valid To"
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
          index = 18
          inputList = [
            {
              inputName   = "redis"
              inputRole   = "Data"
              isUserInput = false
              parameterId = "input-parameter-5maomrv2"
            },
          ]
          label = "Instances"
          managers = [
            {
              id                     = "t7v1p686"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "51qbl3yk"
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
                  singleStatLabel = "Instances"
                  thresholds      = null
                  type            = "singlefield"
                }
                source = {
                  table = {
                    field       = "A_instance_pkey_count_distinct"
                    groupFields = []
                    statsBy = {
                      fn = "count"
                    }
                    timechart = {
                      fn         = "count_distinct"
                      fnArgs     = []
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
            rollup      = {}
            wantBuckets = 50
          }
          renderType     = "TABLE"
          selectedStepId = null
          serializable   = true
          steps = [
            {
              customName    = "Input"
              customSummary = "redis"
              datasetQueryId = {
                ignoreCompress = false
                queryId        = null
                resultKinds = [
                  "ResultKindSchema",
                  "ResultKindData",
                  "ResultKindStats",
                ]
              }
              id                = "step-9glxy3qw"
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
                        columnId       = "instance_pkey"
                        dataVis = {
                          config = {
                            color           = "Default"
                            colorConfigType = "Color"
                            fieldConfig = {
                              unit    = ""
                              visible = false
                            }
                            singleStatLabel = "Instances"
                            thresholds      = null
                            type            = "singlefield"
                          }
                          source = {
                            table = {
                              field       = "A_instance_pkey_count_distinct"
                              groupFields = []
                              statsBy = {
                                fn = "count"
                              }
                              timechart = {
                                fn         = "count_distinct"
                                fnArgs     = []
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
                        filterActions        = []
                        groupBy              = []
                        id                   = "datasetQueryExpression-o46j02ql"
                        inputSource          = "parentStageInputSource"
                        lookupActions        = []
                        summarizeVerb        = "statsby"
                        summaryFunction      = "count_distinct"
                        summaryFunctionArgs  = []
                        summaryMode          = "over-time"
                        type                 = "datasetQueryExpression"
                        valueColumnId        = "A_instance_pkey_count_distinct"
                        viewTab              = "visualize"
                      },
                    ]
                    multiExpression = {
                      expressionIdentifier = "A"
                      filterActions        = []
                      id                   = "multiExpression-w1kwiqbj"
                      lookupActions        = []
                      type                 = "multiExpression"
                      viewTab              = "visualize"
                    }
                    selectedExpressionIds = [
                      "datasetQueryExpression-o46j02ql",
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
              id       = "step-07s84q32"
              index    = 1
              isPinned = false
              opal = [
                "timechart options(empty_bins:true), A_instance_pkey_count_distinct:count_distinct(instance_pkey), group_by()",
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
        pipeline = "timechart options(empty_bins:true), A_instance_pkey_count_distinct:count_distinct(instance_pkey), group_by()"
      },
    ]
  )
  workspace = local.workspace
}

