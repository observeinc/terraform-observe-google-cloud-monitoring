locals {
  tco_dashboard_name = format(var.name_format, "Total Cost of Ownership V2")
  pubsub_events      = resource.observe_dataset.base_pubsub_events.id
}
# terraform import observe_dashboard.total_cost_of_ownership 41286602
resource "observe_dashboard" "total_cost_of_ownership" {
  count = local.enable_service_billing ? 1 : 0
  layout = jsonencode(
    {
      autoPack = true
      gridLayout = {
        sections = [
          {
            card = {
              cardType = "section"
              closed   = false
              id       = "card-6j1nofzj"
              title    = "Dashboard Content"
            }
            items = [
              {
                card = {
                  cardType    = "parameter"
                  id          = "card-l9hqwgbu"
                  parameterId = "queryID"
                }
                layout = {
                  h           = 4
                  i           = "card-l9hqwgbu"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  resizeHandles = [
                    "e",
                  ]
                  static = false
                  w      = 2
                  x      = 0
                  y      = 0
                }
              },
              {
                card = {
                  cardType    = "parameter"
                  id          = "card-v81plyb9"
                  parameterId = "projectID"
                }
                layout = {
                  h           = 4
                  i           = "card-v81plyb9"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  resizeHandles = [
                    "e",
                  ]
                  static = false
                  w      = 2
                  x      = 2
                  y      = 0
                }
              },
              {
                card = {
                  cardType    = "parameter"
                  id          = "card-xi4b3kcf"
                  parameterId = "serviceID"
                }
                layout = {
                  h           = 4
                  i           = "card-xi4b3kcf"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  resizeHandles = [
                    "e",
                  ]
                  static = false
                  w      = 2
                  x      = 4
                  y      = 0
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-i881rw4k"
                  stageId  = "stage-vewta8ob"
                }
                layout = {
                  h           = 16
                  i           = "card-i881rw4k"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 8
                  x           = 0
                  y           = 4
                }
              },
            ]
            lastModified = 1666719814141
          },
          {
            card = {
              cardType = "section"
              closed   = false
              id       = "section-wvmoxidr"
              title    = "Cost Detail"
            }
            items = [
              {
                card = {
                  cardType = "stage"
                  id       = "card-ro0hvlwr"
                  stageId  = "stage-d6qtvu5y"
                }
                layout = {
                  h           = 33
                  i           = "card-ro0hvlwr"
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
            lastModified = 1666894628607
          },
        ]
      }
      stageListLayout = {
        isModified = false
        parameters = [
          {
            allowEmpty = true
            defaultValue = {
              string = "full_export_v6"
            }
            emptyValueEncoding    = "Empty String"
            emptyValueLabelOption = "null"
            id                    = "queryID"
            name                  = "Query ID"
            valueKind = {
              type = "STRING"
            }
            viewType = "text"
          },
          {
            allowEmpty = true
            defaultValue = {
              string = "content-testpproj-stage-1"
            }
            emptyValueEncoding    = "Empty String"
            emptyValueLabelOption = "All Values"
            id                    = "projectID"
            name                  = "Project ID"
            source                = "Stage"
            sourceColumnId        = "project_id"
            sourceStageId         = "stage-7qgul0c2"
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
            emptyValueLabelOption = "All Values"
            id                    = "serviceID"
            name                  = "Service"
            source                = "Stage"
            sourceColumnId        = "description"
            sourceStageId         = "stage-n4fz3fv1"
            valueKind = {
              type = "STRING"
            }
            viewType = "single-select"
          },
        ]
        selectedStageId = "stage-d6qtvu5y"
        timeRange = {
          display               = "Past 24 hours"
          endTime               = null
          millisFromCurrentTime = 86400000
          originalDisplay       = "Past 24 hours"
          startTime             = null
          timeRangeInfo = {
            key        = "PRESETS"
            name       = "Presets"
            presetType = "PAST_24_HOURS"
          }
        }
      }
    }
  )
  name = local.tco_dashboard_name
  parameters = jsonencode(
    [
      {
        defaultValue = {
          string = "full_export_v6"
        }
        id   = "queryID"
        name = "Query ID"
        valueKind = {
          arrayItemType   = null
          keyForDatasetId = null
          type            = "STRING"
        }
      },
      {
        defaultValue = {
          string = "content-testpproj-stage-1"
        }
        id   = "projectID"
        name = "Project ID"
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
        id   = "serviceID"
        name = "Service"
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
        id = "stage-k0zvl6is"
        input = [
          {
            datasetId   = local.pubsub_events
            datasetPath = null
            inputName   = "gcp-cost-test/PubSub Events"
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
          index = 0
          inputList = [
            {
              datasetId   = local.pubsub_events
              inputName   = "gcp-cost-test/PubSub Events"
              inputRole   = "Data"
              isUserInput = false
            },
          ]
          label = "BaseData"
          managers = [
            {
              id                     = "t3qqqfht"
              isDisabled             = false
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "lohgbnef"
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
              columnStatsTable = {
                columnFunctions = {
                  attributes      = "count"
                  data            = "count"
                  deliveryAttempt = "count"
                  id              = "count"
                  orderingKey     = "count"
                  subscription    = "count"
                }
                datasetQueryId = {
                  ignoreCompress = false
                  queryId        = "q-k222yjf6"
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
              customSummary = "gcp-cost-test/PubSub Events"
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
              id                = "step-zc05ni34"
              index             = 0
              isPinned          = false
              opal              = []
              queryPresentation = {}
              type              = "InputStep"
            },
            {
              columnStatsTable = {
                columnFunctions = {
                  _c_data2_path   = "count"
                  _c_data2_value  = "count"
                  adjusted_cost   = "count"
                  attributes      = "count"
                  cost            = "count"
                  cost_type       = "count"
                  credits         = "count"
                  data            = "count"
                  deliveryAttempt = "count"
                  description     = "count"
                  id              = "count"
                  id_1_1          = "count"
                  location        = "count"
                  orderingKey     = "count"
                  part            = "count"
                  project_id      = "count"
                  region          = "count"
                  sku_description = "count"
                  subscription    = "count"
                }
                datasetQueryId = {
                  ignoreCompress = false
                  queryId        = "q-6pn8w45t"
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
              id       = "step-lkbm8atq"
              index    = 1
              isPinned = false
              opal = [
                "filter attributes.OBSERVATION_KIND = \"gcpBillingData\"",
                "",
                "filter attributes.QUERY_ID = $queryID",
                "",
                "make_col data2: parse_json(data)",
                "      ",
                "flatten_single data2",
                "make_col cost:float64(_c_data2_value.cost),",
                "    cost_type:string(_c_data2_value.cost_type),",
                "    credits:float64(_c_data2_value.credits),",
                "    adjusted_cost:float64(_c_data2_value.adjusted_cost),",
                "    description:string(_c_data2_value.description),",
                "    project_id:string(_c_data2_value.id),",
                "    id_1_1:string(_c_data2_value.id_1),",
                "    location:string(_c_data2_value.location),",
                "    part:int64(_c_data2_value.part),",
                "    region:string(_c_data2_value.region),",
                "    sku_description:string(_c_data2_value.sku_description),",
                "    partition_date: parse_isotime(string(_c_data2_value.part_converted)),",
                "\tusage_end_date:from_milliseconds(int64(_c_data2_value.usage_end_date)),",
                "    usage_start_date:from_milliseconds(int64(_c_data2_value.usage_start_date))",
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
                    filter attributes.OBSERVATION_KIND = "gcpBillingData"
                    
                    filter attributes.QUERY_ID = $queryID
                    
                    make_col data2: parse_json(data)
                          
                    flatten_single data2
                    make_col cost:float64(_c_data2_value.cost),
                        cost_type:string(_c_data2_value.cost_type),
                        credits:float64(_c_data2_value.credits),
                        adjusted_cost:float64(_c_data2_value.adjusted_cost),
                        description:string(_c_data2_value.description),
                        project_id:string(_c_data2_value.id),
                        id_1_1:string(_c_data2_value.id_1),
                        location:string(_c_data2_value.location),
                        part:int64(_c_data2_value.part),
                        region:string(_c_data2_value.region),
                        sku_description:string(_c_data2_value.sku_description),
                        partition_date: parse_isotime(string(_c_data2_value.part_converted)),
                    	usage_end_date:from_milliseconds(int64(_c_data2_value.usage_end_date)),
                        usage_start_date:from_milliseconds(int64(_c_data2_value.usage_start_date))
                EOT
      },
      {
        id = "stage-33m91z3w"
        input = [
          {
            datasetId   = null
            datasetPath = null
            inputName   = "BaseData_-k0zv"
            inputRole   = "Data"
            stageId     = "stage-k0zvl6is"
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
              inputName   = "BaseData_-k0zv"
              inputRole   = "Data"
              isUserInput = false
              stageId     = "stage-k0zvl6is"
            },
          ]
          label = "Pick Col"
          managers = [
            {
              id                     = "akdo9uri"
              isDisabled             = false
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "n659qda6"
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
              columnStatsTable = {
                columnFunctions = {
                  _c_data2_path   = "count"
                  _c_data2_value  = "count"
                  adjusted_cost   = "count"
                  attributes      = "count"
                  cost            = "count"
                  cost_type       = "count"
                  credits         = "count"
                  data            = "count"
                  deliveryAttempt = "count"
                  description     = "count"
                  id              = "count"
                  id_1_1          = "count"
                  location        = "count"
                  orderingKey     = "count"
                  part            = "count"
                  project_id      = "count"
                  region          = "count"
                  sku_description = "count"
                  subscription    = "count"
                }
                datasetQueryId = {
                  ignoreCompress = false
                  queryId        = "q-53zwgm7y"
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
              customSummary = "BaseData_-k0zv"
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
              id                = "step-vjb9ynyk"
              index             = 0
              isPinned          = false
              opal              = []
              queryPresentation = {}
              type              = "InputStep"
            },
            {
              columnStatsTable = {
                columnFunctions = {
                  _c_data2_path   = "count"
                  _c_data2_value  = "count"
                  adjusted_cost   = "count"
                  attributes      = "count"
                  cost            = "count"
                  cost_type       = "count"
                  credits         = "count"
                  data            = "count"
                  deliveryAttempt = "count"
                  description     = "count"
                  id              = "count"
                  id_1_1          = "count"
                  location        = "count"
                  orderingKey     = "count"
                  part            = "count"
                  project_id      = "count"
                  region          = "count"
                  sku_description = "count"
                  sku_id          = "count"
                  subscription    = "count"
                }
                datasetQueryId = {
                  ignoreCompress = false
                  queryId        = "q-4vjh87wx"
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
              id       = "step-29xp6qjt"
              index    = 1
              isPinned = false
              opal = [
                "pick_col ",
                "\tBUNDLE_TIMESTAMP,",
                "\tcost,",
                "    credits,",
                "    adjusted_cost,",
                "\tcost_type,",
                "    description,",
                "    project_id,",
                "    sku_id: id_1_1,",
                "    location,",
                "    region,",
                "    sku_description,",
                "    partition_date,",
                "    usage_end_date,",
                "    usage_start_date",
                "    ",
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
            showTimeRuler = true
            stageTab      = "table"
          }
        }
        params   = null
        pipeline = <<-EOT
                    pick_col 
                    	BUNDLE_TIMESTAMP,
                    	cost,
                        credits,
                        adjusted_cost,
                    	cost_type,
                        description,
                        project_id,
                        sku_id: id_1_1,
                        location,
                        region,
                        sku_description,
                        partition_date,
                        usage_end_date,
                        usage_start_date
                        
                EOT
      },
      {
        id = "stage-d6qtvu5y"
        input = [
          {
            datasetId   = null
            datasetPath = null
            inputName   = "Pick Col"
            inputRole   = "Data"
            stageId     = "stage-33m91z3w"
          },
        ]
        layout = {
          appearance = "VISIBLE"
          dataTableViewState = {
            autoTableHeight    = true
            columnFooterHeight = 0
            columnHeaderHeight = 29
            columnOrderOverride = {
              "6" = "project_id"
            }
            columnVisibility = {}
            columnWidths = {
              description     = 332
              project_id      = 291
              sku_description = 335
            }
            containerWidth              = 1505
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
          index = 2
          inputList = [
            {
              inputName   = "Pick Col"
              inputRole   = "Data"
              isUserInput = false
              stageId     = "stage-33m91z3w"
            },
          ]
          label = "Stats By Service and SKU"
          managers = [
            {
              id                     = "iwbrs7ri"
              isDisabled             = false
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "igejxdt9"
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
              columnStatsTable = {
                columnFunctions = {
                  adjusted_cost   = "count"
                  cost            = "count"
                  cost_type       = "count"
                  credits         = "count"
                  description     = "count"
                  location        = "count"
                  project_id      = "count"
                  region          = "count"
                  sku_description = "count"
                  sku_id          = "count"
                }
                datasetQueryId = {
                  ignoreCompress = false
                  queryId        = "q-102izvy1"
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
              customSummary = "Pick Col"
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
              id                = "step-mulczqnl"
              index             = 0
              isPinned          = false
              opal              = []
              queryPresentation = {}
              type              = "InputStep"
            },
            {
              columnStatsTable = {
                columnFunctions = {
                  adjusted_cost   = "count"
                  cost            = "count"
                  cost_type       = "count"
                  credits         = "count"
                  description     = "count"
                  location        = "count"
                  project_id      = "count"
                  region          = "count"
                  sku_description = "count"
                  sku_id          = "count"
                }
                datasetQueryId = {
                  ignoreCompress = false
                  queryId        = "q-25dae91h"
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
              id       = "step-yl6ngg0n"
              index    = 1
              isPinned = false
              opal = [
                "filter $projectID = \"\" or project_id =  $projectID",
                "",
                "filter $serviceID = \"\" or description =  $serviceID",
                "",
                "statsby cost:sum(cost), credits:sum(credits), adjusted_cost:sum(adjusted_cost),group_by(usage_end_date,service: description,sku_description, project_id)",
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
                    filter $projectID = "" or project_id =  $projectID
                    
                    filter $serviceID = "" or description =  $serviceID
                    
                    statsby cost:sum(cost), credits:sum(credits), adjusted_cost:sum(adjusted_cost),group_by(usage_end_date,service: description,sku_description, project_id)
                EOT
      },
      {
        id = "stage-7qgul0c2"
        input = [
          {
            datasetId   = null
            datasetPath = null
            inputName   = "BaseData_-k0zv"
            inputRole   = "Data"
            stageId     = "stage-k0zvl6is"
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
              inputName   = "BaseData_-k0zv"
              inputRole   = "Data"
              isUserInput = false
              stageId     = "stage-k0zvl6is"
            },
          ]
          label = "Project Drop Down"
          managers = [
            {
              id                     = "f14wdki6"
              isDisabled             = false
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "oa2u6zas"
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
              columnStatsTable = {
                columnFunctions = {
                  _c_data2_path   = "count"
                  _c_data2_value  = "count"
                  adjusted_cost   = "count"
                  attributes      = "count"
                  cost            = "count"
                  cost_type       = "count"
                  credits         = "count"
                  data            = "count"
                  deliveryAttempt = "count"
                  description     = "count"
                  id              = "count"
                  id_1_1          = "count"
                  location        = "count"
                  orderingKey     = "count"
                  part            = "count"
                  project_id      = "count"
                  region          = "count"
                  sku_description = "count"
                  subscription    = "count"
                }
                datasetQueryId = {
                  ignoreCompress = false
                  queryId        = "q-u77ffgni"
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
              customSummary = "BaseData_-k0zv"
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
              id                = "step-0m2i5cnb"
              index             = 0
              isPinned          = false
              opal              = []
              queryPresentation = {}
              type              = "InputStep"
            },
            {
              columnStatsTable = {
                columnFunctions = {
                  _c_data2_path   = "count"
                  _c_data2_value  = "count"
                  adjusted_cost   = "count"
                  attributes      = "count"
                  cost            = "count"
                  cost_type       = "count"
                  credits         = "count"
                  data            = "count"
                  deliveryAttempt = "count"
                  description     = "count"
                  id              = "count"
                  id_1_1          = "count"
                  location        = "count"
                  orderingKey     = "count"
                  part            = "count"
                  project_id      = "count"
                  region          = "count"
                  sku_description = "count"
                  subscription    = "count"
                }
                datasetQueryId = {
                  ignoreCompress = false
                  queryId        = "q-d2lzek3f"
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
              id       = "step-lzptmqxi"
              index    = 1
              isPinned = false
              opal = [
                "statsby group_by(project_id)",
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
        pipeline = "statsby group_by(project_id)"
      },
      {
        id = "stage-vewta8ob"
        input = [
          {
            datasetId   = null
            datasetPath = null
            inputName   = "Pick Col"
            inputRole   = "Data"
            stageId     = "stage-33m91z3w"
          },
        ]
        layout = {
          appearance = "VISIBLE"
          dataTableViewState = {
            autoTableHeight    = true
            columnFooterHeight = 0
            columnHeaderHeight = 29
            columnOrderOverride = {
              "6" = "project_id"
            }
            columnVisibility = {}
            columnWidths = {
              description     = 257
              project_id      = 226
              sku_description = 217
            }
            containerWidth              = 1505
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
              inputName   = "Pick Col"
              inputRole   = "Data"
              isUserInput = false
              stageId     = "stage-33m91z3w"
            },
          ]
          label = "Monitoring API Requests"
          managers = [
            {
              id                     = "iwbrs7ri"
              isDisabled             = false
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "cajxmrfh"
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
              customSummary = "Pick Col"
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
              id                = "step-926qznm4"
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
                  queryId        = "q-r1zeej74"
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
              id       = "step-cskpgg7o"
              index    = 1
              isPinned = false
              opal = [
                "filter $projectID = \"\" or project_id =  $projectID",
                "",
                "filter sku_description = \"Monitoring API Requests\"",
                "",
                "statsby cost:sum(cost), credits:sum(credits), adjusted_cost:sum(adjusted_cost),group_by(usage_end_date,description,sku_description, project_id)",
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
                    filter $projectID = "" or project_id =  $projectID
                    
                    filter sku_description = "Monitoring API Requests"
                    
                    statsby cost:sum(cost), credits:sum(credits), adjusted_cost:sum(adjusted_cost),group_by(usage_end_date,description,sku_description, project_id)
                EOT
      },
      {
        id = "stage-n4fz3fv1"
        input = [
          {
            datasetId   = null
            datasetPath = null
            inputName   = "BaseData_-k0zv"
            inputRole   = "Data"
            stageId     = "stage-k0zvl6is"
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
              inputName   = "BaseData_-k0zv"
              inputRole   = "Data"
              isUserInput = false
              stageId     = "stage-k0zvl6is"
            },
          ]
          label = "Service Drop Down"
          managers = [
            {
              id                     = "f14wdki6"
              isDisabled             = false
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "hq23f8d5"
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
              customSummary = "BaseData_-k0zv"
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
              id                = "step-maquacxm"
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
                  queryId        = "q-8eidf49h"
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
              id       = "step-5odgsfz2"
              index    = 1
              isPinned = false
              opal = [
                "statsby group_by(description)",
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
        pipeline = "statsby group_by(description)"
      },
    ]
  )
  workspace = local.workspace
}

