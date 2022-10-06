
# terraform import observe_dashboard.gcp 41159274
resource "observe_dashboard" "gcp" {
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
                  h           = 17
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
                                        
                                        ${local.enable_service_cloudfunctions == true ? "- [CloudFunction Resources](/workspace/${local.workspace_id}/dataset/resource/Cloud-Functions-Instances-${one(module.cloudfunctions[*].function.id)}) - Cloud Function Resource dataset that GraphLinks to metrics and logs." : ""} 
                                        
                                        ${local.enable_service_cloudsql == true ? "- [CloudSQL Resources](/workspace/${local.workspace_id}/dataset/resource/Cloud-SQL-Instance-${one(module.cloudsql[*].cloudsql.id)}) - CloudSQL Resource dataset that GraphLinks to metrics and logs." : ""} 
                                        
                                        ${local.enable_service_compute == true ? "- [Compute Resources](/workspace/${local.workspace_id}/dataset/resource/Compute-Instance-${one(module.compute[*].compute.id)}) - Compute Resource dataset that GraphLinks to metrics and logs." : ""} 
                                        
                                        ${local.enable_service_load_balancing == true ? "- [LoadBalancing Resources](/workspace/${local.workspace_id}/dataset/resource/Load-Balancing-Load-Balancers-${one(module.load_balancing[*].load_balancers.id)}) - Load Balancer Resource dataset that GraphLinks to metrics and logs." : ""}
                                        
                                        ${local.enable_service_storage == true ? "- [Storage Resources](/workspace/${local.workspace_id}/dataset/resource/Storage-Buckets-${one(module.storage[*].storage.id)}) - Storage Bucket Resource dataset that GraphLinks to metrics and logs." : ""}

                                    EOT
                  title    = "Untitled Text"
                }
                layout = {
                  h           = 17
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
                                        
                                        - [Datastream](/workspace/${local.workspace_id}/dataset/event/${local.datastream_name}-${local.datastream_dataset_id}) - All other pre-built data sets for the GCP application are derived from here.
                                        
                                        - [Asset Inventory](/workspace/${local.workspace_id}/dataset/event/Asset-Inventory-Records-${local.asset_inventory})  - This shows a list of all GCP for each project you are collecting data for. Pre-built Resources are derived from this dataset. 
                                        
                                        - [Metrics](/workspace/${local.workspace_id}/dataset/event/Metrics-${local.metrics})  - This shows incoming data of all metrics you are collecting from GCP for each project you are collecting data for. Pre-built Resources metrics are derived from this dataset. 
                                        
                                        - [Logs](/workspace/${local.workspace_id}/dataset/event/Logs-${local.logs}) - This shows incoming log data for all logs you are collecting from GCP for each project you are collecting data for. Pre-built Resources logs are derived from this dataset.

                                    EOT
                  title    = "Untitled Text"
                }
                layout = {
                  h           = 17
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
              {
                card = {
                  cardType = "text"
                  id       = "card-0zqibgb1"
                  text     = <<-EOT
                                        ### Base Datasets
                                        
                                        - [Datastream](/workspace/${local.workspace_id}/dataset/event/${local.datastream_name}-${local.datastream_dataset_id}) - All other pre-built data sets for the GCP application are derived from here.
                                        
                                        - [Asset Inventory](/workspace/${local.workspace_id}/dataset/event/Asset-Inventory-Records-${local.asset_inventory})  - This shows a list of all GCP for each project you are collecting data for. Pre-built Resources are derived from this dataset. 
                                        
                                        - [Metrics](/workspace/${local.workspace_id}/dataset/event/Metrics-${local.metrics})  - This shows incoming data of all metrics you are collecting from GCP for each project you are collecting data for. Pre-built Resources metrics are derived from this dataset. 
                                        
                                        - [Logs](/workspace/${local.workspace_id}/dataset/event/Logs-${local.logs}) - This shows incoming log data for all logs you are collecting from GCP for each project you are collecting data for. Pre-built Resources logs are derived from this dataset.

                                    EOT
                  title    = "Untitled Text"
                }
                layout = {
                  h           = 17
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
              {
                card = {
                  cardType = "text"
                  id       = "card-wptvuu0s"
                  text     = <<-EOT
                                        ### Pre-built Content
                                        
                                        ${local.enable_service_cloudfunctions == true ? "- [CloudFunction Resources](/workspace/${local.workspace_id}/dataset/resource/Cloud-Functions-Instances-${one(module.cloudfunctions[*].function.id)}) - Cloud Function Resource dataset that GraphLinks to metrics and logs." : ""} 
                                        
                                        ${local.enable_service_cloudsql == true ? "- [CloudSQL Resources](/workspace/${local.workspace_id}/dataset/resource/Cloud-SQL-Instance-${one(module.cloudsql[*].cloudsql.id)}) - CloudSQL Resource dataset that GraphLinks to metrics and logs." : ""} 
                                        
                                        ${local.enable_service_compute == true ? "- [Compute Resources](/workspace/${local.workspace_id}/dataset/resource/Compute-Instance-${one(module.compute[*].compute.id)}) - Compute Resource dataset that GraphLinks to metrics and logs." : ""} 
                                        
                                        ${local.enable_service_load_balancing == true ? "- [LoadBalancing Resources](/workspace/${local.workspace_id}/dataset/resource/Load-Balancing-Load-Balancers-${one(module.load_balancing[*].load_balancers.id)}) - Load Balancer Resource dataset that GraphLinks to metrics and logs." : ""}
                                        
                                        ${local.enable_service_storage == true ? "- [Storage Resources](/workspace/${local.workspace_id}/dataset/resource/Storage-Buckets-${one(module.storage[*].storage.id)}) - Storage Bucket Resource dataset that GraphLinks to metrics and logs." : ""}

                                    EOT
                  title    = "Untitled Text"
                }
                layout = {
                  h           = 17
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
                  id       = "card-wptvuu0s"
                  text     = <<-EOT
                                        ### Pre-built Content
                                        
                                        ${local.enable_service_cloudfunctions == true ? "- [CloudFunction Resources](/workspace/${local.workspace_id}/dataset/resource/Cloud-Functions-Instances-${one(module.cloudfunctions[*].function.id)}) - Cloud Function Resource dataset that GraphLinks to metrics and logs." : ""} 
                                        
                                        ${local.enable_service_cloudsql == true ? "- [CloudSQL Resources](/workspace/${local.workspace_id}/dataset/resource/Cloud-SQL-Instance-${one(module.cloudsql[*].cloudsql.id)}) - CloudSQL Resource dataset that GraphLinks to metrics and logs." : ""} 
                                        
                                        ${local.enable_service_compute == true ? "- [Compute Resources](/workspace/${local.workspace_id}/dataset/resource/Compute-Instance-${one(module.compute[*].compute.id)}) - Compute Resource dataset that GraphLinks to metrics and logs." : ""} 
                                        
                                        ${local.enable_service_load_balancing == true ? "- [LoadBalancing Resources](/workspace/${local.workspace_id}/dataset/resource/Load-Balancing-Load-Balancers-${one(module.load_balancing[*].load_balancers.id)}) - Load Balancer Resource dataset that GraphLinks to metrics and logs." : ""}
                                        
                                        ${local.enable_service_storage == true ? "- [Storage Resources](/workspace/${local.workspace_id}/dataset/resource/Storage-Buckets-${one(module.storage[*].storage.id)}) - Storage Bucket Resource dataset that GraphLinks to metrics and logs." : ""}

                                    EOT
                  title    = "Untitled Text"
                }
                layout = {
                  h           = 17
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
            ]
            lastModified = 1664916222772
          },
          {
            card = {
              cardType = "section"
              closed   = true
              id       = "section-92z1wyh8"
              title    = "Services Enabled"
            }
            items = [
              {
                card = {
                  cardType = "stage"
                  id       = "card-q2f6wysu"
                  stageId  = "stage-jg3s29as"
                }
                layout = {
                  h           = 66
                  i           = "card-q2f6wysu"
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
              closed   = true
              id       = "section-2ennmvaq"
              title    = "Quotas"
            }
            items = [
              {
                card = {
                  cardType    = "parameter"
                  id          = "card-9xir1kyl"
                  parameterId = "service"
                }
                layout = {
                  h           = 4
                  i           = "card-9xir1kyl"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  resizeHandles = [
                    "e",
                  ]
                  static = false
                  w      = 4
                  x      = 0
                  y      = 19
                }
              },
              {
                card = {
                  cardType    = "parameter"
                  id          = "card-wc8kf2et"
                  parameterId = "metricquota"
                }
                layout = {
                  h           = 4
                  i           = "card-wc8kf2et"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  resizeHandles = [
                    "e",
                  ]
                  static = false
                  w      = 4
                  x      = 4
                  y      = 19
                }
              },
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
                  y           = 23
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-aujsp9v0"
                  stageId  = "stage-gkw7clfc"
                }
                layout = {
                  h           = 21
                  i           = "card-aujsp9v0"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 12
                  x           = 0
                  y           = 34
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-l7ao109i"
                  stageId  = "stage-a13mhjv1"
                }
                layout = {
                  h           = 20
                  i           = "card-l7ao109i"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 12
                  x           = 0
                  y           = 55
                }
              },
            ]
            lastModified = 1664929997467
          },
          {
            card = {
              cardType = "section"
              closed   = true
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
                  y           = 21
                }
              },
              {
                card = {
                  cardType = "text"
                  id       = "card-ukkzr0kh"
                  title    = "Untitled Text"
                }
                layout = {
                  h           = 12
                  i           = "card-ukkzr0kh"
                  isDraggable = true
                  moved       = false
                  static      = false
                  w           = 4
                  x           = 8
                  y           = 21
                }
              },
              {
                card = {
                  cardType = "text"
                  id       = "card-ukkzr0kh"
                  title    = "Untitled Text"
                }
                layout = {
                  h           = 12
                  i           = "card-ukkzr0kh"
                  isDraggable = true
                  moved       = false
                  static      = false
                  w           = 4
                  x           = 8
                  y           = 21
                }
              },
            ]
            lastModified = 1665033462318
          },
          {
            card = {
              cardType = "section"
              closed   = true
              id       = "section-uqx16a6m"
              title    = "Metrics Collected"
            }
            items = [
              {
                card = {
                  cardType    = "parameter"
                  id          = "card-h6tlj8g4"
                  parameterId = "metricNamespace"
                }
                layout = {
                  h           = 4
                  i           = "card-h6tlj8g4"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  resizeHandles = [
                    "e",
                  ]
                  static = false
                  w      = 4
                  x      = 0
                  y      = 23
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-gy2pfipq"
                  stageId  = "stage-xm4ikkw0"
                }
                layout = {
                  h           = 35
                  i           = "card-gy2pfipq"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 12
                  x           = 0
                  y           = 27
                }
              },
            ]
            lastModified = 1665033885790
          },
        ]
      }
      stageListLayout = {
        isModified = false
        parameters = [
          {
            allowEmpty = true
            defaultValue = {
              string = ""
            }
            emptyValueEncoding    = "Empty String"
            emptyValueLabelOption = "All Values"
            id                    = "service"
            name                  = "Service"
            source                = "Stage"
            sourceColumnId        = "service"
            sourceStageId         = "stage-lf3a7qhg"
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
            id                    = "metricquota"
            name                  = "Metric Quota"
            source                = "Stage"
            sourceColumnId        = "quota_metric"
            sourceStageId         = "stage-x6nmofd9"
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
            id                    = "metricNamespace"
            name                  = "Metric Namespace"
            source                = "Stage"
            sourceColumnId        = "metric_namespace"
            sourceStageId         = "stage-pha843lz"
            valueKind = {
              type = "STRING"
            }
            viewType = "single-select"
          },
        ]
        selectedStageId = "stage-xm4ikkw0"
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
  name = local.dashboard_name_home
  parameters = jsonencode(
    [
      {
        defaultValue = {
          array      = null
          bool       = null
          datasetref = null
          float64    = null
          int64      = null
          link       = null
          string     = ""
        }
        id   = "service"
        name = "Service"
        valueKind = {
          arrayItemType   = null
          keyForDatasetId = null
          type            = "STRING"
        }
      },
      {
        defaultValue = {
          array      = null
          bool       = null
          datasetref = null
          float64    = null
          int64      = null
          link       = null
          string     = ""
        }
        id   = "metricquota"
        name = "Metric Quota"
        valueKind = {
          arrayItemType   = null
          keyForDatasetId = null
          type            = "STRING"
        }
      },
      {
        defaultValue = {
          array      = null
          bool       = null
          datasetref = null
          float64    = null
          int64      = null
          link       = null
          string     = ""
        }
        id   = "metricNamespace"
        name = "Metric Namespace"
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
        id = "stage-f2a7cr3f"
        input = [
          {
            datasetId   = "${local.resources_asset_inventory}"
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
          index = 0
          inputList = [
            {
              datasetId   = "${local.resources_asset_inventory}"
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
              Location         = 134
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
                  queryId        = "q-osjz3sy9"
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
              id       = "step-pooo8r8d"
              index    = 4
              isPinned = false
              opal = [
                "make_col limit_name:string(metric_labels.limit_name),",
                "    quota_metric:string(metric_labels.quota_metric)",
                "make_col location:string(resource_labels.location),",
                "    project_id_1:string(resource_labels.project_id),",
                "    service:string(resource_labels.service)",
                "make_col text_val: string(value)",
                "",
                "filter $service = \"\" or service =  $service",
                "",
                "filter $metricquota = \"\" or quota_metric =  $metricquota",
                "",
                "filter text_val != \"9.22337203685478e+18\"",
                "",
                "statsby last(quota_metric), group_by(limit_name,quota_metric,project_id,location,service,value)",
                "pick_col ",
                "\t\"Limit Name\": limit_name,",
                "    \"Quota Metric\": quota_metric,",
                "    \"Project ID\":project_id,",
                "    \"Location\": location,",
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
                    
                    filter $service = "" or service =  $service
                    
                    filter $metricquota = "" or quota_metric =  $metricquota
                    
                    filter text_val != "9.22337203685478e+18"
                    
                    statsby last(quota_metric), group_by(limit_name,quota_metric,project_id,location,service,value)
                    pick_col 
                    	"Limit Name": limit_name,
                        "Quota Metric": quota_metric,
                        "Project ID":project_id,
                        "Location": location,
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
                  queryId        = "q-f5zsqamr"
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
              id       = "step-ttillzdl"
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
                "statsby last(quota_metric), group_by(limit_name,quota_metric,project_id,location,service,value)",
                "pick_col ",
                "\t\"Limit Name\": limit_name,",
                "    \"Quota Metric\": quota_metric,",
                "    \"Project ID\":project_id,",
                "    \"Location\": location,",
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
                    
                    statsby last(quota_metric), group_by(limit_name,quota_metric,project_id,location,service,value)
                    pick_col 
                    	"Limit Name": limit_name,
                        "Quota Metric": quota_metric,
                        "Project ID":project_id,
                        "Location": location,
                        "Service": service,
                        Value: value
                        
                EOT
      },
      {
        id = "stage-jg3s29as"
        input = [
          {
            datasetId   = "${local.asset_inventory}"
            datasetPath = null
            inputName   = "eng/Asset Inventory Records"
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
            columnVisibility = {
              last_time = false
            }
            columnWidths = {
              name    = 778
              service = 356
              state   = 104
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
          index = 3
          inputList = [
            {
              datasetId   = "${local.asset_inventory}"
              inputName   = "eng/Asset Inventory Records"
              inputRole   = "Data"
              isUserInput = false
            },
          ]
          label = "Services Enabled"
          managers = [
            {
              id                     = "jeobf9o3"
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
                  access_policy = "count"
                  ancestors     = "count"
                  asset_type    = "count"
                  attributes    = "count"
                  deleted       = "count"
                  iam_policy    = "count"
                  name          = "count"
                  org_policy    = "count"
                  resource      = "count"
                }
                datasetQueryId = {
                  ignoreCompress = false
                  queryId        = "q-ckf0adj4"
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
              customSummary = "eng/Asset Inventory Records"
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
              id                = "step-1whg35df"
              index             = 0
              isPinned          = false
              opal              = []
              queryPresentation = {}
              type              = "InputStep"
            },
            {
              columnStatsTable = {
                columnFunctions = {
                  access_policy = "count"
                  ancestors     = "count"
                  asset_type    = "count"
                  attributes    = "count"
                  deleted       = "count"
                  iam_policy    = "count"
                  name          = "count"
                  org_policy    = "count"
                  resource      = "count"
                  service       = "count"
                  state         = "count"
                }
                datasetQueryId = {
                  ignoreCompress = false
                  queryId        = "q-a0xfteny"
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
              id       = "step-d9hotbf9"
              index    = 1
              isPinned = false
              opal = [
                "filter asset_type = \"serviceusage.googleapis.com/Service\"",
                "make_col data: resource.data",
                "filter string(data.state) = \"ENABLED\"",
                "",
                "make_col service: string(data.name)",
                "",
                "pick_col ",
                "\ttime,",
                "\tupdate_time,",
                "\tname,",
                "    service,",
                "    state: string(data.state)",
                "    ",
                "statsby last(time), group_by(name, service, state)",
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
                    filter asset_type = "serviceusage.googleapis.com/Service"
                    make_col data: resource.data
                    filter string(data.state) = "ENABLED"
                    
                    make_col service: string(data.name)
                    
                    pick_col 
                    	time,
                    	update_time,
                    	name,
                        service,
                        state: string(data.state)
                        
                    statsby last(time), group_by(name, service, state)
                EOT
      },
      {
        id = "stage-a13mhjv1"
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
              Location         = 134
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
          index = 4
          inputList = [
            {
              datasetId   = "${local.metrics}"
              inputName   = "eng/Metrics"
              inputRole   = "Data"
              isUserInput = false
            },
          ]
          label = "Service Quota Usage"
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
              id                = "step-plfn1z42"
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
              id       = "step-2uluxto3"
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
              id       = "step-auctgzu9"
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
                  queryId        = "q-a4q6drsc"
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
              id       = "step-n5snl84w"
              index    = 3
              isPinned = false
              opal = [
                "filter metric_type = \"serviceruntime.googleapis.com/quota/allocation/usage\"",
                "make_col ",
                "    quota_metric:string(metric_labels.quota_metric)",
                "make_col location:string(resource_labels.location),",
                "    project_id_1:string(resource_labels.project_id),",
                "    service:string(resource_labels.service)",
                "make_col text_val: string(value)",
                "filter text_val != \"9.22337203685478e+18\"",
                "",
                "filter $service = \"\" or service =  $service",
                "",
                "filter $metricquota = \"\" or quota_metric =  $metricquota",
                "",
                "statsby last(quota_metric), group_by(quota_metric,project_id,location,service,value)",
                "pick_col ",
                "    \"Quota Metric\": quota_metric,",
                "    \"Project ID\":project_id,",
                "    \"Location\": location,",
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
                    filter metric_type = "serviceruntime.googleapis.com/quota/allocation/usage"
                    make_col 
                        quota_metric:string(metric_labels.quota_metric)
                    make_col location:string(resource_labels.location),
                        project_id_1:string(resource_labels.project_id),
                        service:string(resource_labels.service)
                    make_col text_val: string(value)
                    filter text_val != "9.22337203685478e+18"
                    
                    filter $service = "" or service =  $service
                    
                    filter $metricquota = "" or quota_metric =  $metricquota
                    
                    statsby last(quota_metric), group_by(quota_metric,project_id,location,service,value)
                    pick_col 
                        "Quota Metric": quota_metric,
                        "Project ID":project_id,
                        "Location": location,
                        "Service": service,
                        Value: value
                        
                EOT
      },
      {
        id = "stage-lf3a7qhg"
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
              Location         = 134
              "Quota Metric"   = 470
              Service          = 338
              Value            = 110
              metric_namespace = 303
              service          = 317
            }
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
              datasetId   = "${local.metrics}"
              inputName   = "eng/Metrics"
              inputRole   = "Data"
              isUserInput = false
            },
          ]
          label = "Service Dropdown"
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
              id                = "step-qetcvy0x"
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
              id       = "step-ml6qhzqz"
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
              id       = "step-k2xsiuqx"
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
              id       = "step-kxz9stlf"
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
                columnFunctions = {}
                datasetQueryId = {
                  ignoreCompress = false
                  queryId        = "q-umn8b4mu"
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
              id       = "step-ynv5wlky"
              index    = 4
              isPinned = false
              opal = [
                "make_col limit_name:string(metric_labels.limit_name),",
                "    quota_metric:string(metric_labels.quota_metric)",
                "make_col ",
                "    service:string(resource_labels.service)",
                "make_col text_val: string(value)",
                "",
                "filter text_val != \"9.22337203685478e+18\"",
                "",
                "statsby count(1), group_by(service)",
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
                    make_col 
                        service:string(resource_labels.service)
                    make_col text_val: string(value)
                    
                    filter text_val != "9.22337203685478e+18"
                    
                    statsby count(1), group_by(service)
                    
                EOT
      },
      {
        id = "stage-x6nmofd9"
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
              Location         = 134
              "Quota Metric"   = 470
              Service          = 338
              Value            = 110
              metric_namespace = 303
              quota_metric     = 318
              service          = 317
            }
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
              datasetId   = "${local.metrics}"
              inputName   = "eng/Metrics"
              inputRole   = "Data"
              isUserInput = false
            },
          ]
          label = "Quota Metric Dropdown"
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
              id                = "step-z6qecloz"
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
              id       = "step-ioqyxvy9"
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
              id       = "step-3bg9745j"
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
              id       = "step-ovrvx1vc"
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
                columnFunctions = {}
                datasetQueryId = {
                  ignoreCompress = false
                  queryId        = "q-0nwaxl3i"
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
              id       = "step-qhbi85be"
              index    = 4
              isPinned = false
              opal = [
                "make_col limit_name:string(metric_labels.limit_name),",
                "    quota_metric:string(metric_labels.quota_metric)",
                "make_col ",
                "    service:string(resource_labels.service)",
                "make_col text_val: string(value)",
                "",
                "",
                "filter text_val != \"9.22337203685478e+18\"",
                "",
                "",
                "filter $service = \"\" or service =  $service",
                "",
                "statsby count(1), group_by(quota_metric)",
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
                    make_col 
                        service:string(resource_labels.service)
                    make_col text_val: string(value)
                    
                    
                    filter text_val != "9.22337203685478e+18"
                    
                    
                    filter $service = "" or service =  $service
                    
                    statsby count(1), group_by(quota_metric)
                    
                EOT
      },
      {
        id = "stage-xm4ikkw0"
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
            autoTableHeight     = true
            columnFooterHeight  = 0
            columnHeaderHeight  = 29
            columnOrderOverride = {}
            columnVisibility = {
              count = false
            }
            columnWidths = {
              metric_namespace = 356
              metric_type      = 647
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
              datasetId   = "${local.metrics}"
              inputName   = "eng/Metrics"
              inputRole   = "Data"
              isUserInput = false
            },
          ]
          label = "Metrics Collecting"
          managers = [
            {
              id                     = "2l78zt6r"
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
                columnName = "metric_namespace"
              },
              {
                ascending  = true
                columnName = "metric_type"
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
                  queryId        = "q-ossr9k3i"
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
              id                = "step-gb7xifug"
              index             = 0
              isPinned          = false
              opal              = []
              queryPresentation = {}
              type              = "InputStep"
            },
            {
              columnStatsTable = {
                columnFunctions = {
                  count            = "count"
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
                  queryId        = "q-klwjcqm7"
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
              id       = "step-ynq0n5gl"
              index    = 1
              isPinned = false
              opal = [
                "filter $metricNamespace = \"\" or metric_namespace =  $metricNamespace",
                "",
                "statsby count(1), group_by(metric_namespace,metric_type)",
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
                    filter $metricNamespace = "" or metric_namespace =  $metricNamespace
                    
                    statsby count(1), group_by(metric_namespace,metric_type)
                EOT
      },
      {
        id = "stage-pha843lz"
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
            autoTableHeight     = true
            columnFooterHeight  = 0
            columnHeaderHeight  = 29
            columnOrderOverride = {}
            columnVisibility = {
              count = false
            }
            columnWidths = {
              metric_namespace = 374
              metric_type      = 542
            }
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
              datasetId   = "${local.metrics}"
              inputName   = "eng/Metrics"
              inputRole   = "Data"
              isUserInput = false
            },
          ]
          label = "Metrics Namespace Dropdown"
          managers = [
            {
              id                     = "2l78zt6r"
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
                columnName = "metric_namespace"
              },
              {
                ascending  = true
                columnName = "metric_type"
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
              id                = "step-a41t34oj"
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
                  queryId        = "q-bm17hcsv"
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
              id       = "step-0ws3gq7d"
              index    = 1
              isPinned = false
              opal = [
                "statsby count(1), group_by(metric_namespace)",
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
        pipeline = "statsby count(1), group_by(metric_namespace)"
      },
    ]
  )
  workspace = local.workspace
}

