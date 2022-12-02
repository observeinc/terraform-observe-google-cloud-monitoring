locals {
  workspace                        = var.workspace.oid
  dashboard_name                   = format(var.name_format, "Monitoring")
  storage_buckets                  = observe_dataset.storage_buckets.id
  storage_metrics                  = one(observe_dataset.storage_metrics[*].id)
  storage_logs                     = observe_dataset.storage_logs.id
  projects_collection_enabled      = var.google.projects.id
  resource_asset_inventory_records = var.google.resource_asset_inventory_records.id
}
# terraform import observe_dashboard.storage_monitoring_template 41148940
resource "observe_dashboard" "storage_monitoring" {
  count = local.enable_metrics ? 1 : 0
  description = "Overview dashboard for Cloud Storage"
  layout = jsonencode(
    {
      gridLayout = {
        sections = [
          {
            card = {
              cardType = "section"
              closed   = false
              id       = "section-9eytp2ui"
              title    = "Dashboard Content"
            }
            items = [
              {
                card = {
                  cardType    = "parameter"
                  id          = "card-qmjaqe5w"
                  parameterId = "bucket"
                }
                layout = {
                  h           = 4
                  i           = "card-qmjaqe5w"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  resizeHandles = [
                    "e",
                  ]
                  static = false
                  w      = 4
                  x      = 0
                  y      = 0
                }
              },
            ]
            lastModified = 1658438665751
          },
          {
            card = {
              cardType = "section"
              closed   = false
              id       = "card-1y5jqgt1"
              title    = "Overview"
            }
            items = [
              {
                card = {
                  cardType = "stage"
                  id       = "card-8smc4w3k"
                  stageId  = "stage-e74yetzm"
                }
                lastModified = 1659475217145
                layout = {
                  h           = 12
                  i           = "card-8smc4w3k---1659475217145"
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
                  id       = "card-jawcb34a"
                  stageId  = "stage-9w4wt70e"
                }
                lastModified = 1659475217145
                layout = {
                  h           = 12
                  i           = "card-jawcb34a---1659475217145"
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
                  id       = "card-30qegpvi"
                  stageId  = "stage-vg98d4xb"
                }
                lastModified = 1659475217145
                layout = {
                  h           = 12
                  i           = "card-30qegpvi---1659475217145"
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
                  id       = "card-xervgoit"
                  stageId  = "stage-2725zo9z"
                }
                layout = {
                  h           = 12
                  i           = "card-xervgoit"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 3
                  x           = 0
                  y           = 0
                }
              },
            ]
            lastModified = 1658438714471
          },
          {
            card = {
              cardType = "section"
              closed   = false
              id       = "card-co233hjc"
              title    = "Performance"
            }
            items = [
              {
                card = {
                  cardType    = "parameter"
                  id          = "card-22wg8mv4"
                  parameterId = "responseCode"
                }
                layout = {
                  h           = 4
                  i           = "card-22wg8mv4"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  resizeHandles = [
                    "e",
                  ]
                  static = false
                  w      = 6
                  x      = 0
                  y      = 0
                }
              },
              {
                card = {
                  cardType    = "parameter"
                  id          = "card-ewdwytg5"
                  parameterId = "method"
                }
                layout = {
                  h           = 4
                  i           = "card-ewdwytg5"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  resizeHandles = [
                    "e",
                  ]
                  static = false
                  w      = 6
                  x      = 6
                  y      = 0
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-753ru10b"
                  stageId  = "stage-4gu1bh8l"
                }
                layout = {
                  h           = 12
                  i           = "card-753ru10b"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 6
                  x           = 6
                  y           = 4
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-sqxw2sj4"
                  stageId  = "stage-h4sd9auv"
                }
                layout = {
                  h           = 12
                  i           = "card-sqxw2sj4"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 6
                  x           = 0
                  y           = 4
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-doweq802"
                  stageId  = "stage-fozm2am2"
                }
                layout = {
                  h           = 12
                  i           = "card-doweq802"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 6
                  x           = 6
                  y           = 16
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-lmi10ia6"
                  stageId  = "stage-cod6x3nx"
                }
                layout = {
                  h           = 12
                  i           = "card-lmi10ia6"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 6
                  x           = 0
                  y           = 16
                }
              },
            ]
            lastModified = 1658502625833
          },
          {
            card = {
              cardType = "section"
              closed   = true
              id       = "card-c6avbi0u"
              title    = "Replica Status"
            }
            items = [
              {
                card = {
                  cardType = "stage"
                  id       = "card-voho3qnz"
                  stageId  = "stage-7fd9npob"
                }
                layout = {
                  h           = 12
                  i           = "card-voho3qnz"
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
                  id       = "card-f5qycq32"
                  stageId  = "stage-kri8q1gp"
                }
                layout = {
                  h           = 12
                  i           = "card-f5qycq32"
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
                  id       = "card-ul0yvhgw"
                  stageId  = "stage-e4v5dib4"
                }
                layout = {
                  h           = 12
                  i           = "card-ul0yvhgw"
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
          },
          {
            card = {
              cardType = "section"
              closed   = false
              id       = "card-spzx1748"
              title    = "Authentication & Access Controls"
            }
            items = [
              {
                card = {
                  cardType = "stage"
                  id       = "card-bll8da4b"
                  stageId  = "stage-lub7w2o2"
                }
                lastModified = 1658511062943
                layout = {
                  h           = 12
                  i           = "card-bll8da4b---1658511062943"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 12
                  x           = 0
                  y           = 50
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-at46f0wc"
                  stageId  = "stage-smetllii"
                }
                layout = {
                  h           = 16
                  i           = "card-at46f0wc"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 6
                  x           = 0
                  y           = 62
                }
              },
              {
                card = {
                  cardType    = "parameter"
                  id          = "card-8nejndyl"
                  parameterId = "aclMetric"
                }
                layout = {
                  h           = 4
                  i           = "card-8nejndyl"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  resizeHandles = [
                    "e",
                  ]
                  static = false
                  w      = 6
                  x      = 6
                  y      = 62
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-foo4tya9"
                  stageId  = "stage-z8gm45fx"
                }
                lastModified = 1658511062943
                layout = {
                  h           = 12
                  i           = "card-foo4tya9---1658511062943"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 6
                  x           = 6
                  y           = 66
                }
              },
            ]
            lastModified = 1658513755516
          },
          {
            card = {
              cardType = "section"
              closed   = false
              id       = "card-sgfg9rpg"
              title    = "Configurations"
            }
            items = [
              {
                card = {
                  cardType = "stage"
                  id       = "card-id9cdv9u"
                  stageId  = "stage-9fecnrid"
                }
                layout = {
                  h           = 18
                  i           = "card-id9cdv9u"
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
                  cardType    = "parameter"
                  id          = "card-sq5q1v6x"
                  parameterId = "config"
                }
                layout = {
                  h           = 4
                  i           = "card-sq5q1v6x"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  resizeHandles = [
                    "e",
                  ]
                  static = false
                  w      = 3
                  x      = 0
                  y      = 0
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-ngn13auc"
                  stageId  = "stage-4hcjp4l2"
                }
                layout = {
                  h           = 18
                  i           = "card-ngn13auc"
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
                  id       = "card-ej7r1rvi"
                  stageId  = "stage-awa0frdk"
                }
                layout = {
                  h           = 14
                  i           = "card-ej7r1rvi"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 3
                  x           = 0
                  y           = 4
                }
              },
            ]
            lastModified = 1658514744299
          },
          {
            card = {
              cardType = "section"
              closed   = true
              id       = "card-xekhegyy"
              title    = "Storage Transfer Service"
            }
            items = [
              {
                card = {
                  cardType = "stage"
                  id       = "card-9ypvvv4r"
                  stageId  = "stage-4xzggfvj"
                }
                layout = {
                  h           = 12
                  i           = "card-9ypvvv4r"
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
                  id       = "card-fkan9ews"
                  stageId  = "stage-vxxkhlyz"
                }
                layout = {
                  h           = 12
                  i           = "card-fkan9ews"
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
            lastModified = 1658514950553
          },
          {
            card = {
              cardType = "section"
              closed   = false
              id       = "card-ribaz7eg"
              title    = "Documentation"
            }
            items = [
              {
                card = {
                  cardType = "text"
                  id       = "card-vac0yvaf"
                  text     = <<-EOT
                                        # GCP Cloud Storage
                                        
                                        https://cloud.google.com/storage
                                        
                                        Cloud Storage allows world-wide storage and retrieval of any amount of data at any time. You can use Cloud Storage for a range of scenarios including serving website content, storing data for archival and disaster recovery, or distributing large data objects to users via direct download. 
                                    EOT
                  title    = "Untitled Text"
                }
                layout = {
                  h           = 16
                  i           = "card-vac0yvaf"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 6
                  x           = 0
                  y           = 102
                }
              },
              {
                card = {
                  cardType = "text"
                  id       = "card-vf91nz4n"
                  text     = <<-EOT
                                        # Notes
                                        
                                        **Metrics**
                                        
                                        Enable data collection for this app by enabling Observe’s GCP app and adding `storage` to the `include_metric_type_prefixes` option (this is added by default in the standard configuration).
                                        
                                        **Audit Logs**
                                        
                                        To enable [Cloud Audit Logs](https://cloud.google.com/logging/docs/audit/configure-data-access#config-console-enable), go to [the “Audit Logs” configuration page](https://console.cloud.google.com/iam-admin/audit) in your GCP account. Under the “Services” column, select “Google Cloud Storage”. On the right-hand side, select the audit logs you wish to capture. Once enabled, these audit logs will automatically feed into your Observe account. 
                                    EOT
                  title    = "Untitled Text"
                }
                layout = {
                  h           = 16
                  i           = "card-vf91nz4n"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 6
                  x           = 6
                  y           = 102
                }
              },
            ]
            lastModified = 1663285164241
          },
        ]
      }
      stageListLayout = {
        isModified = false
        parameters = [
          {
            controlledFilterStageId = "stage-uypv6jle"
            datasetId               = "${local.storage_buckets}"
            defaultValue = {
              datasetref = {
                datasetId = "${local.storage_buckets}"
              }
            }
            emptyValueEncoding    = "null"
            emptyValueLabelOption = "null"
            id                    = "bucket"
            name                  = "Bucket"
            valueKind = {
              type = "DATASETREF"
            }
            viewType = "input"
          },
          {
            allowEmpty = false
            defaultValue = {
              string = "all"
            }
            emptyValueEncoding    = "null"
            emptyValueLabelOption = "null"
            id                    = "responseCode"
            name                  = "Response Code"
            source                = "Stage"
            sourceColumnId        = "response_code"
            sourceStageId         = "stage-qf9xy4cj"
            valueKind = {
              type = "STRING"
            }
            viewType = "single-select"
          },
          {
            allowEmpty = false
            defaultValue = {
              string = "all"
            }
            emptyValueEncoding    = "null"
            emptyValueLabelOption = "null"
            id                    = "method"
            name                  = "Method"
            source                = "Stage"
            sourceColumnId        = "method"
            sourceStageId         = "stage-qf9xy4cj"
            valueKind = {
              type = "STRING"
            }
            viewType = "single-select"
          },
          {
            allowEmpty = false
            defaultValue = {
              string = "authz_acl_based_object_access_count"
            }
            emptyValueEncoding    = "null"
            emptyValueLabelOption = "null"
            id                    = "aclMetric"
            name                  = "ACL Metric"
            source                = "CustomData"
            sourceCustomData = {
              "ACL Operations"              = "authz_acl_operations_count"
              "ACL-Access Grants"           = "authz_acl_based_object_access_count"
              "Object-Specific ACL Changes" = "authz_object_specific_acl_mutation_count"
            }
            valueKind = {
              type = "STRING"
            }
            viewType = "single-select"
          },
          {
            allowEmpty = false
            defaultValue = {
              string = "Buckets without lifecycle rules"
            }
            emptyValueEncoding    = "null"
            emptyValueLabelOption = "null"
            id                    = "config"
            name                  = "Configuration Selection"
            source                = "CustomData"
            sourceCustomData = {
              "Buckets used for websites"          = "Buckets used for websites"
              "Buckets with CORS enabled"          = "Buckets with CORS enabled"
              "Buckets without lifecycle rules"    = "Buckets without lifecycle rules"
              "Buckets without retention policies" = "Buckets without retention policies"
              "Buckets without usage logging"      = "Buckets without usage logging"
              "Buckets without versioning"         = "Buckets without versioning"
            }
            valueKind = {
              type = "STRING"
            }
            viewType = "single-select"
          },
        ]
        selectedStageId = "stage-jqupr6ah"
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
            datasetId   = "${local.storage_buckets}"
            datasetPath = null
            stageId     = null
          }
          float64 = null
          int64   = null
          link    = null
          string  = null
        }
        id   = "bucket"
        name = "Bucket"
        valueKind = {
          arrayItemType   = null
          keyForDatasetId = null
          type            = "DATASETREF"
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
          string     = "all"
        }
        id   = "responseCode"
        name = "Response Code"
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
          string     = "all"
        }
        id   = "method"
        name = "Method"
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
          string     = "authz_acl_based_object_access_count"
        }
        id   = "aclMetric"
        name = "ACL Metric"
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
          string     = "Buckets without lifecycle rules"
        }
        id   = "config"
        name = "Configuration Selection"
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
        id = "stage-qf9xy4cj"
        input = [
          {
            datasetId   = "${local.storage_metrics}"
            datasetPath = null
            inputName   = "Google/GCP/Storage Metrics"
            inputRole   = "Data"
            stageId     = null
          },
          {
            datasetId   = null
            datasetPath = null
            inputName   = "default_parameter_input_-1lyw"
            inputRole   = "Data"
            stageId     = "stage-1lywvj39"
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
              datasetId   = "${local.storage_metrics}"
              inputName   = "Google/GCP/Storage Metrics"
              inputRole   = "Data"
              isUserInput = false
            },
            {
              inputName   = "default_parameter_input_-1lyw"
              inputRole   = "Data"
              isUserInput = true
              stageId     = "stage-1lywvj39"
            },
          ]
          label = "response_codes"
          managers = [
            {
              id                     = "cn39zxna"
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
                  metric        = "count"
                  metric_labels = "count"
                  project_id    = "count"
                  region        = "count"
                  value         = "count"
                }
                datasetQueryId = {
                  ignoreCompress = false
                  queryId        = "q-d4aw3frh"
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
              customSummary = "Google/GCP/Storage Metrics"
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
              id                = "step-bjcvjstq"
              index             = 0
              isPinned          = false
              opal              = []
              queryPresentation = {}
              type              = "InputStep"
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
                  queryId        = "q-gbyrkevy"
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
              id       = "step-ninl5v42"
              index    = 1
              isPinned = false
              opal = [
                "filter metric = \"api_request_count\"",
                "",
                "pick_col ",
                "  end_time,",
                "  response_code:string(metric_labels.response_code),",
                "  method:string(metric_labels.method)",
                "",
                "fulljoin response_code=@\"default_parameter_input_-1lyw\".default_parameter, default_param:@\"default_parameter_input_-1lyw\".default_parameter",
                "",
                "make_col ",
                "\tresponse_code:if_null(response_code, default_param),",
                "    method:if_null(method, default_param)",
                "",
                "statsby count(response_code), group_by(response_code, method)",
                "pick_col ",
                "\tresponse_code, ",
                "    method",
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
                    filter metric = "api_request_count"
                    
                    pick_col 
                      end_time,
                      response_code:string(metric_labels.response_code),
                      method:string(metric_labels.method)
                    
                    fulljoin response_code=@"default_parameter_input_-1lyw".default_parameter, default_param:@"default_parameter_input_-1lyw".default_parameter
                    
                    make_col 
                    	response_code:if_null(response_code, default_param),
                        method:if_null(method, default_param)
                    
                    statsby count(response_code), group_by(response_code, method)
                    pick_col 
                    	response_code, 
                        method
                EOT
      },
      {
        id = "stage-e74yetzm"
        input = [
          {
            datasetId   = "${local.storage_metrics}"
            datasetPath = null
            inputName   = "Google/GCP/Storage Metrics"
            inputRole   = "Data"
            stageId     = null
          },
          {
            datasetId   = null
            datasetPath = null
            inputName   = "bucket"
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
            containerWidth              = 1243
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
              datasetId   = "${local.storage_metrics}"
              inputName   = "Google/GCP/Storage Metrics"
              inputRole   = "Data"
              isUserInput = false
            },
            {
              inputName   = "bucket"
              inputRole   = "Data"
              isUserInput = true
              parameterId = "bucket"
            },
          ]
          label = "Bytes by Storage Class"
          managers = [
            {
              id                     = "ph4l144u"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "kpjsfvgx"
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
                      "storageClass",
                    ]
                    statsBy = {
                      fn = "avg"
                    }
                    timechart = {
                      fn         = "avg"
                      resolution = "SINGLE"
                    }
                    transformType = "none"
                    type          = "keyvalue"
                    valueField    = "storage_total_bytes"
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
                  metric        = "count"
                  metric_labels = "count"
                  project_id    = "count"
                  region        = "count"
                  value         = "count"
                }
                datasetQueryId = {
                  ignoreCompress = false
                  queryId        = "q-ricyqkp2"
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
              customSummary = "Google/GCP/Storage Metrics"
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
              id                = "step-f4ozt0be"
              index             = 0
              isPinned          = false
              opal              = []
              queryPresentation = {}
              type              = "InputStep"
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
                  queryId        = "q-9joon8y8"
                  resultKinds = [
                    "ResultKindSchema",
                    "ResultKindData",
                  ]
                  tableTypes = [
                    "TABULAR",
                  ]
                }
              }
              customName    = "exists (custom)"
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
              id       = "step-ro3ygt07"
              index    = 1
              isPinned = false
              opal = [
                "exists bucket_name = @bucket.bucket_name",
                "filter metric = \"storage_total_bytes\"",
                "lookup bucket_name=@bucket.bucket_name, storageClass:@bucket.storageClass",
                "",
                "statsby storage_total_bytes:last(value), group_by(bucket_name, storageClass, project_id, region)",
              ]
              queryPresentation = {}
              type              = "unknown"
            },
          ]
          type = "table"
          viewModel = {
            consoleValue = <<-EOT
                            exists bucket_name = @bucket.bucket_name
                            filter metric = "storage_total_bytes"
                            lookup bucket_name=@bucket.bucket_name, storageClass:@bucket.storageClass
                            statsby storage_total_bytes:last(value), group_by(bucket_name, storageClass, project_id, region)
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
        pipeline = <<-EOT
                    exists bucket_name = @bucket.bucket_name
                    filter metric = "storage_total_bytes"
                    lookup bucket_name=@bucket.bucket_name, storageClass:@bucket.storageClass
                    
                    statsby storage_total_bytes:last(value), group_by(bucket_name, storageClass, project_id, region)
                EOT
      },
      {
        id = "stage-9w4wt70e"
        input = [
          {
            datasetId   = "${local.storage_metrics}"
            datasetPath = null
            inputName   = "Google/GCP/Storage Metrics"
            inputRole   = "Data"
            stageId     = null
          },
          {
            datasetId   = null
            datasetPath = null
            inputName   = "bucket"
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
            containerWidth              = 1243
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
              datasetId   = "${local.storage_metrics}"
              inputName   = "Google/GCP/Storage Metrics"
              inputRole   = "Data"
              isUserInput = false
            },
            {
              inputName   = "bucket"
              inputRole   = "Data"
              isUserInput = true
              parameterId = "bucket"
            },
          ]
          label = "Bucket Size"
          managers = [
            {
              id                     = "guno85lt"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "jccbj33h"
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
                      [
                        "bucket_name",
                      ],
                    ]
                    statsBy = {
                      fn = "avg"
                    }
                    timechart = {
                      fn         = "avg"
                      resolution = "SINGLE"
                    }
                    transformType = "none"
                    type          = "keyvalue"
                    valueField    = "storage_total_bytes"
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
                  metric        = "count"
                  metric_labels = "count"
                  project_id    = "count"
                  region        = "count"
                  value         = "count"
                }
                datasetQueryId = {
                  ignoreCompress = false
                  queryId        = "q-lxfvgfex"
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
              customSummary = "Google/GCP/Storage Metrics"
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
              id                = "step-7f3ih6ug"
              index             = 0
              isPinned          = false
              opal              = []
              queryPresentation = {}
              type              = "InputStep"
            },
            {
              customName    = "exists (custom)"
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
              id       = "step-iykw5me8"
              index    = 1
              isPinned = false
              opal = [
                "exists bucket_name = @bucket.bucket_name",
                "filter metric = \"storage_total_bytes\"",
                "//lookup bucket_name=@bucket.bucket_name, storageClass:@bucket.storageClass",
                "statsby storage_total_bytes:last(value), group_by(bucket_name, project_id, region)",
              ]
              queryPresentation = {}
              type              = "unknown"
            },
          ]
          type = "table"
          viewModel = {
            consoleValue = <<-EOT
                            exists bucket_name = @bucket.bucket_name
                            filter metric = "storage_total_bytes"
                            statsby storage_total_bytes:last(value), group_by(bucket_name, project_id, region)
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
        pipeline = <<-EOT
                    exists bucket_name = @bucket.bucket_name
                    filter metric = "storage_total_bytes"
                    //lookup bucket_name=@bucket.bucket_name, storageClass:@bucket.storageClass
                    statsby storage_total_bytes:last(value), group_by(bucket_name, project_id, region)
                EOT
      },
      {
        id = "stage-h4sd9auv"
        input = [
          {
            datasetId   = "${local.storage_metrics}"
            datasetPath = null
            inputName   = "Google/GCP/Storage Metrics"
            inputRole   = "Data"
            stageId     = null
          },
          {
            datasetId   = null
            datasetPath = null
            inputName   = "bucket"
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
            containerWidth              = 1243
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
              datasetId   = "${local.storage_metrics}"
              inputName   = "Google/GCP/Storage Metrics"
              inputRole   = "Data"
              isUserInput = false
            },
            {
              inputName   = "bucket"
              inputRole   = "Data"
              isUserInput = true
              parameterId = "bucket"
            },
          ]
          label = "Request Count"
          managers = [
            {
              id                     = "zeo8iz5l"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "vwir560v"
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
                      [
                        "bucket_name",
                      ],
                      {
                        id   = "metric_labels"
                        path = "method"
                      },
                      {
                        id   = "metric_labels"
                        path = "response_code"
                      },
                    ]
                    statsBy = {
                      fn = "avg"
                    }
                    timechart = {
                      fn         = "sum"
                      fnArgs     = []
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
            wantBuckets = 400
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
                  queryId        = "q-fwlecg5y"
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
              customSummary = "Google/GCP/Storage Metrics"
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
              id                = "step-3gkbecao"
              index             = 0
              isPinned          = false
              opal              = []
              queryPresentation = {}
              type              = "InputStep"
            },
            {
              customName    = "exists (custom)"
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
              id       = "step-cj7xcelm"
              index    = 1
              isPinned = false
              opal = [
                "exists bucket_name = @bucket.bucket_name",
                "filter metric = \"api_request_count\"",
                "filter $responseCode = \"all\" or metric_labels.response_code = $responseCode ",
                "filter $method = \"all\" or metric_labels.method = $method",
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
                    exists bucket_name = @bucket.bucket_name
                    filter metric = "api_request_count"
                    filter $responseCode = "all" or metric_labels.response_code = $responseCode 
                    filter $method = "all" or metric_labels.method = $method
                EOT
      },
      {
        id = "stage-cod6x3nx"
        input = [
          {
            datasetId   = "${local.storage_metrics}"
            datasetPath = null
            inputName   = "Google/GCP/Storage Metrics"
            inputRole   = "Data"
            stageId     = null
          },
          {
            datasetId   = null
            datasetPath = null
            inputName   = "bucket"
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
            containerWidth              = 1243
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
              datasetId   = "${local.storage_metrics}"
              inputName   = "Google/GCP/Storage Metrics"
              inputRole   = "Data"
              isUserInput = false
            },
            {
              inputName   = "bucket"
              inputRole   = "Data"
              isUserInput = true
              parameterId = "bucket"
            },
          ]
          label = "Network Bytes Downloaded"
          managers = [
            {
              id                     = "2gfedeq4"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "bpitdxj1"
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
                    unit    = "bytes"
                    visible = true
                  }
                }
                source = {
                  table = {
                    groupFields = [
                      [
                        "bucket_name",
                      ],
                      {
                        id   = "metric_labels"
                        path = "response_code"
                      },
                    ]
                    statsBy = {
                      fn = "avg"
                    }
                    timechart = {
                      fn         = "sum"
                      fnArgs     = []
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
            wantBuckets = 400
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
                  queryId        = "q-c06bwwyz"
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
              customSummary = "Google/GCP/Storage Metrics"
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
              id                = "step-1vhs8nv7"
              index             = 0
              isPinned          = false
              opal              = []
              queryPresentation = {}
              type              = "InputStep"
            },
            {
              customName    = "make_col (custom)"
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
              id       = "step-o4x73spi"
              index    = 1
              isPinned = false
              opal = [
                "make_col method:string(metric_labels.method)",
                "exists bucket_name = @bucket.bucket_name",
                "filter metric = \"network_sent_bytes_count\"",
                "filter $responseCode = \"all\" or metric_labels.response_code = $responseCode ",
                "filter method = \"ReadObject\"",
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
                    make_col method:string(metric_labels.method)
                    exists bucket_name = @bucket.bucket_name
                    filter metric = "network_sent_bytes_count"
                    filter $responseCode = "all" or metric_labels.response_code = $responseCode 
                    filter method = "ReadObject"
                EOT
      },
      {
        id = "stage-fozm2am2"
        input = [
          {
            datasetId   = "${local.storage_metrics}"
            datasetPath = null
            inputName   = "Google/GCP/Storage Metrics"
            inputRole   = "Data"
            stageId     = null
          },
          {
            datasetId   = null
            datasetPath = null
            inputName   = "bucket"
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
            containerWidth              = 1243
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
              datasetId   = "${local.storage_metrics}"
              inputName   = "Google/GCP/Storage Metrics"
              inputRole   = "Data"
              isUserInput = false
            },
            {
              inputName   = "bucket"
              inputRole   = "Data"
              isUserInput = true
              parameterId = "bucket"
            },
          ]
          label = "Network Bytes Uploaded"
          managers = [
            {
              id                     = "r66ddgl2"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "e10j1q5z"
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
                    unit    = "bytes"
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
                      fn         = "sum"
                      fnArgs     = []
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
            wantBuckets = 400
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
                  queryId        = "q-rqpc3yvt"
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
              customSummary = "Google/GCP/Storage Metrics"
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
              id                = "step-qlf1u3a9"
              index             = 0
              isPinned          = false
              opal              = []
              queryPresentation = {}
              type              = "InputStep"
            },
            {
              customName    = "make_col (custom)"
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
              id       = "step-woff3wp7"
              index    = 1
              isPinned = false
              opal = [
                "make_col method:string(metric_labels.method)",
                "exists bucket_name = @bucket.bucket_name",
                "filter metric = \"network_received_bytes_count\"",
                "filter $responseCode = \"all\" or metric_labels.response_code = $responseCode ",
                "filter method = \"WriteObject\"",
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
                    make_col method:string(metric_labels.method)
                    exists bucket_name = @bucket.bucket_name
                    filter metric = "network_received_bytes_count"
                    filter $responseCode = "all" or metric_labels.response_code = $responseCode 
                    filter method = "WriteObject"
                EOT
      },
      {
        id = "stage-7fd9npob"
        input = [
          {
            datasetId   = "${local.storage_metrics}"
            datasetPath = null
            inputName   = "Google/GCP/Storage Metrics"
            inputRole   = "Data"
            stageId     = null
          },
          {
            datasetId   = null
            datasetPath = null
            inputName   = "bucket"
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
            containerWidth              = 1243
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
              datasetId   = "${local.storage_metrics}"
              inputName   = "Google/GCP/Storage Metrics"
              inputRole   = "Data"
              isUserInput = false
            },
            {
              inputName   = "bucket"
              inputRole   = "Data"
              isUserInput = true
              parameterId = "bucket"
            },
          ]
          label = "Object Replications"
          managers = [
            {
              id                     = "fn2yw7ru"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "qk6tqlg0"
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
                      [
                        "bucket_name",
                      ],
                      "metric_labels",
                    ]
                    statsBy = {
                      fn = "avg"
                    }
                    timechart = {
                      fn         = "sum"
                      fnArgs     = []
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
            wantBuckets = 400
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
                  queryId        = "q-g5zfmfzp"
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
              customSummary = "Google/GCP/Storage Metrics"
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
              id                = "step-mnbtbdej"
              index             = 0
              isPinned          = false
              opal              = []
              queryPresentation = {}
              type              = "InputStep"
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
                  queryId        = "q-2v1wplt3"
                  resultKinds = [
                    "ResultKindSchema",
                    "ResultKindData",
                  ]
                  tableTypes = [
                    "TABULAR",
                  ]
                }
              }
              customName    = "exists (custom)"
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
              id       = "step-cwnn3og9"
              index    = 1
              isPinned = false
              opal = [
                "exists bucket_name = @bucket.bucket_name",
                "filter metric = \"replication_object_replications_last_30d\"",
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
                    exists bucket_name = @bucket.bucket_name
                    filter metric = "replication_object_replications_last_30d"
                EOT
      },
      {
        id = "stage-kri8q1gp"
        input = [
          {
            datasetId   = "${local.storage_metrics}"
            datasetPath = null
            inputName   = "Google/GCP/Storage Metrics"
            inputRole   = "Data"
            stageId     = null
          },
          {
            datasetId   = null
            datasetPath = null
            inputName   = "bucket"
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
            containerWidth              = 1243
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
              datasetId   = "${local.storage_metrics}"
              inputName   = "Google/GCP/Storage Metrics"
              inputRole   = "Data"
              isUserInput = false
            },
            {
              inputName   = "bucket"
              inputRole   = "Data"
              isUserInput = true
              parameterId = "bucket"
            },
          ]
          label = "Replication Misses"
          managers = [
            {
              id                     = "byj52kor"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "a0uuv6x5"
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
                      [
                        "bucket_name",
                      ],
                      "metric_labels",
                    ]
                    statsBy = {
                      fn = "avg"
                    }
                    timechart = {
                      fn         = "sum"
                      fnArgs     = []
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
            wantBuckets = 400
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
                  queryId        = "q-ezc2m35b"
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
              customSummary = "Google/GCP/Storage Metrics"
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
              id                = "step-2llmscdl"
              index             = 0
              isPinned          = false
              opal              = []
              queryPresentation = {}
              type              = "InputStep"
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
                  queryId        = "q-alxjs8dr"
                  resultKinds = [
                    "ResultKindSchema",
                    "ResultKindData",
                  ]
                  tableTypes = [
                    "TABULAR",
                  ]
                }
              }
              customName    = "exists (custom)"
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
              id       = "step-jwun7ib6"
              index    = 1
              isPinned = false
              opal = [
                "exists bucket_name = @bucket.bucket_name",
                "filter metric = \"replication_missing_rpo_minutes_last_30d\"",
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
                    exists bucket_name = @bucket.bucket_name
                    filter metric = "replication_missing_rpo_minutes_last_30d"
                EOT
      },
      {
        id = "stage-e4v5dib4"
        input = [
          {
            datasetId   = "${local.storage_metrics}"
            datasetPath = null
            inputName   = "Google/GCP/Storage Metrics"
            inputRole   = "Data"
            stageId     = null
          },
          {
            datasetId   = null
            datasetPath = null
            inputName   = "bucket"
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
            containerWidth              = 1243
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
              datasetId   = "${local.storage_metrics}"
              inputName   = "Google/GCP/Storage Metrics"
              inputRole   = "Data"
              isUserInput = false
            },
            {
              inputName   = "bucket"
              inputRole   = "Data"
              isUserInput = true
              parameterId = "bucket"
            },
          ]
          label = "Replication Data Age"
          managers = [
            {
              id                     = "b4xftsbn"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "rayvacvh"
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
                    unit    = "seconds"
                    visible = true
                  }
                }
                source = {
                  table = {
                    groupFields = [
                      [
                        "bucket_name",
                      ],
                      "metric_labels",
                    ]
                    statsBy = {
                      fn = "avg"
                    }
                    timechart = {
                      fn         = "avg"
                      fnArgs     = []
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
            wantBuckets = 400
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
                  queryId        = "q-wc19xt1d"
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
              customSummary = "Google/GCP/Storage Metrics"
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
              id                = "step-zg6bj1qb"
              index             = 0
              isPinned          = false
              opal              = []
              queryPresentation = {}
              type              = "InputStep"
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
                  queryId        = "q-uxrbtc74"
                  resultKinds = [
                    "ResultKindSchema",
                    "ResultKindData",
                  ]
                  tableTypes = [
                    "TABULAR",
                  ]
                }
              }
              customName    = "exists (custom)"
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
              id       = "step-2ropt3mv"
              index    = 1
              isPinned = false
              opal = [
                "exists bucket_name = @bucket.bucket_name",
                "filter metric = \"replication_time_since_metrics_updated\"",
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
                    exists bucket_name = @bucket.bucket_name
                    filter metric = "replication_time_since_metrics_updated"
                EOT
      },
      {
        id = "stage-smetllii"
        input = [
          {
            datasetId   = "${local.storage_metrics}"
            datasetPath = null
            inputName   = "Google/GCP/Storage Metrics"
            inputRole   = "Data"
            stageId     = null
          },
          {
            datasetId   = null
            datasetPath = null
            inputName   = "bucket"
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
            containerWidth              = 1243
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
              datasetId   = "${local.storage_metrics}"
              inputName   = "Google/GCP/Storage Metrics"
              inputRole   = "Data"
              isUserInput = false
            },
            {
              inputName   = "bucket"
              inputRole   = "Data"
              isUserInput = true
              parameterId = "bucket"
            },
          ]
          label = "Authentication Count"
          managers = [
            {
              id                     = "9xttqqhr"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "hzhlhcd0"
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
                      [
                        "bucket_name",
                      ],
                      {
                        id   = "metric_labels"
                        path = "authentication_method"
                      },
                      {
                        id   = "metric_labels"
                        path = "method"
                      },
                      {
                        id   = "metric_labels"
                        path = "response_code"
                      },
                    ]
                    statsBy = {
                      fn = "avg"
                    }
                    timechart = {
                      fn         = "sum"
                      fnArgs     = []
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
            wantBuckets = 400
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
                  queryId        = "q-m8acu3gm"
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
              customSummary = "Google/GCP/Storage Metrics"
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
              id                = "step-b61u592n"
              index             = 0
              isPinned          = false
              opal              = []
              queryPresentation = {}
              type              = "InputStep"
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
                  queryId        = "q-aw5dwe1p"
                  resultKinds = [
                    "ResultKindSchema",
                    "ResultKindData",
                  ]
                  tableTypes = [
                    "TABULAR",
                  ]
                }
              }
              customName    = "exists (custom)"
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
              id       = "step-blcxuunt"
              index    = 1
              isPinned = false
              opal = [
                "exists bucket_name = @bucket.bucket_name",
                "filter metric = \"authn_authentication_count\"",
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
                    exists bucket_name = @bucket.bucket_name
                    filter metric = "authn_authentication_count"
                EOT
      },
      {
        id = "stage-lub7w2o2"
        input = [
          {
            datasetId   = "${local.storage_logs}"
            datasetPath = null
            inputName   = "Google/GCP/Storage Logs"
            inputRole   = "Data"
            stageId     = null
          },
          {
            datasetId   = null
            datasetPath = null
            inputName   = "bucket"
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
            containerWidth              = 1439
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
              datasetId   = "${local.storage_logs}"
              inputName   = "Google/GCP/Storage Logs"
              inputRole   = "Data"
              isUserInput = false
            },
            {
              inputName   = "bucket"
              inputRole   = "Data"
              isUserInput = true
              parameterId = "bucket"
            },
          ]
          label = "Public Access Grants"
          managers = [
            {
              id                     = "041x0i2z"
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
                  logName      = "count"
                  project_id   = "count"
                  protoPayload = "count"
                  region       = "count"
                  severity     = "count"
                  textPayload  = "count"
                }
                datasetQueryId = {
                  ignoreCompress = false
                  queryId        = "q-a2lt299h"
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
              customSummary = "Google/GCP/Storage Logs"
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
              id                = "step-qph16vxy"
              index             = 0
              isPinned          = false
              opal              = []
              queryPresentation = {}
              type              = "InputStep"
            },
            {
              columnStatsTable = {
                columnFunctions = {
                  action       = "count"
                  logName      = "count"
                  member       = "count"
                  project_id   = "count"
                  protoPayload = "count"
                  region       = "count"
                  resourceName = "count"
                  role         = "count"
                  severity     = "count"
                  textPayload  = "count"
                }
                datasetQueryId = {
                  ignoreCompress = false
                  queryId        = "q-48jwipdl"
                  resultKinds = [
                    "ResultKindSchema",
                    "ResultKindData",
                  ]
                  tableTypes = [
                    "TABULAR",
                  ]
                }
              }
              customName    = "exists (custom)"
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
              id       = "step-asgujxmy"
              index    = 1
              isPinned = false
              opal = [
                "exists bucket_name = @bucket.bucket_name",
                "",
                "make_col ",
                "  resourceName:string(protoPayload.resourceName),",
                "  bindingDeltas:protoPayload.serviceData.policyDelta.bindingDeltas",
                "flatten_single bindingDeltas",
                "make_col ",
                "  action:string(@.\"_c_bindingDeltas_value\".action),",
                "  member:string(@.\"_c_bindingDeltas_value\".member),",
                "  role:string(@.\"_c_bindingDeltas_value\".role)",
                "",
                "filter action = \"ADD\"",
                "filter member = \"allAuthenticatedUsers\" or member = \"allUsers\"",
                "",
                "pick_col ",
                "  timestamp,",
                "  bucket_name,",
                "  resourceName,",
                "  action,",
                "  member,",
                "  role",
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
                    exists bucket_name = @bucket.bucket_name
                    
                    make_col 
                      resourceName:string(protoPayload.resourceName),
                      bindingDeltas:protoPayload.serviceData.policyDelta.bindingDeltas
                    flatten_single bindingDeltas
                    make_col 
                      action:string(@."_c_bindingDeltas_value".action),
                      member:string(@."_c_bindingDeltas_value".member),
                      role:string(@."_c_bindingDeltas_value".role)
                    
                    filter action = "ADD"
                    filter member = "allAuthenticatedUsers" or member = "allUsers"
                    
                    pick_col 
                      timestamp,
                      bucket_name,
                      resourceName,
                      action,
                      member,
                      role
                EOT
      },
      {
        id = "stage-z8gm45fx"
        input = [
          {
            datasetId   = "${local.storage_metrics}"
            datasetPath = null
            inputName   = "Google/GCP/Storage Metrics"
            inputRole   = "Data"
            stageId     = null
          },
          {
            datasetId   = null
            datasetPath = null
            inputName   = "bucket"
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
            containerWidth              = 1243
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
              datasetId   = "${local.storage_metrics}"
              inputName   = "Google/GCP/Storage Metrics"
              inputRole   = "Data"
              isUserInput = false
            },
            {
              inputName   = "bucket"
              inputRole   = "Data"
              isUserInput = true
              parameterId = "bucket"
            },
          ]
          label = "ACL Graph"
          managers = [
            {
              id                     = "xguzo2nv"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "ufz72t43"
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
                    axisLabel = ""
                    visible   = true
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
                      "metric_labels",
                    ]
                    statsBy = {
                      fn = "avg"
                    }
                    timechart = {
                      fn         = "sum"
                      fnArgs     = []
                      resolution = "AUTO"
                    }
                    transformType = "timechart"
                    type          = "xy"
                    x = [
                      "bucket_name",
                    ]
                    y = "value"
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
            wantBuckets = 400
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
                  queryId        = "q-23fkbzyg"
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
              customSummary = "Google/GCP/Storage Metrics"
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
              id                = "step-evgktwm2"
              index             = 0
              isPinned          = false
              opal              = []
              queryPresentation = {}
              type              = "InputStep"
            },
            {
              customName    = "exists (custom)"
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
              id       = "step-ripztzo2"
              index    = 1
              isPinned = false
              opal = [
                "exists bucket_name = @bucket.bucket_name",
                "filter metric=$aclMetric",
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
                    exists bucket_name = @bucket.bucket_name
                    filter metric=$aclMetric
                EOT
      },
      {
        id = "stage-awa0frdk"
        input = [
          {
            datasetId   = "${local.storage_buckets}"
            datasetPath = null
            inputName   = "Google/GCP/Storage Buckets"
            inputRole   = "Data"
            stageId     = null
          },
          {
            datasetId   = null
            datasetPath = null
            inputName   = "bucket"
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
              bucket_name = 281
            }
            containerWidth              = 1439
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
              datasetId   = "${local.storage_buckets}"
              inputName   = "Google/GCP/Storage Buckets"
              inputRole   = "Data"
              isUserInput = false
            },
            {
              inputName   = "bucket"
              inputRole   = "Data"
              isUserInput = true
              parameterId = "bucket"
            },
          ]
          label = "Configurations"
          managers = [
            {
              id                     = "wewkn4hh"
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
                  acl              = "count"
                  autoclass        = "count"
                  billing          = "count"
                  bucket_name      = "count"
                  cors             = "count"
                  defaultObjectAcl = "count"
                  encryption       = "count"
                  iamConfiguration = "count"
                  labels           = "count"
                  lifecycle        = "count"
                  locationType     = "count"
                  logging          = "count"
                  owner            = "count"
                  region           = "count"
                  retentionPolicy  = "count"
                  selfLink         = "count"
                  storageClass     = "count"
                  timeCreated      = "count"
                  updated          = "count"
                  versioning       = "count"
                  website          = "count"
                }
                datasetQueryId = {
                  ignoreCompress = false
                  queryId        = "q-ip912akp"
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
              customSummary = "Google/GCP/Storage Buckets"
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
              id                = "step-qnnjevyx"
              index             = 0
              isPinned          = false
              opal              = []
              queryPresentation = {}
              type              = "InputStep"
            },
            {
              columnStatsTable = {
                columnFunctions = {
                  acl              = "count"
                  autoclass        = "count"
                  billing          = "count"
                  bucket_name      = "count"
                  cors             = "count"
                  defaultObjectAcl = "count"
                  encryption       = "count"
                  iamConfiguration = "count"
                  labels           = "count"
                  lifecycle        = "count"
                  locationType     = "count"
                  logging          = "count"
                  owner            = "count"
                  region           = "count"
                  retentionPolicy  = "count"
                  selfLink         = "count"
                  storageClass     = "count"
                  timeCreated      = "count"
                  updated          = "count"
                  versioning       = "count"
                  website          = "count"
                }
                datasetQueryId = {
                  ignoreCompress = false
                  queryId        = "q-6aelfmmn"
                  resultKinds = [
                    "ResultKindSchema",
                    "ResultKindData",
                  ]
                  tableTypes = [
                    "TABULAR",
                  ]
                }
              }
              customName    = "exists (custom)"
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
              id       = "step-lsys8e0o"
              index    = 1
              isPinned = false
              opal = [
                "exists bucket_name = @bucket.bucket_name",
                "filter ($config = \"Buckets without lifecycle rules\" and lifecycle = make_object(rule:make_array()))",
                "  or ($config = \"Buckets without usage logging\" and logging = make_object())",
                "  or ($config = \"Buckets with CORS enabled\" and not cors = make_array())",
                "  or ($config = \"Buckets used for websites\" and not website = make_object())",
                "  or ($config = \"Buckets without retention policies\" and retentionPolicy = make_object())",
                "  or ($config = \"Buckets without versioning\" and versioning = make_object())",
                "",
                "pick_col ",
                "  bucket_name,",
                "  @.'Valid From', ",
                "  @.\"Valid To\"",
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
                    exists bucket_name = @bucket.bucket_name
                    filter ($config = "Buckets without lifecycle rules" and lifecycle = make_object(rule:make_array()))
                      or ($config = "Buckets without usage logging" and logging = make_object())
                      or ($config = "Buckets with CORS enabled" and not cors = make_array())
                      or ($config = "Buckets used for websites" and not website = make_object())
                      or ($config = "Buckets without retention policies" and retentionPolicy = make_object())
                      or ($config = "Buckets without versioning" and versioning = make_object())
                    
                    pick_col 
                      bucket_name,
                      @.'Valid From', 
                      @."Valid To"
                EOT
      },
      {
        id = "stage-9fecnrid"
        input = [
          {
            datasetId   = "${local.storage_buckets}"
            datasetPath = null
            inputName   = "Google/GCP/Storage Buckets"
            inputRole   = "Data"
            stageId     = null
          },
          {
            datasetId   = null
            datasetPath = null
            inputName   = "bucket"
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
              bucket_name                     = 267
              publicAccessPrevention          = 162
              uniformBucketLevelAccessEnabled = 217
            }
            containerWidth              = 1439
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
              datasetId   = "${local.storage_buckets}"
              inputName   = "Google/GCP/Storage Buckets"
              inputRole   = "Data"
              isUserInput = false
            },
            {
              inputName   = "bucket"
              inputRole   = "Data"
              isUserInput = true
              parameterId = "bucket"
            },
          ]
          label = "Buckets with possible public access"
          managers = [
            {
              id                     = "rhx9o5y2"
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
                  acl              = "count"
                  autoclass        = "count"
                  billing          = "count"
                  bucket_name      = "count"
                  cors             = "count"
                  defaultObjectAcl = "count"
                  encryption       = "count"
                  iamConfiguration = "count"
                  labels           = "count"
                  lifecycle        = "count"
                  locationType     = "count"
                  logging          = "count"
                  owner            = "count"
                  region           = "count"
                  retentionPolicy  = "count"
                  selfLink         = "count"
                  storageClass     = "count"
                  timeCreated      = "count"
                  updated          = "count"
                  versioning       = "count"
                  website          = "count"
                }
                datasetQueryId = {
                  ignoreCompress = false
                  queryId        = "q-rq9ffctz"
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
              customSummary = "Google/GCP/Storage Buckets"
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
              id                = "step-0jw46xxz"
              index             = 0
              isPinned          = false
              opal              = []
              queryPresentation = {}
              type              = "InputStep"
            },
            {
              columnStatsTable = {
                columnFunctions = {
                  acl                             = "count"
                  autoclass                       = "count"
                  billing                         = "count"
                  bucket_name                     = "count"
                  cors                            = "count"
                  defaultObjectAcl                = "count"
                  encryption                      = "count"
                  iamConfiguration                = "count"
                  labels                          = "count"
                  lifecycle                       = "count"
                  locationType                    = "count"
                  logging                         = "count"
                  owner                           = "count"
                  publicAccessPrevention          = "count"
                  region                          = "count"
                  retentionPolicy                 = "count"
                  selfLink                        = "count"
                  storageClass                    = "count"
                  timeCreated                     = "count"
                  uniformBucketLevelAccessEnabled = "count"
                  updated                         = "count"
                  versioning                      = "count"
                  website                         = "count"
                }
                datasetQueryId = {
                  ignoreCompress = false
                  queryId        = "q-lif10rhv"
                  resultKinds = [
                    "ResultKindSchema",
                    "ResultKindData",
                  ]
                  tableTypes = [
                    "TABULAR",
                  ]
                }
              }
              customName    = "exists (custom)"
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
              id       = "step-06ax3d32"
              index    = 1
              isPinned = false
              opal = [
                "exists bucket_name = @bucket.bucket_name",
                "",
                "make_col",
                "  publicAccessPrevention:string(iamConfiguration.publicAccessPrevention),",
                "  uniformBucketLevelAccessEnabled:string(iamConfiguration.uniformBucketLevelAccess.enabled)",
                "ever publicAccessPrevention != \"enforced\" and uniformBucketLevelAccessEnabled = \"false\"",
                "",
                "pick_col ",
                "  bucket_name, ",
                "  publicAccessPrevention, ",
                "  uniformBucketLevelAccessEnabled, ",
                "  @.'Valid From', ",
                "  @.\"Valid To\"",
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
                    exists bucket_name = @bucket.bucket_name
                    
                    make_col
                      publicAccessPrevention:string(iamConfiguration.publicAccessPrevention),
                      uniformBucketLevelAccessEnabled:string(iamConfiguration.uniformBucketLevelAccess.enabled)
                    ever publicAccessPrevention != "enforced" and uniformBucketLevelAccessEnabled = "false"
                    
                    pick_col 
                      bucket_name, 
                      publicAccessPrevention, 
                      uniformBucketLevelAccessEnabled, 
                      @.'Valid From', 
                      @."Valid To"
                EOT
      },
      {
        id = "stage-4xzggfvj"
        input = [
          {
            datasetId   = "${local.storage_metrics}"
            datasetPath = null
            inputName   = "Google/GCP/Storage Metrics"
            inputRole   = "Data"
            stageId     = null
          },
          {
            datasetId   = null
            datasetPath = null
            inputName   = "bucket"
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
            containerWidth              = 1243
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
              datasetId   = "${local.storage_metrics}"
              inputName   = "Google/GCP/Storage Metrics"
              inputRole   = "Data"
              isUserInput = false
            },
            {
              inputName   = "bucket"
              inputRole   = "Data"
              isUserInput = true
              parameterId = "bucket"
            },
          ]
          label = "Agents Connected"
          managers = [
            {
              id                     = "qb137nyo"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "qt73lcj8"
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
                      [
                        "bucket_name",
                      ],
                      "metric_labels",
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
            wantBuckets = 400
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
                  queryId        = "q-7j08tl75"
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
              customSummary = "Google/GCP/Storage Metrics"
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
              id                = "step-t8f6vru2"
              index             = 0
              isPinned          = false
              opal              = []
              queryPresentation = {}
              type              = "InputStep"
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
                  queryId        = "q-0ejieqaf"
                  resultKinds = [
                    "ResultKindSchema",
                    "ResultKindData",
                  ]
                  tableTypes = [
                    "TABULAR",
                  ]
                }
              }
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
              id       = "step-ds95eumr"
              index    = 1
              isPinned = false
              opal = [
                "",
                "filter metric = \"agent_connected\"",
              ]
              queryPresentation = {}
              type              = "unknown"
            },
          ]
          type = "table"
          viewModel = {
            consoleValue = <<-EOT
                            exists bucket_name = @bucket.bucket_name
                            filter metric = "agent_connected"
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
        pipeline = <<-EOT
                    
                    filter metric = "agent_connected"
                EOT
      },
      {
        id = "stage-vxxkhlyz"
        input = [
          {
            datasetId   = "${local.storage_metrics}"
            datasetPath = null
            inputName   = "Google/GCP/Storage Metrics"
            inputRole   = "Data"
            stageId     = null
          },
          {
            datasetId   = null
            datasetPath = null
            inputName   = "bucket"
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
            containerWidth              = 1243
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
              datasetId   = "${local.storage_metrics}"
              inputName   = "Google/GCP/Storage Metrics"
              inputRole   = "Data"
              isUserInput = false
            },
            {
              inputName   = "bucket"
              inputRole   = "Data"
              isUserInput = true
              parameterId = "bucket"
            },
          ]
          label = "Agent Transferred Bytes"
          managers = [
            {
              id                     = "4f4d0gmt"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "89vfy57s"
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
                      [
                        "bucket_name",
                      ],
                      "metric_labels",
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
            wantBuckets = 400
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
                  queryId        = "q-ycfo6sgq"
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
              customSummary = "Google/GCP/Storage Metrics"
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
              id                = "step-6gl4rnx4"
              index             = 0
              isPinned          = false
              opal              = []
              queryPresentation = {}
              type              = "InputStep"
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
                  queryId        = "q-rv1x1zpt"
                  resultKinds = [
                    "ResultKindSchema",
                    "ResultKindData",
                  ]
                  tableTypes = [
                    "TABULAR",
                  ]
                }
              }
              customName    = "exists (custom)"
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
              id       = "step-tmhr2agb"
              index    = 1
              isPinned = false
              opal = [
                "exists bucket_name = @bucket.bucket_name",
                "filter metric = \"agent_transferred_bytes_count\"",
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
                    exists bucket_name = @bucket.bucket_name
                    filter metric = "agent_transferred_bytes_count"
                EOT
      },
      {
        id = "stage-2725zo9z"
        input = [
          {
            datasetId   = null
            datasetPath = null
            inputName   = "bucket"
            inputRole   = "Data"
            stageId     = null
          },
          {
            datasetId   = "${local.projects_collection_enabled}"
            datasetPath = null
            inputName   = "Backup_Google/GCP/Projects"
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
            containerWidth              = 1243
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
              inputName   = "bucket"
              inputRole   = "Data"
              isUserInput = false
              parameterId = "bucket"
            },
            {
              datasetId   = "${local.projects_collection_enabled}"
              inputName   = "Backup_Google/GCP/Projects"
              inputRole   = "Data"
              isUserInput = true
            },
          ]
          label = "Project"
          managers = [
            {
              id                     = "zxgkx9xj"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "6ynhltby"
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
                      "project",
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
                    valueField    = "bucket_name"
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
                  acl              = "count"
                  autoclass        = "count"
                  billing          = "count"
                  bucket_name      = "count"
                  cors             = "count"
                  defaultObjectAcl = "count"
                  encryption       = "count"
                  iamConfiguration = "count"
                  labels           = "count"
                  lifecycle        = "count"
                  locationType     = "count"
                  logging          = "count"
                  owner            = "count"
                  region           = "count"
                  retentionPolicy  = "count"
                  selfLink         = "count"
                  storageClass     = "count"
                  timeCreated      = "count"
                  updated          = "count"
                  versioning       = "count"
                  website          = "count"
                }
                datasetQueryId = {
                  ignoreCompress = false
                  queryId        = "q-aixc111k"
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
              customSummary = "bucket"
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
              id                = "step-tb5taun9"
              index             = 0
              isPinned          = false
              opal              = []
              queryPresentation = {}
              type              = "InputStep"
            },
            {
              customName    = "lookup (custom)"
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
              id       = "step-uewizuoh"
              index    = 1
              isPinned = false
              opal = [
                "lookup projectNumber = @\"Backup_Google/GCP/Projects\".projectNumber, project : @\"Backup_Google/GCP/Projects\".project_id",
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
        pipeline = "lookup projectNumber = @\"Backup_Google/GCP/Projects\".projectNumber, project : @\"Backup_Google/GCP/Projects\".project_id"
      },
      {
        id = "stage-vg98d4xb"
        input = [
          {
            datasetId   = null
            datasetPath = null
            inputName   = "bucket"
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
            containerWidth              = 1243
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
              inputName   = "bucket"
              inputRole   = "Data"
              isUserInput = false
              parameterId = "bucket"
            },
          ]
          label = "Region"
          managers = [
            {
              id                     = "8vfg96lp"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "2brdwv8o"
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
                    valueField    = "bucket_name"
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
                  acl              = "count"
                  autoclass        = "count"
                  billing          = "count"
                  bucket_name      = "count"
                  cors             = "count"
                  defaultObjectAcl = "count"
                  encryption       = "count"
                  iamConfiguration = "count"
                  labels           = "count"
                  lifecycle        = "count"
                  locationType     = "count"
                  logging          = "count"
                  owner            = "count"
                  region           = "count"
                  retentionPolicy  = "count"
                  selfLink         = "count"
                  storageClass     = "count"
                  timeCreated      = "count"
                  updated          = "count"
                  versioning       = "count"
                  website          = "count"
                }
                datasetQueryId = {
                  ignoreCompress = false
                  queryId        = "q-z9sj42ue"
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
              customSummary = "bucket"
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
              id                = "step-pzccu41g"
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
        id = "stage-4gu1bh8l"
        input = [
          {
            datasetId   = "${local.storage_metrics}"
            datasetPath = null
            inputName   = "Backup_Google/GCP/Storage Metrics"
            inputRole   = "Data"
            stageId     = null
          },
          {
            datasetId   = null
            datasetPath = null
            inputName   = "bucket"
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
          index = 18
          inputList = [
            {
              datasetId   = "${local.storage_metrics}"
              inputName   = "Backup_Google/GCP/Storage Metrics"
              inputRole   = "Data"
              isUserInput = false
            },
            {
              inputName   = "bucket"
              inputRole   = "Data"
              isUserInput = true
              parameterId = "bucket"
            },
          ]
          label = "Error Count"
          managers = [
            {
              id                     = "npavdhmp"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "z82atmp5"
              isDisabled = false
              type       = "Vis"
              vis = {
                config = {
                  color         = "Red"
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
                      [
                        "bucket_name",
                      ],
                    ]
                    statsBy = {
                      fn = "avg"
                    }
                    timechart = {
                      fn         = "sum"
                      fnArgs     = []
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
            wantBuckets = 400
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
                  queryId        = "q-sp2wdzwg"
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
              customSummary = "Backup_Google/GCP/Storage Metrics"
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
              id                = "step-c1phfuzw"
              index             = 0
              isPinned          = false
              opal              = []
              queryPresentation = {}
              type              = "InputStep"
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
                  queryId        = "q-1e6jv2kv"
                  resultKinds = [
                    "ResultKindSchema",
                    "ResultKindData",
                  ]
                  tableTypes = [
                    "TABULAR",
                  ]
                }
              }
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
              id       = "step-kkt4262h"
              index    = 1
              isPinned = false
              opal = [
                "",
                "exists bucket_name = @bucket.bucket_name",
                "filter metric = \"api_request_count\"",
                "filter $responseCode = \"all\" or metric_labels.response_code = $responseCode ",
                "filter $method = \"all\" or metric_labels.method = $method",
                "make_col response_code:string(metric_labels.response_code)",
                "filter is_null(response_code) or (response_code != \"OK\")",
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
                    
                    exists bucket_name = @bucket.bucket_name
                    filter metric = "api_request_count"
                    filter $responseCode = "all" or metric_labels.response_code = $responseCode 
                    filter $method = "all" or metric_labels.method = $method
                    make_col response_code:string(metric_labels.response_code)
                    filter is_null(response_code) or (response_code != "OK")
                EOT
      },
      {
        id = "stage-4hcjp4l2"
        input = [
          {
            datasetId   = null
            datasetPath = null
            inputName   = "bucket"
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
            containerWidth              = 1243
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
              inputName   = "bucket"
              inputRole   = "Data"
              isUserInput = false
              parameterId = "bucket"
            },
          ]
          label = "Buckets per Storage Class"
          managers = [
            {
              id                     = "a7cu77vg"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "30mlsadb"
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
                      "storageClass",
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
                    valueField    = "bucket_name"
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
                  acl              = "count"
                  autoclass        = "count"
                  billing          = "count"
                  bucket_name      = "count"
                  cors             = "count"
                  defaultObjectAcl = "count"
                  encryption       = "count"
                  iamConfiguration = "count"
                  labels           = "count"
                  lifecycle        = "count"
                  locationType     = "count"
                  logging          = "count"
                  owner            = "count"
                  region           = "count"
                  retentionPolicy  = "count"
                  selfLink         = "count"
                  storageClass     = "count"
                  timeCreated      = "count"
                  updated          = "count"
                  versioning       = "count"
                  website          = "count"
                }
                datasetQueryId = {
                  ignoreCompress = false
                  queryId        = "q-nuuey0jj"
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
              customSummary = "bucket"
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
              id                = "step-cn17ih9a"
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
        id = "stage-1lywvj39"
        input = [
          {
            datasetId   = "${local.resource_asset_inventory_records}"
            datasetPath = null
            inputName   = "Backup_Google/GCP/Asset Inventory Records"
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
              "0" = "now"
            }
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
          index = 20
          inputList = [
            {
              datasetId   = "${local.resource_asset_inventory_records}"
              inputName   = "Backup_Google/GCP/Asset Inventory Records"
              inputRole   = "Data"
              isUserInput = false
            },
          ]
          label = "default_parameter_input"
          managers = [
            {
              id                     = "1utavguq"
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
                  deleted       = "count"
                  iam_policy    = "count"
                  name          = "count"
                  org_policy    = "count"
                  resource      = "count"
                }
                datasetQueryId = {
                  ignoreCompress = false
                  queryId        = "q-y29yp1ez"
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
              customSummary = "Backup_Google/GCP/Asset Inventory Records"
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
              id                = "step-nrpdpndq"
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
                  deleted       = "count"
                  iam_policy    = "count"
                  name          = "count"
                  org_policy    = "count"
                  resource      = "count"
                }
                datasetQueryId = {
                  ignoreCompress = false
                  queryId        = "q-ylblnm8d"
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
              id       = "step-5ecuovd6"
              index    = 1
              isPinned = false
              opal = [
                "filter time > query_end_time() - 600s",
                "make_col",
                "\tdefault_parameter:\"all\",",
                "    now:query_end_time()-10s",
                "set_valid_from now",
                "dedup default_parameter",
                "pick_col ",
                "\tdefault_parameter,",
                "    now",
                "//make_resource primary_key(default_parameter)",
              ]
              queryPresentation = {}
              type              = "unknown"
            },
          ]
          type = "table"
          viewModel = {
            consoleValue = <<-EOT
                            filter time > query_end_time() - 600s
                            make_col
                            	default_parameter:"all",
                                now:query_end_time()-10s
                            set_valid_from now
                            dedup default_parameter
                            pick_col 
                            	default_parameter,
                                now
                        EOT
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
                    filter time > query_end_time() - 600s
                    make_col
                    	default_parameter:"all",
                        now:query_end_time()-10s
                    set_valid_from now
                    dedup default_parameter
                    pick_col 
                    	default_parameter,
                        now
                    //make_resource primary_key(default_parameter)
                EOT
      },
      {
        id = "stage-uypv6jle"
        input = [
          {
            datasetId   = "${local.storage_buckets}"
            datasetPath = null
            inputName   = "dev/Storage Buckets"
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
          index = 21
          inputList = [
            {
              datasetId   = "${local.storage_buckets}"
              inputName   = "dev/Storage Buckets"
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
              customSummary = "dev/Storage Buckets"
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
              id       = "step-ql9fixx3"
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

