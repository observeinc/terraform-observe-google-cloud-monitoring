# terraform import observe_dashboard.redis_instance 42909070
resource "observe_dashboard" "redis_instance_v2" {
  description = local.dashboard_description_singleton
  layout = jsonencode(
    {
      autoPack = true
      gridLayout = {
        sections = [
          {
            card = {
              cardType = "section"
              closed   = false
              id       = "card-eemom99l"
              title    = "Dashboard Content"
            }
            items = [
              {
                card = {
                  cardType    = "parameter"
                  id          = "card-0aq6hhmv"
                  parameterId = "redis"
                }
                layout = {
                  h = 4
                  i = "card-0aq6hhmv"
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
              id       = "card-60lg2aqn"
              title    = "Memory & CPU"
            }
            items = [
              {
                card = {
                  cardType = "stage"
                  id       = "card-fmn50o5v"
                  stageId  = "stage-0ho2ak92"
                }
                layout = {
                  h = 8
                  i = "card-fmn50o5v"
                  w = 6
                  x = 0
                  y = 0
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-l33i141z"
                  stageId  = "stage-kblmpc8o"
                }
                layout = {
                  h = 8
                  i = "card-l33i141z"
                  w = 6
                  x = 6
                  y = 0
                }
              },
            ]
          },
          {
            card = {
              cardType = "section"
              closed   = false
              id       = "card-nucrccym"
              title    = "Network & Connections"
            }
            items = [
              {
                card = {
                  cardType = "stage"
                  id       = "card-kpwo1cm4"
                  stageId  = "stage-kuf5r7f3"
                }
                layout = {
                  h = 10
                  i = "card-kpwo1cm4"
                  w = 4
                  x = 0
                  y = 0
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-mp1k4f73"
                  stageId  = "stage-xbo28v7v"
                }
                layout = {
                  h = 10
                  i = "card-mp1k4f73"
                  w = 4
                  x = 4
                  y = 0
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-4k68ccly"
                  stageId  = "stage-kp5jhjdv"
                }
                layout = {
                  h = 10
                  i = "card-4k68ccly"
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
              id       = "card-d1dtmmel"
              title    = "Commands"
            }
            items = [
              {
                card = {
                  cardType = "stage"
                  id       = "card-d302luc9"
                  stageId  = "stage-r3msr1xk"
                }
                layout = {
                  h = 17
                  i = "card-d302luc9"
                  w = 4
                  x = 8
                  y = 0
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-qoptv89o"
                  stageId  = "stage-8ibk9wow"
                }
                layout = {
                  h = 9
                  i = "card-qoptv89o"
                  w = 8
                  x = 0
                  y = 0
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-4vgbbm8x"
                  stageId  = "stage-9mulnsts"
                }
                layout = {
                  h = 8
                  i = "card-4vgbbm8x"
                  w = 8
                  x = 0
                  y = 9
                }
              },
            ]
          },
          {
            card = {
              cardType = "section"
              closed   = false
              id       = "card-2906a7i8"
              title    = "Keys"
            }
            items = [
              {
                card = {
                  cardType = "stage"
                  id       = "card-ppp9uaqi"
                  stageId  = "stage-ehr1gzq0"
                }
                layout = {
                  h = 22
                  i = "card-ppp9uaqi"
                  w = 6
                  x = 0
                  y = 0
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-t41afjsy"
                  stageId  = "stage-yothkrri"
                }
                layout = {
                  h = 11
                  i = "card-t41afjsy"
                  w = 3
                  x = 6
                  y = 0
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-jz4k06sk"
                  stageId  = "stage-wds98m8p"
                }
                layout = {
                  h = 11
                  i = "card-jz4k06sk"
                  w = 3
                  x = 9
                  y = 0
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-7r7h0ptr"
                  stageId  = "stage-yb1taje8"
                }
                layout = {
                  h = 11
                  i = "card-7r7h0ptr"
                  w = 3
                  x = 6
                  y = 11
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-m9h9a3cy"
                  stageId  = "stage-t1p8enlp"
                }
                layout = {
                  h = 11
                  i = "card-m9h9a3cy"
                  w = 3
                  x = 9
                  y = 11
                }
              },
            ]
          },
          {
            card = {
              cardType = "section"
              closed   = true
              id       = "card-ovvwcpos"
              title    = "Details"
            }
            items = [
              {
                card = {
                  cardType = "stage"
                  id       = "card-btjhzxy5"
                  stageId  = "stage-pajoygss"
                }
                layout = {
                  h = 14
                  i = "card-btjhzxy5"
                  w = 2
                  x = 0
                  y = 0
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-siehy6sb"
                  stageId  = "stage-zmb32x6w"
                }
                layout = {
                  h = 14
                  i = "card-siehy6sb"
                  w = 3
                  x = 2
                  y = 0
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-gsvpxa0v"
                  stageId  = "stage-rp98umdc"
                }
                layout = {
                  h = 14
                  i = "card-gsvpxa0v"
                  w = 4
                  x = 5
                  y = 0
                }
              },
            ]
            lastModified = 1676596466282
          },
        ]
      }
      stageListLayout = {
        isModified = false
        parameters = [
          {
            defaultValue = {
              link = {
                datasetId = local.redis_instance
                primaryKeyValue = [
                  {
                    name = "instance_pkey"
                    value = {
                      string = "//redis.googleapis.com/projects/content-eng-arthur/locations/us-west1/instances/ha-memory-cache"
                    }
                  },
                  {
                    name = "project_id"
                    value = {
                      string = "content-eng-arthur"
                    }
                  },
                ]
                storedLabel = "//redis.googleapis.com/projects/content-eng-arthur/locations/us-west1/instances/ha-memory-cache"
              }
            }
            emptyValueEncoding    = "null"
            emptyValueLabelOption = "null"
            id                    = "redis"
            name                  = "Redis Instance"
            valueKind = {
              keyForDatasetId = local.redis_instance
              type            = "LINK"
            }
            viewType = "resource-input"
          },
        ]
        selectedStageId = "stage-kuf5r7f3"
        timeRange = {
          display               = "Past 60 minutes"
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
  name = local.dashboard_name_singleton
  parameters = jsonencode(
    [
      {
        defaultValue = {
          link = {
            datasetId = local.redis_instance
            primaryKeyValue = [
              {
                name = "instance_pkey"
                value = {
                  string = "//redis.googleapis.com/projects/content-eng-arthur/locations/us-west1/instances/ha-memory-cache"
                }
              },
              {
                name = "project_id"
                value = {
                  string = "content-eng-arthur"
                }
              },
            ]
            storedLabel = "//redis.googleapis.com/projects/content-eng-arthur/locations/us-west1/instances/ha-memory-cache"
          }
        }
        id   = "redis"
        name = "Redis Instance"
        valueKind = {
          arrayItemType   = null
          keyForDatasetId = local.redis_instance
          type            = "LINK"
        }
      },
    ]
  )
  stages = jsonencode(
    [
      {
        id = "stage-pajoygss"
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
          appearance = "VISIBLE"
          dataTableViewState = {
            columnOrderOverride = {
              "0" = "Valid From"
              "1" = "Valid To"
            }
            columnVisibility = {
              _c_nodes_path  = false
              _c_nodes_value = false
              instance_pkey  = false
            }
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
            tableHeight = 144
          }
          index = 0
          inputList = [
            {
              datasetId   = local.redis_instance
              inputName   = "test_gcp_learning-bedbug/Redis Instance"
              inputRole   = "Data"
              isUserInput = false
            },
          ]
          label = "Nodes"
          managers = [
            {
              id                     = "ngwgqnkj"
              isDisabled             = false
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "c27at1lt"
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
              id                = "step-mb5wx51n"
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
              id       = "step-lu1es50a"
              index    = 1
              isPinned = false
              opal = [
                "filter instance_pkey = $redis.instance_pkey",
                "",
                "pick_col",
                "\t@.\"Valid From\",",
                " \t@.\"Valid To\",",
                " \tinstance_pkey,",
                " \tnodes",
                "",
                "flatten_single nodes",
                "make_col Node:string(_c_nodes_value.id)",
                "make_col Zone:string(_c_nodes_value.zone)",
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
                    filter instance_pkey = $redis.instance_pkey
                    
                    pick_col
                      @."Valid From",
                      @."Valid To",
                      instance_pkey,
                      nodes
                    
                    flatten_single nodes
                    make_col Node:string(_c_nodes_value.id)
                    make_col Zone:string(_c_nodes_value.zone)
                EOT
      },
      {
        id = "stage-jt6xxmm2"
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
          appearance = "VISIBLE"
          dataTableViewState = {
            columnOrderOverride = {
              "0" = "Valid From"
              "1" = "Valid To"
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
              datasetId   = local.redis_instance
              inputName   = "test_gcp_learning-bedbug/Redis Instance"
              inputRole   = "Data"
              isUserInput = false
            },
          ]
          label = "Base Dataset"
          managers = [
            {
              id                     = "d3jh1epf"
              isDisabled             = false
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "5dt0427i"
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
              id                = "step-khwznicp"
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
              id       = "step-599xhajb"
              index    = 1
              isPinned = false
              opal = [
                "filter instance_pkey = $redis.instance_pkey ",
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
              script        = false
            }
            showTimeRuler = true
            stageTab      = "table"
          }
        }
        params   = null
        pipeline = <<-EOT
                    filter instance_pkey = $redis.instance_pkey
                EOT
      },
      {
        id = "stage-r3msr1xk"
        input = [
          {
            datasetId   = local.redis_metrics
            datasetPath = null
            inputName   = "commands_calls_from_test_gcp_learning-bedbug/Redis Metrics"
            inputRole   = "Data"
            stageId     = null
          },
          {
            datasetId   = null
            datasetPath = null
            inputName   = "filter_Redis Instance"
            inputRole   = "Data"
            stageId     = "stage-jt6xxmm2"
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
              inputName   = "commands_calls_from_test_gcp_learning-bedbug/Redis Metrics"
              inputRole   = "Data"
              isUserInput = true
            },
            {
              inputName   = "filter_Redis Instance"
              inputRole   = "Data"
              isUserInput = true
              stageId     = "stage-jt6xxmm2"
            },
          ]
          label = "Total # of calls for this command in one minute (commands_calls)"
          managers = [
            {
              id         = "y2mnmdk5"
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
                    unit    = ""
                    visible = true
                  }
                }
                source = {
                  table = {
                    groupFields = [
                      "command",
                    ]
                    transformType = "none"
                    type          = "xy"
                    x             = "valid_from"
                    y             = "metric_commands_calls_1zbspxjt"
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
              customSummary = "commands_calls_from_test_gcp_learning-bedbug/Redis Metrics"
              datasetQueryId = {
                ignoreCompress = false
                queryId        = null
                resultKinds = [
                  "ResultKindSchema",
                  "ResultKindData",
                  "ResultKindStats",
                ]
              }
              id                = "step-61yyniv6"
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
              id       = "step-k6lo3wnn"
              index    = 1
              isPinned = false
              opal = [
                "exists instance_pkey = @\"filter_Redis Instance\".instance_pkey",
                "align frame(back: 2m), metric_commands_calls_1zbspxjt:rate(m(\"commands_calls\"))",
                "aggregate metric_commands_calls_1zbspxjt:sum(metric_commands_calls_1zbspxjt), group_by(command)",
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
                    exists instance_pkey = @"filter_Redis Instance".instance_pkey
                    align frame(back: 2m), metric_commands_calls_1zbspxjt:rate(m("commands_calls"))
                    aggregate metric_commands_calls_1zbspxjt:sum(metric_commands_calls_1zbspxjt), group_by(command)
                EOT
      },
      {
        id = "stage-8ibk9wow"
        input = [
          {
            datasetId   = local.redis_metrics
            datasetPath = null
            inputName   = "commands_total_time_from_test_gcp_learning-bedbug/Redis Metrics"
            inputRole   = "Data"
            stageId     = null
          },
          {
            datasetId   = null
            datasetPath = null
            inputName   = "filter_Redis Instance"
            inputRole   = "Data"
            stageId     = "stage-jt6xxmm2"
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
              datasetId   = local.redis_metrics
              inputName   = "commands_total_time_from_test_gcp_learning-bedbug/Redis Metrics"
              inputRole   = "Data"
              isUserInput = true
            },
            {
              inputName   = "filter_Redis Instance"
              inputRole   = "Data"
              isUserInput = true
              stageId     = "stage-jt6xxmm2"
            },
          ]
          label = "The amount of time in microseconds that this command took in the last second"
          managers = [
            {
              id         = "51crb1po"
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
                    unit    = "milliseconds"
                    visible = true
                  }
                }
                source = {
                  table = {
                    groupFields = [
                      "command",
                    ]
                    transformType = "none"
                    type          = "xy"
                    x             = "valid_from"
                    y             = "metric_commands_total_time_1vx369kl"
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
              customSummary = "commands_total_time_from_test_gcp_learning-bedbug/Redis Metrics"
              datasetQueryId = {
                ignoreCompress = false
                queryId        = null
                resultKinds = [
                  "ResultKindSchema",
                  "ResultKindData",
                  "ResultKindStats",
                ]
              }
              id                = "step-v2jud9qz"
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
              id       = "step-903u02hd"
              index    = 1
              isPinned = false
              opal = [
                "exists instance_pkey = @\"filter_Redis Instance\".instance_pkey",
                "filter role = \"primary\"",
                "align frame(back: 2m), metric_commands_total_time_1vx369kl:rate(m(\"commands_total_time\"))",
                "aggregate metric_commands_total_time_1vx369kl:sum(metric_commands_total_time_1vx369kl), group_by(command)",
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
                    exists instance_pkey = @"filter_Redis Instance".instance_pkey
                    filter role = "primary"
                    align frame(back: 2m), metric_commands_total_time_1vx369kl:rate(m("commands_total_time"))
                    aggregate metric_commands_total_time_1vx369kl:sum(metric_commands_total_time_1vx369kl), group_by(command)
                EOT
      },
      {
        id = "stage-9mulnsts"
        input = [
          {
            datasetId   = local.redis_metrics
            datasetPath = null
            inputName   = "commands_usec_per_call_from_test_gcp_learning-bedbug/Redis Metrics"
            inputRole   = "Data"
            stageId     = null
          },
          {
            datasetId   = null
            datasetPath = null
            inputName   = "filter_Redis Instance"
            inputRole   = "Data"
            stageId     = "stage-jt6xxmm2"
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
              datasetId   = local.redis_metrics
              inputName   = "commands_usec_per_call_from_test_gcp_learning-bedbug/Redis Metrics"
              inputRole   = "Data"
              isUserInput = true
            },
            {
              inputName   = "filter_Redis Instance"
              inputRole   = "Data"
              isUserInput = true
              stageId     = "stage-jt6xxmm2"
            },
          ]
          label = "Average time per call over 1 minute by command"
          managers = [
            {
              id         = "0o3u9vxv"
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
                    unit    = "milliseconds"
                    visible = true
                  }
                }
                source = {
                  table = {
                    groupFields = [
                      "command",
                    ]
                    transformType = "none"
                    type          = "xy"
                    x             = "valid_from"
                    y             = "metric_commands_usec_per_call_ywai7d9t"
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
              customSummary = "commands_usec_per_call_from_test_gcp_learning-bedbug/Redis Metrics"
              datasetQueryId = {
                ignoreCompress = false
                queryId        = null
                resultKinds = [
                  "ResultKindSchema",
                  "ResultKindData",
                  "ResultKindStats",
                ]
              }
              id                = "step-kni8afq7"
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
              id       = "step-a6cr9jme"
              index    = 1
              isPinned = false
              opal = [
                "exists instance_pkey = @\"filter_Redis Instance\".instance_pkey",
                "filter role = \"primary\"",
                "align frame(back: 2m), metric_commands_usec_per_call_ywai7d9t:avg(m(\"commands_usec_per_call\"))",
                "aggregate metric_commands_usec_per_call_ywai7d9t:sum(metric_commands_usec_per_call_ywai7d9t), group_by(command)",
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
                    exists instance_pkey = @"filter_Redis Instance".instance_pkey
                    filter role = "primary"
                    align frame(back: 2m), metric_commands_usec_per_call_ywai7d9t:avg(m("commands_usec_per_call"))
                    aggregate metric_commands_usec_per_call_ywai7d9t:sum(metric_commands_usec_per_call_ywai7d9t), group_by(command)
                EOT
      },
      {
        id = "stage-yothkrri"
        input = [
          {
            datasetId   = local.redis_metrics
            datasetPath = null
            inputName   = "keyspace_keys_from_GCP/Redis Metrics"
            inputRole   = "Data"
            stageId     = null
          },
          {
            datasetId   = null
            datasetPath = null
            inputName   = "filter_Redis Instance"
            inputRole   = "Data"
            stageId     = "stage-jt6xxmm2"
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
          index     = 5
          inputList = []
          label     = "# of keys stored in this database"
          managers = [
            {
              id         = "u5k7m35w"
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
                    groupFields   = []
                    transformType = "none"
                    type          = "xy"
                    x             = "valid_from"
                    y             = "metric_keyspace_keys_6fdw8por"
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
              }
              id                = "step-57tod424"
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
                              groupFields   = []
                              transformType = "none"
                              type          = "xy"
                              x             = "valid_from"
                              y             = "metric_keyspace_keys_6fdw8por"
                            }
                            topK = {
                              order = "Top"
                              type  = "Auto"
                            }
                            type = "table"
                          }
                          type = "timeseries"
                        }
                        disableAggregate     = false
                        expressionIdentifier = "A"
                        filterActions = [
                          {
                            params = {
                              foreignKey = {
                                __typename = "ForeignKey"
                                dstFields = [
                                  "instance_pkey",
                                ]
                                label = "Redis Instance"
                                srcFields = [
                                  "instance_pkey",
                                ]
                                targetDataset    = local.redis_instance
                                targetStageLabel = null
                                type             = "foreign"
                              }
                              joinInput = {
                                stageId = "stage-jt6xxmm2"
                              }
                            }
                            summary = null
                            type    = "ExistsInFilter"
                          },
                          {
                            params = {
                              columnId   = "role"
                              columnType = "string"
                              filterVerb = "filter"
                              values = [
                                {
                                  isExcluding = false
                                  value       = "primary"
                                },
                              ]
                            }
                            summary = null
                            type    = "FilterValues"
                          },
                        ]
                        frameDuration = {
                          num  = 2
                          unit = "minute"
                        }
                        groupBy       = []
                        id            = "metricExpression-uwlpmugf"
                        lookupActions = []
                        metric = {
                          aggregate   = "sum"
                          datasetId   = local.redis_metrics
                          description = <<-EOT
                                                        Number of keys stored in this database.
                                                    EOT
                          heuristics  = null
                          name        = "keyspace_keys"
                          rollup      = "avg"
                          type        = "gauge"
                          unit        = "1"
                          userDefined = true
                        }
                        metricLink = {
                          __typename = "ForeignKey"
                          dstFields = [
                            "instance_pkey",
                          ]
                          label = "Redis Instance"
                          srcFields = [
                            "instance_pkey",
                          ]
                          targetDataset    = local.redis_instance
                          targetStageLabel = null
                          type             = "foreign"
                        }
                        metricLinkInputSource = {
                          stageId = "stage-jt6xxmm2"
                        }
                        showAlignment  = false
                        showResolution = false
                        summaryMode    = "over-time"
                        type           = "metricExpression"
                        valueColumnId  = "metric_keyspace_keys_6fdw8por"
                        viewTab        = "visualize"
                      },
                    ]
                    multiExpression = {
                      expressionIdentifier = "A"
                      filterActions        = []
                      id                   = "multiExpression-k9lrilcq"
                      lookupActions        = []
                      type                 = "multiExpression"
                      viewTab              = "visualize"
                    }
                    selectedExpressionIds = [
                      "metricExpression-uwlpmugf",
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
              id       = "step-85clp81i"
              index    = 1
              isPinned = false
              opal = [
                "exists instance_pkey = @\"filter_Redis Instance\".instance_pkey",
                "filter role = \"primary\"",
                "align frame(back: 2m), metric_keyspace_keys_6fdw8por:avg(m(\"keyspace_keys\"))",
                "aggregate metric_keyspace_keys_6fdw8por:sum(metric_keyspace_keys_6fdw8por), group_by()",
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
                    exists instance_pkey = @"filter_Redis Instance".instance_pkey
                    filter role = "primary"
                    align frame(back: 2m), metric_keyspace_keys_6fdw8por:avg(m("keyspace_keys"))
                    aggregate metric_keyspace_keys_6fdw8por:sum(metric_keyspace_keys_6fdw8por), group_by()
                EOT
      },
      {
        id = "stage-wds98m8p"
        input = [
          {
            datasetId   = local.redis_metrics
            datasetPath = null
            inputName   = "stats_expired_keys_from_GCP/Redis Metrics"
            inputRole   = "Data"
            stageId     = null
          },
          {
            datasetId   = null
            datasetPath = null
            inputName   = "filter_Redis Instance"
            inputRole   = "Data"
            stageId     = "stage-jt6xxmm2"
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
          index     = 6
          inputList = []
          label     = "# of key expiration events"
          managers = [
            {
              id         = "ngsn1fc9"
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
                      "instance_pkey",
                    ]
                    transformType = "none"
                    type          = "xy"
                    x             = "valid_from"
                    y             = "metric_stats_expired_keys_clr7f3tz"
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
              }
              id                = "step-1ggmqaco"
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
                                "instance_pkey",
                              ]
                              transformType = "none"
                              type          = "xy"
                              x             = "valid_from"
                              y             = "metric_stats_expired_keys_clr7f3tz"
                            }
                            topK = {
                              order = "Top"
                              type  = "Auto"
                            }
                            type = "table"
                          }
                          type = "timeseries"
                        }
                        disableAggregate     = false
                        expressionIdentifier = "A"
                        filterActions = [
                          {
                            params = {
                              foreignKey = {
                                __typename = "ForeignKey"
                                dstFields = [
                                  "instance_pkey",
                                ]
                                label = "Redis Instance"
                                srcFields = [
                                  "instance_pkey",
                                ]
                                targetDataset    = local.redis_instance
                                targetStageLabel = null
                                type             = "foreign"
                              }
                              joinInput = {
                                stageId = "stage-jt6xxmm2"
                              }
                            }
                            summary = null
                            type    = "ExistsInFilter"
                          },
                          {
                            params = {
                              columnId   = "role"
                              columnType = "string"
                              filterVerb = "filter"
                              values = [
                                {
                                  isExcluding = false
                                  value       = "primary"
                                },
                              ]
                            }
                            summary = null
                            type    = "FilterValues"
                          },
                        ]
                        frameDuration = {
                          num  = 2
                          unit = "minute"
                        }
                        groupBy = [
                          "instance_pkey",
                        ]
                        id            = "metricExpression-y2pkuirl"
                        lookupActions = []
                        metric = {
                          aggregate   = "sum"
                          datasetId   = local.redis_metrics
                          description = <<-EOT
                                                        Total number of key expiration events.
                                                    EOT
                          heuristics = {
                            __typename = "MetricHeuristics"
                            tags = [
                              {
                                __typename = "MetricTag"
                                column     = "displayName"
                                path       = ""
                              },
                              {
                                __typename = "MetricTag"
                                column     = "hostname"
                                path       = ""
                              },
                              {
                                __typename = "MetricTag"
                                column     = "instance_pkey"
                                path       = ""
                              },
                              {
                                __typename = "MetricTag"
                                column     = "region"
                                path       = ""
                              },
                              {
                                __typename = "MetricTag"
                                column     = "role"
                                path       = ""
                              },
                              {
                                __typename = "MetricTag"
                                column     = "label"
                                path       = ""
                              },
                              {
                                __typename = "MetricTag"
                                column     = "metric_category"
                                path       = ""
                              },
                              {
                                __typename = "MetricTag"
                                column     = "metric_kind"
                                path       = ""
                              },
                              {
                                __typename = "MetricTag"
                                column     = "metric_kind_text"
                                path       = ""
                              },
                              {
                                __typename = "MetricTag"
                                column     = "metric_type"
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
                                column     = "value_type_text"
                                path       = ""
                              },
                              {
                                __typename = "MetricTag"
                                column     = "command"
                                path       = ""
                              },
                              {
                                __typename = "MetricTag"
                                column     = "relationship"
                                path       = ""
                              },
                              {
                                __typename = "MetricTag"
                                column     = "space"
                                path       = ""
                              },
                              {
                                __typename = "MetricTag"
                                column     = "metric_labels"
                                path       = "role"
                              },
                            ]
                            validLinkLabels = [
                              "Redis Instance",
                            ]
                          }
                          name        = "stats_expired_keys"
                          rollup      = "avg"
                          type        = "delta"
                          unit        = "1"
                          userDefined = true
                        }
                        metricLink = {
                          __typename = "ForeignKey"
                          dstFields = [
                            "instance_pkey",
                          ]
                          label = "Redis Instance"
                          srcFields = [
                            "instance_pkey",
                          ]
                          targetDataset    = local.redis_instance
                          targetStageLabel = null
                          type             = "foreign"
                        }
                        metricLinkInputSource = {
                          stageId = "stage-jt6xxmm2"
                        }
                        showAlignment  = false
                        showResolution = false
                        summaryMode    = "over-time"
                        type           = "metricExpression"
                        valueColumnId  = "metric_stats_expired_keys_clr7f3tz"
                        viewTab        = "visualize"
                      },
                    ]
                    multiExpression = {
                      expressionIdentifier = "A"
                      filterActions        = []
                      id                   = "multiExpression-ghg2aypo"
                      lookupActions        = []
                      type                 = "multiExpression"
                      viewTab              = "visualize"
                    }
                    selectedExpressionIds = [
                      "metricExpression-y2pkuirl",
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
              id       = "step-mnw0khml"
              index    = 1
              isPinned = false
              opal = [
                "exists instance_pkey = @\"filter_Redis Instance\".instance_pkey",
                "filter role = \"primary\"",
                "align frame(back: 2m), metric_stats_expired_keys_clr7f3tz:avg(m(\"stats_expired_keys\"))",
                "aggregate metric_stats_expired_keys_clr7f3tz:sum(metric_stats_expired_keys_clr7f3tz), group_by(instance_pkey)",
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
                    exists instance_pkey = @"filter_Redis Instance".instance_pkey
                    filter role = "primary"
                    align frame(back: 2m), metric_stats_expired_keys_clr7f3tz:avg(m("stats_expired_keys"))
                    aggregate metric_stats_expired_keys_clr7f3tz:sum(metric_stats_expired_keys_clr7f3tz), group_by(instance_pkey)
                EOT
      },
      {
        id = "stage-yb1taje8"
        input = [
          {
            datasetId   = local.redis_metrics
            datasetPath = null
            inputName   = "stats_keyspace_hits_from_GCP/Redis Metrics"
            inputRole   = "Data"
            stageId     = null
          },
          {
            datasetId   = null
            datasetPath = null
            inputName   = "filter_Redis Instance"
            inputRole   = "Data"
            stageId     = "stage-jt6xxmm2"
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
          index     = 7
          inputList = []
          label     = "# of successful lookup of keys in the main dictionary"
          managers = [
            {
              id         = "371gg3mv"
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
                    groupFields   = []
                    transformType = "none"
                    type          = "xy"
                    x             = "valid_from"
                    y             = "metric_stats_keyspace_hits_n6hey7pl"
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
              }
              id                = "step-n39fgge3"
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
                              groupFields   = []
                              transformType = "none"
                              type          = "xy"
                              x             = "valid_from"
                              y             = "metric_stats_keyspace_hits_n6hey7pl"
                            }
                            topK = {
                              order = "Top"
                              type  = "Auto"
                            }
                            type = "table"
                          }
                          type = "timeseries"
                        }
                        disableAggregate     = false
                        expressionIdentifier = "A"
                        filterActions = [
                          {
                            params = {
                              foreignKey = {
                                __typename = "ForeignKey"
                                dstFields = [
                                  "instance_pkey",
                                ]
                                label = "Redis Instance"
                                srcFields = [
                                  "instance_pkey",
                                ]
                                targetDataset    = local.redis_instance
                                targetStageLabel = null
                                type             = "foreign"
                              }
                              joinInput = {
                                stageId = "stage-jt6xxmm2"
                              }
                            }
                            summary = null
                            type    = "ExistsInFilter"
                          },
                          {
                            params = {
                              columnId   = "role"
                              columnType = "string"
                              filterVerb = "filter"
                              values = [
                                {
                                  isExcluding = false
                                  value       = "primary"
                                },
                              ]
                            }
                            summary = null
                            type    = "FilterValues"
                          },
                        ]
                        frameDuration = {
                          num  = 2
                          unit = "minute"
                        }
                        groupBy       = []
                        id            = "metricExpression-7br0iwuc"
                        lookupActions = []
                        metric = {
                          aggregate   = "sum"
                          datasetId   = local.redis_metrics
                          description = <<-EOT
                                                        Number of successful lookup of keys in the main dictionary.
                                                    EOT
                          heuristics = {
                            __typename = "MetricHeuristics"
                            tags = [
                              {
                                __typename = "MetricTag"
                                column     = "displayName"
                                path       = ""
                              },
                              {
                                __typename = "MetricTag"
                                column     = "hostname"
                                path       = ""
                              },
                              {
                                __typename = "MetricTag"
                                column     = "instance_pkey"
                                path       = ""
                              },
                              {
                                __typename = "MetricTag"
                                column     = "region"
                                path       = ""
                              },
                              {
                                __typename = "MetricTag"
                                column     = "role"
                                path       = ""
                              },
                              {
                                __typename = "MetricTag"
                                column     = "label"
                                path       = ""
                              },
                              {
                                __typename = "MetricTag"
                                column     = "metric_category"
                                path       = ""
                              },
                              {
                                __typename = "MetricTag"
                                column     = "metric_kind"
                                path       = ""
                              },
                              {
                                __typename = "MetricTag"
                                column     = "metric_kind_text"
                                path       = ""
                              },
                              {
                                __typename = "MetricTag"
                                column     = "metric_type"
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
                                column     = "value_type_text"
                                path       = ""
                              },
                              {
                                __typename = "MetricTag"
                                column     = "command"
                                path       = ""
                              },
                              {
                                __typename = "MetricTag"
                                column     = "relationship"
                                path       = ""
                              },
                              {
                                __typename = "MetricTag"
                                column     = "space"
                                path       = ""
                              },
                              {
                                __typename = "MetricTag"
                                column     = "metric_labels"
                                path       = "role"
                              },
                            ]
                            validLinkLabels = [
                              "Redis Instance",
                            ]
                          }
                          name        = "stats_keyspace_hits"
                          rollup      = "avg"
                          type        = "delta"
                          unit        = "1"
                          userDefined = true
                        }
                        metricLink = {
                          __typename = "ForeignKey"
                          dstFields = [
                            "instance_pkey",
                          ]
                          label = "Redis Instance"
                          srcFields = [
                            "instance_pkey",
                          ]
                          targetDataset    = local.redis_instance
                          targetStageLabel = null
                          type             = "foreign"
                        }
                        metricLinkInputSource = {
                          stageId = "stage-jt6xxmm2"
                        }
                        showAlignment  = false
                        showResolution = false
                        summaryMode    = "over-time"
                        type           = "metricExpression"
                        valueColumnId  = "metric_stats_keyspace_hits_n6hey7pl"
                        viewTab        = "visualize"
                      },
                    ]
                    multiExpression = {
                      expressionIdentifier = "A"
                      filterActions        = []
                      id                   = "multiExpression-uvatl4wg"
                      lookupActions        = []
                      type                 = "multiExpression"
                      viewTab              = "visualize"
                    }
                    selectedExpressionIds = [
                      "metricExpression-7br0iwuc",
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
              id       = "step-hid85kwz"
              index    = 1
              isPinned = false
              opal = [
                "exists instance_pkey = @\"filter_Redis Instance\".instance_pkey",
                "filter role = \"primary\"",
                "align frame(back: 2m), metric_stats_keyspace_hits_n6hey7pl:avg(m(\"stats_keyspace_hits\"))",
                "aggregate metric_stats_keyspace_hits_n6hey7pl:sum(metric_stats_keyspace_hits_n6hey7pl), group_by()",
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
                    exists instance_pkey = @"filter_Redis Instance".instance_pkey
                    filter role = "primary"
                    align frame(back: 2m), metric_stats_keyspace_hits_n6hey7pl:avg(m("stats_keyspace_hits"))
                    aggregate metric_stats_keyspace_hits_n6hey7pl:sum(metric_stats_keyspace_hits_n6hey7pl), group_by()
                EOT
      },
      {
        id = "stage-t1p8enlp"
        input = [
          {
            datasetId   = local.redis_metrics
            datasetPath = null
            inputName   = "stats_keyspace_misses_from_GCP/Redis Metrics"
            inputRole   = "Data"
            stageId     = null
          },
          {
            datasetId   = null
            datasetPath = null
            inputName   = "filter_Redis Instance"
            inputRole   = "Data"
            stageId     = "stage-jt6xxmm2"
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
          index     = 8
          inputList = []
          label     = "# of failed lookup of keys in the main dictionary"
          managers = [
            {
              id         = "himobrv4"
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
                    groupFields   = []
                    transformType = "none"
                    type          = "xy"
                    x             = "valid_from"
                    y             = "metric_stats_keyspace_misses_f1jy5fad"
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
              }
              id                = "step-38d44nsv"
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
                              groupFields   = []
                              transformType = "none"
                              type          = "xy"
                              x             = "valid_from"
                              y             = "metric_stats_keyspace_misses_f1jy5fad"
                            }
                            topK = {
                              order = "Top"
                              type  = "Auto"
                            }
                            type = "table"
                          }
                          type = "timeseries"
                        }
                        disableAggregate     = false
                        expressionIdentifier = "A"
                        filterActions = [
                          {
                            params = {
                              foreignKey = {
                                __typename = "ForeignKey"
                                dstFields = [
                                  "instance_pkey",
                                ]
                                label = "Redis Instance"
                                srcFields = [
                                  "instance_pkey",
                                ]
                                targetDataset    = local.redis_instance
                                targetStageLabel = null
                                type             = "foreign"
                              }
                              joinInput = {
                                stageId = "stage-jt6xxmm2"
                              }
                            }
                            summary = null
                            type    = "ExistsInFilter"
                          },
                          {
                            params = {
                              columnId   = "role"
                              columnType = "string"
                              filterVerb = "filter"
                              values = [
                                {
                                  isExcluding = false
                                  value       = "primary"
                                },
                              ]
                            }
                            summary = null
                            type    = "FilterValues"
                          },
                        ]
                        frameDuration = {
                          num  = 2
                          unit = "minute"
                        }
                        groupBy       = []
                        id            = "metricExpression-x9m3dor7"
                        lookupActions = []
                        metric = {
                          aggregate   = "sum"
                          datasetId   = local.redis_metrics
                          description = <<-EOT
                                                        Number of failed lookup of keys in the main dictionary.
                                                    EOT
                          heuristics = {
                            __typename = "MetricHeuristics"
                            tags = [
                              {
                                __typename = "MetricTag"
                                column     = "displayName"
                                path       = ""
                              },
                              {
                                __typename = "MetricTag"
                                column     = "hostname"
                                path       = ""
                              },
                              {
                                __typename = "MetricTag"
                                column     = "instance_pkey"
                                path       = ""
                              },
                              {
                                __typename = "MetricTag"
                                column     = "region"
                                path       = ""
                              },
                              {
                                __typename = "MetricTag"
                                column     = "role"
                                path       = ""
                              },
                              {
                                __typename = "MetricTag"
                                column     = "label"
                                path       = ""
                              },
                              {
                                __typename = "MetricTag"
                                column     = "metric_category"
                                path       = ""
                              },
                              {
                                __typename = "MetricTag"
                                column     = "metric_kind"
                                path       = ""
                              },
                              {
                                __typename = "MetricTag"
                                column     = "metric_kind_text"
                                path       = ""
                              },
                              {
                                __typename = "MetricTag"
                                column     = "metric_type"
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
                                column     = "value_type_text"
                                path       = ""
                              },
                              {
                                __typename = "MetricTag"
                                column     = "command"
                                path       = ""
                              },
                              {
                                __typename = "MetricTag"
                                column     = "relationship"
                                path       = ""
                              },
                              {
                                __typename = "MetricTag"
                                column     = "space"
                                path       = ""
                              },
                              {
                                __typename = "MetricTag"
                                column     = "metric_labels"
                                path       = "role"
                              },
                            ]
                            validLinkLabels = [
                              "Redis Instance",
                            ]
                          }
                          name        = "stats_keyspace_misses"
                          rollup      = "avg"
                          type        = "delta"
                          unit        = "1"
                          userDefined = true
                        }
                        metricLink = {
                          __typename = "ForeignKey"
                          dstFields = [
                            "instance_pkey",
                          ]
                          label = "Redis Instance"
                          srcFields = [
                            "instance_pkey",
                          ]
                          targetDataset    = local.redis_instance
                          targetStageLabel = null
                          type             = "foreign"
                        }
                        metricLinkInputSource = {
                          stageId = "stage-jt6xxmm2"
                        }
                        showAlignment  = false
                        showResolution = false
                        summaryMode    = "over-time"
                        type           = "metricExpression"
                        valueColumnId  = "metric_stats_keyspace_misses_f1jy5fad"
                        viewTab        = "visualize"
                      },
                    ]
                    multiExpression = {
                      expressionIdentifier = "A"
                      filterActions        = []
                      id                   = "multiExpression-7b9g6ov5"
                      lookupActions        = []
                      type                 = "multiExpression"
                      viewTab              = "visualize"
                    }
                    selectedExpressionIds = [
                      "metricExpression-x9m3dor7",
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
              id       = "step-m8zamc7f"
              index    = 1
              isPinned = false
              opal = [
                "exists instance_pkey = @\"filter_Redis Instance\".instance_pkey",
                "filter role = \"primary\"",
                "align frame(back: 2m), metric_stats_keyspace_misses_f1jy5fad:avg(m(\"stats_keyspace_misses\"))",
                "aggregate metric_stats_keyspace_misses_f1jy5fad:sum(metric_stats_keyspace_misses_f1jy5fad), group_by()",
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
                    exists instance_pkey = @"filter_Redis Instance".instance_pkey
                    filter role = "primary"
                    align frame(back: 2m), metric_stats_keyspace_misses_f1jy5fad:avg(m("stats_keyspace_misses"))
                    aggregate metric_stats_keyspace_misses_f1jy5fad:sum(metric_stats_keyspace_misses_f1jy5fad), group_by()
                EOT
      },
      {
        id = "stage-ehr1gzq0"
        input = [
          {
            datasetId   = local.redis_metrics
            datasetPath = null
            inputName   = "stats_cache_hit_ratio_from_test_gcp_learning-bedbug/Redis Metrics"
            inputRole   = "Data"
            stageId     = null
          },
          {
            datasetId   = null
            datasetPath = null
            inputName   = "filter_Redis Instance"
            inputRole   = "Data"
            stageId     = "stage-jt6xxmm2"
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
              datasetId   = local.redis_metrics
              inputName   = "stats_cache_hit_ratio_from_test_gcp_learning-bedbug/Redis Metrics"
              inputRole   = "Data"
              isUserInput = true
            },
            {
              inputName   = "filter_Redis Instance"
              inputRole   = "Data"
              isUserInput = true
              stageId     = "stage-jt6xxmm2"
            },
          ]
          label = "Cache Hit ratio %"
          managers = [
            {
              id         = "i6mvzf89"
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
                    groupFields   = []
                    transformType = "none"
                    type          = "xy"
                    x             = "valid_from"
                    y             = "metric_stats_cache_hit_ratio_59poxrmz"
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
            {
              id                     = "szf964he"
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
            wantBuckets = 250
          }
          selectedStepId = null
          serializable   = true
          steps = [
            {
              customName    = "Input"
              customSummary = "stats_cache_hit_ratio_from_test_gcp_learning-bedbug/Redis Metrics"
              datasetQueryId = {
                ignoreCompress = false
                queryId        = null
                resultKinds = [
                  "ResultKindSchema",
                  "ResultKindData",
                  "ResultKindStats",
                ]
              }
              id                = "step-swky5537"
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
              id       = "step-fwbjsxzv"
              index    = 1
              isPinned = false
              opal = [
                "exists instance_pkey = @\"filter_Redis Instance\".instance_pkey",
                "filter role = \"primary\"",
                "align frame(back: 2m), metric_stats_cache_hit_ratio_59poxrmz:avg(m(\"stats_cache_hit_ratio\"))",
                "aggregate metric_stats_cache_hit_ratio_59poxrmz:sum(metric_stats_cache_hit_ratio_59poxrmz*100), group_by()",
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
                    exists instance_pkey = @"filter_Redis Instance".instance_pkey
                    filter role = "primary"
                    align frame(back: 2m), metric_stats_cache_hit_ratio_59poxrmz:avg(m("stats_cache_hit_ratio"))
                    aggregate metric_stats_cache_hit_ratio_59poxrmz:sum(metric_stats_cache_hit_ratio_59poxrmz*100), group_by()
                EOT
      },
      {
        id = "stage-0ho2ak92"
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
            inputName   = "filter_Redis Instance"
            inputRole   = "Data"
            stageId     = "stage-jt6xxmm2"
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
              datasetId   = local.redis_metrics
              inputName   = "stats_memory_usage_ratio_from_test_gcp_learning-bedbug/Redis Metrics"
              inputRole   = "Data"
              isUserInput = true
            },
            {
              inputName   = "filter_Redis Instance"
              inputRole   = "Data"
              isUserInput = true
              stageId     = "stage-jt6xxmm2"
            },
          ]
          label = "Memory usage as a ratio of maximum memory"
          managers = [
            {
              id         = "zwuqjkoh"
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
                      "instance_pkey",
                    ]
                    transformType = "none"
                    type          = "xy"
                    x             = "valid_from"
                    y             = "metric_stats_memory_usage_ratio_753dc9fz"
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
              id                = "step-y1rvwqst"
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
              id       = "step-m2w6vlvm"
              index    = 1
              isPinned = false
              opal = [
                "exists instance_pkey = @\"filter_Redis Instance\".instance_pkey",
                "filter role = \"primary\"",
                "align frame(back: 2m), metric_stats_memory_usage_ratio_753dc9fz:avg(m(\"stats_memory_usage_ratio\"))",
                "aggregate metric_stats_memory_usage_ratio_753dc9fz:sum(metric_stats_memory_usage_ratio_753dc9fz *100), group_by(instance_pkey)",
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
                    exists instance_pkey = @"filter_Redis Instance".instance_pkey
                    filter role = "primary"
                    align frame(back: 2m), metric_stats_memory_usage_ratio_753dc9fz:avg(m("stats_memory_usage_ratio"))
                    aggregate metric_stats_memory_usage_ratio_753dc9fz:sum(metric_stats_memory_usage_ratio_753dc9fz *100), group_by(instance_pkey)
                EOT
      },
      {
        id = "stage-kblmpc8o"
        input = [
          {
            datasetId   = local.redis_metrics
            datasetPath = null
            inputName   = "stats_cpu_utilization_from_test_gcp_learning-bedbug/Redis Metrics"
            inputRole   = "Data"
            stageId     = null
          },
          {
            datasetId   = null
            datasetPath = null
            inputName   = "filter_Redis Instance"
            inputRole   = "Data"
            stageId     = "stage-jt6xxmm2"
          },
        ]
        layout = {
          appearance = "VISIBLE"
          dataTableViewState = {
            columnOrderOverride = {
              "0" = "valid_from"
              "1" = "valid_to"
              "2" = "instance_pkey"
              "3" = "space"
              "4" = "relationship"
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
              datasetId   = local.redis_metrics
              inputName   = "stats_cpu_utilization_from_test_gcp_learning-bedbug/Redis Metrics"
              inputRole   = "Data"
              isUserInput = true
            },
            {
              inputName   = "filter_Redis Instance"
              inputRole   = "Data"
              isUserInput = true
              stageId     = "stage-jt6xxmm2"
            },
          ]
          label = "CPU-seconds consumed by the Redis server, broken down by system/user space"
          managers = [
            {
              id         = "pbkj65ge"
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
                      "instance_pkey",
                      "space",
                    ]
                    transformType = "none"
                    type          = "xy"
                    x             = "valid_from"
                    y             = "metric_stats_cpu_utilization_790asu9w"
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
            {
              id                     = "821btkyl"
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
            wantBuckets = 250
          }
          selectedStepId = null
          serializable   = true
          steps = [
            {
              customName    = "Input"
              customSummary = "stats_cpu_utilization_from_test_gcp_learning-bedbug/Redis Metrics"
              datasetQueryId = {
                ignoreCompress = false
                queryId        = null
                resultKinds = [
                  "ResultKindSchema",
                  "ResultKindData",
                  "ResultKindStats",
                ]
              }
              id                = "step-sh6p4bbf"
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
              id       = "step-ljtf2g9w"
              index    = 1
              isPinned = false
              opal = [
                "exists instance_pkey = @\"filter_Redis Instance\".instance_pkey",
                "filter role = \"primary\"",
                "align frame(back: 2m), metric_stats_cpu_utilization_790asu9w:rate(m(\"stats_cpu_utilization\"))",
                "aggregate metric_stats_cpu_utilization_790asu9w:round(sum(metric_stats_cpu_utilization_790asu9w),5), group_by(instance_pkey, space)",
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
                    exists instance_pkey = @"filter_Redis Instance".instance_pkey
                    filter role = "primary"
                    align frame(back: 2m), metric_stats_cpu_utilization_790asu9w:rate(m("stats_cpu_utilization"))
                    aggregate metric_stats_cpu_utilization_790asu9w:round(sum(metric_stats_cpu_utilization_790asu9w),5), group_by(instance_pkey, space)
                EOT
      },
      {
        id = "stage-kuf5r7f3"
        input = [
          {
            datasetId   = local.redis_metrics
            datasetPath = null
            inputName   = "stats_network_traffic_from_GCP/Redis Metrics"
            inputRole   = "Data"
            stageId     = null
          },
          {
            datasetId   = null
            datasetPath = null
            inputName   = "filter_Redis Instance"
            inputRole   = "Data"
            stageId     = "stage-jt6xxmm2"
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
            tableHeight = 0
          }
          index = 12
          inputList = [
            {
              datasetId   = local.redis_metrics
              inputName   = "stats_network_traffic_from_GCP/Redis Metrics"
              inputRole   = "Data"
              isUserInput = true
            },
            {
              inputName   = "filter_Redis Instance"
              inputRole   = "Data"
              isUserInput = true
              stageId     = "stage-jt6xxmm2"
            },
          ]
          label = "Total number of bytes sent to/from redis"
          managers = [
            {
              id         = "qsgn01tt"
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
                      "instance_pkey",
                    ]
                    transformType = "none"
                    type          = "xy"
                    x             = "valid_from"
                    y             = "metric_stats_network_traffic_qe2motyy"
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
              customSummary = "stats_network_traffic_from_GCP/Redis Metrics"
              datasetQueryId = {
                ignoreCompress = false
                queryId        = null
                resultKinds = [
                  "ResultKindSchema",
                  "ResultKindData",
                  "ResultKindStats",
                ]
              }
              id                = "step-l6ig60kz"
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
              id       = "step-23je2ank"
              index    = 1
              isPinned = false
              opal = [
                "exists instance_pkey = @\"filter_Redis Instance\".instance_pkey",
                "align metric_stats_network_traffic_qe2motyy:rate(m(\"stats_network_traffic\"))",
                "aggregate metric_stats_network_traffic_qe2motyy:sum(metric_stats_network_traffic_qe2motyy), group_by(instance_pkey)",
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
                    exists instance_pkey = @"filter_Redis Instance".instance_pkey
                    align metric_stats_network_traffic_qe2motyy:rate(m("stats_network_traffic"))
                    aggregate metric_stats_network_traffic_qe2motyy:sum(metric_stats_network_traffic_qe2motyy), group_by(instance_pkey)
                EOT
      },
      {
        id = "stage-xbo28v7v"
        input = [
          {
            datasetId   = local.redis_metrics
            datasetPath = null
            inputName   = "stats_connections_total_from_GCP/Redis Metrics"
            inputRole   = "Data"
            stageId     = null
          },
          {
            datasetId   = null
            datasetPath = null
            inputName   = "filter_Redis Instance"
            inputRole   = "Data"
            stageId     = "stage-jt6xxmm2"
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
          index     = 13
          inputList = []
          label     = "Total number of connections accepted by the server"
          managers = [
            {
              id         = "6ixc6wmm"
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
                    groupFields   = []
                    transformType = "none"
                    type          = "xy"
                    x             = "valid_from"
                    y             = "metric_stats_connections_total_0ajegqu4"
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
              }
              id                = "step-4l56kbzu"
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
                              groupFields   = []
                              transformType = "none"
                              type          = "xy"
                              x             = "valid_from"
                              y             = "metric_stats_connections_total_0ajegqu4"
                            }
                            topK = {
                              order = "Top"
                              type  = "Auto"
                            }
                            type = "table"
                          }
                          type = "timeseries"
                        }
                        disableAggregate     = false
                        expressionIdentifier = "A"
                        filterActions = [
                          {
                            params = {
                              foreignKey = {
                                __typename = "ForeignKey"
                                dstFields = [
                                  "instance_pkey",
                                ]
                                label = "Redis Instance"
                                srcFields = [
                                  "instance_pkey",
                                ]
                                targetDataset    = local.redis_instance
                                targetStageLabel = null
                                type             = "foreign"
                              }
                              joinInput = {
                                stageId = "stage-jt6xxmm2"
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
                        groupBy       = []
                        id            = "metricExpression-v29zhmyn"
                        lookupActions = []
                        metric = {
                          aggregate   = "sum"
                          datasetId   = local.redis_metrics
                          description = <<-EOT
                                                        Total number of connections accepted by the server.
                                                    EOT
                          heuristics = {
                            __typename = "MetricHeuristics"
                            tags = [
                              {
                                __typename = "MetricTag"
                                column     = "displayName"
                                path       = ""
                              },
                              {
                                __typename = "MetricTag"
                                column     = "hostname"
                                path       = ""
                              },
                              {
                                __typename = "MetricTag"
                                column     = "instance_pkey"
                                path       = ""
                              },
                              {
                                __typename = "MetricTag"
                                column     = "region"
                                path       = ""
                              },
                              {
                                __typename = "MetricTag"
                                column     = "role"
                                path       = ""
                              },
                              {
                                __typename = "MetricTag"
                                column     = "label"
                                path       = ""
                              },
                              {
                                __typename = "MetricTag"
                                column     = "metric_category"
                                path       = ""
                              },
                              {
                                __typename = "MetricTag"
                                column     = "metric_kind"
                                path       = ""
                              },
                              {
                                __typename = "MetricTag"
                                column     = "metric_kind_text"
                                path       = ""
                              },
                              {
                                __typename = "MetricTag"
                                column     = "metric_type"
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
                                column     = "value_type_text"
                                path       = ""
                              },
                              {
                                __typename = "MetricTag"
                                column     = "command"
                                path       = ""
                              },
                              {
                                __typename = "MetricTag"
                                column     = "relationship"
                                path       = ""
                              },
                              {
                                __typename = "MetricTag"
                                column     = "space"
                                path       = ""
                              },
                              {
                                __typename = "MetricTag"
                                column     = "metric_labels"
                                path       = "role"
                              },
                            ]
                            validLinkLabels = [
                              "Redis Instance",
                            ]
                          }
                          name        = "stats_connections_total"
                          rollup      = "avg"
                          type        = "delta"
                          unit        = "1"
                          userDefined = true
                        }
                        metricLink = {
                          __typename = "ForeignKey"
                          dstFields = [
                            "instance_pkey",
                          ]
                          label = "Redis Instance"
                          srcFields = [
                            "instance_pkey",
                          ]
                          targetDataset    = local.redis_instance
                          targetStageLabel = null
                          type             = "foreign"
                        }
                        metricLinkInputSource = {
                          stageId = "stage-jt6xxmm2"
                        }
                        showAlignment  = false
                        showResolution = false
                        summaryMode    = "over-time"
                        type           = "metricExpression"
                        valueColumnId  = "metric_stats_connections_total_0ajegqu4"
                        viewTab        = "visualize"
                      },
                    ]
                    multiExpression = {
                      expressionIdentifier = "A"
                      filterActions        = []
                      id                   = "multiExpression-4vdg1na7"
                      lookupActions        = []
                      type                 = "multiExpression"
                      viewTab              = "visualize"
                    }
                    selectedExpressionIds = [
                      "metricExpression-v29zhmyn",
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
              id       = "step-wd5qezql"
              index    = 1
              isPinned = false
              opal = [
                "exists instance_pkey = @\"filter_Redis Instance\".instance_pkey",
                "align frame(back: 2m), metric_stats_connections_total_0ajegqu4:avg(m(\"stats_connections_total\"))",
                "aggregate metric_stats_connections_total_0ajegqu4:sum(metric_stats_connections_total_0ajegqu4), group_by()",
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
                    exists instance_pkey = @"filter_Redis Instance".instance_pkey
                    align frame(back: 2m), metric_stats_connections_total_0ajegqu4:avg(m("stats_connections_total"))
                    aggregate metric_stats_connections_total_0ajegqu4:sum(metric_stats_connections_total_0ajegqu4), group_by()
                EOT
      },
      {
        id = "stage-kp5jhjdv"
        input = [
          {
            datasetId   = local.redis_metrics
            datasetPath = null
            inputName   = "clients_connected_from_test_gcp_learning-bedbug/Redis Metrics"
            inputRole   = "Data"
            stageId     = null
          },
          {
            datasetId   = null
            datasetPath = null
            inputName   = "filter_Redis Instance"
            inputRole   = "Data"
            stageId     = "stage-jt6xxmm2"
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
          index = 14
          inputList = [
            {
              datasetId   = local.redis_metrics
              inputName   = "clients_connected_from_test_gcp_learning-bedbug/Redis Metrics"
              inputRole   = "Data"
              isUserInput = true
            },
            {
              inputName   = "filter_Redis Instance"
              inputRole   = "Data"
              isUserInput = true
              stageId     = "stage-jt6xxmm2"
            },
          ]
          label = "Number of client connections"
          managers = [
            {
              id         = "z82r9t87"
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
                      "instance_pkey",
                    ]
                    transformType = "none"
                    type          = "xy"
                    x             = "valid_from"
                    y             = "metric_clients_connected_e3qjll1a"
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
              customSummary = "clients_connected_from_test_gcp_learning-bedbug/Redis Metrics"
              datasetQueryId = {
                ignoreCompress = false
                queryId        = null
                resultKinds = [
                  "ResultKindSchema",
                  "ResultKindData",
                  "ResultKindStats",
                ]
              }
              id                = "step-6xc2yfb9"
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
              id       = "step-d0f4t8o4"
              index    = 1
              isPinned = false
              opal = [
                "exists instance_pkey = @\"filter_Redis Instance\".instance_pkey",
                "filter role = \"primary\"",
                "align frame(back: 2m), metric_clients_connected_e3qjll1a:avg(m(\"clients_connected\"))",
                "aggregate metric_clients_connected_e3qjll1a:sum(metric_clients_connected_e3qjll1a), group_by(instance_pkey)",
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
                    exists instance_pkey = @"filter_Redis Instance".instance_pkey
                    filter role = "primary"
                    align frame(back: 2m), metric_clients_connected_e3qjll1a:avg(m("clients_connected"))
                    aggregate metric_clients_connected_e3qjll1a:sum(metric_clients_connected_e3qjll1a), group_by(instance_pkey)
                EOT
      },
      {
        id = "stage-zmb32x6w"
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
          appearance = "VISIBLE"
          dataTableViewState = {
            columnOrderOverride = {
              "0" = "Valid From"
              "1" = "Valid To"
            }
            columnVisibility = {
              _c_instance_properties_path = false
              instance_pkey               = false
            }
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
              datasetId   = local.redis_instance
              inputName   = "test_gcp_learning-bedbug/Redis Instance"
              inputRole   = "Data"
              isUserInput = false
            },
          ]
          label = "Properties"
          managers = [
            {
              id                     = "874dqnjh"
              isDisabled             = false
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "xupmofha"
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
              id                = "step-ggplevzw"
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
              id       = "step-4q606eh4"
              index    = 1
              isPinned = false
              opal = [
                "filter instance_pkey = $redis.instance_pkey ",
                "",
                "make_col instance_properties: make_object(Tier: tier, Read_Replica_Mode: readReplicasMode, Replica_Count: replicaCount, Primary_Location: locationId, Version: redisVersion)",
                "",
                "flatten instance_properties",
                "",
                "pick_col",
                "\t@.\"Valid From\",",
                " \t@.\"Valid To\",",
                "  \tinstance_pkey,_c_instance_properties_path,",
                "   Property: replace(_c_instance_properties_path,'_',' '),",
                "   Value: _c_instance_properties_value",
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
              script        = false
            }
            showTimeRuler = true
            stageTab      = "table"
          }
        }
        params   = null
        pipeline = <<-EOT
                    filter instance_pkey = $redis.instance_pkey 
                    
                    make_col instance_properties: make_object(Tier: tier, Read_Replica_Mode: readReplicasMode, Replica_Count: replicaCount, Primary_Location: locationId, Version: redisVersion)
                    
                    flatten instance_properties
                    
                    pick_col
                      @."Valid From",
                      @."Valid To",
                        instance_pkey,_c_instance_properties_path,
                       Property: replace(_c_instance_properties_path,'_',' '),
                       Value: _c_instance_properties_value
                EOT
      },
      {
        id = "stage-rp98umdc"
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
          appearance = "VISIBLE"
          dataTableViewState = {
            columnOrderOverride = {
              "0" = "Valid From"
              "1" = "Valid To"
              "3" = "_c_instance_properties_path"
            }
            columnVisibility = {
              _c_instance_properties_path = false
              instance_pkey               = false
            }
            columnWidths = {
              Value = 462
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
          index = 16
          inputList = [
            {
              datasetId   = local.redis_instance
              inputName   = "test_gcp_learning-bedbug/Redis Instance"
              inputRole   = "Data"
              isUserInput = false
            },
          ]
          label = "Connection Properties"
          managers = [
            {
              id                     = "qy4a8j7m"
              isDisabled             = false
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "bdxdvm6c"
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
              id                = "step-etkccztz"
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
              id       = "step-8xlmk08h"
              index    = 1
              isPinned = false
              opal = [
                "filter instance_pkey = $redis.instance_pkey ",
                "",
                "make_col instance_properties: make_object(Primary_Endpoint: host,Authorized_Network: authorizedNetwork, Connection_mode: connectMode, IP_range: reservedIpRange)",
                "",
                "flatten instance_properties",
                "",
                "pick_col",
                "\t@.\"Valid From\",",
                " \t@.\"Valid To\",",
                "  \tinstance_pkey,_c_instance_properties_path,",
                "   Property: replace(_c_instance_properties_path,'_',' '),",
                "   Value: _c_instance_properties_value",
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
              script        = false
            }
            showTimeRuler = true
            stageTab      = "table"
          }
        }
        params   = null
        pipeline = <<-EOT
                    filter instance_pkey = $redis.instance_pkey 
                    
                    make_col instance_properties: make_object(Primary_Endpoint: host,Authorized_Network: authorizedNetwork, Connection_mode: connectMode, IP_range: reservedIpRange)
                    
                    flatten instance_properties
                    
                    pick_col
                      @."Valid From",
                      @."Valid To",
                        instance_pkey,_c_instance_properties_path,
                       Property: replace(_c_instance_properties_path,'_',' '),
                       Value: _c_instance_properties_value
                EOT
      },
    ]
  )
  workspace = local.workspace
}

