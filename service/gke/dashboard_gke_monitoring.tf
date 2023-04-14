# terraform import observe_dashboard.gke_monitoring 42157162
resource "observe_dashboard" "gke_monitoring" {
  count       = local.gke_monitoring_dashboard_enable
  description = local.gke_monitoring_dashboard_description
  layout = jsonencode(
    {
      autoPack = true
      gridLayout = {
        sections = [
          {
            card = {
              cardType = "section"
              closed   = false
              id       = "card-gdukonjz"
              title    = "Dashboard Content"
            }
            items        = []
            lastModified = 1666969371353
          },
          {
            card = {
              cardType = "section"
              closed   = false
              id       = "card-vlch8l8y"
              title    = "Overview"
            }
            items = [
              {
                card = {
                  cardType = "stage"
                  id       = "card-2kinr4a4"
                  stageId  = "stage-th4n9kww"
                }
                layout = {
                  h           = 12
                  i           = "card-2kinr4a4"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 2
                  x           = 8
                  y           = 0
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-fyumgjml"
                  stageId  = "stage-nk04p7pj"
                }
                layout = {
                  h           = 12
                  i           = "card-fyumgjml"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 2
                  x           = 10
                  y           = 0
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-0em4rvc8"
                  stageId  = "stage-uxxml2cm"
                }
                layout = {
                  h           = 12
                  i           = "card-0em4rvc8"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 2
                  x           = 2
                  y           = 0
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-xb1qi1mt"
                  stageId  = "stage-f3mqbv1q"
                }
                layout = {
                  h           = 12
                  i           = "card-xb1qi1mt"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 2
                  x           = 0
                  y           = 0
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-rdbuav29"
                  stageId  = "stage-0b7bgpw9"
                }
                layout = {
                  h           = 12
                  i           = "card-rdbuav29"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 2
                  x           = 6
                  y           = 0
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-p5smpx6s"
                  stageId  = "stage-krcupcxj"
                }
                layout = {
                  h           = 12
                  i           = "card-p5smpx6s"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 2
                  x           = 4
                  y           = 0
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-xxaqyg16"
                  stageId  = "stage-y3ptdg09"
                }
                layout = {
                  h           = 18
                  i           = "card-xxaqyg16"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 12
                  x           = 0
                  y           = 12
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-2xpcdnjc"
                  stageId  = "stage-k7p4bw80"
                }
                layout = {
                  h           = 13
                  i           = "card-2xpcdnjc"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 6
                  x           = 0
                  y           = 30
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-b8tc35ci"
                  stageId  = "stage-70ozhtnp"
                }
                layout = {
                  h           = 13
                  i           = "card-b8tc35ci"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 6
                  x           = 6
                  y           = 30
                }
              },
            ]
          },
        ]
      }
      stageListLayout = {
        isModified = false
        parameters = [
          {
            controlledFilterStageId = "stage-551njtne"
            datasetId               = local.gke_cluster
            defaultValue = {
              datasetref = {
                datasetId = local.gke_cluster
              }
            }
            emptyValueEncoding    = "null"
            emptyValueLabelOption = "null"
            id                    = "input-parameter-21mm2wi0"
            name                  = "gkeCluster"
            valueKind = {
              type = "DATASETREF"
            }
            viewType = "input"
          },
        ]
        selectedStageId = "stage-y3ptdg09"
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
  name = local.gke_monitoring_dashboard_name
  parameters = jsonencode(
    [
      {
        defaultValue = {
          datasetref = {
            datasetId = local.gke_cluster
          }
        }
        id   = "input-parameter-21mm2wi0"
        name = "gkeCluster"
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
        id = "stage-551njtne"
        input = [
          {
            datasetId   = local.gke_cluster
            datasetPath = null
            inputName   = "gcp-cost-test/GKE Clusters"
            inputRole   = "Data"
            stageId     = null
          },
        ]
        layout = {
          appearance = "HIDDEN"
          index      = 0
          inputList = [
            {
              datasetId   = local.gke_cluster
              inputName   = "gcp-cost-test/GKE Clusters"
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
              customSummary = "gcp-cost-test/GKE Clusters"
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
              id       = "step-0zmhflic"
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
        id = "stage-0b7bgpw9"
        input = [
          {
            datasetId   = null
            datasetPath = null
            inputName   = "gkeCluster"
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
              "0" = "cluster_name"
              "1" = "gkeClusterAssetKey"
              "2" = "Valid From"
              "3" = "Valid To"
            }
            columnVisibility = {}
            columnWidths = {
              currentNodeCount         = 264
              currentNodeVersion       = 215
              databaseEncryption       = 237
              defaultMaxPodsConstraint = 205
              endpoint                 = 260
              initialClusterVersion    = 141
              initialNodeCount         = 182
            }
            containerWidth               = 2156
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
              inputName   = "gkeCluster"
              inputRole   = "Data"
              isUserInput = false
              parameterId = "input-parameter-21mm2wi0"
            },
          ]
          label = "Regions"
          managers = [
            {
              id                     = "0x3frcrj"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "kxuvidls"
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
                      resolution = "SINGLE"
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
                columnName = "A_region_count"
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
              customSummary = "gkeCluster"
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
              id                = "step-vz0sgzu9"
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
                        columnId       = "region"
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
                                resolution = "SINGLE"
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
                        filterActions = []
                        groupBy = [
                          "region",
                        ]
                        id              = "datasetQueryExpression-1gbbqj36"
                        lookupActions   = []
                        summarizeVerb   = "statsby"
                        summaryFunction = "count"
                        summaryMode     = "single"
                        type            = "datasetQueryExpression"
                        valueColumnId   = "A_region_count"
                      },
                    ]
                    multiExpression = {
                      filterActions = []
                      id            = "multiExpression-yzmqpoi7"
                      lookupActions = []
                      type          = "multiExpression"
                    }
                    selectedExpressionIds = [
                      "datasetQueryExpression-1gbbqj36",
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
              id       = "step-l96sj22u"
              index    = 1
              isPinned = false
              opal = [
                "statsby A_region_count:count(region), group_by(region)",
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
        pipeline = "statsby A_region_count:count(region), group_by(region)"
      },
      {
        id = "stage-krcupcxj"
        input = [
          {
            datasetId   = null
            datasetPath = null
            inputName   = "gkeCluster"
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
              "0" = "cluster_name"
              "1" = "gkeClusterAssetKey"
              "2" = "Valid From"
              "3" = "Valid To"
            }
            columnVisibility = {}
            columnWidths = {
              currentNodeCount         = 264
              currentNodeVersion       = 215
              databaseEncryption       = 237
              defaultMaxPodsConstraint = 205
              endpoint                 = 260
              initialClusterVersion    = 141
              initialNodeCount         = 182
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
          index = 2
          inputList = [
            {
              inputName   = "gkeCluster"
              inputRole   = "Data"
              isUserInput = false
              parameterId = "input-parameter-21mm2wi0"
            },
          ]
          label = "Projects"
          managers = [
            {
              id                     = "0x3frcrj"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "kxuvidls"
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
                      fn         = "count"
                      resolution = "SINGLE"
                    }
                    transformType = "none"
                    type          = "keyvalue"
                    valueField    = "A_project_id_count"
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
                columnName = "A_project_id_count"
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
              customSummary = "gkeCluster"
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
              id                = "step-z0efzts2"
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
                                fn         = "count"
                                resolution = "SINGLE"
                              }
                              transformType = "none"
                              type          = "keyvalue"
                              valueField    = "A_project_id_count"
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
                        id              = "datasetQueryExpression-zfywezpv"
                        lookupActions   = []
                        summarizeVerb   = "statsby"
                        summaryFunction = "count"
                        summaryMode     = "single"
                        type            = "datasetQueryExpression"
                        valueColumnId   = "A_project_id_count"
                      },
                    ]
                    multiExpression = {
                      filterActions = []
                      id            = "multiExpression-aqza91sz"
                      lookupActions = []
                      type          = "multiExpression"
                    }
                    selectedExpressionIds = [
                      "datasetQueryExpression-zfywezpv",
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
              id       = "step-mlhxnvs8"
              index    = 1
              isPinned = false
              opal = [
                "statsby A_project_id_count:count(project_id), group_by(project_id)",
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
        pipeline = "statsby A_project_id_count:count(project_id), group_by(project_id)"
      },
      {
        id = "stage-f3mqbv1q"
        input = [
          {
            datasetId   = null
            datasetPath = null
            inputName   = "gkeCluster"
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
              "0" = "_c_valid_from"
              "1" = "_c_valid_to"
              "2" = "cluster_name"
              "3" = "Valid To"
            }
            columnVisibility = {}
            columnWidths = {
              currentNodeCount         = 264
              currentNodeVersion       = 215
              databaseEncryption       = 237
              defaultMaxPodsConstraint = 205
              endpoint                 = 260
              initialClusterVersion    = 141
              initialNodeCount         = 182
            }
            containerWidth               = 2145
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
              inputName   = "gkeCluster"
              inputRole   = "Data"
              isUserInput = false
              parameterId = "input-parameter-21mm2wi0"
            },
          ]
          label = "Count"
          managers = [
            {
              id                     = "0x3frcrj"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "kxuvidls"
              isDisabled = false
              type       = "Vis"
              vis = {
                config = {
                  color           = "Default"
                  colorConfigType = "Color"
                  fieldConfig = {
                    unit    = null
                    visible = false
                  }
                  singleStatLabel = "GKE Clusters"
                  thresholds      = null
                  type            = "singlefield"
                }
                source = {
                  table = {
                    field       = "A_gkeClusterAssetKey_count_distinct_exact"
                    groupFields = []
                    statsBy = {
                      fn = "count"
                    }
                    timechart = {
                      fn         = "count_distinct_exact"
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
              customSummary = "gkeCluster"
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
              id                = "step-jrcqp87r"
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
                        columnId       = "gkeClusterAssetKey"
                        dataVis = {
                          config = {
                            color           = "Default"
                            colorConfigType = "Color"
                            fieldConfig = {
                              unit    = null
                              visible = false
                            }
                            singleStatLabel = "GKE Clusters"
                            thresholds      = null
                            type            = "singlefield"
                          }
                          source = {
                            table = {
                              field       = "A_gkeClusterAssetKey_count_distinct_exact"
                              groupFields = []
                              statsBy = {
                                fn = "count"
                              }
                              timechart = {
                                fn         = "count_distinct_exact"
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
                        filterActions       = []
                        groupBy             = []
                        id                  = "datasetQueryExpression-6zqempqp"
                        lookupActions       = []
                        summarizeVerb       = "statsby"
                        summaryFunction     = "count_distinct_exact"
                        summaryFunctionArgs = null
                        summaryMode         = "over-time"
                        type                = "datasetQueryExpression"
                        valueColumnId       = "A_gkeClusterAssetKey_count_distinct_exact"
                      },
                    ]
                    multiExpression = {
                      filterActions = []
                      id            = "multiExpression-gvsqys7l"
                      lookupActions = []
                      type          = "multiExpression"
                    }
                    selectedExpressionIds = [
                      "datasetQueryExpression-6zqempqp",
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
              id       = "step-9cwarogb"
              index    = 1
              isPinned = false
              opal = [
                "timechart options(empty_bins:true), A_gkeClusterAssetKey_count_distinct_exact:count_distinct_exact(gkeClusterAssetKey), group_by()",
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
        pipeline = "timechart options(empty_bins:true), A_gkeClusterAssetKey_count_distinct_exact:count_distinct_exact(gkeClusterAssetKey), group_by()"
      },
      {
        id = "stage-th4n9kww"
        input = [
          {
            datasetId   = null
            datasetPath = null
            inputName   = "gkeCluster"
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
              "0" = "cluster_name"
              "1" = "gkeClusterAssetKey"
              "2" = "Valid From"
              "3" = "Valid To"
            }
            columnVisibility = {}
            columnWidths = {
              currentNodeCount         = 264
              currentNodeVersion       = 215
              databaseEncryption       = 237
              defaultMaxPodsConstraint = 205
              endpoint                 = 260
              initialClusterVersion    = 141
              initialNodeCount         = 182
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
          index = 4
          inputList = [
            {
              inputName   = "gkeCluster"
              inputRole   = "Data"
              isUserInput = false
              parameterId = "input-parameter-21mm2wi0"
            },
          ]
          label = "Current Master Version"
          managers = [
            {
              id                     = "0x3frcrj"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "kxuvidls"
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
                      "currentMasterVersion",
                    ]
                    statsBy = {
                      fn = "count"
                    }
                    timechart = {
                      fn         = "count"
                      resolution = "SINGLE"
                    }
                    transformType = "none"
                    type          = "keyvalue"
                    valueField    = "A_currentMasterVersion_count"
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
                columnName = "A_currentMasterVersion_count"
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
              customSummary = "gkeCluster"
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
              id                = "step-tlkhdqy8"
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
                        columnId       = "currentMasterVersion"
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
                                "currentMasterVersion",
                              ]
                              statsBy = {
                                fn = "count"
                              }
                              timechart = {
                                fn         = "count"
                                resolution = "SINGLE"
                              }
                              transformType = "none"
                              type          = "keyvalue"
                              valueField    = "A_currentMasterVersion_count"
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
                          "currentMasterVersion",
                        ]
                        id              = "datasetQueryExpression-lbow43qd"
                        lookupActions   = []
                        summarizeVerb   = "statsby"
                        summaryFunction = "count"
                        summaryMode     = "single"
                        type            = "datasetQueryExpression"
                        valueColumnId   = "A_currentMasterVersion_count"
                      },
                    ]
                    multiExpression = {
                      filterActions = []
                      id            = "multiExpression-8kfzdx63"
                      lookupActions = []
                      type          = "multiExpression"
                    }
                    selectedExpressionIds = [
                      "datasetQueryExpression-lbow43qd",
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
              id       = "step-xr72dy1f"
              index    = 1
              isPinned = false
              opal = [
                "statsby A_currentMasterVersion_count:count(currentMasterVersion), group_by(currentMasterVersion)",
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
        pipeline = "statsby A_currentMasterVersion_count:count(currentMasterVersion), group_by(currentMasterVersion)"
      },
      {
        id = "stage-nk04p7pj"
        input = [
          {
            datasetId   = null
            datasetPath = null
            inputName   = "gkeCluster"
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
              "0" = "cluster_name"
              "1" = "gkeClusterAssetKey"
              "2" = "Valid From"
              "3" = "Valid To"
            }
            columnVisibility = {}
            columnWidths = {
              currentNodeCount         = 264
              currentNodeVersion       = 215
              databaseEncryption       = 237
              defaultMaxPodsConstraint = 205
              endpoint                 = 260
              initialClusterVersion    = 141
              initialNodeCount         = 182
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
          index = 5
          inputList = [
            {
              inputName   = "gkeCluster"
              inputRole   = "Data"
              isUserInput = false
              parameterId = "input-parameter-21mm2wi0"
            },
          ]
          label = "Current Node Version"
          managers = [
            {
              id                     = "0x3frcrj"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "kxuvidls"
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
                      "currentNodeVersion",
                    ]
                    statsBy = {
                      fn = "count"
                    }
                    timechart = {
                      fn         = "count"
                      resolution = "SINGLE"
                    }
                    transformType = "none"
                    type          = "keyvalue"
                    valueField    = "A_currentNodeVersion_count"
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
              id         = "4ntnkluz"
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
                columnName = "A_currentNodeVersion_count"
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
              customSummary = "gkeCluster"
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
              id                = "step-xaxi46j0"
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
                        columnId       = "currentNodeVersion"
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
                                "currentNodeVersion",
                              ]
                              statsBy = {
                                fn = "count"
                              }
                              timechart = {
                                fn         = "count"
                                resolution = "SINGLE"
                              }
                              transformType = "none"
                              type          = "keyvalue"
                              valueField    = "A_currentNodeVersion_count"
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
                          "currentNodeVersion",
                        ]
                        id              = "datasetQueryExpression-016xm6a8"
                        lookupActions   = []
                        summarizeVerb   = "statsby"
                        summaryFunction = "count"
                        summaryMode     = "single"
                        type            = "datasetQueryExpression"
                        valueColumnId   = "A_currentNodeVersion_count"
                      },
                    ]
                    multiExpression = {
                      filterActions = []
                      id            = "multiExpression-vgk0koit"
                      lookupActions = []
                      type          = "multiExpression"
                    }
                    selectedExpressionIds = [
                      "datasetQueryExpression-016xm6a8",
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
              id       = "step-xhuvziz7"
              index    = 1
              isPinned = false
              opal = [
                "statsby A_currentNodeVersion_count:count(currentNodeVersion), group_by(currentNodeVersion)",
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
        pipeline = "statsby A_currentNodeVersion_count:count(currentNodeVersion), group_by(currentNodeVersion)"
      },
      {
        id = "stage-y3ptdg09"
        input = [
          {
            datasetId   = local.compute_instance
            datasetPath = null
            inputName   = "instance"
            inputRole   = "Data"
            stageId     = null
          },
          {
            datasetId   = local.compute_instance
            datasetPath = null
            inputName   = "gcp-cost-test/Compute Instance"
            inputRole   = "Data"
            stageId     = null
          },
          {
            datasetId   = null
            datasetPath = null
            inputName   = "gkeCluster"
            inputRole   = "Data"
            stageId     = null
          },
          {
            datasetId   = local.compute_metrics
            datasetPath = null
            inputName   = "compute_metrics"
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
              "0" = "instance_name"
              "2" = "Valid From"
              "3" = "Valid To"
            }
            columnVisibility             = {}
            columnWidths                 = {}
            containerWidth               = 2145
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
              datasetId   = local.compute_instance
              inputName   = "instance"
              inputRole   = "Data"
              isUserInput = false
            },
            {
              datasetId   = local.compute_instance
              inputName   = "gcp-cost-test/Compute Instance"
              inputRole   = "Data"
              isUserInput = false
            },
            {
              inputName   = "gkeCluster"
              inputRole   = "Data"
              isUserInput = true
              parameterId = "input-parameter-21mm2wi0"
            },
            {
              datasetId   = local.compute_metrics
              inputName   = "compute_metrics"
              inputRole   = "Data"
              isUserInput = true
            },
          ]
          label = "Node CPU Utilization"
          managers = [
            {
              id                     = "fab9p7tk"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "r708bscx"
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
                    axisLabel = "Percent"
                    visible   = true
                  }
                  yConfig = {
                    unit    = ""
                    visible = true
                  }
                }
                source = {
                  table = {
                    groupFields = [
                      "computeInstanceAssetKey",
                    ]
                    transformType = "none"
                    type          = "xy"
                    x             = "valid_from"
                    y             = "A_instance_cpu_utilization_sum"
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
              customSummary = "instance_cpu_utilization"
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
              id                = "step-1t43fxs9"
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
              id       = "step-f997vcek"
              index    = 1
              isPinned = false
              opal = [
                "exists gkeClusterAssetKey = @gkeCluster.gkeClusterAssetKey",
                "follow computeInstanceAssetKey = @compute_metrics.computeInstanceAssetKey",
                "",
                "align frame(back: 2m), A_instance_cpu_utilization_sum:avg(m(\"instance_cpu_utilization\"))",
                "aggregate A_instance_cpu_utilization_sum:sum(A_instance_cpu_utilization_sum), group_by(computeInstanceAssetKey)",
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
                    exists gkeClusterAssetKey = @gkeCluster.gkeClusterAssetKey
                    follow computeInstanceAssetKey = @compute_metrics.computeInstanceAssetKey
                    
                    align frame(back: 2m), A_instance_cpu_utilization_sum:avg(m("instance_cpu_utilization"))
                    aggregate A_instance_cpu_utilization_sum:sum(A_instance_cpu_utilization_sum), group_by(computeInstanceAssetKey)
                EOT
      },
      {
        id = "stage-k7p4bw80"
        input = [
          {
            datasetId   = local.compute_instance
            datasetPath = null
            inputName   = "instance"
            inputRole   = "Data"
            stageId     = null
          },
          {
            datasetId   = local.compute_instance
            datasetPath = null
            inputName   = "gcp-cost-test/Compute Instance"
            inputRole   = "Data"
            stageId     = null
          },
          {
            datasetId   = null
            datasetPath = null
            inputName   = "gkeCluster"
            inputRole   = "Data"
            stageId     = null
          },
          {
            datasetId   = local.compute_metrics
            datasetPath = null
            inputName   = "compute_metrics"
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
              "0" = "computeInstanceAssetKey"
              "1" = "valid_from"
              "2" = "valid_to"
              "3" = "instance_name"
              "4" = "Valid From"
              "5" = "Valid To"
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
          index = 7
          inputList = [
            {
              datasetId   = local.compute_instance
              inputName   = "instance"
              inputRole   = "Data"
              isUserInput = false
            },
            {
              datasetId   = local.compute_instance
              inputName   = "gcp-cost-test/Compute Instance"
              inputRole   = "Data"
              isUserInput = false
            },
            {
              inputName   = "gkeCluster"
              inputRole   = "Data"
              isUserInput = true
              parameterId = "input-parameter-21mm2wi0"
            },
            {
              datasetId   = local.compute_metrics
              inputName   = "compute_metrics"
              inputRole   = "Data"
              isUserInput = true
            },
          ]
          label = "Node Network Bytes Sent"
          managers = [
            {
              id                     = "fab9p7tk"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "r708bscx"
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
                    unit    = "bytes"
                    visible = true
                  }
                }
                source = {
                  table = {
                    groupFields = [
                      "computeInstanceAssetKey",
                    ]
                    transformType = "none"
                    type          = "xy"
                    x             = "valid_from"
                    y             = "A_instance_network_sent_bytes_count_sum"
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
              customSummary = "instance"
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
              id                = "step-yjxpllar"
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
              id       = "step-sp5epu1y"
              index    = 1
              isPinned = false
              opal = [
                "exists gkeClusterAssetKey = @gkeCluster.gkeClusterAssetKey",
                "follow computeInstanceAssetKey = @compute_metrics.computeInstanceAssetKey",
                "",
                "align frame(back: 2m), A_instance_network_sent_bytes_count_sum:avg(m(\"instance_network_sent_bytes_count\"))",
                "aggregate A_instance_network_sent_bytes_count_sum:sum(A_instance_network_sent_bytes_count_sum), group_by(computeInstanceAssetKey)",
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
                    exists gkeClusterAssetKey = @gkeCluster.gkeClusterAssetKey
                    follow computeInstanceAssetKey = @compute_metrics.computeInstanceAssetKey
                    
                    align frame(back: 2m), A_instance_network_sent_bytes_count_sum:avg(m("instance_network_sent_bytes_count"))
                    aggregate A_instance_network_sent_bytes_count_sum:sum(A_instance_network_sent_bytes_count_sum), group_by(computeInstanceAssetKey)
                EOT
      },
      {
        id = "stage-70ozhtnp"
        input = [
          {
            datasetId   = local.compute_instance
            datasetPath = null
            inputName   = "instance"
            inputRole   = "Data"
            stageId     = null
          },
          {
            datasetId   = local.compute_instance
            datasetPath = null
            inputName   = "gcp-cost-test/Compute Instance"
            inputRole   = "Data"
            stageId     = null
          },
          {
            datasetId   = null
            datasetPath = null
            inputName   = "gkeCluster"
            inputRole   = "Data"
            stageId     = null
          },
          {
            datasetId   = local.compute_metrics
            datasetPath = null
            inputName   = "compute_metrics"
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
              "0" = "computeInstanceAssetKey"
              "1" = "valid_from"
              "2" = "valid_to"
              "3" = "instance_name"
              "4" = "Valid From"
              "5" = "Valid To"
            }
            columnVisibility             = {}
            columnWidths                 = {}
            containerWidth               = 2429
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
              datasetId   = local.compute_instance
              inputName   = "instance"
              inputRole   = "Data"
              isUserInput = false
            },
            {
              datasetId   = local.compute_instance
              inputName   = "gcp-cost-test/Compute Instance"
              inputRole   = "Data"
              isUserInput = false
            },
            {
              inputName   = "gkeCluster"
              inputRole   = "Data"
              isUserInput = true
              parameterId = "input-parameter-21mm2wi0"
            },
            {
              datasetId   = local.compute_metrics
              inputName   = "compute_metrics"
              inputRole   = "Data"
              isUserInput = true
            },
          ]
          label = "Node Network Bytes Received"
          managers = [
            {
              id                     = "fab9p7tk"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "r708bscx"
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
                      [
                        "computeInstanceAssetKey",
                      ],
                    ]
                    transformType = "none"
                    type          = "xy"
                    x             = "valid_from"
                    y             = "A_instance_network_received_bytes_count_sum"
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
              customSummary = "instance"
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
              id                = "step-tq5aj0t7"
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
              id       = "step-kr1k3otm"
              index    = 1
              isPinned = false
              opal = [
                "exists gkeClusterAssetKey = @gkeCluster.gkeClusterAssetKey",
                "follow computeInstanceAssetKey = @compute_metrics.computeInstanceAssetKey",
                "",
                "align frame(back: 2m), A_instance_network_received_bytes_count_sum:avg(m(\"instance_network_received_bytes_count\"))",
                "aggregate A_instance_network_received_bytes_count_sum:sum(A_instance_network_received_bytes_count_sum), group_by(computeInstanceAssetKey)",
              ]
              queryPresentation = {}
              type              = "unknown"
            },
            {
              action = {
                params = {
                  expressionList = {
                    expressions = []
                    multiExpression = {
                      filterActions = []
                      id            = "multiExpression-wmuymjcx"
                      lookupActions = []
                      type          = "multiExpression"
                    }
                    selectedExpressionIds = []
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
              id                = "step-2nkboe21"
              index             = 2
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
        pipeline = <<-EOT
                    exists gkeClusterAssetKey = @gkeCluster.gkeClusterAssetKey
                    follow computeInstanceAssetKey = @compute_metrics.computeInstanceAssetKey
                    
                    align frame(back: 2m), A_instance_network_received_bytes_count_sum:avg(m("instance_network_received_bytes_count"))
                    aggregate A_instance_network_received_bytes_count_sum:sum(A_instance_network_received_bytes_count_sum), group_by(computeInstanceAssetKey)
                EOT
      },
      {
        id = "stage-uxxml2cm"
        input = [
          {
            datasetId   = local.compute_instance
            datasetPath = null
            inputName   = "gcp-cost-test/Compute Instance"
            inputRole   = "Data"
            stageId     = null
          },
          {
            datasetId   = null
            datasetPath = null
            inputName   = "gkeCluster"
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
              "0" = "_c_valid_from"
              "1" = "_c_valid_to"
              "2" = "instance_name"
              "3" = "Valid To"
            }
            columnVisibility             = {}
            columnWidths                 = {}
            containerWidth               = 2145
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
              datasetId   = local.compute_instance
              inputName   = "gcp-cost-test/Compute Instance"
              inputRole   = "Data"
              isUserInput = false
            },
            {
              inputName   = "gkeCluster"
              inputRole   = "Data"
              isUserInput = true
              parameterId = "input-parameter-21mm2wi0"
            },
          ]
          label = "Nodes"
          managers = [
            {
              id                     = "fab9p7tk"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "r708bscx"
              isDisabled = false
              type       = "Vis"
              vis = {
                config = {
                  color           = "Default"
                  colorConfigType = "Color"
                  fieldConfig = {
                    unit    = null
                    visible = false
                  }
                  singleStatLabel = "Nodes"
                  thresholds      = null
                  type            = "singlefield"
                }
                source = {
                  table = {
                    field       = "A_computeInstanceAssetKey_count"
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
              customSummary = "gcp-cost-test/Compute Instance"
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
              id                = "step-5o2jxroa"
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
              id       = "step-v699e16q"
              index    = 1
              isPinned = false
              opal = [
                "exists gkeClusterAssetKey = @gkeCluster.gkeClusterAssetKey",
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
                        columnId       = "computeInstanceAssetKey"
                        dataVis = {
                          config = {
                            color           = "Default"
                            colorConfigType = "Color"
                            fieldConfig = {
                              unit    = null
                              visible = false
                            }
                            singleStatLabel = "Nodes"
                            thresholds      = null
                            type            = "singlefield"
                          }
                          source = {
                            table = {
                              field       = "A_computeInstanceAssetKey_count"
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
                        filterActions       = []
                        groupBy             = []
                        id                  = "datasetQueryExpression-xda760v8"
                        lookupActions       = []
                        summarizeVerb       = "statsby"
                        summaryFunction     = "count"
                        summaryFunctionArgs = null
                        summaryMode         = "over-time"
                        type                = "datasetQueryExpression"
                        valueColumnId       = "A_computeInstanceAssetKey_count"
                      },
                    ]
                    multiExpression = {
                      filterActions = []
                      id            = "multiExpression-lqy4hfwk"
                      lookupActions = []
                      type          = "multiExpression"
                    }
                    selectedExpressionIds = [
                      "datasetQueryExpression-xda760v8",
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
              id       = "step-3i9ftbx2"
              index    = 2
              isPinned = false
              opal = [
                "timechart options(empty_bins:true), A_computeInstanceAssetKey_count:count(computeInstanceAssetKey), group_by()",
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
                    exists gkeClusterAssetKey = @gkeCluster.gkeClusterAssetKey
                    timechart options(empty_bins:true), A_computeInstanceAssetKey_count:count(computeInstanceAssetKey), group_by()
                EOT
      },
    ]
  )
  workspace = local.workspace
}

