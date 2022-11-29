
# terraform import observe_dashboard.compute_monitoring_ 41145293
resource "observe_dashboard" "compute_monitoring" {
  count = local.enable_metrics ? 1 : 0
  layout = jsonencode(
    {
      gridLayout = {
        sections = [
          {
            card = {
              cardType = "section"
              closed   = false
              id       = "section-di408x2m"
              title    = "Dashboard Content"
            }
            items        = []
            lastModified = 1659627562394
          },
          {
            card = {
              cardType = "section"
              closed   = false
              id       = "card-4cs9otf1"
              title    = "Overview"
            }
            items = [
              {
                card = {
                  cardType = "stage"
                  id       = "card-7k215juk"
                  stageId  = "stage-hk634e8f"
                }
                layout = {
                  h           = 7
                  i           = "card-7k215juk"
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
                  cardType = "stage"
                  id       = "card-nc07vktx"
                  stageId  = "stage-i9te03n4"
                }
                layout = {
                  h           = 7
                  i           = "card-nc07vktx"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 6
                  x           = 6
                  y           = 0
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-vb33hfgz"
                  stageId  = "stage-x2r9aqus"
                }
                layout = {
                  h           = 10
                  i           = "card-vb33hfgz"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 12
                  x           = 0
                  y           = 7
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-1bqrigg8"
                  stageId  = "stage-xjztexw9"
                }
                layout = {
                  h           = 11
                  i           = "card-1bqrigg8"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 3
                  x           = 6
                  y           = 17
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-r1a2n89m"
                  stageId  = "stage-auesy2zu"
                }
                layout = {
                  h           = 11
                  i           = "card-r1a2n89m"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 3
                  x           = 9
                  y           = 17
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-l8t5cymv"
                  stageId  = "stage-4zw73l75"
                }
                layout = {
                  h           = 11
                  i           = "card-l8t5cymv"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 3
                  x           = 0
                  y           = 17
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-brsnfhxe"
                  stageId  = "stage-fnyfu38e"
                }
                layout = {
                  h           = 11
                  i           = "card-brsnfhxe"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 3
                  x           = 3
                  y           = 17
                }
              },
            ]
            lastModified = 1659628508007
          },
          {
            card = {
              cardType = "section"
              closed   = false
              id       = "card-wu4dge2k"
              title    = "CPU"
            }
            items = [
              {
                card = {
                  cardType = "stage"
                  id       = "card-gkgyd2ye"
                  stageId  = "stage-pmsu1uzz"
                }
                layout = {
                  h           = 12
                  i           = "card-gkgyd2ye"
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
              id       = "card-2s9x370q"
              title    = "Disk"
            }
            items = [
              {
                card = {
                  cardType = "stage"
                  id       = "card-0q2x67lm"
                  stageId  = "stage-j7trzfmb"
                }
                lastModified = 1660097976859
                layout = {
                  h           = 10
                  i           = "card-0q2x67lm---1660097976859"
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
                  id       = "card-mjkh4ngo"
                  stageId  = "stage-kmd3xtah"
                }
                lastModified = 1660097976859
                layout = {
                  h           = 10
                  i           = "card-mjkh4ngo---1660097976859"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 12
                  x           = 0
                  y           = 10
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-bgz05bnl"
                  stageId  = "stage-7schdd0k"
                }
                layout = {
                  h           = 10
                  i           = "card-bgz05bnl"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 12
                  x           = 0
                  y           = 20
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-winlpmqz"
                  stageId  = "stage-d4h31odg"
                }
                layout = {
                  h           = 9
                  i           = "card-winlpmqz"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 12
                  x           = 0
                  y           = 30
                }
              },
            ]
          },
          {
            card = {
              cardType = "section"
              closed   = false
              id       = "card-gu5msvjd"
              title    = "Network"
            }
            items = [
              {
                card = {
                  cardType = "stage"
                  id       = "card-sm9216iy"
                  stageId  = "stage-3ks89dsy"
                }
                layout = {
                  h           = 10
                  i           = "card-sm9216iy"
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
                  id       = "card-x70d6v1z"
                  stageId  = "stage-q8h3nsju"
                }
                layout = {
                  h           = 10
                  i           = "card-x70d6v1z"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 12
                  x           = 0
                  y           = 10
                }
              },
            ]
          },
          {
            card = {
              cardType = "section"
              closed   = true
              id       = "card-lthicc23"
              title    = "Instance Details"
            }
            items = [
              {
                card = {
                  cardType = "stage"
                  id       = "card-zde1vi58"
                  stageId  = "stage-vfqqg8en"
                }
                layout = {
                  h           = 20
                  i           = "card-zde1vi58"
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
              id       = "card-gif56xru"
              title    = "Notes"
            }
            items = [
              {
                card = {
                  cardType = "text"
                  id       = "card-gphac4sh"
                  text     = <<-EOT
                                        ### Using this dashboard
                                                                                                                                                                                                        
                                        This dashboard is designed to be used within the Compute resource dataset.
                                                                                                                                                                                                        
                                        Change the dropdown in top left corner of honeycomb to select attributes to group resources.
                                                                                                                                                                                                        
                                        ### Google Compute
                                                                                                                                                                                                        
                                        [https://cloud.google.com/compute/docs](https://cloud.google.com/compute/docs)
                                                                                                                                                                                                        
                                        Compute Engine is a computing and hosting service that lets you create and run virtual machines on Google infrastructure. Compute Engine offers scale, performance, and value that lets you easily launch large compute clusters on Google's infrastructure. There are no upfront investments, and you can run thousands of virtual CPUs on a system that offers quick, consistent performance.
                                                                                                                                                                                                        
                                        ### What is a Compute instance?
                                                                                                                                                                                                        
                                        An instance is a virtual machine (VM) hosted on Google's infrastructure. You can create an instance or create a group of managed instances by using the Google Cloud console, the Google Cloud CLI, or the Compute Engine API.
                                                                                                                                                                                                        
                                        Compute Engine instances can run the public images for Linux and Windows Server that Google provides as well as private custom images that you can create or import from your existing systems. You can also deploy Docker containers, which are automatically launched on instances running the Container-Optimized OS public image.
                                    EOT
                  title    = "Untitled Text"
                }
                layout = {
                  h           = 34
                  i           = "card-gphac4sh"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 6
                  x           = 0
                  y           = 109
                }
              },
              {
                card = {
                  cardType = "text"
                  id       = "card-mnikaigs"
                  text     = <<-EOT
                                        ### Notes
                                        Metrics are sampled every 60s and may take up to 240s to display.
                                                                                                                                                                                                        
                                        To use this application you must implement the terraform-google-collection and the terraform google module with either the enable_service_all or the enable_service_compute set to true.
                                                                                                                                                                                                        
                                        If you are looking to monitor the **operating systems or processes running on these GCP instances**, then you want to look into the [Host Monitoring](https://docs.observeinc.com/en/latest/content/integrations/linux/linux.html) module instead.
                                                                                                                                                                                                        
                                        ### Metric Types
                                                                                                                                                                                                        
                                        A gauge metric, in which the value measures a specific instant in time. For example, metrics measuring CPU utilization are gauge metrics; each point records the CPU utilization at the time of measurement. Another example of a gauge metric is the current temperature.
                                                                                                                                                                                                        
                                        A delta metric, in which the value measures the change since it was last recorded. For example, metrics measuring request counts are delta metrics; each value records how many requests were received since the last data point was recorded.
                                                                                                                                                                                                        
                                        A cumulative metric, in which the value constantly increases over time. For example, a metric for sent bytes might be cumulative; each value records the total number of bytes sent by a service at that time.
                                    EOT
                  title    = "Untitled Text"
                }
                layout = {
                  h           = 34
                  i           = "card-mnikaigs"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 6
                  x           = 6
                  y           = 109
                }
              },
            ]
            lastModified = 1663601045463
          },
        ]
      }
      stageListLayout = {
        isModified = false
        parameters = [
          {
            controlledFilterStageId = "stage-heng8s54"
            datasetId               = "${local.compute_instance}"
            defaultValue = {
              datasetref = {
                datasetId = "${local.compute_instance}"
              }
            }
            emptyValueEncoding    = "null"
            emptyValueLabelOption = "null"
            id                    = "computeID"
            name                  = "Compute Instance"
            valueKind = {
              type = "DATASETREF"
            }
            viewType = "input"
          },
        ]
        selectedStageId = "stage-x2r9aqus"
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
            datasetId   = "${local.compute_instance}"
            datasetPath = null
            stageId     = null
          }
          float64 = null
          int64   = null
          link    = null
          string  = null
        }
        id   = "computeID"
        name = "Compute Instance"
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
        id = "stage-qr6xpot1"
        input = [
          {
            datasetId   = null
            datasetPath = null
            inputName   = "computeID"
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
              "1" = "name"
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
          index = 0
          inputList = [
            {
              inputName   = "computeID"
              inputRole   = "Data"
              isUserInput = false
              parameterId = "computeID"
            },
          ]
          label = "Instances"
          managers = [
            {
              id                     = "pde7pm95"
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
              columnStatsTable = {
                columnFunctions = {
                  assetInventoryName = "count"
                  cpuPlatform        = "count"
                  deleted            = "count"
                  instance_id        = "count"
                  machineType        = "count"
                  name               = "count"
                  project_id         = "count"
                  region             = "count"
                  status             = "count"
                  ttl                = "count"
                }
                datasetQueryId = {
                  ignoreCompress = false
                  queryId        = "q-66xu8an3"
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
              customSummary = "computeID"
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
              id                = "step-wzl0oqwe"
              index             = 0
              isPinned          = false
              opal              = []
              queryPresentation = {}
              type              = "InputStep"
            },
            {
              columnStatsTable = {
                columnFunctions = {
                  assetInventoryName = "count"
                  cpuPlatform        = "count"
                  deleted            = "count"
                  instance_id        = "count"
                  instance_name      = "count"
                  machineType        = "count"
                  name               = "count"
                  project_id         = "count"
                  region             = "count"
                  status             = "count"
                  ttl                = "count"
                }
                datasetQueryId = {
                  ignoreCompress = false
                  queryId        = "q-ot0gvot7"
                  resultKinds = [
                    "ResultKindSchema",
                    "ResultKindData",
                  ]
                  tableTypes = [
                    "TABULAR",
                  ]
                }
              }
              customName    = "pick_col (custom)"
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
              id       = "step-l53wuyvp"
              index    = 1
              isPinned = false
              opal = [
                "pick_col ",
                "\t@.\"Valid From\",",
                "    @.\"Valid To\",",
                "    computeInstanceAssetKey,",
                "    instance_name,",
                "    status,",
                "    machineType",
                "    ",
                "colshow computeInstanceAssetKey: false",
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
            scriptTab     = "INPUTS"
            showTimeRuler = true
            stageTab      = "table"
          }
        }
        params   = null
        pipeline = <<-EOT
                    pick_col 
                    	@."Valid From",
                        @."Valid To",
                        computeInstanceAssetKey,
                        instance_name,
                        status,
                        machineType
                        
                    colshow computeInstanceAssetKey: false
                EOT
      },
      {
        id = "stage-auesy2zu"
        input = [
          {
            datasetId   = null
            datasetPath = null
            inputName   = "computeID"
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
              "1" = "name"
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
          index = 1
          inputList = [
            {
              inputName   = "computeID"
              inputRole   = "Data"
              isUserInput = false
              parameterId = "computeID"
            },
          ]
          label = "Machine Type"
          managers = [
            {
              id                     = "tc61ge99"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "ye665vef"
              isDisabled = false
              type       = "Vis"
              vis = {
                config = {
                  innerRadius = 0.6
                  legend = {
                    placement = "right"
                    type      = "table"
                    visible   = true
                  }
                  type = "arc"
                }
                source = {
                  table = {
                    keyField = [
                      "machineType",
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
                    valueField    = "machineType"
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
            rollup      = {}
            wantBuckets = 1
          }
          renderType     = "TABLE"
          selectedStepId = null
          serializable   = true
          steps = [
            {
              columnStatsTable = {
                columnFunctions = {
                  assetInventoryName = "count"
                  cpuPlatform        = "count"
                  deleted            = "count"
                  instance_id        = "count"
                  machineType        = "count"
                  name               = "count"
                  project_id         = "count"
                  region             = "count"
                  status             = "count"
                  ttl                = "count"
                }
                datasetQueryId = {
                  ignoreCompress = false
                  queryId        = "q-v0yleafm"
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
              customSummary = "computeID"
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
              id                = "step-9jnt7ixg"
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
            stageTab      = "vis"
          }
        }
        params   = null
        pipeline = ""
      },
      {
        id = "stage-4zw73l75"
        input = [
          {
            datasetId   = null
            datasetPath = null
            inputName   = "computeID"
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
              "1" = "name"
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
          index = 2
          inputList = [
            {
              inputName   = "computeID"
              inputRole   = "Data"
              isUserInput = false
              parameterId = "computeID"
            },
          ]
          label = "Region"
          managers = [
            {
              id                     = "vk5cylq8"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "g9olxgu1"
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
            rollup      = {}
            wantBuckets = 1
          }
          renderType     = "TABLE"
          selectedStepId = null
          serializable   = true
          steps = [
            {
              columnStatsTable = {
                columnFunctions = {
                  assetInventoryName = "count"
                  cpuPlatform        = "count"
                  deleted            = "count"
                  instance_id        = "count"
                  machineType        = "count"
                  name               = "count"
                  project_id         = "count"
                  region             = "count"
                  status             = "count"
                  ttl                = "count"
                }
                datasetQueryId = {
                  ignoreCompress = false
                  queryId        = "q-25n3oxvk"
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
              customSummary = "computeID"
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
              id                = "step-5gz936i5"
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
            scriptTab     = "INPUTS"
            showTimeRuler = true
            stageTab      = "vis"
          }
        }
        params   = null
        pipeline = ""
      },
      {
        id = "stage-fnyfu38e"
        input = [
          {
            datasetId   = null
            datasetPath = null
            inputName   = "computeID"
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
              "1" = "name"
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
          index = 3
          inputList = [
            {
              inputName   = "computeID"
              inputRole   = "Data"
              isUserInput = false
              parameterId = "computeID"
            },
          ]
          label = "Zone"
          managers = [
            {
              id                     = "c8xmld0s"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "bt3zb5wh"
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
                      "zone",
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
                    valueField    = "zone"
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
            rollup      = {}
            wantBuckets = 1
          }
          renderType     = "TABLE"
          selectedStepId = null
          serializable   = true
          steps = [
            {
              columnStatsTable = {
                columnFunctions = {
                  assetInventoryName = "count"
                  cpuPlatform        = "count"
                  deleted            = "count"
                  instance_id        = "count"
                  machineType        = "count"
                  name               = "count"
                  project_id         = "count"
                  region             = "count"
                  status             = "count"
                  ttl                = "count"
                  zone               = "count"
                }
                datasetQueryId = {
                  ignoreCompress = false
                  queryId        = "q-5s6lwo9d"
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
              customSummary = "computeID"
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
              id                = "step-l6g03l0l"
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
            stageTab      = "vis"
          }
        }
        params   = null
        pipeline = ""
      },
      {
        id = "stage-xjztexw9"
        input = [
          {
            datasetId   = null
            datasetPath = null
            inputName   = "computeID"
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
              "1" = "name"
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
          index = 4
          inputList = [
            {
              inputName   = "computeID"
              inputRole   = "Data"
              isUserInput = false
              parameterId = "computeID"
            },
          ]
          label = "Projects"
          managers = [
            {
              id                     = "od7gg294"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "zxbqncia"
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
            rollup      = {}
            wantBuckets = 1
          }
          renderType     = "TABLE"
          selectedStepId = null
          serializable   = true
          steps = [
            {
              columnStatsTable = {
                columnFunctions = {
                  assetInventoryName = "count"
                  cpuPlatform        = "count"
                  deleted            = "count"
                  instance_id        = "count"
                  machineType        = "count"
                  name               = "count"
                  project_id         = "count"
                  region             = "count"
                  status             = "count"
                  ttl                = "count"
                  zone               = "count"
                }
                datasetQueryId = {
                  ignoreCompress = false
                  queryId        = "q-4obqrw5r"
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
              customSummary = "computeID"
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
              id                = "step-04kfp811"
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
            stageTab      = "vis"
          }
        }
        params   = null
        pipeline = ""
      },
      {
        id = "stage-vfqqg8en"
        input = [
          {
            datasetId   = null
            datasetPath = null
            inputName   = "computeID"
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
              "0" = "Name"
              "1" = "instance_name"
              "2" = "Valid From"
              "3" = "Valid To"
            }
            columnVisibility = {}
            columnWidths = {
              "Deletion Protection" = 130
              Network               = 297
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
              inputName   = "computeID"
              inputRole   = "Data"
              isUserInput = false
              parameterId = "computeID"
            },
          ]
          label = "Instance List"
          managers = [
            {
              id                     = "nw58l13x"
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
                  cpuPlatform   = "count"
                  deleted       = "count"
                  instance_id   = "count"
                  computeInstanceAssetKey  = "count"
                  instance_name = "count"
                  machineType   = "count"
                  project_id    = "count"
                  region        = "count"
                  status        = "count"
                  ttl           = "count"
                  zone          = "count"
                }
                datasetQueryId = {
                  ignoreCompress = false
                  queryId        = "q-9cc4zqj1"
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
              customSummary = "computeID"
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
              id                = "step-le7aljwo"
              index             = 0
              isPinned          = false
              opal              = []
              queryPresentation = {}
              type              = "InputStep"
            },
            {
              columnStatsTable = {
                columnFunctions = {
                  cpuPlatform   = "count"
                  deleted       = "count"
                  instance_id   = "count"
                  computeInstanceAssetKey  = "count"
                  instance_name = "count"
                  machineType   = "count"
                  project_id    = "count"
                  region        = "count"
                  status        = "count"
                  ttl           = "count"
                  zone          = "count"
                }
                datasetQueryId = {
                  ignoreCompress = false
                  queryId        = "q-uc4b2ip6"
                  resultKinds = [
                    "ResultKindSchema",
                    "ResultKindData",
                  ]
                  tableTypes = [
                    "TABULAR",
                  ]
                }
              }
              customName    = "pick_col (custom)"
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
              id       = "step-sd8m3dmd"
              index    = 1
              isPinned = false
              opal = [
                "pick_col ",
                "\t@.\"Valid From\",",
                "    @.\"Valid To\",",
                "    computeInstanceAssetKey,",
                "    Status: status,",
                "\tName: instance_name,",
                "    Zone: zone,",
                "    \"Creation Time\": creationTime,",
                "    \"Deletion Protection\": deletionProtection,",
                "    \"Machine Type\": machineType,",
                "    \"In use by\": instanceGroupAssetKey,",
                "    \"Internal IP\": networkIP,",
                "    \"External IP\": publicIP,",
                "    Network: network,",
                "    \"Network Tags\": tags,",
                "    Labels: labels",
                "    ",
                "colshow computeInstanceAssetKey: false",
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
                    pick_col 
                    	@."Valid From",
                        @."Valid To",
                        computeInstanceAssetKey,
                        Status: status,
                    	Name: instance_name,
                        Zone: zone,
                        "Creation Time": creationTime,
                        "Deletion Protection": deletionProtection,
                        "Machine Type": machineType,
                        "In use by": instanceGroupAssetKey,
                        "Internal IP": networkIP,
                        "External IP": publicIP,
                        Network: network,
                        "Network Tags": tags,
                        Labels: labels
                        
                    colshow computeInstanceAssetKey: false
                EOT
      },
      {
        id = "stage-hk634e8f"
        input = [
          {
            datasetId   = null
            datasetPath = null
            inputName   = "computeID"
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
              "0" = "Name"
              "1" = "instance_name"
              "2" = "Valid From"
              "3" = "Valid To"
            }
            columnVisibility = {}
            columnWidths = {
              "Deletion Protection" = 130
              Network               = 297
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
          index = 6
          inputList = [
            {
              inputName   = "computeID"
              inputRole   = "Data"
              isUserInput = false
              parameterId = "computeID"
            },
          ]
          label = "Running Instances"
          managers = [
            {
              id                     = "nw58l13x"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "sxn0n0of"
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
                    field = "Status"
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
              customSummary = "computeID"
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
              id                = "step-lzn139eq"
              index             = 0
              isPinned          = false
              opal              = []
              queryPresentation = {}
              type              = "InputStep"
            },
            {
              customName    = "filter (custom)"
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
              id       = "step-azplgdlw"
              index    = 1
              isPinned = false
              opal = [
                "filter status = \"RUNNING\"",
                "pick_col ",
                "\t@.\"Valid From\",",
                "    @.\"Valid To\",",
                "    computeInstanceAssetKey,",
                "    Status: status,",
                "\tName: instance_name,",
                "    Zone: zone,",
                "    \"Creation Time\": creationTime,",
                "    \"Deletion Protection\": deletionProtection,",
                "    \"Machine Type\": machineType,",
                "    \"In use by\": instanceGroupAssetKey,",
                "    \"Internal IP\": networkIP,",
                "    \"External IP\": publicIP,",
                "    Network: network,",
                "    \"Network Tags\": tags,",
                "    Labels: labels,",
                "      label: \"Running Instances\"",
                "    ",
                "colshow computeInstanceAssetKey: false",
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
                    filter status = "RUNNING"
                    pick_col 
                    	@."Valid From",
                        @."Valid To",
                        computeInstanceAssetKey,
                        Status: status,
                    	Name: instance_name,
                        Zone: zone,
                        "Creation Time": creationTime,
                        "Deletion Protection": deletionProtection,
                        "Machine Type": machineType,
                        "In use by": instanceGroupAssetKey,
                        "Internal IP": networkIP,
                        "External IP": publicIP,
                        Network: network,
                        "Network Tags": tags,
                        Labels: labels,
                          label: "Running Instances"
                        
                    colshow computeInstanceAssetKey: false
                EOT
      },
      {
        id = "stage-i9te03n4"
        input = [
          {
            datasetId   = null
            datasetPath = null
            inputName   = "computeID"
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
              "0" = "Name"
              "1" = "instance_name"
              "2" = "Valid From"
              "3" = "Valid To"
            }
            columnVisibility = {}
            columnWidths = {
              "Deletion Protection" = 130
              Network               = 297
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
          index = 7
          inputList = [
            {
              inputName   = "computeID"
              inputRole   = "Data"
              isUserInput = false
              parameterId = "computeID"
            },
          ]
          label = "Total Instances"
          managers = [
            {
              id                     = "nw58l13x"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "sxn0n0of"
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
                    field = "exists"
                    groupFields = [
                      "label",
                    ]
                    statsBy = {
                      fn = "count"
                    }
                    timechart = {
                      fn         = "sum"
                      fnArgs     = []
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
            rollup      = {}
            wantBuckets = 600
          }
          renderType     = "TABLE"
          selectedStepId = null
          serializable   = true
          steps = [
            {
              customName    = "Input"
              customSummary = "computeID"
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
              id                = "step-dwt8ttnl"
              index             = 0
              isPinned          = false
              opal              = []
              queryPresentation = {}
              type              = "InputStep"
            },
            {
              customName    = " (custom)"
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
              id       = "step-zw3u63tl"
              index    = 1
              isPinned = false
              opal = [
                "",
                "pick_col ",
                "\t@.\"Valid From\",",
                "    @.\"Valid To\",",
                "    computeInstanceAssetKey,",
                "    Status: status,",
                "\tName: instance_name,",
                "    Zone: zone,",
                "    \"Creation Time\": creationTime,",
                "    \"Deletion Protection\": deletionProtection,",
                "    \"Machine Type\": machineType,",
                "    \"In use by\": instanceGroupAssetKey,",
                "    \"Internal IP\": networkIP,",
                "    \"External IP\": publicIP,",
                "    Network: network,",
                "    \"Network Tags\": tags,",
                "    Labels: labels,",
                "    exists: 1,",
                "    label: \"Total Instances\"",
                "    ",
                "colshow computeInstanceAssetKey: false",
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
            scriptTab     = "INPUTS"
            showTimeRuler = true
            stageTab      = "vis"
          }
        }
        params   = null
        pipeline = <<-EOT
                    
                    pick_col 
                    	@."Valid From",
                        @."Valid To",
                        computeInstanceAssetKey,
                        Status: status,
                    	Name: instance_name,
                        Zone: zone,
                        "Creation Time": creationTime,
                        "Deletion Protection": deletionProtection,
                        "Machine Type": machineType,
                        "In use by": instanceGroupAssetKey,
                        "Internal IP": networkIP,
                        "External IP": publicIP,
                        Network: network,
                        "Network Tags": tags,
                        Labels: labels,
                        exists: 1,
                        label: "Total Instances"
                        
                    colshow computeInstanceAssetKey: false
                EOT
      },
      {
        id = "stage-7schdd0k"
        input = [
          {
            datasetId   = "${local.compute_metrics}"
            datasetPath = null
            inputName   = "Compute Metrics"
            inputRole   = "Data"
            stageId     = null
          },
          {
            datasetId   = null
            datasetPath = null
            inputName   = "computeID"
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
              datasetId   = "${local.compute_metrics}"
              inputName   = "Compute Metrics"
              inputRole   = "Data"
              isUserInput = false
            },
            {
              inputName   = "computeID"
              inputRole   = "Data"
              isUserInput = true
              parameterId = "computeID"
            },
          ]
          label = "Count of disk write IO operations."
          managers = [
            {
              id                     = "471mzk05"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "yeyupg29"
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
                        "computeInstanceAssetKey",
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
              customName    = "Input"
              customSummary = "Compute Metrics"
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
              id                = "step-xkvieg3w"
              index             = 0
              isPinned          = false
              opal              = []
              queryPresentation = {}
              type              = "InputStep"
            },
            {
              customName    = "filter (custom)"
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
              id       = "step-ftjmkvtz"
              index    = 1
              isPinned = false
              opal = [
                "filter metric_category = \"disk\"",
                "",
                "filter metric = \"instance_disk_write_ops_count\"",
                "",
                "align 2m, frame(back: 1m), \"value\":avg(m(\"instance_disk_write_ops_count\"))",
                "exists computeInstanceAssetKey = @computeID.computeInstanceAssetKey",
                "aggregate \"value\":sum(@.\"value\"), group_by(computeInstanceAssetKey)",
                "topk 100",
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
            scriptTab     = "INPUTS"
            showTimeRuler = true
            stageTab      = "vis"
          }
        }
        params   = null
        pipeline = <<-EOT
                    filter metric_category = "disk"
                    
                    filter metric = "instance_disk_write_ops_count"
                    
                    align 2m, frame(back: 1m), "value":avg(m("instance_disk_write_ops_count"))
                    exists computeInstanceAssetKey = @computeID.computeInstanceAssetKey
                    aggregate "value":sum(@."value"), group_by(computeInstanceAssetKey)
                    topk 100
                EOT
      },
      {
        id = "stage-j7trzfmb"
        input = [
          {
            datasetId   = "${local.compute_metrics}"
            datasetPath = null
            inputName   = "Compute Metrics"
            inputRole   = "Data"
            stageId     = null
          },
          {
            datasetId   = null
            datasetPath = null
            inputName   = "computeID"
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
              datasetId   = "${local.compute_metrics}"
              inputName   = "Compute Metrics"
              inputRole   = "Data"
              isUserInput = false
            },
            {
              inputName   = "computeID"
              inputRole   = "Data"
              isUserInput = true
              parameterId = "computeID"
            },
          ]
          label = "Count of disk read IO operations."
          managers = [
            {
              id                     = "471mzk05"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "yeyupg29"
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
                        "computeInstanceAssetKey",
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
              customName    = "Input"
              customSummary = "Compute Metrics"
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
              id                = "step-agyoitqz"
              index             = 0
              isPinned          = false
              opal              = []
              queryPresentation = {}
              type              = "InputStep"
            },
            {
              customName    = "filter (custom)"
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
              id       = "step-wdpawkjl"
              index    = 1
              isPinned = false
              opal = [
                "filter metric_category = \"disk\"",
                "",
                "filter metric = \"instance_disk_read_ops_count\"",
                "",
                "align 2m, frame(back: 1m), \"value\":avg(m(\"instance_disk_read_ops_count\"))",
                "exists computeInstanceAssetKey = @computeID.computeInstanceAssetKey",
                "aggregate \"value\":sum(@.\"value\"), group_by(computeInstanceAssetKey)",
                "topk 100",
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
            scriptTab     = "INPUTS"
            showTimeRuler = true
            stageTab      = "vis"
          }
        }
        params   = null
        pipeline = <<-EOT
                    filter metric_category = "disk"
                    
                    filter metric = "instance_disk_read_ops_count"
                    
                    align 2m, frame(back: 1m), "value":avg(m("instance_disk_read_ops_count"))
                    exists computeInstanceAssetKey = @computeID.computeInstanceAssetKey
                    aggregate "value":sum(@."value"), group_by(computeInstanceAssetKey)
                    topk 100
                EOT
      },
      {
        id = "stage-pmsu1uzz"
        input = [
          {
            datasetId   = "${local.compute_metrics}"
            datasetPath = null
            inputName   = "resource"
            inputRole   = "Data"
            stageId     = null
          },
          {
            datasetId   = null
            datasetPath = null
            inputName   = "computeID"
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
              "1" = "valid_from"
              "2" = "valid_to"
            }
            columnVisibility = {
              _c_bucket = true
            }
            columnWidths = {
              computeInstanceAssetKey    = 185
              metric_category = 180
              metric_type     = 193
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
          index = 10
          inputList = [
            {
              datasetId   = "${local.compute_metrics}"
              inputName   = "resource"
              inputRole   = "Data"
              isUserInput = false
            },
            {
              inputName   = "computeID"
              inputRole   = "Data"
              isUserInput = true
              parameterId = "computeID"
            },
          ]
          label = "CPU Utilization"
          managers = [
            {
              id         = "9whbch9b"
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
                    axisLabel = "Time"
                    visible   = true
                  }
                  yConfig = {
                    axisLabel = "Percent"
                    hideUnits = true
                    unit      = "1.%"
                    visible   = true
                  }
                }
                source = {
                  table = {
                    groupFields = [
                      "computeInstanceAssetKey",
                    ]
                    statsBy       = {}
                    timechart     = {}
                    transformType = "none"
                    type          = "xy"
                    x             = "valid_from"
                    y             = "value"
                  }
                  type = "table"
                }
                type = "timeseries"
              }
            },
            {
              id                     = "uf9bdall"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
          ]
          queryPresentation = {
            initialRollupFilter = {
              mode = "Last"
            }
            linkify        = false
            loadEverything = true
            resultKinds = [
              "ResultKindSchema",
            ]
            rollup      = null
            wantBuckets = 600
          }
          selectedStepId = null
          serializable   = true
          steps = [
            {
              customName    = "Input"
              customSummary = "resource"
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
              id                = "step-wauywmfc"
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
                  value        = "count"
                }
                datasetQueryId = {
                  ignoreCompress = false
                  queryId        = "q-lej9oz34"
                  resultKinds = [
                    "ResultKindSchema",
                    "ResultKindData",
                  ]
                  tableTypes = [
                    "TABULAR",
                  ]
                }
              }
              customName    = "filter (custom)"
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
              id       = "step-jb6lxstn"
              index    = 1
              isPinned = false
              opal = [
                "filter metric_category = \"cpu\"",
                "filter metric = \"instance_cpu_utilization\"",
                "align 2m, frame(back: 1m), \"value\":avg(m(string(\"instance_cpu_utilization\")))",
                "exists computeInstanceAssetKey = @computeID.computeInstanceAssetKey",
                "aggregate \"value\":sum(@.\"value\"), group_by(computeInstanceAssetKey)",
                "topk 100",
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
                    filter metric_category = "cpu"
                    filter metric = "instance_cpu_utilization"
                    align 2m, frame(back: 1m), "value":avg(m(string("instance_cpu_utilization")))
                    exists computeInstanceAssetKey = @computeID.computeInstanceAssetKey
                    aggregate "value":sum(@."value"), group_by(computeInstanceAssetKey)
                    topk 100
                EOT
      },
      {
        id = "stage-kmd3xtah"
        input = [
          {
            datasetId   = "${local.compute_metrics}"
            datasetPath = null
            inputName   = "Compute Metrics"
            inputRole   = "Data"
            stageId     = null
          },
          {
            datasetId   = null
            datasetPath = null
            inputName   = "computeID"
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
              datasetId   = "${local.compute_metrics}"
              inputName   = "Compute Metrics"
              inputRole   = "Data"
              isUserInput = false
            },
            {
              inputName   = "computeID"
              inputRole   = "Data"
              isUserInput = true
              parameterId = "computeID"
            },
          ]
          label = "Count of throttled read operations."
          managers = [
            {
              id                     = "471mzk05"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "yeyupg29"
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
                      "computeInstanceAssetKey",
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
              customSummary = "Compute Metrics"
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
              id                = "step-to76ochn"
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
                  queryId        = "q-65jnz1q1"
                  resultKinds = [
                    "ResultKindSchema",
                    "ResultKindData",
                  ]
                  tableTypes = [
                    "TABULAR",
                  ]
                }
              }
              customName    = "filter (custom)"
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
              id       = "step-n9j6dbo9"
              index    = 1
              isPinned = false
              opal = [
                "filter metric_category = \"disk\"",
                "",
                "filter metric = \"instance_disk_throttled_read_ops_count\"",
                "",
                "align 2m, frame(back: 1m), \"value\":avg(m(\"instance_disk_throttled_read_ops_count\"))",
                "exists computeInstanceAssetKey = @computeID.computeInstanceAssetKey",
                "aggregate \"value\":sum(@.\"value\"), group_by(computeInstanceAssetKey)",
                "topk 100",
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
                    filter metric_category = "disk"
                    
                    filter metric = "instance_disk_throttled_read_ops_count"
                    
                    align 2m, frame(back: 1m), "value":avg(m("instance_disk_throttled_read_ops_count"))
                    exists computeInstanceAssetKey = @computeID.computeInstanceAssetKey
                    aggregate "value":sum(@."value"), group_by(computeInstanceAssetKey)
                    topk 100
                EOT
      },
      {
        id = "stage-d4h31odg"
        input = [
          {
            datasetId   = "${local.compute_metrics}"
            datasetPath = null
            inputName   = "Compute Metrics"
            inputRole   = "Data"
            stageId     = null
          },
          {
            datasetId   = null
            datasetPath = null
            inputName   = "computeID"
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
              datasetId   = "${local.compute_metrics}"
              inputName   = "Compute Metrics"
              inputRole   = "Data"
              isUserInput = false
            },
            {
              inputName   = "computeID"
              inputRole   = "Data"
              isUserInput = true
              parameterId = "computeID"
            },
          ]
          label = "Count of throttled write operations."
          managers = [
            {
              id                     = "471mzk05"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "yeyupg29"
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
                      "computeInstanceAssetKey",
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
              customSummary = "Compute Metrics"
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
              id                = "step-qtwkpfez"
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
                  queryId        = "q-9ez28une"
                  resultKinds = [
                    "ResultKindSchema",
                    "ResultKindData",
                  ]
                  tableTypes = [
                    "TABULAR",
                  ]
                }
              }
              customName    = "filter (custom)"
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
              id       = "step-syseomld"
              index    = 1
              isPinned = false
              opal = [
                "filter metric_category = \"disk\"",
                "",
                "filter metric = \"instance_disk_throttled_write_ops_count\"",
                "",
                "align 2m, frame(back: 1m), \"value\":avg(m(\"instance_disk_throttled_write_ops_count\"))",
                "exists computeInstanceAssetKey = @computeID.computeInstanceAssetKey",
                "aggregate \"value\":sum(@.\"value\"), group_by(computeInstanceAssetKey)",
                "topk 100",
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
            scriptTab     = "INPUTS"
            showTimeRuler = true
            stageTab      = "vis"
          }
        }
        params   = null
        pipeline = <<-EOT
                    filter metric_category = "disk"
                    
                    filter metric = "instance_disk_throttled_write_ops_count"
                    
                    align 2m, frame(back: 1m), "value":avg(m("instance_disk_throttled_write_ops_count"))
                    exists computeInstanceAssetKey = @computeID.computeInstanceAssetKey
                    aggregate "value":sum(@."value"), group_by(computeInstanceAssetKey)
                    topk 100
                EOT
      },
      {
        id = "stage-3ks89dsy"
        input = [
          {
            datasetId   = "${local.compute_metrics}"
            datasetPath = null
            inputName   = "Compute Metrics"
            inputRole   = "Data"
            stageId     = null
          },
          {
            datasetId   = null
            datasetPath = null
            inputName   = "computeID"
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
          index = 13
          inputList = [
            {
              datasetId   = "${local.compute_metrics}"
              inputName   = "Compute Metrics"
              inputRole   = "Data"
              isUserInput = false
            },
            {
              inputName   = "computeID"
              inputRole   = "Data"
              isUserInput = true
              parameterId = "computeID"
            },
          ]
          label = "Count of packets received from the network."
          managers = [
            {
              id                     = "471mzk05"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "yeyupg29"
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
                        "computeInstanceAssetKey",
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
              customName    = "Input"
              customSummary = "Compute Metrics"
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
              id                = "step-rn8sbs1c"
              index             = 0
              isPinned          = false
              opal              = []
              queryPresentation = {}
              type              = "InputStep"
            },
            {
              columnStatsTable = {
                columnFunctions = {
                  value = "count"
                }
                datasetQueryId = {
                  ignoreCompress = false
                  queryId        = "q-d7hops86"
                  resultKinds = [
                    "ResultKindSchema",
                    "ResultKindData",
                  ]
                  tableTypes = [
                    "TABULAR",
                  ]
                }
              }
              customName    = "filter (custom)"
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
              id       = "step-ri4kpsbu"
              index    = 1
              isPinned = false
              opal = [
                "filter metric_category = \"network\"",
                "",
                "filter metric = \"instance_network_received_packets_count\"",
                "",
                "align 2m, frame(back: 1m), \"value\":avg(m(\"instance_network_received_packets_count\"))",
                "exists computeInstanceAssetKey = @computeID.computeInstanceAssetKey",
                "aggregate \"value\":sum(@.\"value\"), group_by(computeInstanceAssetKey)",
                "topk 100",
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
            scriptTab     = "INPUTS"
            showTimeRuler = true
            stageTab      = "vis"
          }
        }
        params   = null
        pipeline = <<-EOT
                    filter metric_category = "network"
                    
                    filter metric = "instance_network_received_packets_count"
                    
                    align 2m, frame(back: 1m), "value":avg(m("instance_network_received_packets_count"))
                    exists computeInstanceAssetKey = @computeID.computeInstanceAssetKey
                    aggregate "value":sum(@."value"), group_by(computeInstanceAssetKey)
                    topk 100
                EOT
      },
      {
        id = "stage-q8h3nsju"
        input = [
          {
            datasetId   = "${local.compute_metrics}"
            datasetPath = null
            inputName   = "Compute Metrics"
            inputRole   = "Data"
            stageId     = null
          },
          {
            datasetId   = null
            datasetPath = null
            inputName   = "computeID"
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
          index = 14
          inputList = [
            {
              datasetId   = "${local.compute_metrics}"
              inputName   = "Compute Metrics"
              inputRole   = "Data"
              isUserInput = false
            },
            {
              inputName   = "computeID"
              inputRole   = "Data"
              isUserInput = true
              parameterId = "computeID"
            },
          ]
          label = "Count of packets sent over the network."
          managers = [
            {
              id                     = "471mzk05"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "yeyupg29"
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
                        "computeInstanceAssetKey",
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
              customName    = "Input"
              customSummary = "Compute Metrics"
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
              id                = "step-9lxhvnku"
              index             = 0
              isPinned          = false
              opal              = []
              queryPresentation = {}
              type              = "InputStep"
            },
            {
              customName    = "filter (custom)"
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
              id       = "step-j1zm5lim"
              index    = 1
              isPinned = false
              opal = [
                "filter metric_category = \"network\"",
                "",
                "filter metric = \"instance_network_sent_packets_count\"",
                "",
                "align 2m, frame(back: 1m), \"value\":avg(m(\"instance_network_sent_packets_count\"))",
                "exists computeInstanceAssetKey = @computeID.computeInstanceAssetKey",
                "aggregate \"value\":sum(@.\"value\"), group_by(computeInstanceAssetKey)",
                "topk 100",
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
            scriptTab     = "INPUTS"
            showTimeRuler = true
            stageTab      = "vis"
          }
        }
        params   = null
        pipeline = <<-EOT
                    filter metric_category = "network"
                    
                    filter metric = "instance_network_sent_packets_count"
                    
                    align 2m, frame(back: 1m), "value":avg(m("instance_network_sent_packets_count"))
                    exists computeInstanceAssetKey = @computeID.computeInstanceAssetKey
                    aggregate "value":sum(@."value"), group_by(computeInstanceAssetKey)
                    topk 100
                EOT
      },
      {
        id = "stage-9qqbf5wc"
        input = [
          {
            datasetId   = "${local.compute_metrics}"
            datasetPath = null
            inputName   = "Compute Metrics"
            inputRole   = "Data"
            stageId     = null
          },
          {
            datasetId   = null
            datasetPath = null
            inputName   = "computeID"
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
          index = 15
          inputList = [
            {
              datasetId   = "${local.compute_metrics}"
              inputName   = "Compute Metrics"
              inputRole   = "Data"
              isUserInput = false
            },
            {
              inputName   = "computeID"
              inputRole   = "Data"
              isUserInput = true
              parameterId = "computeID"
            },
          ]
          label = "Count of bytes received from the network."
          managers = [
            {
              id                     = "471mzk05"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "yeyupg29"
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
                        "computeInstanceAssetKey",
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
              customName    = "Input"
              customSummary = "Compute Metrics"
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
              id                = "step-b8zblo03"
              index             = 0
              isPinned          = false
              opal              = []
              queryPresentation = {}
              type              = "InputStep"
            },
            {
              customName    = "filter (custom)"
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
              id       = "step-968mbb10"
              index    = 1
              isPinned = false
              opal = [
                "filter metric_category = \"network\"",
                "",
                "filter metric = \"instance_network_sent_packets_count\"",
                "",
                "align 2m, frame(back: 1m), \"value\":avg(m(\"instance_network_sent_packets_count\"))",
                "exists computeInstanceAssetKey = @computeID.computeInstanceAssetKey",
                "aggregate \"value\":sum(@.\"value\"), group_by(computeInstanceAssetKey)",
                "topk 100",
              ]
              queryPresentation = {}
              type              = "unknown"
            },
          ]
          type = "table"
          viewModel = {
            consoleValue = <<-EOT
                            filter metric_category = "network"
                                                                                                                                            
                            filter metric = "instance_network_received_bytes_count"
                                                                                                                                            
                            align 2m, frame(back: 1m), "value":avg(m("instance_network_received_bytes_count"))
                            exists computeInstanceAssetKey = @computeID.computeInstanceAssetKey
                            aggregate "value":sum(@."value"), group_by(computeInstanceAssetKey)
                            topk 100
                        EOT
            railCollapseState = {
              inputsOutputs = false
              minimap       = false
              note          = true
              script        = true
            }
            scriptTab     = "INPUTS"
            showTimeRuler = true
            stageTab      = "vis"
          }
        }
        params   = null
        pipeline = <<-EOT
                    filter metric_category = "network"
                    
                    filter metric = "instance_network_sent_packets_count"
                    
                    align 2m, frame(back: 1m), "value":avg(m("instance_network_sent_packets_count"))
                    exists computeInstanceAssetKey = @computeID.computeInstanceAssetKey
                    aggregate "value":sum(@."value"), group_by(computeInstanceAssetKey)
                    topk 100
                EOT
      },
      {
        id = "stage-4qz8g1va"
        input = [
          {
            datasetId   = null
            datasetPath = null
            inputName   = "computeID"
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
          index = 16
          inputList = [
            {
              inputName   = "computeID"
              inputRole   = "Data"
              isUserInput = false
              parameterId = "computeID"
            },
          ]
          label = "Stage 17"
          managers = [
            {
              id                     = "09ukqxrf"
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
                  cpuPlatform        = "count"
                  creationTime       = "count"
                  deleted            = "count"
                  deletionProtection = "count"
                  instanceGroupAssetKey     = "count"
                  instance_id        = "count"
                  computeInstanceAssetKey       = "count"
                  instance_name      = "count"
                  labels             = "count"
                  machineType        = "count"
                  network            = "count"
                  networkIP          = "count"
                  project_id         = "count"
                  publicIP           = "count"
                  region             = "count"
                  status             = "count"
                  subnetwork         = "count"
                  tags               = "count"
                  ttl                = "count"
                  zone               = "count"
                }
                datasetQueryId = {
                  ignoreCompress = false
                  queryId        = "q-51dwph8f"
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
              customSummary = "computeID"
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
              id                = "step-r71opp54"
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
        id = "stage-x2r9aqus"
        input = [
          {
            datasetId   = null
            datasetPath = null
            inputName   = "computeID"
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
          index = 17
          inputList = [
            {
              inputName   = "computeID"
              inputRole   = "Data"
              isUserInput = false
              parameterId = "computeID"
            },
          ]
          label = "Status Over Time"
          managers = [
            {
              id                     = "qt1nyhy3"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "e7f2v94u"
              isDisabled = false
              type       = "Vis"
              vis = {
                config = {
                  areaFillType = "SolidFill"
                  legend = {
                    placement = "bottom"
                    type      = "list"
                    visible   = true
                  }
                  type                = "bar"
                  xAxisLabelPlacement = "horizontal"
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
                      "status",
                    ]
                    statsBy = {
                      fn = "count"
                    }
                    timechart = {
                      fn         = "count"
                      fnArgs     = null
                      resolution = 300000
                    }
                    transformType = "timechart"
                    type          = "xy"
                    y             = "status"
                  }
                  topK = {
                    fnArgs = []
                    k      = 100
                    type   = "Auto"
                  }
                  type = "table"
                }
                type = "bar"
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
            wantBuckets = 48
          }
          renderType     = "TABLE"
          selectedStepId = null
          serializable   = true
          steps = [
            {
              columnStatsTable = {
                columnFunctions = {
                  cpuPlatform        = "count"
                  creationTime       = "count"
                  deleted            = "count"
                  deletionProtection = "count"
                  instanceGroupAssetKey     = "count"
                  instance_id        = "count"
                  computeInstanceAssetKey       = "count"
                  instance_name      = "count"
                  labels             = "count"
                  machineType        = "count"
                  network            = "count"
                  networkIP          = "count"
                  project_id         = "count"
                  publicIP           = "count"
                  region             = "count"
                  status             = "count"
                  subnetwork         = "count"
                  tags               = "count"
                  ttl                = "count"
                  zone               = "count"
                }
                datasetQueryId = {
                  ignoreCompress = false
                  queryId        = "q-jfa9w8di"
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
              customSummary = "computeID"
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
              id                = "step-vp9bzx2a"
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
            stageTab      = "vis"
          }
        }
        params   = null
        pipeline = ""
      },
      {
        id = "stage-heng8s54"
        input = [
          {
            datasetId   = "${local.compute_instance}"
            datasetPath = null
            inputName   = "GCP/Compute Instance"
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
          index = 18
          inputList = [
            {
              datasetId   = "${local.compute_instance}"
              inputName   = "GCP/Compute Instance"
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
              customSummary = "GCP/Compute Instance"
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
              id       = "step-qlc4nnck"
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
    ]
  )
  workspace = local.workspace
}

