
# terraform import observe_dashboard.pubsub_monitoring 41257190
resource "observe_dashboard" "pubsub_monitoring" {
  description = "Dashboard for monitoring PubSub Topics"
  layout = jsonencode(
    {
      gridLayout = {
        sections = [
          {
            card = {
              cardType = "section"
              closed   = false
              id       = "card-ely9ii8s"
              title    = "Dashboard Content"
            }
            items        = []
            lastModified = 1665096210161
          },
          {
            card = {
              cardType = "section"
              closed   = false
              id       = "section-t4zct1ts"
              title    = "Overview"
            }
            items = [
              {
                card = {
                  cardType = "stage"
                  id       = "card-bzx5h4i8"
                  stageId  = "stage-n4s15ef8"
                }
                layout = {
                  h           = 18
                  i           = "card-bzx5h4i8"
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
          },
          {
            card = {
              cardType = "section"
              closed   = false
              id       = "section-8jrrs22d"
              title    = "Metrics"
            }
            items = [
              {
                card = {
                  cardType = "stage"
                  id       = "card-ezbe4l2s"
                  stageId  = "stage-gbd39io4"
                }
                layout = {
                  h           = 13
                  i           = "card-ezbe4l2s"
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
                  cardType = "stage"
                  id       = "card-va5heq28"
                  stageId  = "stage-njvg3yah"
                }
                layout = {
                  h           = 11
                  i           = "card-va5heq28"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 12
                  x           = 0
                  y           = 13
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-htbs6gsc"
                  stageId  = "stage-eni3hi3s"
                }
                layout = {
                  h           = 13
                  i           = "card-htbs6gsc"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 12
                  x           = 0
                  y           = 24
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-4uvbw6ib"
                  stageId  = "stage-wi7evv28"
                }
                layout = {
                  h           = 12
                  i           = "card-4uvbw6ib"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 12
                  x           = 0
                  y           = 37
                }
              },
            ]
            lastModified = 1665177949869
          },
        ]
      }
      stageListLayout = {
        isModified = false
        parameters = [
          {
            controlledFilterStageId = "stage-tq5xbjvj"
            datasetId               = local.pubsub_topics
            defaultValue = {
              datasetref = {
                datasetId = local.pubsub_topics
              }
            }
            emptyValueEncoding    = "null"
            emptyValueLabelOption = "null"
            id                    = "input-parameter-j9o4mgmh"
            name                  = "pubsubTopic"
            valueKind = {
              type = "DATASETREF"
            }
            viewType = "input"
          },
        ]
        selectedStageId = "stage-eni3hi3s"
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
  name = local.dashboard_name_topic
  parameters = jsonencode(
    [
      {
        defaultValue = {
          datasetref = {
            datasetId = local.pubsub_topics
          }
        }
        id   = "input-parameter-j9o4mgmh"
        name = "pubsubTopic"
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
        id = "stage-tq5xbjvj"
        input = [
          {
            datasetId   = local.pubsub_topics
            datasetPath = null
            inputName   = "stage/PubSub Topics"
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
              "0" = "topic_name"
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
          index = 0
          inputList = [
            {
              datasetId   = local.pubsub_topics
              inputName   = "stage/PubSub Topics"
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
              customSummary = "stage/PubSub Topics"
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
              id       = "step-86gqulrj"
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
            showTimeRuler = true
            stageTab      = "table"
          }
        }
        params   = null
        pipeline = "// Filtered Dataset Controlled Filter Stage"
      },
      {
        id = "stage-n4s15ef8"
        input = [
          {
            datasetId   = null
            datasetPath = null
            inputName   = "pubsubTopic"
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
              "0" = "topic_name"
              "1" = "topic_primary_key"
              "2" = "Valid From"
              "3" = "Valid To"
              "4" = "Projects"
            }
            columnVisibility = {
              deleted           = false
              topic_primary_key = false
              ttl               = false
            }
            columnWidths = {
              Projects                = 282
              topic_name              = 400
              topic_primary_key       = 338
              topic_subscription_name = 717
            }
            containerWidth              = 2145
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
              rows = {
                "0" = true
              }
              selectionType = "row"
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
              inputName   = "pubsubTopic"
              inputRole   = "Data"
              isUserInput = false
              parameterId = "input-parameter-j9o4mgmh"
            },
          ]
          label = "PubSub Topic Base"
          managers = [
            {
              id                     = "xxwibozd"
              isDisabled             = false
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
              columnStatsTable = {
                columnFunctions = {
                  deleted                 = "count"
                  topic_name              = "count"
                  topic_primary_key       = "count"
                  topic_subscription_name = "count"
                  ttl                     = "count"
                }
                datasetQueryId = {
                  ignoreCompress = false
                  queryId        = "q-ut10zn9d"
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
              customSummary = "pubsubTopic"
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
              id                = "step-23vixyha"
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
            stageTab      = "table"
          }
        }
        params   = null
        pipeline = ""
      },
      {
        id = "stage-njvg3yah"
        input = [
          {
            datasetId   = null
            datasetPath = null
            inputName   = "PubSub Topic Base_-n4s1"
            inputRole   = "Data"
            stageId     = "stage-n4s15ef8"
          },
        ]
        layout = {
          appearance = "VISIBLE"
          dataTableViewState = {
            autoTableHeight    = true
            columnFooterHeight = 0
            columnHeaderHeight = 29
            columnOrderOverride = {
              "0" = "topic_name"
              "2" = "Valid From"
              "3" = "Valid To"
            }
            columnVisibility = {}
            columnWidths = {
              topic_primary_key       = 338
              topic_subscription_name = 363
            }
            containerWidth              = 2145
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
              inputName   = "PubSub Topic Base_-n4s1"
              inputRole   = "Data"
              isUserInput = false
              stageId     = "stage-n4s15ef8"
            },
          ]
          label = "Byte Cost"
          managers = [
            {
              id                     = "85zbvdfh"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "ymb1bd6o"
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
                    unit    = "bytes"
                    visible = true
                  }
                }
                source = {
                  metric = {
                    aggregate   = "sum"
                    datasetId   = local.pubsub_topic_metrics
                    description = <<-EOT
                                            Cost of operations, measured in bytes. This is used to measure utilization for quotas. Sampled every 60s and may take up to 240s to display.
                                        EOT
                    groupBy = [
                      "topic_primary_key",
                    ]
                    heuristics = null
                    interval   = "60000000000"
                    link = {
                      __typename = "ForeignKey"
                      dstFields = [
                        "topic_primary_key",
                      ]
                      label = "Topics"
                      srcFields = [
                        "topic_primary_key",
                      ]
                      targetDataset    = local.pubsub_topics
                      targetStageLabel = null
                      type             = "foreign"
                    }
                    name        = "topic_byte_cost"
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
              columnStatsTable = {
                columnFunctions = {
                  deleted                 = "count"
                  topic_name              = "count"
                  topic_primary_key       = "count"
                  topic_subscription_name = "count"
                  ttl                     = "count"
                }
                datasetQueryId = {
                  ignoreCompress = false
                  queryId        = "q-jfxe5o9y"
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
              customSummary = "PubSub Topic Base_-n4s1"
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
              id                = "step-ehubdnhc"
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
        id = "stage-eni3hi3s"
        input = [
          {
            datasetId   = null
            datasetPath = null
            inputName   = "PubSub Topic Base_-n4s1"
            inputRole   = "Data"
            stageId     = "stage-n4s15ef8"
          },
        ]
        layout = {
          appearance = "VISIBLE"
          dataTableViewState = {
            autoTableHeight    = true
            columnFooterHeight = 0
            columnHeaderHeight = 29
            columnOrderOverride = {
              "0" = "topic_name"
              "2" = "Valid From"
              "3" = "Valid To"
            }
            columnVisibility = {}
            columnWidths = {
              topic_primary_key       = 338
              topic_subscription_name = 363
            }
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
              inputName   = "PubSub Topic Base_-n4s1"
              inputRole   = "Data"
              isUserInput = false
              stageId     = "stage-n4s15ef8"
            },
          ]
          label = "Message Sizes"
          managers = [
            {
              id                     = "85zbvdfh"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "ymb1bd6o"
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
                    unit    = "bytes"
                    visible = true
                  }
                }
                source = {
                  metric = {
                    aggregate   = "sum"
                    datasetId   = local.pubsub_topic_metrics
                    description = <<-EOT
                                            Distribution of publish message sizes in bytes. Sampled every 60s and may take up to 240s to display.
                                        EOT
                    groupBy = [
                      "topic_primary_key",
                    ]
                    heuristics = null
                    interval   = "60000000000"
                    link = {
                      __typename = "ForeignKey"
                      dstFields = [
                        "topic_primary_key",
                      ]
                      label = "Topics"
                      srcFields = [
                        "topic_primary_key",
                      ]
                      targetDataset    = local.pubsub_topics
                      targetStageLabel = null
                      type             = "foreign"
                    }
                    name        = "topic_message_sizes"
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
              customSummary = "PubSub Topic Base_-n4s1"
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
              id                = "step-qhp27zk4"
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
        id = "stage-gbd39io4"
        input = [
          {
            datasetId   = null
            datasetPath = null
            inputName   = "PubSub Topic Base_-n4s1"
            inputRole   = "Data"
            stageId     = "stage-n4s15ef8"
          },
        ]
        layout = {
          appearance = "VISIBLE"
          dataTableViewState = {
            autoTableHeight    = true
            columnFooterHeight = 0
            columnHeaderHeight = 29
            columnOrderOverride = {
              "0" = "topic_name"
              "2" = "Valid From"
              "3" = "Valid To"
            }
            columnVisibility = {}
            columnWidths = {
              topic_primary_key       = 338
              topic_subscription_name = 363
            }
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
              inputName   = "PubSub Topic Base_-n4s1"
              inputRole   = "Data"
              isUserInput = false
              stageId     = "stage-n4s15ef8"
            },
          ]
          label = "Send Requests"
          managers = [
            {
              id                     = "85zbvdfh"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "ymb1bd6o"
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
                    datasetId   = local.pubsub_topic_metrics
                    description = <<-EOT
                                            Cumulative count of publish requests, grouped by result. Sampled every 60s and may take up to 120s to display.
                                        EOT
                    groupBy = [
                      "topic_primary_key",
                    ]
                    heuristics = null
                    interval   = "60000000000"
                    link = {
                      __typename = "ForeignKey"
                      dstFields = [
                        "topic_primary_key",
                      ]
                      label = "Topics"
                      srcFields = [
                        "topic_primary_key",
                      ]
                      targetDataset    = local.pubsub_topics
                      targetStageLabel = null
                      type             = "foreign"
                    }
                    name        = "topic_send_request_count"
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
              customSummary = "PubSub Topic Base_-n4s1"
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
              id                = "step-j7t1umv1"
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
        id = "stage-wi7evv28"
        input = [
          {
            datasetId   = null
            datasetPath = null
            inputName   = "PubSub Topic Base_-n4s1"
            inputRole   = "Data"
            stageId     = "stage-n4s15ef8"
          },
        ]
        layout = {
          appearance = "VISIBLE"
          dataTableViewState = {
            autoTableHeight    = true
            columnFooterHeight = 0
            columnHeaderHeight = 29
            columnOrderOverride = {
              "0" = "topic_name"
              "2" = "Valid From"
              "3" = "Valid To"
            }
            columnVisibility = {}
            columnWidths = {
              topic_primary_key       = 338
              topic_subscription_name = 363
            }
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
            shouldAutoLayout           = false
            summaryColumnOrderOverride = {}
            summaryColumnVisibility    = {}
            tableHeight                = 0
            tableView                  = "TABULAR"
          }
          index = 5
          inputList = [
            {
              inputName   = "PubSub Topic Base_-n4s1"
              inputRole   = "Data"
              isUserInput = false
              stageId     = "stage-n4s15ef8"
            },
          ]
          label = "Config Updates"
          managers = [
            {
              id                     = "85zbvdfh"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "ymb1bd6o"
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
                    datasetId   = local.pubsub_topic_metrics
                    description = <<-EOT
                                            Cumulative count of configuration changes, grouped by operation type and result. Sampled every 60s and may take up to 240s to display.
                                        EOT
                    groupBy = [
                      "topic_primary_key",
                    ]
                    heuristics = null
                    interval   = "60000000000"
                    link = {
                      __typename = "ForeignKey"
                      dstFields = [
                        "topic_primary_key",
                      ]
                      label = "Topics"
                      srcFields = [
                        "topic_primary_key",
                      ]
                      targetDataset    = local.pubsub_topics
                      targetStageLabel = null
                      type             = "foreign"
                    }
                    name        = "topic_config_updates_count"
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
              customSummary = "PubSub Topic Base_-n4s1"
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
              id                = "step-g04ptmmk"
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
    ]
  )
  workspace = local.workspace
}

