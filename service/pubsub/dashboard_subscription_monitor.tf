# terraform import observe_dashboard.pubsub_subscription_input 41257213
resource "observe_dashboard" "pubsub_subscription_input" {
  description = "Dashboard for monitoring PubSub Subscriptions"
  layout = jsonencode(
    {
      gridLayout = {
        sections = [
          {
            card = {
              cardType = "section"
              closed   = false
              id       = "card-ghzbut8n"
              title    = "Dashboard Content"
            }
            items = [
              {
                card = {
                  cardType = "stage"
                  id       = "card-9w9keb1p"
                  stageId  = "stage-hf7w4n2s"
                }
                layout = {
                  h           = 58
                  i           = "card-9w9keb1p"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 4
                  x           = 0
                  y           = 0
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-32ss8hos"
                  stageId  = "stage-g6yopa0w"
                }
                layout = {
                  h           = 13
                  i           = "card-32ss8hos"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 8
                  x           = 4
                  y           = 0
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-x1xnrn31"
                  stageId  = "stage-k7ouucp0"
                }
                layout = {
                  h           = 16
                  i           = "card-x1xnrn31"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 8
                  x           = 4
                  y           = 13
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-pvg9akrm"
                  stageId  = "stage-g6gmq8k6"
                }
                layout = {
                  h           = 16
                  i           = "card-pvg9akrm"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 8
                  x           = 4
                  y           = 29
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-ttfgmnqy"
                  stageId  = "stage-irl8p1ij"
                }
                layout = {
                  h           = 13
                  i           = "card-ttfgmnqy"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 8
                  x           = 4
                  y           = 45
                }
              },
            ]
            lastModified = 1665179157060
          },
        ]
      }
      stageListLayout = {
        isModified = false
        parameters = [
          {
            controlledFilterStageId = "stage-39iw1hg0"
            datasetId               = local.pubsub_subscriptions
            defaultValue = {
              datasetref = {
                datasetId = local.pubsub_subscriptions
              }
            }
            emptyValueEncoding    = "null"
            emptyValueLabelOption = "null"
            id                    = "input-parameter-r4djwcuh"
            name                  = "subscriptions"
            valueKind = {
              type = "DATASETREF"
            }
            viewType = "input"
          },
        ]
        selectedStageId = "stage-irl8p1ij"
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
  name = local.dashboard_name_subscription
  parameters = jsonencode(
    [
      {
        defaultValue = {
          datasetref = {
            datasetId = local.pubsub_subscriptions
          }
        }
        id   = "input-parameter-r4djwcuh"
        name = "subscriptions"
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
        id = "stage-39iw1hg0"
        input = [
          {
            datasetId   = local.pubsub_subscriptions
            datasetPath = null
            inputName   = "stage/PubSub Subscriptions"
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
              "0" = "subscription_name"
              "2" = "Valid From"
              "3" = "Valid To"
            }
            columnVisibility            = {}
            columnWidths                = {}
            containerWidth              = null
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
              datasetId   = local.pubsub_subscriptions
              inputName   = "stage/PubSub Subscriptions"
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
              customSummary = "stage/PubSub Subscriptions"
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
              id       = "step-xhvyo23j"
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
        id = "stage-hf7w4n2s"
        input = [
          {
            datasetId   = null
            datasetPath = null
            inputName   = "subscriptions"
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
              "0" = "subscription_name"
              "2" = "Valid From"
              "3" = "Valid To"
            }
            columnVisibility = {
              Name             = true
              Project          = true
              Projects_Subs    = false
              Topic            = true
              subscription_key = false
              topic            = true
            }
            columnWidths = {
              Name                     = 224
              Project                  = 250
              Projects_Subs            = 253
              Topic                    = 283
              Topic_Subs               = 198
              ackDeadlineSeconds       = 149
              messageRetentionDuration = 160
              topic                    = 265
              topicName                = 282
            }
            containerWidth              = 701
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
          index = 1
          inputList = [
            {
              inputName   = "subscriptions"
              inputRole   = "Data"
              isUserInput = false
              parameterId = "input-parameter-r4djwcuh"
            },
          ]
          label = "Subscription List"
          managers = [
            {
              id                     = "z9jdcq7o"
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
              columnStatsTable = {
                columnFunctions = {
                  ackDeadlineSeconds       = "count"
                  deleted                  = "count"
                  messageRetentionDuration = "count"
                  retryPolicy              = "count"
                  subscription_key         = "count"
                  subscription_name        = "count"
                  ttl                      = "count"
                }
                datasetQueryId = {
                  ignoreCompress = false
                  queryId        = "q-vrr8ueak"
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
              customSummary = "subscriptions"
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
              id                = "step-41xwxjxb"
              index             = 0
              isPinned          = false
              opal              = []
              queryPresentation = {}
              type              = "InputStep"
            },
            {
              columnStatsTable = {
                columnFunctions = {
                  Name                     = "count"
                  Topic                    = "count"
                  ackDeadlineSeconds       = "count"
                  deleted                  = "count"
                  messageRetentionDuration = "count"
                  retryPolicy              = "count"
                  subscription_key         = "count"
                  subscription_name        = "count"
                  ttl                      = "count"
                }
                datasetQueryId = {
                  ignoreCompress = false
                  queryId        = "q-4nxz7rte"
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
              id       = "step-nyxap1e5"
              index    = 1
              isPinned = false
              opal = [
                "extract_regex topic, /(?P<topicName>[^\\/]*$)/",
                "pick_col",
                "\t@.\"Valid From\",",
                "    @.\"Valid To\",",
                "    subscription_key,",
                "    Project: project_id,",
                "    Topic: topicName,",
                "    Name: subscription_name",
                "    ",
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
                    extract_regex topic, /(?P<topicName>[^\/]*$)/
                    pick_col
                    	@."Valid From",
                        @."Valid To",
                        subscription_key,
                        Project: project_id,
                        Topic: topicName,
                        Name: subscription_name
                        
                EOT
      },
      {
        id = "stage-g6yopa0w"
        input = [
          {
            datasetId   = null
            datasetPath = null
            inputName   = "Subscription List_-hf7w"
            inputRole   = "Data"
            stageId     = "stage-hf7w4n2s"
          },
        ]
        layout = {
          appearance = "VISIBLE"
          dataTableViewState = {
            autoTableHeight    = true
            columnFooterHeight = 0
            columnHeaderHeight = 29
            columnOrderOverride = {
              "0" = "Name"
              "1" = "subscription_name"
              "2" = "Valid From"
              "3" = "Valid To"
            }
            columnVisibility = {
              Name             = true
              Project          = true
              Projects_Subs    = false
              Topic            = true
              subscription_key = false
              topic            = true
            }
            columnWidths = {
              Name                     = 224
              Project                  = 250
              Projects_Subs            = 253
              Topic                    = 283
              Topic_Subs               = 198
              ackDeadlineSeconds       = 149
              messageRetentionDuration = 160
              topic                    = 265
              topicName                = 282
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
              inputName   = "Subscription List_-hf7w"
              inputRole   = "Data"
              isUserInput = false
              stageId     = "stage-hf7w4n2s"
            },
          ]
          label = "Byte Cost"
          managers = [
            {
              id                     = "5vr6xv0y"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "u0gtotgh"
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
                    datasetId   = local.pubsub_subscription_metrics
                    description = <<-EOT
                                            Cumulative cost of operations, measured in bytes. This is used to measure quota utilization. Sampled every 60s and may take up to 240s to display.
                                        EOT
                    groupBy = [
                      "subscription_key",
                    ]
                    heuristics = null
                    interval   = "60000000000"
                    link = {
                      __typename = "ForeignKey"
                      dstFields = [
                        "subscription_key",
                      ]
                      label = "Subscriptions"
                      srcFields = [
                        "subscription_key",
                      ]
                      targetDataset    = local.pubsub_subscriptions
                      targetStageLabel = null
                      type             = "foreign"
                    }
                    name        = "subscription_byte_cost"
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
                  Name             = "count"
                  Topic            = "count"
                  subscription_key = "count"
                }
                datasetQueryId = {
                  ignoreCompress = false
                  queryId        = "q-ukc3muab"
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
              customSummary = "Subscription List_-hf7w"
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
              id                = "step-dvfaq0ia"
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
        id = "stage-k7ouucp0"
        input = [
          {
            datasetId   = null
            datasetPath = null
            inputName   = "Subscription List_-hf7w"
            inputRole   = "Data"
            stageId     = "stage-hf7w4n2s"
          },
        ]
        layout = {
          appearance = "VISIBLE"
          dataTableViewState = {
            autoTableHeight    = true
            columnFooterHeight = 0
            columnHeaderHeight = 29
            columnOrderOverride = {
              "0" = "Name"
              "1" = "subscription_name"
              "2" = "Valid From"
              "3" = "Valid To"
            }
            columnVisibility = {
              Name             = true
              Project          = true
              Projects_Subs    = false
              Topic            = true
              subscription_key = false
              topic            = true
            }
            columnWidths = {
              Name                     = 224
              Project                  = 250
              Projects_Subs            = 253
              Topic                    = 283
              Topic_Subs               = 198
              ackDeadlineSeconds       = 149
              messageRetentionDuration = 160
              topic                    = 265
              topicName                = 282
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
          index = 3
          inputList = [
            {
              inputName   = "Subscription List_-hf7w"
              inputRole   = "Data"
              isUserInput = false
              stageId     = "stage-hf7w4n2s"
            },
          ]
          label = "Sent Messages"
          managers = [
            {
              id                     = "5vr6xv0y"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "u0gtotgh"
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
                    datasetId   = local.pubsub_subscription_metrics
                    description = <<-EOT
                                            Cumulative count of messages sent by Cloud Pub/Sub to subscriber clients, grouped by delivery type. Sampled every 60s and may take up to 240s to display.
                                        EOT
                    groupBy = [
                      "subscription_key",
                    ]
                    heuristics = null
                    interval   = "60000000000"
                    link = {
                      __typename = "ForeignKey"
                      dstFields = [
                        "subscription_key",
                      ]
                      label = "Subscriptions"
                      srcFields = [
                        "subscription_key",
                      ]
                      targetDataset    = local.pubsub_subscriptions
                      targetStageLabel = null
                      type             = "foreign"
                    }
                    name        = "subscription_sent_message_count"
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
            wantBuckets = 400
          }
          selectedStepId = "step-kzhdin9j"
          serializable   = true
          steps = [
            {
              customName    = "Input"
              customSummary = "Subscription List_-hf7w"
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
              id                = "step-kzhdin9j"
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
        id = "stage-g6gmq8k6"
        input = [
          {
            datasetId   = null
            datasetPath = null
            inputName   = "Subscription List_-hf7w"
            inputRole   = "Data"
            stageId     = "stage-hf7w4n2s"
          },
        ]
        layout = {
          appearance = "VISIBLE"
          dataTableViewState = {
            autoTableHeight    = true
            columnFooterHeight = 0
            columnHeaderHeight = 29
            columnOrderOverride = {
              "0" = "Name"
              "1" = "subscription_name"
              "2" = "Valid From"
              "3" = "Valid To"
            }
            columnVisibility = {
              Name             = true
              Project          = true
              Projects_Subs    = false
              Topic            = true
              subscription_key = false
              topic            = true
            }
            columnWidths = {
              Name                     = 224
              Project                  = 250
              Projects_Subs            = 253
              Topic                    = 283
              Topic_Subs               = 198
              ackDeadlineSeconds       = 149
              messageRetentionDuration = 160
              topic                    = 265
              topicName                = 282
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
          index = 4
          inputList = [
            {
              inputName   = "Subscription List_-hf7w"
              inputRole   = "Data"
              isUserInput = false
              stageId     = "stage-hf7w4n2s"
            },
          ]
          label = "Streaming Pull Responses"
          managers = [
            {
              id                     = "5vr6xv0y"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "u0gtotgh"
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
                    datasetId   = local.pubsub_subscription_metrics
                    description = <<-EOT
                                            Cumulative count of streaming pull responses, grouped by result. Sampled every 60s and may take up to 120s to display.
                                        EOT
                    groupBy = [
                      "subscription_key",
                    ]
                    heuristics = null
                    interval   = "60000000000"
                    link = {
                      __typename = "ForeignKey"
                      dstFields = [
                        "subscription_key",
                      ]
                      label = "Subscriptions"
                      srcFields = [
                        "subscription_key",
                      ]
                      targetDataset    = local.pubsub_subscriptions
                      targetStageLabel = null
                      type             = "foreign"
                    }
                    name        = "subscription_streaming_pull_response_count"
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
            wantBuckets = 400
          }
          selectedStepId = "step-5maq94xa"
          serializable   = true
          steps = [
            {
              customName    = "Input"
              customSummary = "Subscription List_-hf7w"
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
              id                = "step-5maq94xa"
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
        id = "stage-irl8p1ij"
        input = [
          {
            datasetId   = null
            datasetPath = null
            inputName   = "Subscription List_-hf7w"
            inputRole   = "Data"
            stageId     = "stage-hf7w4n2s"
          },
        ]
        layout = {
          appearance = "VISIBLE"
          dataTableViewState = {
            autoTableHeight    = true
            columnFooterHeight = 0
            columnHeaderHeight = 29
            columnOrderOverride = {
              "0" = "Name"
              "1" = "subscription_name"
              "2" = "Valid From"
              "3" = "Valid To"
            }
            columnVisibility = {
              Name             = true
              Project          = true
              Projects_Subs    = false
              Topic            = true
              subscription_key = false
              topic            = true
            }
            columnWidths = {
              Name                     = 224
              Project                  = 250
              Projects_Subs            = 253
              Topic                    = 283
              Topic_Subs               = 198
              ackDeadlineSeconds       = 149
              messageRetentionDuration = 160
              topic                    = 265
              topicName                = 282
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
              inputName   = "Subscription List_-hf7w"
              inputRole   = "Data"
              isUserInput = false
              stageId     = "stage-hf7w4n2s"
            },
          ]
          label = "Config Updates"
          managers = [
            {
              id                     = "5vr6xv0y"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "u0gtotgh"
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
                    datasetId   = local.pubsub_subscription_metrics
                    description = <<-EOT
                                            Cumulative count of configuration changes for each subscription, grouped by operation type and result. Sampled every 60s and may take up to 240s to display.
                                        EOT
                    groupBy = [
                      "subscription_key",
                    ]
                    heuristics = null
                    interval   = "60000000000"
                    link = {
                      __typename = "ForeignKey"
                      dstFields = [
                        "subscription_key",
                      ]
                      label = "Subscriptions"
                      srcFields = [
                        "subscription_key",
                      ]
                      targetDataset    = local.pubsub_subscriptions
                      targetStageLabel = null
                      type             = "foreign"
                    }
                    name        = "subscription_config_updates_count"
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
            wantBuckets = 400
          }
          selectedStepId = "step-hps5aouw"
          serializable   = true
          steps = [
            {
              customName    = "Input"
              customSummary = "Subscription List_-hf7w"
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
              id                = "step-hps5aouw"
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

