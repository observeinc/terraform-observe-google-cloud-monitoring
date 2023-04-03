locals {
  workspace              = var.workspace.oid
  cluster_dashboard_name = format(var.name_format, "GKE Monitoring")
  gke_cluster            = resource.observe_dataset.gke_clusters.id
  compute_instance       = var.google.compute_instance.id
  compute_metrics        = var.google.compute_metrics.id
}
# terraform import observe_dashboard.gke_monitoring 41294555
resource "observe_dashboard" "gke_monitoring" {
  description = "Dashboard for monitoring Google Kubernetes Engine resources"
  layout = jsonencode(
    {
      autoPack = true
      gridLayout = {
        sections = [
          {
            card = {
              cardType = "section"
              closed   = false
              id       = "card-lag2487b"
              title    = "Dashboard Content"
            }
            items        = []
            lastModified = 1666969371353
          },
          {
            card = {
              cardType = "section"
              closed   = false
              id       = "section-wfrgx7e4"
              title    = "Overview"
            }
            items = [
              {
                card = {
                  cardType = "stage"
                  id       = "card-1pzj121t"
                  stageId  = "stage-th4n9kww"
                }
                layout = {
                  h           = 12
                  i           = "card-1pzj121t"
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
                  id       = "card-h5tdzlki"
                  stageId  = "stage-nk04p7pj"
                }
                layout = {
                  h           = 12
                  i           = "card-h5tdzlki"
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
                  id       = "card-ehnrcj43"
                  stageId  = "stage-uxxml2cm"
                }
                layout = {
                  h           = 12
                  i           = "card-ehnrcj43"
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
                  id       = "card-ec9c6uex"
                  stageId  = "stage-f3mqbv1q"
                }
                layout = {
                  h           = 12
                  i           = "card-ec9c6uex"
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
                  id       = "card-3omhm2x7"
                  stageId  = "stage-0b7bgpw9"
                }
                layout = {
                  h           = 12
                  i           = "card-3omhm2x7"
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
                  id       = "card-kxuveagm"
                  stageId  = "stage-krcupcxj"
                }
                layout = {
                  h           = 12
                  i           = "card-kxuveagm"
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
                  id       = "card-3mpba3us"
                  stageId  = "stage-y3ptdg09"
                }
                layout = {
                  h           = 18
                  i           = "card-3mpba3us"
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
                  id       = "card-fonp6pnc"
                  stageId  = "stage-k7p4bw80"
                }
                layout = {
                  h           = 13
                  i           = "card-fonp6pnc"
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
                  id       = "card-fmx69shc"
                  stageId  = "stage-70ozhtnp"
                }
                layout = {
                  h           = 13
                  i           = "card-fmx69shc"
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
          {
            card = {
              cardType = "section"
              closed   = false
              id       = "section-bassziob"
              title    = "Notes"
            }
            items = [
              {
                card = {
                  cardType = "text"
                  id       = "card-ccny6rf5"
                  text     = "### I need some notes here"
                  title    = "Untitled Text"
                }
                layout = {
                  h           = 14
                  i           = "card-ccny6rf5"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 6
                  x           = 0
                  y           = 0
                }
              },
              {
                card = {
                  cardType = "text"
                  id       = "card-iusc3rif"
                  text     = "### More Illuminating Commentary Here"
                  title    = "Untitled Text"
                }
                layout = {
                  h           = 14
                  i           = "card-iusc3rif"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 6
                  x           = 6
                  y           = 0
                }
              },
            ]
            lastModified = 1666988242410
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
        selectedStageId = "stage-uxxml2cm"
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
  name = local.cluster_dashboard_name
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
            containerWidth              = 2156
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
                    transformType = "timechart"
                    type          = "keyvalue"
                    valueField    = "region"
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
          }
          renderType     = "TABLE"
          selectedStepId = null
          serializable   = true
          steps = [
            {
              columnStatsTable = {
                columnFunctions = {
                  assetInventoryName = "count"
                  cluster_name       = "count"
                  region             = "count"
                }
                datasetQueryId = {
                  ignoreCompress = false
                  queryId        = "q-dx1iwkfu"
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
              customSummary = "gkeCluster"
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
              id                = "step-vz0sgzu9"
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
                    transformType = "timechart"
                    type          = "keyvalue"
                    valueField    = "project_id"
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
          }
          renderType     = "TABLE"
          selectedStepId = null
          serializable   = true
          steps = [
            {
              customName    = "Input"
              customSummary = "gkeCluster"
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
              id                = "step-z0efzts2"
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
                    field       = "gkeClusterAssetKey"
                    groupFields = []
                    statsBy = {
                      fn = "count"
                    }
                    timechart = {
                      fn         = "count_distinct_exact"
                      fnArgs     = null
                      resolution = "AUTO"
                    }
                    transformType = "timechart"
                    type          = "singlefield"
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
          }
          renderType     = "TABLE"
          selectedStepId = null
          serializable   = true
          steps = [
            {
              columnStatsTable = {
                columnFunctions = {}
                datasetQueryId = {
                  ignoreCompress = false
                  queryId        = "q-fd2vztuj"
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
              customSummary = "gkeCluster"
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
              id                = "step-jrcqp87r"
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
                    transformType = "timechart"
                    type          = "keyvalue"
                    valueField    = "currentMasterVersion"
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
          }
          renderType     = "TABLE"
          selectedStepId = null
          serializable   = true
          steps = [
            {
              customName    = "Input"
              customSummary = "gkeCluster"
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
              id                = "step-tlkhdqy8"
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
                    transformType = "timechart"
                    type          = "keyvalue"
                    valueField    = "currentNodeVersion"
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
          }
          renderType     = "TABLE"
          selectedStepId = null
          serializable   = true
          steps = [
            {
              customName    = "Input"
              customSummary = "gkeCluster"
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
              id                = "step-xaxi46j0"
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
        id = "stage-y3ptdg09"
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
              "0" = "instance_name"
              "2" = "Valid From"
              "3" = "Valid To"
            }
            columnVisibility            = {}
            columnWidths                = {}
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
          index = 6
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
                  metric = {
                    aggregate   = "sum"
                    datasetId   = local.compute_metrics
                    description = "Auto Detected Metric"
                    groupBy = [
                      "computeInstanceAssetKey",
                    ]
                    heuristics = {
                      __typename = "MetricHeuristics"
                      tags = [
                        {
                          __typename = "MetricTag"
                          column     = "computeInstanceAssetKey"
                          path       = ""
                        },
                        {
                          __typename = "MetricTag"
                          column     = "compute_instance_name"
                          path       = ""
                        },
                        {
                          __typename = "MetricTag"
                          column     = "zone"
                          path       = ""
                        },
                        {
                          __typename = "MetricTag"
                          column     = "region"
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
                          column     = "computeDiskInstanceAssetKey"
                          path       = ""
                        },
                        {
                          __typename = "MetricTag"
                          column     = "metric_labels"
                          path       = "instance_name"
                        },
                      ]
                      validLinkLabels = [
                        "ComputeMetrics to Compute Instance",
                      ]
                    }
                    interval = null
                    link = {
                      __typename = "ForeignKey"
                      dstFields = [
                        "computeInstanceAssetKey",
                      ]
                      label = "ComputeMetrics to Compute Instance"
                      srcFields = [
                        "computeInstanceAssetKey",
                      ]
                      targetDataset    = local.compute_instance
                      targetStageLabel = null
                      type             = "foreign"
                    }
                    name        = "instance_cpu_utilization"
                    rollup      = "avg"
                    type        = "gauge"
                    unit        = ""
                    userDefined = false
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
            limit          = 1000
            linkify        = true
            loadEverything = false
            progressive    = true
            resultKinds = [
              "ResultKindSchema",
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
                  computeInstanceAssetKey = "count"
                  cpuPlatform             = "count"
                  creationTime            = "count"
                  deleted                 = "count"
                  deletionProtection      = "count"
                  gkeClusterAssetKey      = "count"
                  instance_group_name     = "count"
                  instance_name           = "count"
                  labels                  = "count"
                  machineType             = "count"
                  network                 = "count"
                  networkIP               = "count"
                  publicIP                = "count"
                  region                  = "count"
                  status                  = "count"
                  subnetwork              = "count"
                  tags                    = "count"
                  ttl                     = "count"
                  zone                    = "count"
                }
                datasetQueryId = {
                  ignoreCompress = false
                  queryId        = "q-kkvt67zu"
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
              customSummary = "gcp-cost-test/Compute Instance"
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
              id                = "step-1t43fxs9"
              index             = 0
              isPinned          = false
              opal              = []
              queryPresentation = {}
              type              = "InputStep"
            },
            {
              columnStatsTable = {
                columnFunctions = {
                  computeInstanceAssetKey = "count"
                  cpuPlatform             = "count"
                  creationTime            = "count"
                  deleted                 = "count"
                  deletionProtection      = "count"
                  gkeClusterAssetKey      = "count"
                  instance_group_name     = "count"
                  instance_name           = "count"
                  labels                  = "count"
                  machineType             = "count"
                  network                 = "count"
                  networkIP               = "count"
                  publicIP                = "count"
                  region                  = "count"
                  status                  = "count"
                  subnetwork              = "count"
                  tags                    = "count"
                  ttl                     = "count"
                  zone                    = "count"
                }
                datasetQueryId = {
                  ignoreCompress = false
                  queryId        = "q-lvx6an7a"
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
              id       = "step-fgn8x4wb"
              index    = 1
              isPinned = false
              opal = [
                "exists gkeClusterAssetKey = @gkeCluster.gkeClusterAssetKey",
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
        pipeline = "exists gkeClusterAssetKey = @gkeCluster.gkeClusterAssetKey"
      },
      {
        id = "stage-k7p4bw80"
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
              "0" = "instance_name"
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
          index = 7
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
                  metric = {
                    aggregate   = "sum"
                    datasetId   = local.compute_metrics
                    description = "Auto Detected Metric"
                    groupBy = [
                      "computeInstanceAssetKey",
                    ]
                    heuristics = {
                      __typename = "MetricHeuristics"
                      tags = [
                        {
                          __typename = "MetricTag"
                          column     = "computeInstanceAssetKey"
                          path       = ""
                        },
                        {
                          __typename = "MetricTag"
                          column     = "compute_instance_name"
                          path       = ""
                        },
                        {
                          __typename = "MetricTag"
                          column     = "zone"
                          path       = ""
                        },
                        {
                          __typename = "MetricTag"
                          column     = "region"
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
                          column     = "computeDiskInstanceAssetKey"
                          path       = ""
                        },
                        {
                          __typename = "MetricTag"
                          column     = "metric_labels"
                          path       = "instance_name"
                        },
                        {
                          __typename = "MetricTag"
                          column     = "metric_labels"
                          path       = "loadbalanced"
                        },
                      ]
                      validLinkLabels = [
                        "ComputeMetrics to Compute Instance",
                      ]
                    }
                    interval = null
                    link = {
                      __typename = "ForeignKey"
                      dstFields = [
                        "computeInstanceAssetKey",
                      ]
                      label = "ComputeMetrics to Compute Instance"
                      srcFields = [
                        "computeInstanceAssetKey",
                      ]
                      targetDataset    = local.compute_instance
                      targetStageLabel = null
                      type             = "foreign"
                    }
                    name        = "instance_network_sent_bytes_count"
                    rollup      = "avg"
                    type        = "gauge"
                    unit        = "bytes"
                    userDefined = false
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
            limit          = 1000
            linkify        = true
            loadEverything = false
            progressive    = true
            resultKinds = [
              "ResultKindSchema",
            ]
            rollup = {}
          }
          renderType     = "TABLE"
          selectedStepId = "step-nv00u91u"
          serializable   = true
          steps = [
            {
              customName    = "Input"
              customSummary = "gcp-cost-test/Compute Instance"
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
              id                = "step-yjxpllar"
              index             = 0
              isPinned          = false
              opal              = []
              queryPresentation = {}
              type              = "InputStep"
            },
            {
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
              id       = "step-nv00u91u"
              index    = 1
              isPinned = false
              opal = [
                "exists gkeClusterAssetKey = @gkeCluster.gkeClusterAssetKey",
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
        pipeline = "exists gkeClusterAssetKey = @gkeCluster.gkeClusterAssetKey"
      },
      {
        id = "stage-70ozhtnp"
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
              "0" = "instance_name"
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
          index = 8
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
                  metric = {
                    aggregate   = "sum"
                    datasetId   = local.compute_metrics
                    description = "Auto Detected Metric"
                    groupBy = [
                      "computeInstanceAssetKey",
                    ]
                    heuristics = {
                      __typename = "MetricHeuristics"
                      tags = [
                        {
                          __typename = "MetricTag"
                          column     = "computeInstanceAssetKey"
                          path       = ""
                        },
                        {
                          __typename = "MetricTag"
                          column     = "compute_instance_name"
                          path       = ""
                        },
                        {
                          __typename = "MetricTag"
                          column     = "zone"
                          path       = ""
                        },
                        {
                          __typename = "MetricTag"
                          column     = "region"
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
                          column     = "computeDiskInstanceAssetKey"
                          path       = ""
                        },
                        {
                          __typename = "MetricTag"
                          column     = "metric_labels"
                          path       = "instance_name"
                        },
                        {
                          __typename = "MetricTag"
                          column     = "metric_labels"
                          path       = "loadbalanced"
                        },
                      ]
                      validLinkLabels = [
                        "ComputeMetrics to Compute Instance",
                      ]
                    }
                    interval = null
                    link = {
                      __typename = "ForeignKey"
                      dstFields = [
                        "computeInstanceAssetKey",
                      ]
                      label = "ComputeMetrics to Compute Instance"
                      srcFields = [
                        "computeInstanceAssetKey",
                      ]
                      targetDataset    = local.compute_instance
                      targetStageLabel = null
                      type             = "foreign"
                    }
                    name        = "instance_network_received_bytes_count"
                    rollup      = "avg"
                    type        = "gauge"
                    unit        = "bytes"
                    userDefined = false
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
            limit          = 1000
            linkify        = true
            loadEverything = false
            progressive    = true
            resultKinds = [
              "ResultKindSchema",
            ]
            rollup = {}
          }
          renderType     = "TABLE"
          selectedStepId = "step-0wpw9a3a"
          serializable   = true
          steps = [
            {
              customName    = "Input"
              customSummary = "gcp-cost-test/Compute Instance"
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
              id                = "step-tq5aj0t7"
              index             = 0
              isPinned          = false
              opal              = []
              queryPresentation = {}
              type              = "InputStep"
            },
            {
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
              id       = "step-0wpw9a3a"
              index    = 1
              isPinned = false
              opal = [
                "exists gkeClusterAssetKey = @gkeCluster.gkeClusterAssetKey",
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
        pipeline = "exists gkeClusterAssetKey = @gkeCluster.gkeClusterAssetKey"
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
              "0" = "instance_name"
              "2" = "Valid From"
              "3" = "Valid To"
            }
            columnVisibility            = {}
            columnWidths                = {}
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
                    field       = "computeInstanceAssetKey"
                    groupFields = []
                    statsBy = {
                      fn = "count"
                    }
                    timechart = {
                      fn         = "count"
                      fnArgs     = null
                      resolution = "AUTO"
                    }
                    transformType = "timechart"
                    type          = "singlefield"
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
          }
          renderType     = "TABLE"
          selectedStepId = null
          serializable   = true
          steps = [
            {
              customName    = "Input"
              customSummary = "gcp-cost-test/Compute Instance"
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
              id                = "step-5o2jxroa"
              index             = 0
              isPinned          = false
              opal              = []
              queryPresentation = {}
              type              = "InputStep"
            },
            {
              columnStatsTable = {
                columnFunctions = {}
                datasetQueryId = {
                  ignoreCompress = false
                  queryId        = "q-nupwz1ql"
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
              id       = "step-v699e16q"
              index    = 1
              isPinned = false
              opal = [
                "exists gkeClusterAssetKey = @gkeCluster.gkeClusterAssetKey",
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
        pipeline = "exists gkeClusterAssetKey = @gkeCluster.gkeClusterAssetKey"
      },
    ]
  )
  workspace = local.workspace
}

