/*
./write_terraform.py project_db.json ../service/compute/projectDashboard.tf

!!! Use these grep commands to list unique values of ids we want to replace

grep -rh "datasetId" --include projectDashboard.tf | sed -e $'s/,/\\\n/g' | sed -e 's/[[:space:]]//g' | sort | uniq | sed -e 's/"datasetId"://g'
grep -rh "workspace" --include projectDashboard.tf | sed -e $'s/,/\\\n/g' | sed -e 's/[[:space:]]//g' | sort | uniq | sed -e 's/"workspace"://g'
grep -rh "name" --include projectDashboard.tf | sed -e $'s/,/\\\n/g' | sed -e 's/[[:space:]]//g' | sort | uniq | sed -e 's/"name"://g'

!!! Use these sed commands to replace id's with variables
!!! this command ignores lines with sed commands

sed -i '' "s:${local.projects_collection_enabled}:"\${local.projects_collection_enabled}":g" *.tf
sed -i '' "s:${local.resources_asset_inventory}:"\${local.resources_asset_inventory}":g" *.tf
sed -i '' "s:${local.cloud_sql_metrics}:"\${local.cloud_sql_metrics}":g" *.tf

sed -i '' '/^[[:space:]]*sed/! s:"41144592":"\${local.computeInstance}":g' projectDashboard.tf
sed -i '' '/^[[:space:]]*sed/! s:"41144593":"\${local.computeMetrics}":g' projectDashboard.tf
sed -i '' '/^[[:space:]]*sed/! s/"o:::workspace:41141634"/"\${local.workspace}"/g' projectDashboard.tf
sed -i '' '/^[[:space:]]*sed/! s:"Projects Home":"\${local.dashboard_name}":g' projectDashboard.tf
*/


locals {
  cloudsqlmetrics             = one(module.cloudsql[*].cloudsql_metrics)
  projects_collection_enabled = observe_dataset.projects.id                          # ${local.projects_collection_enabled}
  resources_asset_inventory   = observe_dataset.resource_asset_inventory_resource.id # ${local.resources_asset_inventory}
  cloud_sql_metrics           = local.cloudsqlmetrics.id                             # ${local.cloud_sql_metrics}
  dashboard_name              = format(var.name_format, " Home")
  workspace                   = var.workspace.oid
}


# !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
# !!!!!! use dashboards/write_terraform.py to produce this file   !!!!!!!
# !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
# Below this line is automatically written
resource "observe_dashboard" "projects_home" {
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
                  h           = 13
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
                  id       = "card-7kb1f4xn"
                  stageId  = "stage-veumo1m3"
                }
                layout = {
                  h           = 13
                  i           = "card-7kb1f4xn"
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
                  id       = "card-a9hdbidz"
                  stageId  = "stage-2mmp17rv"
                }
                layout = {
                  h           = 13
                  i           = "card-a9hdbidz"
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
                  h           = 12
                  i           = "card-55ij29rt"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 4
                  x           = 0
                  y           = 13
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-fab4hzb8"
                  stageId  = "stage-xyz607y1"
                }
                layout = {
                  h           = 12
                  i           = "card-fab4hzb8"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 4
                  x           = 8
                  y           = 13
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-x37cvori"
                  stageId  = "stage-jar5yskq"
                }
                layout = {
                  h           = 12
                  i           = "card-x37cvori"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 4
                  x           = 4
                  y           = 13
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-zx45puqc"
                  stageId  = "stage-b1h42m9y"
                }
                layout = {
                  h           = 12
                  i           = "card-zx45puqc"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 4
                  x           = 8
                  y           = 25
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-eualk4fz"
                  stageId  = "stage-uffc40j8"
                }
                layout = {
                  h           = 12
                  i           = "card-eualk4fz"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 4
                  x           = 0
                  y           = 25
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-8absfapp"
                  stageId  = "stage-1zjnd7x3"
                }
                layout = {
                  h           = 12
                  i           = "card-8absfapp"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 4
                  x           = 4
                  y           = 25
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-gis1q13p"
                  stageId  = "stage-0shmp61d"
                }
                layout = {
                  h           = 12
                  i           = "card-gis1q13p"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 4
                  x           = 8
                  y           = 37
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-3nm5nkxa"
                  stageId  = "stage-35r7lf8w"
                }
                layout = {
                  h           = 12
                  i           = "card-3nm5nkxa"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 4
                  x           = 0
                  y           = 37
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-j97t3w3y"
                  stageId  = "stage-yudn4ulm"
                }
                layout = {
                  h           = 12
                  i           = "card-j97t3w3y"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 4
                  x           = 4
                  y           = 37
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
                  y           = 0
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
                  y           = 0
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
                  y           = 0
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
                                        
                                        This dashboard displays asset information for the given project.
                                        
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
            lastModified = 1662771458942
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
        selectedStageId = "stage-zhqax6ap"
        timeRange = {
          display               = "Past 15 minutes"
          endTime               = null
          millisFromCurrentTime = 900000
          originalDisplay       = "Past 15 minutes"
          startTime             = null
          timeRangeInfo = {
            key        = "PRESETS"
            name       = "Presets"
            presetType = "PAST_15_MINUTES"
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
            wantBuckets = 400
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
            columnVisibility            = {}
            columnWidths                = {}
            containerWidth              = 859
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
                columnFunctions = {
                  count                = "count"
                  instance_state_label = "count"
                  label                = "count"
                }
                datasetQueryId = {
                  ignoreCompress = false
                  queryId        = "q-dj8otnac"
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
              id       = "step-6ymuy2jk"
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
            wantBuckets = 400
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
            wantBuckets = 400
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
            wantBuckets = 400
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
            wantBuckets = 400
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
            wantBuckets = 400
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
            wantBuckets = 400
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
            containerWidth              = 1313
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
            wantBuckets = 400
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
            wantBuckets = 400
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
            wantBuckets = 400
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
            wantBuckets = 400
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
    ]
  )
  workspace = local.workspace
}

