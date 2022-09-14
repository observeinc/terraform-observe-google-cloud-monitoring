locals {
  workspace                        = var.workspace.oid
  dashboard_name                   = format(var.name_format, "Projects Home")
  projects_collection_enabled      = observe_dataset.projects_collection_enabled.id
  resources_asset_inventory        = observe_dataset.resources_asset_inventory.id
  cloud_sql_metrics                = one(module.cloudsql[*].cloudsql_metrics) == null ? "NA" : one(module.cloudsql[*].cloudsql_metrics.id)
  compute_metrics                  = one(module.compute[*].compute_metrics) == null ? "NA" : one(module.compute[*].compute_metrics.id)
  cloud_sql_metrics_wide           = one(module.cloudsql[*].cloudsql_metrics_wide) == null ? "NA" : one(module.cloudsql[*].cloudsql_metrics_wide.id)
  cloud_functions_function_metrics = one(module.cloudfunctions[*].function_metrics) == null ? "NA" : one(module.cloudfunctions[*].function_metrics.id)
  cloud_functions_function_logs    = one(module.cloudfunctions[*].function_logs) == null ? "NA" : one(module.cloudfunctions[*].function_logs.id)
  metrics                          = observe_dataset.metrics.id
  storage_metrics                  = one(module.storage[*].storage_metrics) == null ? "NA" : one(module.storage[*].storage_metrics.id)
}
# terraform import observe_dashboard.projects_home_template 41144640
resource "observe_dashboard" "projects_home_template" {
  count = local.enable_metrics ? 1 : 0
  layout = jsonencode(
    {
      gridLayout = {
        sections = [
          {
            card = {
              cardType = "section"
              closed   = false
              id       = "card-4m6tgab5"
              title    = "Dashboard Content"
            }
            items        = []
            lastModified = 1662756815056
          },
          {
            card = {
              cardType = "section"
              closed   = false
              id       = "section-86vvehl5"
              title    = "Resources"
            }
            items = [
              {
                card = {
                  cardType = "stage"
                  id       = "card-muv8czr0"
                  stageId  = "stage-59v5rk5f"
                }
                layout = {
                  h           = 8
                  i           = "card-muv8czr0"
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
                  id       = "card-0gz34jv7"
                  stageId  = "stage-6cf9jti3"
                }
                layout = {
                  h           = 8
                  i           = "card-0gz34jv7"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 4
                  x           = 4
                  y           = 0
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-nhspi1a1"
                  stageId  = "stage-qod1mmjc"
                }
                layout = {
                  h           = 8
                  i           = "card-nhspi1a1"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 4
                  x           = 8
                  y           = 0
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-55ij29rt"
                  stageId  = "stage-7b5hzxyp"
                }
                layout = {
                  h           = 8
                  i           = "card-55ij29rt"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 4
                  x           = 0
                  y           = 8
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-eqry134k"
                  stageId  = "stage-9gx4o1vf"
                }
                layout = {
                  h           = 8
                  i           = "card-eqry134k"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 4
                  x           = 4
                  y           = 8
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-ebftxmpc"
                  stageId  = "stage-qf8oapqb"
                }
                layout = {
                  h           = 8
                  i           = "card-ebftxmpc"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 4
                  x           = 8
                  y           = 8
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-56kqm8mc"
                  stageId  = "stage-60n5juu6"
                }
                layout = {
                  h           = 8
                  i           = "card-56kqm8mc"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 4
                  x           = 4
                  y           = 16
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-hdu8g13r"
                  stageId  = "stage-83cj0j4u"
                }
                layout = {
                  h           = 8
                  i           = "card-hdu8g13r"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 4
                  x           = 8
                  y           = 16
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-7kb1f4xn"
                  stageId  = "stage-veumo1m3"
                }
                layout = {
                  h           = 8
                  i           = "card-7kb1f4xn"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 4
                  x           = 0
                  y           = 16
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-x37cvori"
                  stageId  = "stage-jar5yskq"
                }
                layout = {
                  h           = 8
                  i           = "card-x37cvori"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 4
                  x           = 0
                  y           = 24
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-z67rycx2"
                  stageId  = "stage-xs8j2jsp"
                }
                layout = {
                  h           = 8
                  i           = "card-z67rycx2"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 4
                  x           = 4
                  y           = 24
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-v3yxhfyv"
                  stageId  = "stage-wcrqj5fn"
                }
                layout = {
                  h           = 8
                  i           = "card-v3yxhfyv"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 4
                  x           = 8
                  y           = 24
                }
              },
            ]
          },
          {
            card = {
              cardType = "section"
              closed   = false
              id       = "section-mqik5fae"
              title    = "Additional Resources"
            }
            items = [
              {
                card = {
                  cardType = "stage"
                  id       = "card-j97t3w3y"
                  stageId  = "stage-yudn4ulm"
                }
                layout = {
                  h           = 8
                  i           = "card-j97t3w3y"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 3
                  x           = 6
                  y           = 0
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-eualk4fz"
                  stageId  = "stage-uffc40j8"
                }
                layout = {
                  h           = 8
                  i           = "card-eualk4fz"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 3
                  x           = 0
                  y           = 0
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-8absfapp"
                  stageId  = "stage-1zjnd7x3"
                }
                layout = {
                  h           = 8
                  i           = "card-8absfapp"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 3
                  x           = 3
                  y           = 0
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-gis1q13p"
                  stageId  = "stage-0shmp61d"
                }
                layout = {
                  h           = 8
                  i           = "card-gis1q13p"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 3
                  x           = 9
                  y           = 0
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-a9hdbidz"
                  stageId  = "stage-2mmp17rv"
                }
                lastModified = 1663090724391
                layout = {
                  h           = 8
                  i           = "card-a9hdbidz---1663090724391"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 3
                  x           = 3
                  y           = 8
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-fab4hzb8"
                  stageId  = "stage-xyz607y1"
                }
                layout = {
                  h           = 8
                  i           = "card-fab4hzb8"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 3
                  x           = 0
                  y           = 8
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-zx45puqc"
                  stageId  = "stage-b1h42m9y"
                }
                layout = {
                  h           = 8
                  i           = "card-zx45puqc"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 3
                  x           = 6
                  y           = 8
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-3nm5nkxa"
                  stageId  = "stage-35r7lf8w"
                }
                layout = {
                  h           = 8
                  i           = "card-3nm5nkxa"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 3
                  x           = 9
                  y           = 8
                }
              },
            ]
          },
          {
            card = {
              cardType = "section"
              closed   = false
              id       = "section-x43r21ma"
              title    = "Resource Details"
            }
            items = [
              {
                card = {
                  cardType = "stage"
                  id       = "card-ljebtj9e"
                  stageId  = "stage-ufgxvfzv"
                }
                layout = {
                  h           = 11
                  i           = "card-ljebtj9e"
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
                  id       = "card-wer0wwfq"
                  stageId  = "stage-vh1fuqkb"
                }
                layout = {
                  h           = 42
                  i           = "card-wer0wwfq"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 4
                  x           = 4
                  y           = 11
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-p0gysuxp"
                  stageId  = "stage-zhqax6ap"
                }
                layout = {
                  h           = 42
                  i           = "card-p0gysuxp"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 4
                  x           = 8
                  y           = 11
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-3vc6heer"
                  stageId  = "stage-rto8bjvo"
                }
                layout = {
                  h           = 42
                  i           = "card-3vc6heer"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 4
                  x           = 0
                  y           = 11
                }
              },
            ]
            lastModified = 1662756833102
          },
          {
            card = {
              cardType = "section"
              closed   = false
              id       = "section-3zh055pg"
              title    = "Notes"
            }
            items = [
              {
                card = {
                  cardType = "text"
                  id       = "card-cfa164sp"
                  text     = <<-EOT
                                        ### Projects
                                        
                                        Google Cloud projects form the basis for creating, enabling, and using all Google Cloud services including managing APIs, enabling billing, adding and removing collaborators, and managing permissions for Google Cloud resources.
                                        
                                        This dashboard displays asset and metrics information for the given project.
                                        
                                        See [Observe GCP Installation Documentation](https://docs.observeinc.com/en/latest/content/integrations/gcp/gcp.html#installation) for how to configure.
                                    EOT
                  title    = "Untitled Text"
                }
                layout = {
                  h           = 8
                  i           = "card-cfa164sp"
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
            lastModified = 1663090876473
          },
        ]
      }
      stageListLayout = {
        isModified = false
        parameters = [
          {
            controlledFilterStageId = "stage-57yxprre"
            datasetId               = "${local.projects_collection_enabled}"
            defaultValue = {
              datasetref = {
                datasetId = "${local.projects_collection_enabled}"
              }
            }
            emptyValueEncoding    = "null"
            emptyValueLabelOption = "null"
            id                    = "input-parameter-cjhbgiip"
            name                  = "projects"
            valueKind = {
              type = "DATASETREF"
            }
            viewType = "input"
          },
        ]
        selectedStageId = "stage-wcrqj5fn"
        timeRange = {
          display               = "Today 09:41:13 - 10:41:13"
          endTime               = null
          millisFromCurrentTime = 3600000
          originalDisplay       = "Past 60 minutes"
          startTime             = null
          timeRangeInfo = {
            key        = "PRESETS"
            name       = "Presets"
            presetType = "PAST_60_MINUTES"
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
          array = null
          bool  = null
          datasetref = {
            datasetId   = "${local.projects_collection_enabled}"
            datasetPath = null
            stageId     = null
          }
          float64 = null
          int64   = null
          link    = null
          string  = null
        }
        id   = "input-parameter-cjhbgiip"
        name = "projects"
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
        id = "stage-57yxprre"
        input = [
          {
            datasetId   = "${local.projects_collection_enabled}"
            datasetPath = null
            inputName   = "WORKING/Projects Collection Enabled"
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
              "0" = "project_id"
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
              datasetId   = "${local.projects_collection_enabled}"
              inputName   = "WORKING/Projects Collection Enabled"
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
              customSummary = "WORKING/Projects Collection Enabled"
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
              id       = "step-vwkvukiy"
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
            scriptTab     = "SCRIPT"
            showTimeRuler = true
            stageTab      = "table"
          }
        }
        params   = null
        pipeline = "// Filtered Dataset Controlled Filter Stage"
      },
      {
        id = "stage-59v5rk5f"
        input = [
          {
            datasetId   = "${local.resources_asset_inventory}"
            datasetPath = null
            inputName   = "WORKING/Resources Asset Inventory"
            inputRole   = "Data"
            stageId     = null
          },
          {
            datasetId   = null
            datasetPath = null
            inputName   = "projects"
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
            columnVisibility            = {}
            columnWidths                = {}
            containerWidth              = 870
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
              datasetId   = "${local.resources_asset_inventory}"
              inputName   = "WORKING/Resources Asset Inventory"
              inputRole   = "Data"
              isUserInput = false
            },
            {
              inputName   = "projects"
              inputRole   = "Data"
              isUserInput = true
              parameterId = "input-parameter-cjhbgiip"
            },
          ]
          label = "Compute Instances"
          managers = [
            {
              id                     = "tia41q9v"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "n7eyolfc"
              isDisabled = false
              type       = "Vis"
              vis = {
                config = {
                  color           = "Blue"
                  colorConfigType = "Color"
                  fieldConfig = {
                    unit    = null
                    visible = false
                  }
                  thresholds = null
                  type       = "singlefield"
                }
                source = {
                  table = {
                    field = "asset_name"
                    groupFields = [
                      "label",
                    ]
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
            {
              id         = "no4l7g6t"
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
            wantBuckets = 600
          }
          renderType     = "TABLE"
          selectedStepId = null
          serializable   = true
          steps = [
            {
              columnStatsTable = {
                columnFunctions = {
                  asset_name             = "count"
                  asset_namespace        = "count"
                  asset_sub_type         = "count"
                  asset_type             = "count"
                  data                   = "count"
                  deleted                = "count"
                  discovery_document_uri = "count"
                  discovery_name         = "count"
                  location               = "count"
                  name                   = "count"
                  parent                 = "count"
                  parent_project_id      = "count"
                  ttl                    = "count"
                  version                = "count"
                }
                datasetQueryId = {
                  ignoreCompress = false
                  queryId        = "q-8gbren2p"
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
              customSummary = "WORKING/Resources Asset Inventory"
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
              id                = "step-7mamtw3e"
              index             = 0
              isPinned          = false
              opal              = []
              queryPresentation = {}
              type              = "InputStep"
            },
            {
              columnStatsTable = {
                columnFunctions = {
                  asset_name             = "count"
                  asset_namespace        = "count"
                  asset_sub_type         = "count"
                  asset_type             = "count"
                  data                   = "count"
                  deleted                = "count"
                  discovery_document_uri = "count"
                  discovery_name         = "count"
                  label                  = "count"
                  location               = "count"
                  name                   = "count"
                  parent                 = "count"
                  parent_project_id      = "count"
                  ttl                    = "count"
                  version                = "count"
                }
                datasetQueryId = {
                  ignoreCompress = false
                  queryId        = "q-ftqdbq4e"
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
              id       = "step-hxlwbdvy"
              index    = 1
              isPinned = false
              opal = [
                "exists project_id = @projects.project_id",
                "filter asset_type = \"compute.googleapis.com/Instance\"",
                "filter data.status = \"RUNNING\"",
                "",
                "make_col label: \"Running Compute Instances\"",
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
            scriptTab     = "SCRIPT"
            showTimeRuler = true
            stageTab      = "vis"
          }
        }
        params   = null
        pipeline = <<-EOT
                    exists project_id = @projects.project_id
                    filter asset_type = "compute.googleapis.com/Instance"
                    filter data.status = "RUNNING"
                    
                    make_col label: "Running Compute Instances"
                EOT
      },
      {
        id = "stage-7b5hzxyp"
        input = [
          {
            datasetId   = "${local.resources_asset_inventory}"
            datasetPath = null
            inputName   = "WORKING/Resources Asset Inventory"
            inputRole   = "Data"
            stageId     = null
          },
          {
            datasetId   = null
            datasetPath = null
            inputName   = "projects"
            inputRole   = "Data"
            stageId     = null
          },
          {
            datasetId   = "${local.cloud_sql_metrics}"
            datasetPath = null
            inputName   = "Cloud SQL Metrics"
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
              "0" = "database_id"
              "1" = "instance_state_label"
              "2" = "label"
              "3" = "_c_valid_from"
              "4" = "_c_valid_to"
            }
            columnVisibility = {}
            columnWidths = {
              instance_state_label = 151
              metric_category      = 169
            }
            containerWidth              = 1313
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
              datasetId   = "${local.resources_asset_inventory}"
              inputName   = "WORKING/Resources Asset Inventory"
              inputRole   = "Data"
              isUserInput = false
            },
            {
              inputName   = "projects"
              inputRole   = "Data"
              isUserInput = true
              parameterId = "input-parameter-cjhbgiip"
            },
            {
              datasetId   = "${local.cloud_sql_metrics}"
              inputName   = "Cloud SQL Metrics"
              inputRole   = "Data"
              isUserInput = true
            },
          ]
          label = "Cloud SQL Instances"
          managers = [
            {
              id                     = "tia41q9v"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "n7eyolfc"
              isDisabled = false
              type       = "Vis"
              vis = {
                config = {
                  color           = "Blue"
                  colorConfigType = "Color"
                  fieldConfig = {
                    unit    = null
                    visible = false
                  }
                  thresholds = null
                  type       = "singlefield"
                }
                source = {
                  table = {
                    field = [
                      "database_id",
                    ]
                    groupFields = [
                      "label",
                    ]
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
            {
              id         = "no4l7g6t"
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
            wantBuckets = 600
          }
          renderType     = "TABLE"
          selectedStepId = null
          serializable   = true
          steps = [
            {
              customName    = "Input"
              customSummary = "WORKING/Resources Asset Inventory"
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
              id                = "step-hhxnl0wi"
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
                  queryId        = "q-0iqb6jqe"
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
              id       = "step-dz3zmnlg"
              index    = 1
              isPinned = false
              opal = [
                "exists project_id = @projects.project_id",
                "filter asset_type = \"sqladmin.googleapis.com/Instance\"",
                "make_col database_id: strcat(string(data.project),\":\", string(data.name))",
                "",
                "join database_id = @\"Cloud SQL Metrics\".database_id, @\"Cloud SQL Metrics\".metric_category = \"instance_state\",  @\"Cloud SQL Metrics\".value = 1, metric_category: @\"Cloud SQL Metrics\".metric_category, value: @\"Cloud SQL Metrics\".value, instance_state_label: @\"Cloud SQL Metrics\".instance_state_label",
                "",
                "filter metric_category = \"instance_state\"",
                "filter value = 1",
                "",
                "make_col label: \"Running SQL Instances\"",
                "",
                "timechart 15m, count:count(0), group_by(database_id,instance_state_label,label)",
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
            scriptTab     = "SCRIPT"
            showTimeRuler = true
            stageTab      = "vis"
          }
        }
        params   = null
        pipeline = <<-EOT
                    exists project_id = @projects.project_id
                    filter asset_type = "sqladmin.googleapis.com/Instance"
                    make_col database_id: strcat(string(data.project),":", string(data.name))
                    
                    join database_id = @"Cloud SQL Metrics".database_id, @"Cloud SQL Metrics".metric_category = "instance_state",  @"Cloud SQL Metrics".value = 1, metric_category: @"Cloud SQL Metrics".metric_category, value: @"Cloud SQL Metrics".value, instance_state_label: @"Cloud SQL Metrics".instance_state_label
                    
                    filter metric_category = "instance_state"
                    filter value = 1
                    
                    make_col label: "Running SQL Instances"
                    
                    timechart 15m, count:count(0), group_by(database_id,instance_state_label,label)
                EOT
      },
      {
        id = "stage-jar5yskq"
        input = [
          {
            datasetId   = "${local.resources_asset_inventory}"
            datasetPath = null
            inputName   = "WORKING/Resources Asset Inventory"
            inputRole   = "Data"
            stageId     = null
          },
          {
            datasetId   = null
            datasetPath = null
            inputName   = "projects"
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
          index = 3
          inputList = [
            {
              datasetId   = "${local.resources_asset_inventory}"
              inputName   = "WORKING/Resources Asset Inventory"
              inputRole   = "Data"
              isUserInput = false
            },
            {
              inputName   = "projects"
              inputRole   = "Data"
              isUserInput = true
              parameterId = "input-parameter-cjhbgiip"
            },
          ]
          label = "Storage Buckets"
          managers = [
            {
              id                     = "tia41q9v"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "n7eyolfc"
              isDisabled = false
              type       = "Vis"
              vis = {
                config = {
                  color           = "Blue"
                  colorConfigType = "Color"
                  fieldConfig = {
                    unit    = null
                    visible = false
                  }
                  thresholds = null
                  type       = "singlefield"
                }
                source = {
                  table = {
                    field = "asset_name"
                    groupFields = [
                      "label",
                    ]
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
            {
              id         = "no4l7g6t"
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
            wantBuckets = 600
          }
          renderType     = "TABLE"
          selectedStepId = null
          serializable   = true
          steps = [
            {
              customName    = "Input"
              customSummary = "WORKING/Resources Asset Inventory"
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
              id                = "step-855fl2br"
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
              id       = "step-nrhjwj7k"
              index    = 1
              isPinned = false
              opal = [
                "exists project_id = @projects.project_id",
                "filter asset_type = \"storage.googleapis.com/Bucket\"",
                "",
                "make_col label: \"Existing Storage Buckets\"",
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
            scriptTab     = "SCRIPT"
            showTimeRuler = true
            stageTab      = "vis"
          }
        }
        params   = null
        pipeline = <<-EOT
                    exists project_id = @projects.project_id
                    filter asset_type = "storage.googleapis.com/Bucket"
                    
                    make_col label: "Existing Storage Buckets"
                EOT
      },
      {
        id = "stage-vh1fuqkb"
        input = [
          {
            datasetId   = "${local.resources_asset_inventory}"
            datasetPath = null
            inputName   = "WORKING/Resources Asset Inventory"
            inputRole   = "Data"
            stageId     = null
          },
          {
            datasetId   = null
            datasetPath = null
            inputName   = "projects"
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
            columnVisibility = {
              name = false
            }
            columnWidths                = {}
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
              cells = {}
              columnSelectSequence = [
                "Projects",
              ]
              columns = {
                Projects = true
              }
              highlightState = {}
              rows           = {}
              selectionType  = "column"
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
              datasetId   = "${local.resources_asset_inventory}"
              inputName   = "WORKING/Resources Asset Inventory"
              inputRole   = "Data"
              isUserInput = false
            },
            {
              inputName   = "projects"
              inputRole   = "Data"
              isUserInput = true
              parameterId = "input-parameter-cjhbgiip"
            },
          ]
          label = "Services Enabled"
          managers = [
            {
              id                     = "tia41q9v"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "n7eyolfc"
              isDisabled = true
              type       = "Vis"
              vis = {
                config = {
                  color           = "Default"
                  colorConfigType = "Color"
                  fieldConfig = {
                    unit    = null
                    visible = false
                  }
                  thresholds = null
                  type       = "singlefield"
                }
                source = {
                  table = {
                    field = "asset_name"
                    groupFields = [
                      "label",
                    ]
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
            {
              id         = "no4l7g6t"
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
            rollup      = {}
            wantBuckets = 200
          }
          renderType     = "TABLE"
          selectedStepId = null
          serializable   = true
          steps = [
            {
              customName    = "Input"
              customSummary = "WORKING/Resources Asset Inventory"
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
              id                = "step-jfawrr1i"
              index             = 0
              isPinned          = false
              opal              = []
              queryPresentation = {}
              type              = "InputStep"
            },
            {
              columnStatsTable = {
                columnFunctions = {
                  name    = "count"
                  service = "count"
                  state   = "count"
                }
                datasetQueryId = {
                  ignoreCompress = false
                  queryId        = "q-hrw0e2h3"
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
              id       = "step-0ryvqqqd"
              index    = 1
              isPinned = false
              opal = [
                "exists project_id = @projects.project_id",
                "filter asset_type = \"serviceusage.googleapis.com/Service\"",
                "filter string(data.state) = \"ENABLED\"",
                "",
                "make_col service: string(data.name)",
                "",
                "pick_col ",
                "\t@.\"Valid From\",",
                "    @.\"Valid To\",",
                "\tname,",
                "\tproject_id,",
                "    service,",
                "    state: string(data.state)",
                "    ",
                "",
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
            scriptTab     = "SCRIPT"
            showTimeRuler = true
            stageTab      = "table"
          }
        }
        params   = null
        pipeline = <<-EOT
                    exists project_id = @projects.project_id
                    filter asset_type = "serviceusage.googleapis.com/Service"
                    filter string(data.state) = "ENABLED"
                    
                    make_col service: string(data.name)
                    
                    pick_col 
                    	@."Valid From",
                        @."Valid To",
                    	name,
                    	project_id,
                        service,
                        state: string(data.state)
                        
                    
                EOT
      },
      {
        id = "stage-veumo1m3"
        input = [
          {
            datasetId   = "${local.resources_asset_inventory}"
            datasetPath = null
            inputName   = "WORKING/Resources Asset Inventory"
            inputRole   = "Data"
            stageId     = null
          },
          {
            datasetId   = null
            datasetPath = null
            inputName   = "projects"
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
          index = 5
          inputList = [
            {
              datasetId   = "${local.resources_asset_inventory}"
              inputName   = "WORKING/Resources Asset Inventory"
              inputRole   = "Data"
              isUserInput = false
            },
            {
              inputName   = "projects"
              inputRole   = "Data"
              isUserInput = true
              parameterId = "input-parameter-cjhbgiip"
            },
          ]
          label = "Cloud Functions"
          managers = [
            {
              id                     = "tia41q9v"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "n7eyolfc"
              isDisabled = false
              type       = "Vis"
              vis = {
                config = {
                  color           = "Blue"
                  colorConfigType = "Color"
                  fieldConfig = {
                    unit    = null
                    visible = false
                  }
                  thresholds = null
                  type       = "singlefield"
                }
                source = {
                  table = {
                    field = "asset_name"
                    groupFields = [
                      "label",
                    ]
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
            {
              id         = "no4l7g6t"
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
            wantBuckets = 600
          }
          renderType     = "TABLE"
          selectedStepId = null
          serializable   = true
          steps = [
            {
              customName    = "Input"
              customSummary = "WORKING/Resources Asset Inventory"
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
              id                = "step-hpwmu85w"
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
              id       = "step-ev3w21sp"
              index    = 1
              isPinned = false
              opal = [
                "exists project_id = @projects.project_id",
                "filter asset_type = \"cloudfunctions.googleapis.com/CloudFunction\"",
                "",
                "make_col label: \"Existing Cloud Functions\"",
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
            scriptTab     = "SCRIPT"
            showTimeRuler = true
            stageTab      = "vis"
          }
        }
        params   = null
        pipeline = <<-EOT
                    exists project_id = @projects.project_id
                    filter asset_type = "cloudfunctions.googleapis.com/CloudFunction"
                    
                    make_col label: "Existing Cloud Functions"
                EOT
      },
      {
        id = "stage-uffc40j8"
        input = [
          {
            datasetId   = "${local.resources_asset_inventory}"
            datasetPath = null
            inputName   = "WORKING/Resources Asset Inventory"
            inputRole   = "Data"
            stageId     = null
          },
          {
            datasetId   = null
            datasetPath = null
            inputName   = "projects"
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
          index = 6
          inputList = [
            {
              datasetId   = "${local.resources_asset_inventory}"
              inputName   = "WORKING/Resources Asset Inventory"
              inputRole   = "Data"
              isUserInput = false
            },
            {
              inputName   = "projects"
              inputRole   = "Data"
              isUserInput = true
              parameterId = "input-parameter-cjhbgiip"
            },
          ]
          label = "Service Accounts"
          managers = [
            {
              id                     = "tia41q9v"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "n7eyolfc"
              isDisabled = false
              type       = "Vis"
              vis = {
                config = {
                  color           = "Blue"
                  colorConfigType = "Color"
                  fieldConfig = {
                    unit    = null
                    visible = false
                  }
                  thresholds = null
                  type       = "singlefield"
                }
                source = {
                  table = {
                    field = "asset_name"
                    groupFields = [
                      "label",
                    ]
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
            {
              id         = "no4l7g6t"
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
            wantBuckets = 600
          }
          renderType     = "TABLE"
          selectedStepId = null
          serializable   = true
          steps = [
            {
              customName    = "Input"
              customSummary = "WORKING/Resources Asset Inventory"
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
              id                = "step-y73m7bcv"
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
              id       = "step-6iy83dt5"
              index    = 1
              isPinned = false
              opal = [
                "exists project_id = @projects.project_id",
                "filter asset_type = \"iam.googleapis.com/ServiceAccount\"",
                "",
                "make_col label: \"Existing Service Accounts\"",
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
            scriptTab     = "SCRIPT"
            showTimeRuler = true
            stageTab      = "vis"
          }
        }
        params   = null
        pipeline = <<-EOT
                    exists project_id = @projects.project_id
                    filter asset_type = "iam.googleapis.com/ServiceAccount"
                    
                    make_col label: "Existing Service Accounts"
                EOT
      },
      {
        id = "stage-b1h42m9y"
        input = [
          {
            datasetId   = "${local.resources_asset_inventory}"
            datasetPath = null
            inputName   = "WORKING/Resources Asset Inventory"
            inputRole   = "Data"
            stageId     = null
          },
          {
            datasetId   = null
            datasetPath = null
            inputName   = "projects"
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
          index = 7
          inputList = [
            {
              datasetId   = "${local.resources_asset_inventory}"
              inputName   = "WORKING/Resources Asset Inventory"
              inputRole   = "Data"
              isUserInput = false
            },
            {
              inputName   = "projects"
              inputRole   = "Data"
              isUserInput = true
              parameterId = "input-parameter-cjhbgiip"
            },
          ]
          label = "Log Sinks"
          managers = [
            {
              id                     = "tia41q9v"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "n7eyolfc"
              isDisabled = false
              type       = "Vis"
              vis = {
                config = {
                  color           = "Blue"
                  colorConfigType = "Color"
                  fieldConfig = {
                    unit    = null
                    visible = false
                  }
                  thresholds = null
                  type       = "singlefield"
                }
                source = {
                  table = {
                    field = "asset_name"
                    groupFields = [
                      "label",
                    ]
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
            {
              id         = "no4l7g6t"
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
            wantBuckets = 600
          }
          renderType     = "TABLE"
          selectedStepId = null
          serializable   = true
          steps = [
            {
              customName    = "Input"
              customSummary = "WORKING/Resources Asset Inventory"
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
              id                = "step-3vxu0oi4"
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
              id       = "step-csqf40wv"
              index    = 1
              isPinned = false
              opal = [
                "exists project_id = @projects.project_id",
                "filter asset_type = \"logging.googleapis.com/LogBucket\"",
                "",
                "make_col label: \"Existing Log Sinks\"",
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
            scriptTab     = "SCRIPT"
            showTimeRuler = true
            stageTab      = "vis"
          }
        }
        params   = null
        pipeline = <<-EOT
                    exists project_id = @projects.project_id
                    filter asset_type = "logging.googleapis.com/LogBucket"
                    
                    make_col label: "Existing Log Sinks"
                EOT
      },
      {
        id = "stage-2mmp17rv"
        input = [
          {
            datasetId   = "${local.resources_asset_inventory}"
            datasetPath = null
            inputName   = "WORKING/Resources Asset Inventory"
            inputRole   = "Data"
            stageId     = null
          },
          {
            datasetId   = null
            datasetPath = null
            inputName   = "projects"
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
          index = 8
          inputList = [
            {
              datasetId   = "${local.resources_asset_inventory}"
              inputName   = "WORKING/Resources Asset Inventory"
              inputRole   = "Data"
              isUserInput = false
            },
            {
              inputName   = "projects"
              inputRole   = "Data"
              isUserInput = true
              parameterId = "input-parameter-cjhbgiip"
            },
          ]
          label = "Pub/Sub Topics"
          managers = [
            {
              id                     = "tia41q9v"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "n7eyolfc"
              isDisabled = false
              type       = "Vis"
              vis = {
                config = {
                  color           = "Blue"
                  colorConfigType = "Color"
                  fieldConfig = {
                    unit    = null
                    visible = false
                  }
                  thresholds = null
                  type       = "singlefield"
                }
                source = {
                  table = {
                    field = "asset_name"
                    groupFields = [
                      "label",
                    ]
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
            {
              id         = "no4l7g6t"
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
            wantBuckets = 600
          }
          renderType     = "TABLE"
          selectedStepId = null
          serializable   = true
          steps = [
            {
              customName    = "Input"
              customSummary = "WORKING/Resources Asset Inventory"
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
              id                = "step-ygw3nkeb"
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
              id       = "step-lag6h5bf"
              index    = 1
              isPinned = false
              opal = [
                "exists project_id = @projects.project_id",
                "filter asset_type = \"pubsub.googleapis.com/Topic\"",
                "",
                "make_col label: \"Existing Pub/Sub Topics\"",
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
            scriptTab     = "SCRIPT"
            showTimeRuler = true
            stageTab      = "vis"
          }
        }
        params   = null
        pipeline = <<-EOT
                    exists project_id = @projects.project_id
                    filter asset_type = "pubsub.googleapis.com/Topic"
                    
                    make_col label: "Existing Pub/Sub Topics"
                EOT
      },
      {
        id = "stage-xyz607y1"
        input = [
          {
            datasetId   = "${local.resources_asset_inventory}"
            datasetPath = null
            inputName   = "WORKING/Resources Asset Inventory"
            inputRole   = "Data"
            stageId     = null
          },
          {
            datasetId   = null
            datasetPath = null
            inputName   = "projects"
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
          index = 9
          inputList = [
            {
              datasetId   = "${local.resources_asset_inventory}"
              inputName   = "WORKING/Resources Asset Inventory"
              inputRole   = "Data"
              isUserInput = false
            },
            {
              inputName   = "projects"
              inputRole   = "Data"
              isUserInput = true
              parameterId = "input-parameter-cjhbgiip"
            },
          ]
          label = "Pub/Sub Subscriptions"
          managers = [
            {
              id                     = "tia41q9v"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "n7eyolfc"
              isDisabled = false
              type       = "Vis"
              vis = {
                config = {
                  color           = "Blue"
                  colorConfigType = "Color"
                  fieldConfig = {
                    unit    = null
                    visible = false
                  }
                  thresholds = null
                  type       = "singlefield"
                }
                source = {
                  table = {
                    field = "asset_name"
                    groupFields = [
                      "label",
                    ]
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
            {
              id         = "no4l7g6t"
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
            wantBuckets = 600
          }
          renderType     = "TABLE"
          selectedStepId = null
          serializable   = true
          steps = [
            {
              customName    = "Input"
              customSummary = "WORKING/Resources Asset Inventory"
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
              id                = "step-pw5mkgrh"
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
              id       = "step-8ljhhdgn"
              index    = 1
              isPinned = false
              opal = [
                "exists project_id = @projects.project_id",
                "filter asset_type = \"pubsub.googleapis.com/Subscription\"",
                "",
                "make_col label: \"Existing Pub/Sub Subscriptions\"",
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
            scriptTab     = "SCRIPT"
            showTimeRuler = true
            stageTab      = "vis"
          }
        }
        params   = null
        pipeline = <<-EOT
                    exists project_id = @projects.project_id
                    filter asset_type = "pubsub.googleapis.com/Subscription"
                    
                    make_col label: "Existing Pub/Sub Subscriptions"
                EOT
      },
      {
        id = "stage-rto8bjvo"
        input = [
          {
            datasetId   = "${local.resources_asset_inventory}"
            datasetPath = null
            inputName   = "WORKING/Resources Asset Inventory"
            inputRole   = "Data"
            stageId     = null
          },
          {
            datasetId   = null
            datasetPath = null
            inputName   = "projects"
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
              "0" = "project_id"
              "1" = "location"
              "2" = "Valid From"
              "3" = "Valid To"
              "4" = "Projects"
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
              cells = {
                count = {
                  "6" = true
                }
              }
              columnSelectSequence = []
              columns              = {}
              highlightState       = {}
              rows                 = {}
              selectionType        = "cell"
            }
            shouldAutoLayout           = false
            summaryColumnOrderOverride = {}
            summaryColumnVisibility    = {}
            tableHeight                = 0
            tableView                  = "TABULAR"
          }
          index = 10
          inputList = [
            {
              datasetId   = "${local.resources_asset_inventory}"
              inputName   = "WORKING/Resources Asset Inventory"
              inputRole   = "Data"
              isUserInput = false
            },
            {
              inputName   = "projects"
              inputRole   = "Data"
              isUserInput = true
              parameterId = "input-parameter-cjhbgiip"
            },
          ]
          label = "Resource Count By Location"
          managers = [
            {
              id                     = "tia41q9v"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "n7eyolfc"
              isDisabled = true
              type       = "Vis"
              vis = {
                config = {
                  color           = "Default"
                  colorConfigType = "Color"
                  fieldConfig = {
                    unit    = null
                    visible = false
                  }
                  thresholds = null
                  type       = "singlefield"
                }
                source = {
                  table = {
                    field = "asset_name"
                    groupFields = [
                      "label",
                    ]
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
            {
              id         = "no4l7g6t"
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
            rollup      = {}
            wantBuckets = 200
          }
          renderType     = "TABLE"
          selectedStepId = null
          serializable   = true
          steps = [
            {
              customName    = "Input"
              customSummary = "WORKING/Resources Asset Inventory"
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
              id                = "step-9hu6bs2a"
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
                  queryId        = "q-oyc8hzpi"
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
              id       = "step-ub92kcst"
              index    = 1
              isPinned = false
              opal = [
                "exists project_id = @projects.project_id",
                "    ",
                "timestats count: count(1), group_by(project_id, location)",
                "    ",
                "",
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
            scriptTab     = "SCRIPT"
            showTimeRuler = true
            stageTab      = "table"
          }
        }
        params   = null
        pipeline = <<-EOT
                    exists project_id = @projects.project_id
                        
                    timestats count: count(1), group_by(project_id, location)
                        
                    
                EOT
      },
      {
        id = "stage-yudn4ulm"
        input = [
          {
            datasetId   = "${local.resources_asset_inventory}"
            datasetPath = null
            inputName   = "WORKING/Resources Asset Inventory"
            inputRole   = "Data"
            stageId     = null
          },
          {
            datasetId   = null
            datasetPath = null
            inputName   = "projects"
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
              asset_type = 322
            }
            containerWidth              = 1605
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
          index = 11
          inputList = [
            {
              datasetId   = "${local.resources_asset_inventory}"
              inputName   = "WORKING/Resources Asset Inventory"
              inputRole   = "Data"
              isUserInput = false
            },
            {
              inputName   = "projects"
              inputRole   = "Data"
              isUserInput = true
              parameterId = "input-parameter-cjhbgiip"
            },
          ]
          label = "Big Query Tables"
          managers = [
            {
              id                     = "tia41q9v"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "n7eyolfc"
              isDisabled = false
              type       = "Vis"
              vis = {
                config = {
                  color           = "Blue"
                  colorConfigType = "Color"
                  fieldConfig = {
                    unit    = null
                    visible = false
                  }
                  thresholds = null
                  type       = "singlefield"
                }
                source = {
                  table = {
                    field = "asset_name"
                    groupFields = [
                      "label",
                    ]
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
            {
              id         = "no4l7g6t"
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
            wantBuckets = 600
          }
          renderType     = "TABLE"
          selectedStepId = null
          serializable   = true
          steps = [
            {
              customName    = "Input"
              customSummary = "WORKING/Resources Asset Inventory"
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
              id                = "step-sd12fy67"
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
                  queryId        = "q-c1szabnd"
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
              id       = "step-ptuosfbb"
              index    = 1
              isPinned = false
              opal = [
                "exists project_id = @projects.project_id",
                "filter asset_type = \"bigquery.googleapis.com/Table\"",
                "make_col label: \"Existing Big Query Tables\"",
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
            scriptTab     = "SCRIPT"
            showTimeRuler = true
            stageTab      = "vis"
          }
        }
        params   = null
        pipeline = <<-EOT
                    exists project_id = @projects.project_id
                    filter asset_type = "bigquery.googleapis.com/Table"
                    make_col label: "Existing Big Query Tables"
                EOT
      },
      {
        id = "stage-0shmp61d"
        input = [
          {
            datasetId   = "${local.resources_asset_inventory}"
            datasetPath = null
            inputName   = "WORKING/Resources Asset Inventory"
            inputRole   = "Data"
            stageId     = null
          },
          {
            datasetId   = null
            datasetPath = null
            inputName   = "projects"
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
              asset_type = 322
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
          index = 12
          inputList = [
            {
              datasetId   = "${local.resources_asset_inventory}"
              inputName   = "WORKING/Resources Asset Inventory"
              inputRole   = "Data"
              isUserInput = false
            },
            {
              inputName   = "projects"
              inputRole   = "Data"
              isUserInput = true
              parameterId = "input-parameter-cjhbgiip"
            },
          ]
          label = "Big Query Datasets"
          managers = [
            {
              id                     = "tia41q9v"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "n7eyolfc"
              isDisabled = false
              type       = "Vis"
              vis = {
                config = {
                  color           = "Blue"
                  colorConfigType = "Color"
                  fieldConfig = {
                    unit    = null
                    visible = false
                  }
                  thresholds = null
                  type       = "singlefield"
                }
                source = {
                  table = {
                    field = "asset_name"
                    groupFields = [
                      "label",
                    ]
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
            {
              id         = "no4l7g6t"
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
            wantBuckets = 600
          }
          renderType     = "TABLE"
          selectedStepId = null
          serializable   = true
          steps = [
            {
              customName    = "Input"
              customSummary = "WORKING/Resources Asset Inventory"
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
              id                = "step-pw9vqedl"
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
              id       = "step-a7t7fqi4"
              index    = 1
              isPinned = false
              opal = [
                "exists project_id = @projects.project_id",
                "filter asset_type = \"bigquery.googleapis.com/Dataset\"",
                "make_col label: \"Existing Big Query Datasets\"",
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
            scriptTab     = "SCRIPT"
            showTimeRuler = true
            stageTab      = "vis"
          }
        }
        params   = null
        pipeline = <<-EOT
                    exists project_id = @projects.project_id
                    filter asset_type = "bigquery.googleapis.com/Dataset"
                    make_col label: "Existing Big Query Datasets"
                EOT
      },
      {
        id = "stage-1zjnd7x3"
        input = [
          {
            datasetId   = "${local.resources_asset_inventory}"
            datasetPath = null
            inputName   = "WORKING/Resources Asset Inventory"
            inputRole   = "Data"
            stageId     = null
          },
          {
            datasetId   = null
            datasetPath = null
            inputName   = "projects"
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
              asset_type = 366
            }
            containerWidth              = 1605
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
          index = 13
          inputList = [
            {
              datasetId   = "${local.resources_asset_inventory}"
              inputName   = "WORKING/Resources Asset Inventory"
              inputRole   = "Data"
              isUserInput = false
            },
            {
              inputName   = "projects"
              inputRole   = "Data"
              isUserInput = true
              parameterId = "input-parameter-cjhbgiip"
            },
          ]
          label = "Service Account Keys"
          managers = [
            {
              id                     = "tia41q9v"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "n7eyolfc"
              isDisabled = false
              type       = "Vis"
              vis = {
                config = {
                  color           = "Blue"
                  colorConfigType = "Color"
                  fieldConfig = {
                    unit    = null
                    visible = false
                  }
                  thresholds = null
                  type       = "singlefield"
                }
                source = {
                  table = {
                    field = "asset_name"
                    groupFields = [
                      "label",
                    ]
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
            {
              id         = "no4l7g6t"
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
            wantBuckets = 600
          }
          renderType     = "TABLE"
          selectedStepId = null
          serializable   = true
          steps = [
            {
              customName    = "Input"
              customSummary = "WORKING/Resources Asset Inventory"
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
              id                = "step-zkuucu5u"
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
                  queryId        = "q-impoibiq"
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
              id       = "step-uc172bbu"
              index    = 1
              isPinned = false
              opal = [
                "exists project_id = @projects.project_id",
                "filter asset_type = \"iam.googleapis.com/ServiceAccountKey\"",
                "",
                "make_col label: \"Existing Service Account Keys\"",
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
            scriptTab     = "SCRIPT"
            showTimeRuler = true
            stageTab      = "vis"
          }
        }
        params   = null
        pipeline = <<-EOT
                    exists project_id = @projects.project_id
                    filter asset_type = "iam.googleapis.com/ServiceAccountKey"
                    
                    make_col label: "Existing Service Account Keys"
                EOT
      },
      {
        id = "stage-35r7lf8w"
        input = [
          {
            datasetId   = "${local.resources_asset_inventory}"
            datasetPath = null
            inputName   = "WORKING/Resources Asset Inventory"
            inputRole   = "Data"
            stageId     = null
          },
          {
            datasetId   = null
            datasetPath = null
            inputName   = "projects"
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
              asset_sub_type = 235
              asset_type     = 366
            }
            containerWidth              = 1313
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
          index = 14
          inputList = [
            {
              datasetId   = "${local.resources_asset_inventory}"
              inputName   = "WORKING/Resources Asset Inventory"
              inputRole   = "Data"
              isUserInput = false
            },
            {
              inputName   = "projects"
              inputRole   = "Data"
              isUserInput = true
              parameterId = "input-parameter-cjhbgiip"
            },
          ]
          label = "Network"
          managers = [
            {
              id                     = "tia41q9v"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "n7eyolfc"
              isDisabled = false
              type       = "Vis"
              vis = {
                config = {
                  color           = "Blue"
                  colorConfigType = "Color"
                  fieldConfig = {
                    unit    = null
                    visible = false
                  }
                  thresholds = null
                  type       = "singlefield"
                }
                source = {
                  table = {
                    field = "asset_name"
                    groupFields = [
                      "label",
                    ]
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
            {
              id         = "no4l7g6t"
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
            wantBuckets = 600
          }
          renderType     = "TABLE"
          selectedStepId = null
          serializable   = true
          steps = [
            {
              customName    = "Input"
              customSummary = "WORKING/Resources Asset Inventory"
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
              id                = "step-k05w9tqr"
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
                  queryId        = "q-5nxhse03"
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
              id       = "step-h5xeh189"
              index    = 1
              isPinned = false
              opal = [
                "exists project_id = @projects.project_id",
                "filter asset_type = \"compute.googleapis.com/Network\"",
                "",
                "make_col label: \"Compute Networks\"",
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
            scriptTab     = "SCRIPT"
            showTimeRuler = true
            stageTab      = "vis"
          }
        }
        params   = null
        pipeline = <<-EOT
                    exists project_id = @projects.project_id
                    filter asset_type = "compute.googleapis.com/Network"
                    
                    make_col label: "Compute Networks"
                EOT
      },
      {
        id = "stage-zhqax6ap"
        input = [
          {
            datasetId   = "${local.resources_asset_inventory}"
            datasetPath = null
            inputName   = "WORKING/Resources Asset Inventory"
            inputRole   = "Data"
            stageId     = null
          },
          {
            datasetId   = null
            datasetPath = null
            inputName   = "projects"
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
              "0" = "name"
              "1" = "Valid From"
              "2" = "Valid To"
              "3" = "project_id"
              "4" = "location"
              "5" = "Projects"
            }
            columnVisibility = {
              name = false
            }
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
          index = 15
          inputList = [
            {
              datasetId   = "${local.resources_asset_inventory}"
              inputName   = "WORKING/Resources Asset Inventory"
              inputRole   = "Data"
              isUserInput = false
            },
            {
              inputName   = "projects"
              inputRole   = "Data"
              isUserInput = true
              parameterId = "input-parameter-cjhbgiip"
            },
          ]
          label = "All Resources"
          managers = [
            {
              id                     = "tia41q9v"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "n7eyolfc"
              isDisabled = true
              type       = "Vis"
              vis = {
                config = {
                  color           = "Default"
                  colorConfigType = "Color"
                  fieldConfig = {
                    unit    = null
                    visible = false
                  }
                  thresholds = null
                  type       = "singlefield"
                }
                source = {
                  table = {
                    field = "asset_name"
                    groupFields = [
                      "label",
                    ]
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
            {
              id         = "no4l7g6t"
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
            rollup      = {}
            wantBuckets = 200
          }
          renderType     = "TABLE"
          selectedStepId = null
          serializable   = true
          steps = [
            {
              customName    = "Input"
              customSummary = "WORKING/Resources Asset Inventory"
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
              id                = "step-2ew9dzwd"
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
                  queryId        = "q-jiesf7q9"
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
              id       = "step-ssg075my"
              index    = 1
              isPinned = false
              opal = [
                "exists project_id = @projects.project_id",
                "    ",
                "pick_col ",
                "\t@.\"Valid From\",",
                "    @.\"Valid To\",",
                "    name,",
                "   project_id,",
                "   asset_namespace,",
                "   resource: asset_sub_type,",
                "\tlocation",
                "",
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
            scriptTab     = "SCRIPT"
            showTimeRuler = true
            stageTab      = "table"
          }
        }
        params   = null
        pipeline = <<-EOT
                    exists project_id = @projects.project_id
                        
                    pick_col 
                    	@."Valid From",
                        @."Valid To",
                        name,
                       project_id,
                       asset_namespace,
                       resource: asset_sub_type,
                    	location
                    
                EOT
      },
      {
        id = "stage-6cf9jti3"
        input = [
          {
            datasetId   = "${local.compute_metrics}"
            datasetPath = null
            inputName   = "WORKING/Compute Metrics"
            inputRole   = "Data"
            stageId     = null
          },
          {
            datasetId   = null
            datasetPath = null
            inputName   = "projects"
            inputRole   = "Data"
            stageId     = null
          },
        ]
        layout = {
          appearance = "VISIBLE"
          dataTableViewState = {
            autoTableHeight             = true
            columnFooterHeight          = 0
            columnHeaderHeight          = 29
            columnOrderOverride         = {}
            columnVisibility            = {}
            columnWidths                = {}
            containerWidth              = 1313
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
          index = 16
          inputList = [
            {
              datasetId   = "${local.compute_metrics}"
              inputName   = "WORKING/Compute Metrics"
              inputRole   = "Data"
              isUserInput = false
            },
            {
              inputName   = "projects"
              inputRole   = "Data"
              isUserInput = true
              parameterId = "input-parameter-cjhbgiip"
            },
          ]
          label = "CPU Utilization"
          managers = [
            {
              id                     = "5rg2s6hz"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "w1kvx49r"
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
                      [
                        "instance_key",
                      ],
                    ]
                    statsBy = {
                      fn = "avg"
                    }
                    timechart = {
                      fn         = "avg"
                      resolution = "AUTO"
                    }
                    transformType = "timechart"
                    type          = "xy"
                    y             = "value"
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
              columnStatsTable = {
                columnFunctions = {
                  instance_id      = "count"
                  instance_name    = "count"
                  label            = "count"
                  metric           = "count"
                  metric_category  = "count"
                  metric_kind      = "count"
                  metric_kind_text = "count"
                  metric_labels    = "count"
                  metric_type      = "count"
                  project_id       = "count"
                  region           = "count"
                  value            = "count"
                  value_type       = "count"
                  value_type_text  = "count"
                  zone             = "count"
                }
                datasetQueryId = {
                  ignoreCompress = false
                  queryId        = "q-7uxz18ty"
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
              customSummary = "WORKING/Compute Metrics"
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
              id                = "step-q9rl9oqd"
              index             = 0
              isPinned          = false
              opal              = []
              queryPresentation = {}
              type              = "InputStep"
            },
            {
              action = {
                params = {
                  columnId    = "metric"
                  columnType  = "string"
                  filterVerb  = "filter"
                  isExcluding = false
                  values = [
                    "instance_cpu_utilization",
                  ]
                }
                summary = null
                type    = "FilterValues"
              }
              columnStatsTable = {
                columnFunctions = {
                  instance_id      = "count"
                  instance_name    = "count"
                  label            = "count"
                  metric           = "count"
                  metric_category  = "count"
                  metric_kind      = "count"
                  metric_kind_text = "count"
                  metric_labels    = "count"
                  metric_type      = "count"
                  project_id       = "count"
                  region           = "count"
                  value            = "count"
                  value_type       = "count"
                  value_type_text  = "count"
                  zone             = "count"
                }
                datasetQueryId = {
                  ignoreCompress = false
                  queryId        = "q-8iuanjfc"
                  resultKinds = [
                    "ResultKindSchema",
                    "ResultKindData",
                  ]
                  tableTypes = [
                    "TABULAR",
                  ]
                }
              }
              customSummary = "metric"
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
              id       = "step-guehky89"
              index    = 1
              isPinned = true
              opal = [
                "filter metric = \"instance_cpu_utilization\"",
              ]
              queryPresentation = {}
              type              = "unknown"
            },
          ]
          type = "table"
          viewModel = {
            consoleValue = <<-EOT
                            exists project_id = @projects.project_id
                            
                            filter metric = "instance_cpu_utilization"
                        EOT
            railCollapseState = {
              inputsOutputs = false
              minimap       = false
              note          = true
              script        = true
            }
            scriptTab     = "SCRIPT"
            showTimeRuler = true
            stageTab      = "vis"
          }
        }
        params   = null
        pipeline = "filter metric = \"instance_cpu_utilization\""
      },
      {
        id = "stage-qod1mmjc"
        input = [
          {
            datasetId   = "${local.compute_metrics}"
            datasetPath = null
            inputName   = "WORKING/Compute Metrics"
            inputRole   = "Data"
            stageId     = null
          },
          {
            datasetId   = null
            datasetPath = null
            inputName   = "projects"
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
              "0" = "end_time"
            }
            columnVisibility            = {}
            columnWidths                = {}
            containerWidth              = 1505
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
          index = 17
          inputList = [
            {
              datasetId   = "${local.compute_metrics}"
              inputName   = "WORKING/Compute Metrics"
              inputRole   = "Data"
              isUserInput = false
            },
            {
              inputName   = "projects"
              inputRole   = "Data"
              isUserInput = true
              parameterId = "input-parameter-cjhbgiip"
            },
          ]
          label = "Read Write Bytes"
          managers = [
            {
              id                     = "5rg2s6hz"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "w1kvx49r"
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
                      [
                        "instance_key",
                      ],
                      "instance_id",
                    ]
                    statsBy = {
                      fn = "avg"
                    }
                    timechart = {
                      fn         = "avg"
                      resolution = "AUTO"
                    }
                    transformType = "timechart"
                    type          = "xy"
                    y             = "value"
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
              customSummary = "WORKING/Compute Metrics"
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
              id                = "step-2ahcqpbr"
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
              id       = "step-xle8pgnf"
              index    = 1
              isPinned = false
              opal = [
                "exists project_id = @projects.project_id",
                "",
              ]
              queryPresentation = {}
              type              = "unknown"
            },
            {
              action = {
                params = {
                  columnId    = "metric"
                  columnType  = "string"
                  filterVerb  = "filter"
                  isExcluding = false
                  values = [
                    "instance_disk_read_bytes_count",
                    "instance_disk_write_bytes_count",
                  ]
                }
                summary = null
                type    = "FilterValues"
              }
              columnStatsTable = {
                columnFunctions = {
                  instance_id      = "count"
                  instance_name    = "count"
                  label            = "count"
                  metric           = "count"
                  metric_category  = "count"
                  metric_kind      = "count"
                  metric_kind_text = "count"
                  metric_labels    = "count"
                  metric_type      = "count"
                  project_id       = "count"
                  region           = "count"
                  value            = "count"
                  value_type       = "count"
                  value_type_text  = "count"
                  zone             = "count"
                }
                datasetQueryId = {
                  ignoreCompress = false
                  queryId        = "q-unfw0d85"
                  resultKinds = [
                    "ResultKindSchema",
                    "ResultKindData",
                  ]
                  tableTypes = [
                    "TABULAR",
                  ]
                }
              }
              customSummary = "metric"
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
              id       = "step-oc6r743k"
              index    = 2
              isPinned = true
              opal = [
                "filter metric = \"instance_disk_read_bytes_count\" or metric = \"instance_disk_write_bytes_count\"",
              ]
              queryPresentation = {}
              type              = "unknown"
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
              id       = "step-qnpd34g5"
              index    = 3
              isPinned = false
              opal = [
                "",
                "make_col combo_label: \"read_write_bytes\"",
                "",
                "timestats value:sum(value), group_by(instance_key, instance_id, combo_label)",
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
            scriptTab     = "SCRIPT"
            showTimeRuler = true
            stageTab      = "vis"
          }
        }
        params   = null
        pipeline = <<-EOT
                    exists project_id = @projects.project_id
                    
                    filter metric = "instance_disk_read_bytes_count" or metric = "instance_disk_write_bytes_count"
                    
                    make_col combo_label: "read_write_bytes"
                    
                    timestats value:sum(value), group_by(instance_key, instance_id, combo_label)
                EOT
      },
      {
        id = "stage-9gx4o1vf"
        input = [
          {
            datasetId   = "${local.cloud_sql_metrics}"
            datasetPath = null
            inputName   = "WORKING/Cloud SQL Metrics"
            inputRole   = "Data"
            stageId     = null
          },
          {
            datasetId   = null
            datasetPath = null
            inputName   = "projects"
            inputRole   = "Data"
            stageId     = null
          },
        ]
        layout = {
          appearance = "VISIBLE"
          dataTableViewState = {
            autoTableHeight             = true
            columnFooterHeight          = 0
            columnHeaderHeight          = 29
            columnOrderOverride         = {}
            columnVisibility            = {}
            columnWidths                = {}
            containerWidth              = 1505
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
          index = 18
          inputList = [
            {
              datasetId   = "${local.cloud_sql_metrics}"
              inputName   = "WORKING/Cloud SQL Metrics"
              inputRole   = "Data"
              isUserInput = false
            },
            {
              inputName   = "projects"
              inputRole   = "Data"
              isUserInput = true
              parameterId = "input-parameter-cjhbgiip"
            },
          ]
          label = "CPU Utilization"
          managers = [
            {
              id                     = "ums8h6m0"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "9peor5h6"
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
                      [
                        "database_id",
                      ],
                    ]
                    statsBy = {
                      fn = "avg"
                    }
                    timechart = {
                      fn         = "avg"
                      resolution = "AUTO"
                    }
                    transformType = "timechart"
                    type          = "xy"
                    y             = "value"
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
              columnStatsTable = {
                columnFunctions = {
                  database_platform    = "count"
                  instance_state_label = "count"
                  label                = "count"
                  metric               = "count"
                  metric_category      = "count"
                  metric_kind_text     = "count"
                  metric_labels        = "count"
                  project_id           = "count"
                  region               = "count"
                  value                = "count"
                  value_type_text      = "count"
                }
                datasetQueryId = {
                  ignoreCompress = false
                  queryId        = "q-7nms7vg2"
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
              customSummary = "WORKING/Cloud SQL Metrics"
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
              id                = "step-s65h9oip"
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
              id       = "step-3vxvxj3j"
              index    = 1
              isPinned = false
              opal = [
                "exists project_id = @projects.project_id",
                "",
              ]
              queryPresentation = {}
              type              = "unknown"
            },
            {
              action = {
                params = {
                  columnId    = "metric"
                  columnType  = "string"
                  filterVerb  = "filter"
                  isExcluding = false
                  values = [
                    "database_cpu_utilization",
                  ]
                }
                summary = null
                type    = "FilterValues"
              }
              columnStatsTable = {
                columnFunctions = {
                  database_platform    = "count"
                  instance_state_label = "count"
                  label                = "count"
                  metric               = "count"
                  metric_category      = "count"
                  metric_kind_text     = "count"
                  metric_labels        = "count"
                  project_id           = "count"
                  region               = "count"
                  value                = "count"
                  value_type_text      = "count"
                }
                datasetQueryId = {
                  ignoreCompress = false
                  queryId        = "q-nplocjin"
                  resultKinds = [
                    "ResultKindSchema",
                    "ResultKindData",
                  ]
                  tableTypes = [
                    "TABULAR",
                  ]
                }
              }
              customSummary = "metric"
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
              id       = "step-gys21cf3"
              index    = 2
              isPinned = true
              opal = [
                "filter metric = \"database_cpu_utilization\"",
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
            scriptTab     = "SCRIPT"
            showTimeRuler = true
            stageTab      = "vis"
          }
        }
        params   = null
        pipeline = <<-EOT
                    exists project_id = @projects.project_id
                    
                    filter metric = "database_cpu_utilization"
                EOT
      },
      {
        id = "stage-zgm9r7wo"
        input = [
          {
            datasetId   = "${local.cloud_sql_metrics}"
            datasetPath = null
            inputName   = "WORKING/Cloud SQL Metrics"
            inputRole   = "Data"
            stageId     = null
          },
          {
            datasetId   = null
            datasetPath = null
            inputName   = "projects"
            inputRole   = "Data"
            stageId     = null
          },
        ]
        layout = {
          appearance = "VISIBLE"
          dataTableViewState = {
            autoTableHeight             = true
            columnFooterHeight          = 0
            columnHeaderHeight          = 29
            columnOrderOverride         = {}
            columnVisibility            = {}
            columnWidths                = {}
            containerWidth              = 1505
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
          index = 19
          inputList = [
            {
              datasetId   = "${local.cloud_sql_metrics}"
              inputName   = "WORKING/Cloud SQL Metrics"
              inputRole   = "Data"
              isUserInput = false
            },
            {
              inputName   = "projects"
              inputRole   = "Data"
              isUserInput = true
              parameterId = "input-parameter-cjhbgiip"
            },
          ]
          label = "Database State"
          managers = [
            {
              id                     = "hbkq0r48"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "r5pajqag"
              isDisabled = false
              type       = "Vis"
              vis = {
                config = {
                  color         = "Blue"
                  hideGridLines = false
                  legend = {
                    placement = "right"
                    type      = "list"
                    visible   = true
                  }
                  lineCurveType = "Step"
                  type          = "xy"
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
                      "instance_state_label",
                    ]
                    statsBy = {
                      fn = "count"
                    }
                    timechart = {
                      fn         = "count"
                      resolution = "AUTO"
                    }
                    transformType = "timechart"
                    type          = "xy"
                    y             = "instance_state_label"
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
            wantBuckets = 50
          }
          renderType     = "TABLE"
          selectedStepId = null
          serializable   = true
          steps = [
            {
              columnStatsTable = {
                columnFunctions = {
                  database_platform    = "count"
                  instance_state_label = "count"
                  label                = "count"
                  metric               = "count"
                  metric_category      = "count"
                  metric_kind_text     = "count"
                  metric_labels        = "count"
                  project_id           = "count"
                  region               = "count"
                  value                = "count"
                  value_type_text      = "count"
                }
                datasetQueryId = {
                  ignoreCompress = false
                  queryId        = "q-h4nclc70"
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
              customSummary = "WORKING/Cloud SQL Metrics"
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
              id                = "step-c5rna45m"
              index             = 0
              isPinned          = false
              opal              = []
              queryPresentation = {}
              type              = "InputStep"
            },
            {
              columnStatsTable = {
                columnFunctions = {
                  database_platform    = "count"
                  instance_state_label = "count"
                  label                = "count"
                  metric               = "count"
                  metric_category      = "count"
                  metric_kind_text     = "count"
                  metric_labels        = "count"
                  project_id           = "count"
                  region               = "count"
                  value                = "count"
                  value_type_text      = "count"
                }
                datasetQueryId = {
                  ignoreCompress = false
                  queryId        = "q-ua15eg73"
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
              id       = "step-wtbh17st"
              index    = 1
              isPinned = false
              opal = [
                "exists project_id = @projects.project_id",
                "",
                "filter metric = \"database_instance_state\" and value = 1",
                "",
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
            scriptTab     = "SCRIPT"
            showTimeRuler = true
            stageTab      = "vis"
          }
        }
        params   = null
        pipeline = <<-EOT
                    exists project_id = @projects.project_id
                    
                    filter metric = "database_instance_state" and value = 1
                    
                EOT
      },
      {
        id = "stage-qf8oapqb"
        input = [
          {
            datasetId   = "${local.cloud_sql_metrics_wide}"
            datasetPath = null
            inputName   = "WORKING/Cloud SQL Metrics Wide"
            inputRole   = "Data"
            stageId     = null
          },
          {
            datasetId   = null
            datasetPath = null
            inputName   = "projects"
            inputRole   = "Data"
            stageId     = null
          },
        ]
        layout = {
          appearance = "VISIBLE"
          dataTableViewState = {
            autoTableHeight             = true
            columnFooterHeight          = 0
            columnHeaderHeight          = 29
            columnOrderOverride         = {}
            columnVisibility            = {}
            columnWidths                = {}
            containerWidth              = 1505
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
          index = 20
          inputList = [
            {
              datasetId   = "${local.cloud_sql_metrics_wide}"
              inputName   = "WORKING/Cloud SQL Metrics Wide"
              inputRole   = "Data"
              isUserInput = false
            },
            {
              inputName   = "projects"
              inputRole   = "Data"
              isUserInput = true
              parameterId = "input-parameter-cjhbgiip"
            },
          ]
          label = "Percent of Disk Used"
          managers = [
            {
              id                     = "wo9zx2x6"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "1pfl5zz4"
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
                      [
                        "database_id",
                      ],
                    ]
                    statsBy = {
                      fn = "avg"
                    }
                    timechart = {
                      fn         = "avg"
                      resolution = "AUTO"
                    }
                    transformType = "timechart"
                    type          = "xy"
                    y             = "value"
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
              columnStatsTable = {
                columnFunctions = {
                  database_platform = "count"
                  metric            = "count"
                  metric_category   = "count"
                  project_id        = "count"
                  region            = "count"
                  value             = "count"
                }
                datasetQueryId = {
                  ignoreCompress = false
                  queryId        = "q-izqe8ajw"
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
              customSummary = "WORKING/Cloud SQL Metrics Wide"
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
              id                = "step-slzxda8n"
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
              id       = "step-jve2k1tw"
              index    = 1
              isPinned = false
              opal = [
                "exists project_id = @projects.project_id",
                "",
              ]
              queryPresentation = {}
              type              = "unknown"
            },
            {
              action = {
                params = {
                  columnId    = "metric"
                  columnType  = "string"
                  filterVerb  = "filter"
                  isExcluding = false
                  values = [
                    "percent_disk_used",
                  ]
                }
                summary = null
                type    = "FilterValues"
              }
              columnStatsTable = {
                columnFunctions = {
                  database_platform = "count"
                  metric            = "count"
                  metric_category   = "count"
                  project_id        = "count"
                  region            = "count"
                  value             = "count"
                }
                datasetQueryId = {
                  ignoreCompress = false
                  queryId        = "q-l2s073z1"
                  resultKinds = [
                    "ResultKindSchema",
                    "ResultKindData",
                  ]
                  tableTypes = [
                    "TABULAR",
                  ]
                }
              }
              customSummary = "metric"
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
              id       = "step-7bxym6wt"
              index    = 2
              isPinned = false
              opal = [
                "filter metric = \"percent_disk_used\"",
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
            scriptTab     = "SCRIPT"
            showTimeRuler = true
            stageTab      = "vis"
          }
        }
        params   = null
        pipeline = <<-EOT
                    exists project_id = @projects.project_id
                    
                    filter metric = "percent_disk_used"
                EOT
      },
      {
        id = "stage-60n5juu6"
        input = [
          {
            datasetId   = "${local.cloud_functions_function_metrics}"
            datasetPath = null
            inputName   = "WORKING/Cloud Functions Function Metrics"
            inputRole   = "Data"
            stageId     = null
          },
          {
            datasetId   = null
            datasetPath = null
            inputName   = "projects"
            inputRole   = "Data"
            stageId     = null
          },
        ]
        layout = {
          appearance = "VISIBLE"
          dataTableViewState = {
            autoTableHeight             = true
            columnFooterHeight          = 0
            columnHeaderHeight          = 29
            columnOrderOverride         = {}
            columnVisibility            = {}
            columnWidths                = {}
            containerWidth              = 1313
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
          index = 21
          inputList = [
            {
              datasetId   = "${local.cloud_functions_function_metrics}"
              inputName   = "WORKING/Cloud Functions Function Metrics"
              inputRole   = "Data"
              isUserInput = false
            },
            {
              inputName   = "projects"
              inputRole   = "Data"
              isUserInput = true
              parameterId = "input-parameter-cjhbgiip"
            },
          ]
          label = "Function Execution Times Milliseconds"
          managers = [
            {
              id                     = "k1fp6oqi"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "repsl9qs"
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
                      [
                        "project_id",
                        "region",
                        "function_name",
                      ],
                    ]
                    statsBy = {
                      fn = "avg"
                    }
                    timechart = {
                      fn         = "avg"
                      resolution = "AUTO"
                    }
                    transformType = "timechart"
                    type          = "xy"
                    y             = "milli_value"
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
              columnStatsTable = {
                columnFunctions = {
                  metric        = "count"
                  metric_kind   = "count"
                  metric_labels = "count"
                  value         = "count"
                  value_type    = "count"
                }
                datasetQueryId = {
                  ignoreCompress = false
                  queryId        = "q-u8u3bstx"
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
              customSummary = "WORKING/Cloud Functions Function Metrics"
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
              id                = "step-cixt8ej7"
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
              id       = "step-eorcs667"
              index    = 1
              isPinned = false
              opal = [
                "exists project_id = @projects.project_id",
                "",
              ]
              queryPresentation = {}
              type              = "unknown"
            },
            {
              action = {
                params = {
                  columnId    = "metric"
                  columnType  = "string"
                  filterVerb  = "filter"
                  isExcluding = false
                  values = [
                    "function_execution_times",
                  ]
                }
                summary = null
                type    = "FilterValues"
              }
              columnStatsTable = {
                columnFunctions = {
                  metric        = "count"
                  metric_kind   = "count"
                  metric_labels = "count"
                  value         = "count"
                  value_type    = "count"
                }
                datasetQueryId = {
                  ignoreCompress = false
                  queryId        = "q-w3gnlqk7"
                  resultKinds = [
                    "ResultKindSchema",
                    "ResultKindData",
                  ]
                  tableTypes = [
                    "TABULAR",
                  ]
                }
              }
              customSummary = "metric"
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
              id       = "step-23aec4wb"
              index    = 2
              isPinned = true
              opal = [
                "filter metric = \"function_execution_times\"",
              ]
              queryPresentation = {}
              type              = "unknown"
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
              id       = "step-mortw08d"
              index    = 3
              isPinned = false
              opal = [
                "",
                "make_col milli_value: value/1000000",
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
            scriptTab     = "SCRIPT"
            showTimeRuler = true
            stageTab      = "vis"
          }
        }
        params   = null
        pipeline = <<-EOT
                    exists project_id = @projects.project_id
                    
                    filter metric = "function_execution_times"
                    
                    make_col milli_value: value/1000000
                EOT
      },
      {
        id = "stage-83cj0j4u"
        input = [
          {
            datasetId   = "${local.cloud_functions_function_metrics}"
            datasetPath = null
            inputName   = "WORKING/Cloud Functions Function Metrics"
            inputRole   = "Data"
            stageId     = null
          },
          {
            datasetId   = null
            datasetPath = null
            inputName   = "projects"
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
              metric_labels = 582
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
          index = 22
          inputList = [
            {
              datasetId   = "${local.cloud_functions_function_metrics}"
              inputName   = "WORKING/Cloud Functions Function Metrics"
              inputRole   = "Data"
              isUserInput = false
            },
            {
              inputName   = "projects"
              inputRole   = "Data"
              isUserInput = true
              parameterId = "input-parameter-cjhbgiip"
            },
          ]
          label = "Function Log Counts by Severity"
          managers = [
            {
              id                     = "k1fp6oqi"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "repsl9qs"
              isDisabled = false
              type       = "Vis"
              vis = {
                config = {
                  color         = "Default"
                  hideGridLines = false
                  legend = {
                    placement = "bottom"
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
                      "log_severity",
                    ]
                    statsBy = {
                      fn = "avg"
                    }
                    timechart = {
                      fn         = "avg"
                      resolution = "AUTO"
                    }
                    transformType = "timechart"
                    type          = "xy"
                    y             = "value"
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
              customSummary = "WORKING/Cloud Functions Function Metrics"
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
              id                = "step-tixs3ae4"
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
              id       = "step-9gzg2t0n"
              index    = 1
              isPinned = false
              opal = [
                "exists project_id = @projects.project_id",
              ]
              queryPresentation = {}
              type              = "unknown"
            },
            {
              action = {
                params = {
                  columnId    = "metric"
                  columnType  = "string"
                  filterVerb  = "filter"
                  isExcluding = false
                  values = [
                    "log_entry_count",
                  ]
                }
                summary = null
                type    = "FilterValues"
              }
              columnStatsTable = {
                columnFunctions = {
                  metric        = "count"
                  metric_kind   = "count"
                  metric_labels = "count"
                  milli_value   = "count"
                  value         = "count"
                  value_type    = "count"
                }
                datasetQueryId = {
                  ignoreCompress = false
                  queryId        = "q-cfpy06uy"
                  resultKinds = [
                    "ResultKindSchema",
                    "ResultKindData",
                  ]
                  tableTypes = [
                    "TABULAR",
                  ]
                }
              }
              customSummary = "metric"
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
              id       = "step-m1ql7ri8"
              index    = 2
              isPinned = true
              opal = [
                "filter metric = \"log_entry_count\"",
              ]
              queryPresentation = {}
              type              = "unknown"
            },
            {
              columnStatsTable = {
                columnFunctions = {
                  metric        = "count"
                  metric_kind   = "count"
                  metric_labels = "count"
                  milli_value   = "count"
                  value         = "count"
                  value_type    = "count"
                }
                datasetQueryId = {
                  ignoreCompress = false
                  queryId        = "q-q9xhkylg"
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
              id       = "step-9o1xi6z9"
              index    = 3
              isPinned = false
              opal = [
                "//filter metric = \"function_execution_times\"",
                "",
                "make_col log_severity: string(metric_labels.severity)",
                "",
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
            scriptTab     = "SCRIPT"
            showTimeRuler = true
            stageTab      = "vis"
          }
        }
        params   = null
        pipeline = <<-EOT
                    exists project_id = @projects.project_id
                    filter metric = "log_entry_count"
                    //filter metric = "function_execution_times"
                    
                    make_col log_severity: string(metric_labels.severity)
                    
                EOT
      },
      {
        id = "stage-bnuvko6z"
        input = [
          {
            datasetId   = "${local.cloud_functions_function_logs}"
            datasetPath = null
            inputName   = "WORKING/Cloud Functions Function Logs"
            inputRole   = "Data"
            stageId     = null
          },
        ]
        layout = {
          appearance = "VISIBLE"
          dataTableViewState = {
            autoTableHeight             = true
            columnFooterHeight          = 0
            columnHeaderHeight          = 29
            columnOrderOverride         = {}
            columnVisibility            = {}
            columnWidths                = {}
            containerWidth              = 285
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
              anchoredCellSelection = [
                10,
                "textPayload",
              ]
              anchoredColumnSelection = null
              anchoredRowSelection    = null
              cells = {
                textPayload = {
                  "10" = true
                }
              }
              columnSelectSequence = []
              columns              = {}
              highlightState       = {}
              lastCellSelection    = null
              lastColumnSelection  = null
              lastRowSelection     = null
              rows                 = {}
              selectionType        = "cell"
            }
            shouldAutoLayout           = false
            summaryColumnOrderOverride = {}
            summaryColumnVisibility    = {}
            tableHeight                = 0
            tableView                  = "TABULAR"
          }
          index = 23
          inputList = [
            {
              datasetId   = "${local.cloud_functions_function_logs}"
              inputName   = "WORKING/Cloud Functions Function Logs"
              inputRole   = "Data"
              isUserInput = false
            },
          ]
          label = "Stage 23"
          managers = [
            {
              id                     = "lgf2f4r8"
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
                  logName     = "count"
                  severity    = "count"
                  textPayload = "count"
                }
                datasetQueryId = {
                  ignoreCompress = false
                  queryId        = "q-2fmg280q"
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
              customSummary = "WORKING/Cloud Functions Function Logs"
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
              id                = "step-g940971n"
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
            scriptTab     = "SCRIPT"
            showTimeRuler = true
            stageTab      = "table"
          }
        }
        params   = null
        pipeline = ""
      },
      {
        id = "stage-ufgxvfzv"
        input = [
          {
            datasetId   = "${local.metrics}"
            datasetPath = null
            inputName   = "WORKING/Metrics"
            inputRole   = "Data"
            stageId     = null
          },
          {
            datasetId   = null
            datasetPath = null
            inputName   = "projects"
            inputRole   = "Data"
            stageId     = null
          },
        ]
        layout = {
          appearance = "VISIBLE"
          dataTableViewState = {
            autoTableHeight             = true
            columnFooterHeight          = 0
            columnHeaderHeight          = 29
            columnOrderOverride         = {}
            columnVisibility            = {}
            columnWidths                = {}
            containerWidth              = 1313
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
          index = 24
          inputList = [
            {
              datasetId   = "${local.metrics}"
              inputName   = "WORKING/Metrics"
              inputRole   = "Data"
              isUserInput = false
            },
            {
              inputName   = "projects"
              inputRole   = "Data"
              isUserInput = true
              parameterId = "input-parameter-cjhbgiip"
            },
          ]
          label = "Megabytes Ingested by Service"
          managers = [
            {
              id                     = "rj9thlmb"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "1pdnocmv"
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
                      "resource_type",
                    ]
                    statsBy = {
                      fn = "avg"
                    }
                    timechart = {
                      fn         = "avg"
                      resolution = "AUTO"
                    }
                    transformType = "timechart"
                    type          = "xy"
                    y             = "mb_value"
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
              columnStatsTable = {
                columnFunctions = {
                  metric_kind      = "count"
                  metric_kind_text = "count"
                  metric_labels    = "count"
                  metric_namespace = "count"
                  metric_type      = "count"
                  resource_labels  = "count"
                  resource_type    = "count"
                  value            = "count"
                  value_type       = "count"
                  value_type_text  = "count"
                }
                datasetQueryId = {
                  ignoreCompress = false
                  queryId        = "q-y2ww4w0i"
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
              customSummary = "WORKING/Metrics"
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
              id                = "step-5uy0z74d"
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
              id       = "step-x271p0us"
              index    = 1
              isPinned = false
              opal = [
                "exists project_id = @projects.project_id",
                "",
              ]
              queryPresentation = {}
              type              = "unknown"
            },
            {
              action = {
                params = {
                  columnId    = "metric_type"
                  columnType  = "string"
                  filterVerb  = "filter"
                  isExcluding = false
                  values = [
                    "logging.googleapis.com/billing/bytes_ingested",
                  ]
                }
                summary = null
                type    = "FilterValues"
              }
              columnStatsTable = {
                columnFunctions = {
                  metric_kind      = "count"
                  metric_kind_text = "count"
                  metric_labels    = "count"
                  metric_namespace = "count"
                  metric_type      = "count"
                  resource_labels  = "count"
                  resource_type    = "count"
                  value            = "count"
                  value_type       = "count"
                  value_type_text  = "count"
                }
                datasetQueryId = {
                  ignoreCompress = false
                  queryId        = "q-fx4u80at"
                  resultKinds = [
                    "ResultKindSchema",
                    "ResultKindData",
                  ]
                  tableTypes = [
                    "TABULAR",
                  ]
                }
              }
              customSummary = "metric_type"
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
              id       = "step-upf2vmqg"
              index    = 2
              isPinned = false
              opal = [
                "filter metric_type = \"logging.googleapis.com/billing/bytes_ingested\"",
              ]
              queryPresentation = {}
              type              = "unknown"
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
              id       = "step-o7s9608h"
              index    = 3
              isPinned = false
              opal = [
                "",
                "make_col resource_type: string(metric_labels.resource_type), project_id: string(resource_labels.project_id)",
                "",
                "make_col mb_value: value / 1000000",
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
            scriptTab     = "SCRIPT"
            showTimeRuler = true
            stageTab      = "vis"
          }
        }
        params   = null
        pipeline = <<-EOT
                    exists project_id = @projects.project_id
                    
                    filter metric_type = "logging.googleapis.com/billing/bytes_ingested"
                    
                    make_col resource_type: string(metric_labels.resource_type), project_id: string(resource_labels.project_id)
                    
                    make_col mb_value: value / 1000000
                EOT
      },
      {
        id = "stage-xs8j2jsp"
        input = [
          {
            datasetId   = "${local.storage_metrics}"
            datasetPath = null
            inputName   = "WORKING/Storage Metrics"
            inputRole   = "Data"
            stageId     = null
          },
          {
            datasetId   = null
            datasetPath = null
            inputName   = "projects"
            inputRole   = "Data"
            stageId     = null
          },
        ]
        layout = {
          appearance = "VISIBLE"
          dataTableViewState = {
            autoTableHeight             = true
            columnFooterHeight          = 0
            columnHeaderHeight          = 29
            columnOrderOverride         = {}
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
          index = 25
          inputList = [
            {
              datasetId   = "${local.storage_metrics}"
              inputName   = "WORKING/Storage Metrics"
              inputRole   = "Data"
              isUserInput = false
            },
            {
              inputName   = "projects"
              inputRole   = "Data"
              isUserInput = true
              parameterId = "input-parameter-cjhbgiip"
            },
          ]
          label = "Storage Response Code Counts"
          managers = [
            {
              id                     = "gtolzcfl"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "db4xqgcv"
              isDisabled = false
              type       = "Vis"
              vis = {
                config = {
                  color         = "Default"
                  hideGridLines = false
                  legend = {
                    placement = "bottom"
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
                      "response_code",
                    ]
                    statsBy = {
                      fn = "avg"
                    }
                    timechart = {
                      fn         = "avg"
                      resolution = "AUTO"
                    }
                    transformType = "timechart"
                    type          = "xy"
                    y             = "value"
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
              columnStatsTable = {
                columnFunctions = {
                  metric        = "count"
                  metric_labels = "count"
                  project_id    = "count"
                  region        = "count"
                  value         = "count"
                }
                datasetQueryId = {
                  ignoreCompress = false
                  queryId        = "q-akwkuvyn"
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
              customSummary = "WORKING/Storage Metrics"
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
              id                = "step-3qxox80d"
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
              id       = "step-c5assdhr"
              index    = 1
              isPinned = false
              opal = [
                "exists project_id = @projects.project_id",
                "",
              ]
              queryPresentation = {}
              type              = "unknown"
            },
            {
              action = {
                params = {
                  columnId    = "metric"
                  columnType  = "string"
                  filterVerb  = "filter"
                  isExcluding = false
                  values = [
                    "api_request_count",
                  ]
                }
                summary = null
                type    = "FilterValues"
              }
              columnStatsTable = {
                columnFunctions = {
                  metric        = "count"
                  metric_labels = "count"
                  project_id    = "count"
                  region        = "count"
                  value         = "count"
                }
                datasetQueryId = {
                  ignoreCompress = false
                  queryId        = "q-epxa5btd"
                  resultKinds = [
                    "ResultKindSchema",
                    "ResultKindData",
                  ]
                  tableTypes = [
                    "TABULAR",
                  ]
                }
              }
              customSummary = "metric"
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
              id       = "step-4glsbxrg"
              index    = 2
              isPinned = true
              opal = [
                "filter metric = \"api_request_count\"",
              ]
              queryPresentation = {}
              type              = "unknown"
            },
            {
              columnStatsTable = {
                columnFunctions = {
                  method        = "count"
                  metric        = "count"
                  metric_labels = "count"
                  project_id    = "count"
                  region        = "count"
                  response_code = "count"
                  value         = "count"
                }
                datasetQueryId = {
                  ignoreCompress = false
                  queryId        = "q-qjya04hr"
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
              id       = "step-mp0cprzw"
              index    = 3
              isPinned = false
              opal = [
                "",
                "make_col method: string(metric_labels.method), response_code: string(metric_labels.response_code)",
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
            scriptTab     = "SCRIPT"
            showTimeRuler = true
            stageTab      = "vis"
          }
        }
        params   = null
        pipeline = <<-EOT
                    exists project_id = @projects.project_id
                    
                    filter metric = "api_request_count"
                    
                    make_col method: string(metric_labels.method), response_code: string(metric_labels.response_code)
                EOT
      },
      {
        id = "stage-wcrqj5fn"
        input = [
          {
            datasetId   = "${local.storage_metrics}"
            datasetPath = null
            inputName   = "WORKING/Storage Metrics"
            inputRole   = "Data"
            stageId     = null
          },
          {
            datasetId   = null
            datasetPath = null
            inputName   = "projects"
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
              value = 175
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
          index = 26
          inputList = [
            {
              datasetId   = "${local.storage_metrics}"
              inputName   = "WORKING/Storage Metrics"
              inputRole   = "Data"
              isUserInput = false
            },
            {
              inputName   = "projects"
              inputRole   = "Data"
              isUserInput = true
              parameterId = "input-parameter-cjhbgiip"
            },
          ]
          label = "Storage GBs Used"
          managers = [
            {
              id                     = "gtolzcfl"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "db4xqgcv"
              isDisabled = false
              type       = "Vis"
              vis = {
                config = {
                  color         = "Default"
                  hideGridLines = false
                  legend = {
                    placement = "bottom"
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
                      [
                        "bucket_name",
                      ],
                    ]
                    statsBy = {
                      fn = "avg"
                    }
                    timechart = {
                      fn         = "avg"
                      resolution = "AUTO"
                    }
                    transformType = "timechart"
                    type          = "xy"
                    y             = "mb_value"
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
              customSummary = "WORKING/Storage Metrics"
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
              id                = "step-ta3w4hep"
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
              id       = "step-je6papug"
              index    = 1
              isPinned = false
              opal = [
                "exists project_id = @projects.project_id",
              ]
              queryPresentation = {}
              type              = "unknown"
            },
            {
              action = {
                params = {
                  columnId    = "metric"
                  columnType  = "string"
                  filterVerb  = "filter"
                  isExcluding = false
                  values = [
                    "storage_total_bytes",
                  ]
                }
                summary = null
                type    = "FilterValues"
              }
              columnStatsTable = {
                columnFunctions = {
                  metric        = "count"
                  metric_labels = "count"
                  project_id    = "count"
                  region        = "count"
                  value         = "count"
                }
                datasetQueryId = {
                  ignoreCompress = false
                  queryId        = "q-jwkklnib"
                  resultKinds = [
                    "ResultKindSchema",
                    "ResultKindData",
                  ]
                  tableTypes = [
                    "TABULAR",
                  ]
                }
              }
              customSummary = "metric"
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
              id       = "step-96to7auu"
              index    = 2
              isPinned = false
              opal = [
                "filter metric = \"storage_total_bytes\"",
              ]
              queryPresentation = {}
              type              = "unknown"
            },
            {
              columnStatsTable = {
                columnFunctions = {
                  metric        = "count"
                  metric_labels = "count"
                  project_id    = "count"
                  region        = "count"
                  value         = "count"
                }
                datasetQueryId = {
                  ignoreCompress = false
                  queryId        = "q-hy9fk51h"
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
              id       = "step-m38cpn3r"
              index    = 3
              isPinned = false
              opal = [
                "",
                "make_col mb_value: value/1000000",
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
            scriptTab     = "SCRIPT"
            showTimeRuler = true
            stageTab      = "vis"
          }
        }
        params   = null
        pipeline = <<-EOT
                    exists project_id = @projects.project_id
                    filter metric = "storage_total_bytes"
                    
                    make_col mb_value: value/1000000
                EOT
      },
    ]
  )
  workspace = local.workspace
}

