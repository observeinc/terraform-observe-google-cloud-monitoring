locals {
  workspace_home                 = var.workspace.oid
  workspace_id                   = var.workspace.id
  asset_inventory                = observe_dataset.base_asset_inventory_records.id
  logs                           = observe_dataset.logs.id
  dashboard_name_home            = format(var.name_format, "GCP Home2")
  resources_asset_inventory_home = observe_dataset.resources_asset_inventory.id
  metrics_home                   = observe_dataset.metrics.id
}
# terraform import observe_dashboard.gcp_home 41159274
resource "observe_dashboard" "gcp_home" {
  layout = jsonencode(
    {
      gridLayout = {
        sections = [
          {
            card = {
              cardType = "section"
              closed   = false
              id       = "card-qq0bgbzq"
              title    = "Dashboard Content"
            }
            items = [
              {
                card = {
                  cardType = "text"
                  id       = "card-pn1dl4z2"
                  text     = <<-EOT
                                        # Google Cloud Platform Application
                                        
                                        See Asset Inventory below for count of resources within your monitored projects.
                                        
                                        
                                        - [Observe GCP Documentation](https://docs.observeinc.com/en/latest/content/integrations/gcp/gcp.html)
                                        
                                        - [Google Metrics Documentation](https://cloud.google.com/monitoring/api/metrics_gcp)
                                    EOT
                  title    = "Untitled Text"
                }
                layout = {
                  h           = 15
                  i           = "card-pn1dl4z2"
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
                  cardType = "text"
                  id       = "card-wptvuu0s"
                  text     = <<-EOT
                                        ### Pre-built Content
                                        
                                        ${local.enable_service_cloudfunctions == true ? "- [CloudFunction Resources](/workspace/${local.workspace_id}/dataset/resource/Cloud-Functions-Instances-${one(module.cloudfunctions[*].function.id)})" : ""} 
                                        
                                        ${local.enable_service_cloudsql == true ? "- [CloudSQL Resources](/workspace/${local.workspace_id}/dataset/resource/Cloud-SQL-Instance-${one(module.cloudsql[*].cloudsql.id)})" : ""} 
                                        
                                        ${local.enable_service_compute == true ? "- [Compute Resources](/workspace/${local.workspace_id}/dataset/resource/Compute-Instance-${one(module.compute[*].compute.id)})" : ""} 
                                        
                                        ${local.enable_service_load_balancing == true ? "- [LoadBalancing Resources](/workspace/${local.workspace_id}/dataset/resource/Load-Balancing-Load-Balancers-${one(module.load_balancing[*].load_balancers.id)})" : ""}
                                        
                                        ${local.enable_service_storage == true ? "- [Storage Resources](/workspace/${local.workspace_id}/dataset/resource/Storage-Buckets-${one(module.storage[*].storage.id)})" : ""}
                                    EOT
                  title    = "Untitled Text"
                }
                layout = {
                  h           = 15
                  i           = "card-wptvuu0s"
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
                  cardType = "text"
                  id       = "card-0zqibgb1"
                  text     = <<-EOT
                                        ### Base Datasets
                                        
                                        - [Asset Inventory](/workspace/${local.workspace_id}/dataset/event/Asset-Inventory-Records-${local.asset_inventory}) 
                                        
                                        - [Metrics](/workspace/${local.workspace_id}/dataset/event/Metrics-${local.metrics_home}) 
                                        
                                        - [Logs](/workspace/${local.workspace_id}/dataset/event/Logs-${local.logs})
                                    EOT
                  title    = "Untitled Text"
                }
                layout = {
                  h           = 15
                  i           = "card-0zqibgb1"
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
            lastModified = 1664916222772
          },
          {
            card = {
              cardType = "section"
              closed   = true
              id       = "section-2ennmvaq"
              title    = "Quotas"
            }
            items = [
              {
                card = {
                  cardType = "stage"
                  id       = "card-u5zfvipe"
                  stageId  = "stage-e0juxi98"
                }
                layout = {
                  h           = 11
                  i           = "card-u5zfvipe"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 12
                  x           = 0
                  y           = 14
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-aujsp9v0"
                  stageId  = "stage-gkw7clfc"
                }
                layout = {
                  h           = 35
                  i           = "card-aujsp9v0"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 12
                  x           = 0
                  y           = 25
                }
              },
              {
                card = {
                  cardType = "text"
                  id       = "card-wptvuu0s"
                  text     = <<-EOT
                                        ### Pre-built Content
                                        
                                        ${local.enable_service_cloudfunctions == true ? "- [CloudFunction Resources](/workspace/${local.workspace_id}/dataset/resource/Cloud-Functions-Instances-${one(module.cloudfunctions[*].function.id)})" : ""} 
                                        
                                        ${local.enable_service_cloudsql == true ? "- [CloudSQL Resources](/workspace/${local.workspace_id}/dataset/resource/Cloud-SQL-Instance-${one(module.cloudsql[*].cloudsql.id)})" : ""} 
                                        
                                        ${local.enable_service_compute == true ? "- [Compute Resources](/workspace/${local.workspace_id}/dataset/resource/Compute-Instance-${one(module.compute[*].compute.id)})" : ""} 
                                        
                                        ${local.enable_service_load_balancing == true ? "- [LoadBalancing Resources](/workspace/${local.workspace_id}/dataset/resource/Load-Balancing-Load-Balancers-${one(module.load_balancing[*].load_balancers.id)})" : ""}
                                        
                                        ${local.enable_service_storage == true ? "- [Storage Resources](/workspace/${local.workspace_id}/dataset/resource/Storage-Buckets-${one(module.storage[*].storage.id)})" : ""}
                                    EOT
                  title    = "Untitled Text"
                }
                layout = {
                  h           = 15
                  i           = "card-wptvuu0s"
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
                  cardType = "text"
                  id       = "card-0zqibgb1"
                  text     = <<-EOT
                                        ### Base Datasets
                                        
                                        - [Asset Inventory](/workspace/41141634/dataset/event/Asset-Inventory-Records-41153280) 
                                        
                                        - [Metrics](/workspace/41141634/dataset/event/Metrics-41146334) 
                                        
                                        - [Logs](/workspace/41141634/dataset/event/Logs-41153279)
                                    EOT
                  title    = "Untitled Text"
                }
                layout = {
                  h           = 15
                  i           = "card-0zqibgb1"
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
            lastModified = 1664929997467
          },
          {
            card = {
              cardType = "section"
              closed   = false
              id       = "section-15t3arsj"
              title    = "Asset Inventory"
            }
            items = [
              {
                card = {
                  cardType = "stage"
                  id       = "card-4e9h85lp"
                  stageId  = "stage-f2a7cr3f"
                }
                layout = {
                  h           = 77
                  i           = "card-4e9h85lp"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 12
                  x           = 0
                  y           = 17
                }
              },
            ]
            lastModified = 1664930009772
          },
        ]
      }
      stageListLayout = {
        isModified      = false
        selectedStageId = "stage-f2a7cr3f"
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
  name = local.dashboard_name_home
  stages = jsonencode(
    [
      {
        id = "stage-f2a7cr3f"
        input = [
          {
            datasetId   = "${local.resources_asset_inventory_home}"
            datasetPath = null
            inputName   = "eng/Resources Asset Inventory"
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
            }
            columnVisibility = {
              CloudFunction = false
              CloudSQL      = false
              Compute       = false
              "Project ID"  = true
              Projects      = false
              Storage       = false
              deleted       = true
              project_id    = true
            }
            columnWidths = {
              "Asset Namespace" = 396
              "Asset Type"      = 298
              Count             = 150
              Location          = 240
              "Project ID"      = 244
              Projects          = 242
              asset_name        = 940
              asset_namespace   = 386
              asset_sub_type    = 246
              asset_type        = 404
              last_asset_name   = 1044
            }
            containerWidth              = 1749
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
              datasetId   = "${local.resources_asset_inventory_home}"
              inputName   = "eng/Resources Asset Inventory"
              inputRole   = "Data"
              isUserInput = false
            },
          ]
          label = "Asset Counts By Project"
          managers = [
            {
              id                     = "n5wyttnn"
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
            sort = [
              {
                ascending  = true
                columnName = "Project ID"
              },
              {
                ascending  = true
                columnName = "Asset Namespace"
              },
              {
                ascending  = true
                columnName = "Asset Type"
              },
            ]
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
                  parent                 = "count"
                  parent_project_id      = "count"
                  ttl                    = "count"
                  version                = "count"
                }
                datasetQueryId = {
                  ignoreCompress = false
                  queryId        = "q-tf81oe2u"
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
              customSummary = "eng/Resources Asset Inventory"
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
              id                = "step-raq5c7pu"
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
                  location               = "count"
                  parent                 = "count"
                  parent_project_id      = "count"
                  ttl                    = "count"
                  version                = "count"
                }
                datasetQueryId = {
                  ignoreCompress = false
                  queryId        = "q-end5vnpa"
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
              id       = "step-wrlqgjzv"
              index    = 1
              isPinned = false
              opal = [
                "filter is_null(deleted)",
                "",
                "statsby count_distinct(asset_name), group_by(project_id,location, asset_namespace, asset_sub_type)",
                "",
                "pick_col ",
                "\t\"Project ID\": project_id,",
                "    \"Asset Namespace\": asset_namespace,",
                "    \"Location\":location,",
                "    \"Asset Type\": asset_sub_type,",
                "    \"Count\": count_distinct_asset_name",
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
                    filter is_null(deleted)
                    
                    statsby count_distinct(asset_name), group_by(project_id,location, asset_namespace, asset_sub_type)
                    
                    pick_col 
                    	"Project ID": project_id,
                        "Asset Namespace": asset_namespace,
                        "Location":location,
                        "Asset Type": asset_sub_type,
                        "Count": count_distinct_asset_name
                EOT
      },
      {
        id = "stage-gkw7clfc"
        input = [
          {
            datasetId   = "${local.metrics}"
            datasetPath = null
            inputName   = "eng/Metrics"
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
              "0" = "Project ID"
              "1" = "Service"
            }
            columnVisibility = {}
            columnWidths = {
              "Limit Name"     = 492
              "Quota Metric"   = 470
              Service          = 338
              Value            = 110
              metric_namespace = 303
            }
            containerWidth              = 1746
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
              datasetId   = "${local.metrics}"
              inputName   = "eng/Metrics"
              inputRole   = "Data"
              isUserInput = false
            },
          ]
          label = "Service Quotas"
          managers = [
            {
              id                     = "se4zo846"
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
            sort = [
              {
                ascending  = true
                columnName = "Project ID"
              },
              {
                ascending  = true
                columnName = "Service"
              },
              {
                ascending  = true
                columnName = "Limit Name"
              },
              {
                ascending  = true
                columnName = "Quota Metric"
              },
            ]
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
                  project_id       = "count"
                  resource_labels  = "count"
                  resource_type    = "count"
                  value            = "count"
                  value_type       = "count"
                  value_type_text  = "count"
                }
                datasetQueryId = {
                  ignoreCompress = false
                  queryId        = "q-cbk07ur0"
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
              customSummary = "eng/Metrics"
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
              id                = "step-xzgk4os1"
              index             = 0
              isPinned          = false
              opal              = []
              queryPresentation = {}
              type              = "InputStep"
            },
            {
              columnStatsTable = {
                columnFunctions = {
                  metric_kind      = "count"
                  metric_kind_text = "count"
                  metric_labels    = "count"
                  metric_namespace = "count"
                  metric_type      = "count"
                  project_id       = "count"
                  resource_labels  = "count"
                  resource_type    = "count"
                  value            = "count"
                  value_type       = "count"
                  value_type_text  = "count"
                }
                datasetQueryId = {
                  ignoreCompress = false
                  queryId        = "q-8n1fx93o"
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
              id       = "step-oczsmkic"
              index    = 1
              isPinned = false
              opal = [
                "",
              ]
              queryPresentation = {}
              type              = "unknown"
            },
            {
              action = {
                params = {
                  columnId    = "resource_type"
                  columnType  = "string"
                  filterVerb  = "filter"
                  isExcluding = false
                  values = [
                    "consumer_quota",
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
                  project_id       = "count"
                  resource_labels  = "count"
                  resource_type    = "count"
                  value            = "count"
                  value_type       = "count"
                  value_type_text  = "count"
                }
                datasetQueryId = {
                  ignoreCompress = false
                  queryId        = "q-zyrecolz"
                  resultKinds = [
                    "ResultKindSchema",
                    "ResultKindData",
                  ]
                  tableTypes = [
                    "TABULAR",
                  ]
                }
              }
              customSummary = "resource_type"
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
              id       = "step-zaxe5e1t"
              index    = 2
              isPinned = true
              opal = [
                "filter resource_type = \"consumer_quota\"",
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
                    "serviceruntime.googleapis.com/quota/limit",
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
                  project_id       = "count"
                  resource_labels  = "count"
                  resource_type    = "count"
                  value            = "count"
                  value_type       = "count"
                  value_type_text  = "count"
                }
                datasetQueryId = {
                  ignoreCompress = false
                  queryId        = "q-ry9063ur"
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
              id       = "step-4r2o3gns"
              index    = 3
              isPinned = false
              opal = [
                "filter metric_type = \"serviceruntime.googleapis.com/quota/limit\"",
              ]
              queryPresentation = {}
              type              = "unknown"
            },
            {
              columnStatsTable = {
                columnFunctions = {
                  metric_kind      = "count"
                  metric_kind_text = "count"
                  metric_labels    = "count"
                  metric_namespace = "count"
                  metric_type      = "count"
                  project_id       = "count"
                  resource_labels  = "count"
                  resource_type    = "count"
                  value            = "count"
                  value_type       = "count"
                  value_type_text  = "count"
                }
                datasetQueryId = {
                  ignoreCompress = false
                  queryId        = "q-o2utvcfu"
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
              id       = "step-pxctn2ia"
              index    = 4
              isPinned = false
              opal = [
                "make_col limit_name:string(metric_labels.limit_name),",
                "    quota_metric:string(metric_labels.quota_metric)",
                "make_col location:string(resource_labels.location),",
                "    project_id_1:string(resource_labels.project_id),",
                "    service:string(resource_labels.service)",
                "make_col text_val: string(value)",
                "filter text_val != \"9.22337203685478e+18\"",
                "",
                "statsby last(quota_metric), group_by(limit_name,quota_metric,project_id,service,value)",
                "pick_col ",
                "\t\"Limit Name\": limit_name,",
                "    \"Quota Metric\": quota_metric,",
                "    \"Project ID\":project_id,",
                "    \"Service\": service,",
                "    Value: value",
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
                    
                    filter resource_type = "consumer_quota"
                    filter metric_type = "serviceruntime.googleapis.com/quota/limit"
                    make_col limit_name:string(metric_labels.limit_name),
                        quota_metric:string(metric_labels.quota_metric)
                    make_col location:string(resource_labels.location),
                        project_id_1:string(resource_labels.project_id),
                        service:string(resource_labels.service)
                    make_col text_val: string(value)
                    filter text_val != "9.22337203685478e+18"
                    
                    statsby last(quota_metric), group_by(limit_name,quota_metric,project_id,service,value)
                    pick_col 
                    	"Limit Name": limit_name,
                        "Quota Metric": quota_metric,
                        "Project ID":project_id,
                        "Service": service,
                        Value: value
                        
                EOT
      },
      {
        id = "stage-e0juxi98"
        input = [
          {
            datasetId   = "${local.metrics}"
            datasetPath = null
            inputName   = "eng/Metrics"
            inputRole   = "Data"
            stageId     = null
          },
        ]
        layout = {
          appearance = "VISIBLE"
          dataTableViewState = {
            autoTableHeight    = false
            columnFooterHeight = 0
            columnHeaderHeight = 29
            columnOrderOverride = {
              "0" = "Project ID"
              "1" = "Service"
            }
            columnVisibility = {}
            columnWidths = {
              "Limit Name"     = 492
              "Quota Metric"   = 470
              Service          = 338
              Value            = 110
              metric_labels    = 937
              metric_namespace = 303
              value            = 120
            }
            containerWidth              = 1746
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
            tableHeight                = 315
            tableView                  = "TABULAR"
          }
          index = 2
          inputList = [
            {
              datasetId   = "${local.metrics}"
              inputName   = "eng/Metrics"
              inputRole   = "Data"
              isUserInput = false
            },
          ]
          label = "Exceeded Service Quotas"
          managers = [
            {
              id                     = "se4zo846"
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
            sort = [
              {
                ascending  = true
                columnName = "Project ID"
              },
              {
                ascending  = true
                columnName = "Service"
              },
              {
                ascending  = true
                columnName = "Limit Name"
              },
              {
                ascending  = true
                columnName = "Quota Metric"
              },
            ]
          }
          renderType     = "TABLE"
          selectedStepId = null
          serializable   = true
          steps = [
            {
              customName    = "Input"
              customSummary = "eng/Metrics"
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
              id                = "step-cv8c6vpk"
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
              id       = "step-0j79t9ky"
              index    = 1
              isPinned = false
              opal = [
                "",
              ]
              queryPresentation = {}
              type              = "unknown"
            },
            {
              action = {
                params = {
                  columnId    = "resource_type"
                  columnType  = "string"
                  filterVerb  = "filter"
                  isExcluding = false
                  values = [
                    "consumer_quota",
                  ]
                }
                summary = null
                type    = "FilterValues"
              }
              customSummary = "resource_type"
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
              id       = "step-mvub2vkv"
              index    = 2
              isPinned = true
              opal = [
                "filter resource_type = \"consumer_quota\"",
              ]
              queryPresentation = {}
              type              = "unknown"
            },
            {
              columnStatsTable = {
                columnFunctions = {}
                datasetQueryId = {
                  ignoreCompress = false
                  queryId        = "q-aeffb82o"
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
              id       = "step-cd7r8lv6"
              index    = 3
              isPinned = false
              opal = [
                "filter metric_type = \"serviceruntime.googleapis.com/quota/exceeded\"",
                "",
                "",
                "make_col limit_name:string(metric_labels.limit_name),",
                "    quota_metric:string(metric_labels.quota_metric)",
                "make_col location:string(resource_labels.location),",
                "    project_id_1:string(resource_labels.project_id),",
                "    service:string(resource_labels.service)",
                "// make_col text_val: string(value)",
                "// filter text_val != \"9.22337203685478e+18\"",
                "",
                "statsby last(quota_metric), group_by(limit_name,quota_metric,project_id,service,value)",
                "pick_col ",
                "\t\"Limit Name\": limit_name,",
                "    \"Quota Metric\": quota_metric,",
                "    \"Project ID\":project_id,",
                "    \"Service\": service,",
                "    Value: value",
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
                    
                    filter resource_type = "consumer_quota"
                    filter metric_type = "serviceruntime.googleapis.com/quota/exceeded"
                    
                    
                    make_col limit_name:string(metric_labels.limit_name),
                        quota_metric:string(metric_labels.quota_metric)
                    make_col location:string(resource_labels.location),
                        project_id_1:string(resource_labels.project_id),
                        service:string(resource_labels.service)
                    // make_col text_val: string(value)
                    // filter text_val != "9.22337203685478e+18"
                    
                    statsby last(quota_metric), group_by(limit_name,quota_metric,project_id,service,value)
                    pick_col 
                    	"Limit Name": limit_name,
                        "Quota Metric": quota_metric,
                        "Project ID":project_id,
                        "Service": service,
                        Value: value
                        
                EOT
      },
    ]
  )
  workspace = local.workspace_home
}

