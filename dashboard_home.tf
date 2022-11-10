
# terraform import observe_dashboard.app_home 41345249
resource "observe_dashboard" "app_home" {
  layout = jsonencode(
    {
      autoPack = true
      gridLayout = {
        sections = [
          {
            card = {
              cardType = "section"
              closed   = false
              id       = "section-xbwko2a7"
              title    = "Untitled Section"
            }
            items = []
          },
          {
            card = {
              cardType = "section"
              closed   = false
              id       = "section-2qjjzai5"
              title    = "Google Cloud Platform Application"
            }
            items = [
              {
                card = {
                  cardType = "stage"
                  id       = "card-rq7k76rj"
                  stageId  = "stage-iv0som0b"
                }
                layout = {
                  h           = 10
                  i           = "card-rq7k76rj"
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
                  id       = "card-ve3z5tml"
                  stageId  = "stage-g5xahf72"
                }
                layout = {
                  h           = 10
                  i           = "card-ve3z5tml"
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
                  cardType = "image"
                  id       = "card-gladzlhh"
                  title    = "Untitled Image"
                  url      = "https://pbs.twimg.com/profile_images/1190319303041724417/1a61e4pu_400x400.jpg"
                }
                layout = {
                  h           = 10
                  i           = "card-gladzlhh"
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
                  id       = "card-wkwtzd6f"
                  stageId  = "stage-adtkr7tf"
                }
                layout = {
                  h           = 10
                  i           = "card-wkwtzd6f"
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
                  id       = "card-fa38nbko"
                  stageId  = "stage-21nn95t9"
                }
                layout = {
                  h           = 10
                  i           = "card-fa38nbko"
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
                  id       = "card-0gw231zr"
                  stageId  = "stage-jliidcnd"
                }
                layout = {
                  h           = 10
                  i           = "card-0gw231zr"
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
                  id       = "card-xu3mxurj"
                  stageId  = "stage-2b1wmvm0"
                }
                layout = {
                  h           = 10
                  i           = "card-xu3mxurj"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 2
                  x           = 4
                  y           = 10
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-30yfogw6"
                  stageId  = "stage-pe50l3py"
                }
                layout = {
                  h           = 10
                  i           = "card-30yfogw6"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 2
                  x           = 6
                  y           = 10
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-of4j0ttp"
                  stageId  = "stage-fqygx54m"
                }
                layout = {
                  h           = 10
                  i           = "card-of4j0ttp"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 2
                  x           = 8
                  y           = 10
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-5t2gicka"
                  stageId  = "stage-rcjq4hxw"
                }
                layout = {
                  h           = 10
                  i           = "card-5t2gicka"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 2
                  x           = 10
                  y           = 10
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-73mhg9cs"
                  stageId  = "stage-fgwg2rh6"
                }
                layout = {
                  h           = 10
                  i           = "card-73mhg9cs"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 2
                  x           = 0
                  y           = 10
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-v1gt6w5v"
                  stageId  = "stage-yvtup4f7"
                }
                layout = {
                  h           = 10
                  i           = "card-v1gt6w5v"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 2
                  x           = 2
                  y           = 10
                }
              },
            ]
          },
          {
            card = {
              cardType = "section"
              closed   = false
              id       = "section-4g6khhpy"
              title    = "Compute"
            }
            items = [
              {
                card = {
                  cardType = "stage"
                  id       = "card-4p4vtjx2"
                  stageId  = "stage-228m0syx"
                }
                layout = {
                  h           = 15
                  i           = "card-4p4vtjx2"
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
                  id       = "card-1vgjnp66"
                  stageId  = "stage-ip7wr03z"
                }
                layout = {
                  h           = 12
                  i           = "card-1vgjnp66"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 6
                  x           = 0
                  y           = 15
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-zfq0yyaz"
                  stageId  = "stage-s2m8jiqp"
                }
                layout = {
                  h           = 12
                  i           = "card-zfq0yyaz"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 6
                  x           = 6
                  y           = 15
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-hdcrp3qp"
                  stageId  = "stage-5mrjhjg1"
                }
                layout = {
                  h           = 12
                  i           = "card-hdcrp3qp"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 6
                  x           = 0
                  y           = 27
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-wneq5ktl"
                  stageId  = "stage-unvyak3n"
                }
                layout = {
                  h           = 12
                  i           = "card-wneq5ktl"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 6
                  x           = 6
                  y           = 27
                }
              },
            ]
          },
          {
            card = {
              cardType = "section"
              closed   = false
              id       = "section-xabigv27"
              title    = "Buckets"
            }
            items = [
              {
                card = {
                  cardType = "stage"
                  id       = "card-7up0yyad"
                  stageId  = "stage-syrkb3qn"
                }
                layout = {
                  h           = 13
                  i           = "card-7up0yyad"
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
                  id       = "card-o4gsxand"
                  stageId  = "stage-ybs0phel"
                }
                layout = {
                  h           = 13
                  i           = "card-o4gsxand"
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
          },
          {
            card = {
              cardType = "section"
              closed   = false
              id       = "section-4t24imlt"
              title    = "Cloud Functions"
            }
            items = [
              {
                card = {
                  cardType = "stage"
                  id       = "card-lrtowbz3"
                  stageId  = "stage-zb4jkng5"
                }
                layout = {
                  h           = 13
                  i           = "card-lrtowbz3"
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
                  id       = "card-oca2msee"
                  stageId  = "stage-dd4tnu00"
                }
                layout = {
                  h           = 13
                  i           = "card-oca2msee"
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
                  id       = "card-9jc8gz25"
                  stageId  = "stage-se0b58dq"
                }
                layout = {
                  h           = 12
                  i           = "card-9jc8gz25"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 6
                  x           = 0
                  y           = 13
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-9j02o7nt"
                  stageId  = "stage-lpdgwarl"
                }
                layout = {
                  h           = 12
                  i           = "card-9j02o7nt"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 6
                  x           = 6
                  y           = 13
                }
              },
            ]
          },
          {
            card = {
              cardType = "section"
              closed   = false
              id       = "section-pcq251y3"
              title    = "Cloud SQL"
            }
            items = [
              {
                card = {
                  cardType = "stage"
                  id       = "card-u0ikhovx"
                  stageId  = "stage-te6t9rwt"
                }
                layout = {
                  h           = 14
                  i           = "card-u0ikhovx"
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
                  id       = "card-1vtj7nos"
                  stageId  = "stage-5ln1jd7h"
                }
                layout = {
                  h           = 14
                  i           = "card-1vtj7nos"
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
                  id       = "card-lcw75ywl"
                  stageId  = "stage-jytc9moz"
                }
                layout = {
                  h           = 13
                  i           = "card-lcw75ywl"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 6
                  x           = 0
                  y           = 14
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-plr0uyga"
                  stageId  = "stage-b1chj5cm"
                }
                layout = {
                  h           = 13
                  i           = "card-plr0uyga"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 6
                  x           = 6
                  y           = 14
                }
              },
            ]
          },
          {
            card = {
              cardType = "section"
              closed   = false
              id       = "section-dvtkmkku"
              title    = "Services Enabled"
            }
            items = [
              {
                card = {
                  cardType = "stage"
                  id       = "card-cmym27d8"
                  stageId  = "stage-xrowv4mm"
                }
                layout = {
                  h           = 17
                  i           = "card-cmym27d8"
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
                  id       = "card-i9utm4fm"
                  stageId  = "stage-daa0tsou"
                }
                layout = {
                  h           = 17
                  i           = "card-i9utm4fm"
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
                  id       = "card-6xt8y4he"
                  stageId  = "stage-j45262wb"
                }
                layout = {
                  h           = 15
                  i           = "card-6xt8y4he"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 12
                  x           = 0
                  y           = 17
                }
              },
              {
                card = {
                  cardType    = "parameter"
                  id          = "card-5x5khdty"
                  parameterId = "service"
                }
                layout = {
                  h           = 4
                  i           = "card-5x5khdty"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  resizeHandles = [
                    "e",
                  ]
                  static = false
                  w      = 4
                  x      = 0
                  y      = 32
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-2qhxxpu7"
                  stageId  = "stage-fa5121vu"
                }
                layout = {
                  h           = 16
                  i           = "card-2qhxxpu7"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 12
                  x           = 0
                  y           = 36
                }
              },
            ]
          },
          {
            card = {
              cardType = "section"
              closed   = false
              id       = "card-zkjpi0f3"
              title    = "Inventory"
            }
            items = [
              {
                card = {
                  cardType = "stage"
                  id       = "card-plsbbbyu"
                  stageId  = "stage-5qcgtbj0"
                }
                layout = {
                  h           = 21
                  i           = "card-plsbbbyu"
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
                  cardType    = "parameter"
                  id          = "card-hnpvyloy"
                  parameterId = "metricNamespace"
                }
                layout = {
                  h           = 4
                  i           = "card-hnpvyloy"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  resizeHandles = [
                    "e",
                  ]
                  static = false
                  w      = 4
                  x      = 0
                  y      = 21
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-mqwndy0h"
                  stageId  = "stage-i0tj2v1q"
                }
                layout = {
                  h           = 18
                  i           = "card-mqwndy0h"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 12
                  x           = 0
                  y           = 25
                }
              },
            ]
          },
          {
            card = {
              cardType = "section"
              closed   = false
              id       = "section-kl8i4lo3"
              title    = "Notes"
            }
            items = [
              {
                card = {
                  cardType = "text"
                  id       = "card-bsfempw3"
                  text     = <<-EOT
                                        ### Base Datasets
                                        
                                        - [Datastream](workspace/${local.workspace_id}/dataset/event/${local.datastream_name}-${local.datastream_dataset_id}) - All other pre-built data sets for the GCP application are derived from here.
                                        
                                        - [Asset Inventory](/workspace/${local.workspace_id}/dataset/event/Asset-Inventory-Records-${local.asset_inventory})  - This shows a list of all GCP for each project you are collecting data for. Pre-built Resources are derived from this dataset. 
                                        
                                        - [Metrics](/workspace/${local.workspace_id}/dataset/event/Metrics-${local.metrics})  - This shows incoming data of all metrics you are collecting from GCP for each project you are collecting data for. Pre-built Resources metrics are derived from this dataset. 
                                        
                                        - [Logs](/workspace/${local.workspace_id}/dataset/event/Logs-${local.logs}) - This shows incoming log data for all logs you are collecting from GCP for each project you are collecting data for. Pre-built Resources logs are derived from this dataset.
                                                                                                                                                                                                        
                                    EOT
                  title    = "Untitled Text"
                }
                layout = {
                  h           = 23
                  i           = "card-bsfempw3"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 5
                  x           = 7
                  y           = 0
                }
              },
              {
                card = {
                  cardType = "text"
                  id       = "card-vg4gqfkn"
                  text     = <<-EOT
                                        # Google Cloud Platform Application
                                                                                                                                                                                                                                                
                                        See Inventory section for count of resources within your monitored projects and metrics being collected.
                                                                                                                                                                                                                                                
                                                                                                                                                                                                                                                
                                        - [Observe GCP Documentation](https://docs.observeinc.com/en/latest/content/integrations/gcp/gcp.html)
                                                                                                                                                                                                                                                
                                        - [Google Metrics Documentation](https://cloud.google.com/monitoring/api/metrics_gcp)
                                    EOT
                  title    = "Untitled Text"
                }
                layout = {
                  h           = 10
                  i           = "card-vg4gqfkn"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 7
                  x           = 0
                  y           = 0
                }
              },
              {
                card = {
                  cardType = "text"
                  id       = "card-54zkyeh9"
                  text     = <<-EOT
                                        ### Pre-built Content
                                        
                                        ${local.enable_service_cloudfunctions == true ? "- [CloudFunction Resources](/workspace/${local.workspace_id}/dataset/resource/Cloud-Functions-Instances-${one(module.cloudfunctions[*].function.id)}) - Cloud Function Resource dataset that GraphLinks to metrics and logs." : ""} 
                                        
                                        ${local.enable_service_cloudsql == true ? "- [CloudSQL Resources](/workspace/${local.workspace_id}/dataset/resource/Cloud-SQL-Instance-${one(module.cloudsql[*].cloudsql.id)}) - CloudSQL Resource dataset that GraphLinks to metrics and logs." : ""} 
                                        
                                        ${local.enable_service_compute == true ? "- [Compute Resources](/workspace/${local.workspace_id}/dataset/resource/Compute-Instance-${one(module.compute[*].compute.id)}) - Compute Resource dataset that GraphLinks to metrics and logs." : ""} 
                                        
                                        ${local.enable_service_gke == true ? "- [GKE Resources](/workspace/${local.workspace_id}/dataset/resource/GKE-Cluster-${one(module.gke[*].gke_cluster.id)}) - Google Kubernetes Engine Resource dataset that GraphLinks to compute resources and Kubernetes App resources." : ""}

                                        ${local.enable_service_load_balancing == true ? "- [LoadBalancing Resources](/workspace/${local.workspace_id}/dataset/resource/Load-Balancing-Load-Balancers-${one(module.load_balancing[*].load_balancers.id)}) - Load Balancer Resource dataset that GraphLinks to metrics and logs." : ""}
                                        
                                        ${local.enable_service_storage == true ? "- [Storage Resources](/workspace/${local.workspace_id}/dataset/resource/Storage-Buckets-${one(module.storage[*].storage.id)}) - Storage Bucket Resource dataset that GraphLinks to metrics and logs." : ""}
                                                                                                                                                                                                                                                                                                                                                    
                                    EOT
                  title    = "Untitled Text"
                }
                layout = {
                  h           = 13
                  i           = "card-54zkyeh9"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 7
                  x           = 0
                  y           = 10
                }
              },
            ]
            lastModified = 1668101656657
          },
        ]
      }
      stageListLayout = {
        isModified = false
        parameters = [
          {
            controlledFilterStageId = "stage-j2c2ofq9"
            datasetId               = "${local.projects_collection_enabled}"
            defaultValue = {
              datasetref = {
                datasetId = "${local.projects_collection_enabled}"
              }
            }
            emptyValueEncoding    = "null"
            emptyValueLabelOption = "null"
            id                    = "input-parameter-z5n5j9ss"
            name                  = "projects"
            valueKind = {
              type = "DATASETREF"
            }
            viewType = "input"
          },
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
            sourceColumnId        = "name"
            sourceStageId         = "stage-o52sz7q6"
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
            sourceStageId         = "stage-0ln1husq"
            valueKind = {
              type = "STRING"
            }
            viewType = "single-select"
          },
        ]
        selectedStageId = "stage-fgwg2rh6"
        timeRange = {
          display               = "Today 08:34:03 - 09:34:03"
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
        id   = "input-parameter-z5n5j9ss"
        name = "projects"
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
        id = "stage-j2c2ofq9"
        input = [
          {
            datasetId   = "${local.projects_collection_enabled}"
            datasetPath = null
            inputName   = "gcp-cost-test/Projects Collection Enabled"
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
              inputName   = "gcp-cost-test/Projects Collection Enabled"
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
              customSummary = "gcp-cost-test/Projects Collection Enabled"
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
              id       = "step-e6gvvcfb"
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
        id = "stage-5qcgtbj0"
        input = [
          {
            datasetId   = "${local.resources_asset_inventory}"
            datasetPath = null
            inputName   = "gcp-cost-test/Resources Asset Inventory"
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
              "0" = "Project ID"
              "1" = "Location"
              "2" = "Asset Namespace"
              "3" = "Asset Type"
              "5" = "Valid From"
            }
            columnVisibility = {}
            columnWidths = {
              "Asset Namespace" = 254
              "Asset Type"      = 173
              Count             = 102
              Location          = 172
              "Project ID"      = 253
            }
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
                "Asset Namespace" = {
                  "9" = true
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
          index = 1
          inputList = [
            {
              datasetId   = "${local.resources_asset_inventory}"
              inputName   = "gcp-cost-test/Resources Asset Inventory"
              inputRole   = "Data"
              isUserInput = false
            },
            {
              inputName   = "projects"
              inputRole   = "Data"
              isUserInput = true
              parameterId = "input-parameter-z5n5j9ss"
            },
          ]
          label = "Asset Inventory By Project"
          managers = [
            {
              id                     = "jywkqd1x"
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
                  project_id             = "count"
                  ttl                    = "count"
                  version                = "count"
                }
                datasetQueryId = {
                  ignoreCompress = false
                  queryId        = "q-i0gxa3yt"
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
              customSummary = "gcp-cost-test/Resources Asset Inventory"
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
              id                = "step-og9oxxnh"
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
                  name                   = "count"
                  parent                 = "count"
                  parent_project_id      = "count"
                  project_id             = "count"
                  ttl                    = "count"
                  version                = "count"
                }
                datasetQueryId = {
                  ignoreCompress = false
                  queryId        = "q-gi83k3ec"
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
              id       = "step-vyl2541u"
              index    = 1
              isPinned = false
              opal = [
                "filter is_null(deleted)",
                "",
                "exists project_id = @projects.project_id",
                "",
                "timechart count_distinct(asset_name), group_by(project_id,location, asset_namespace, asset_sub_type)",
                "",
                "pick_col ",
                "\t_c_valid_from,",
                "     _c_valid_to,",
                "\t\"Project ID\": project_id,",
                "    \"Asset Namespace\": asset_namespace,",
                "    \"Location\":location,",
                "    \"Asset Type\": asset_sub_type,",
                "    \"Count\": count_distinct_asset_name",
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
                    
                    exists project_id = @projects.project_id
                    
                    timechart count_distinct(asset_name), group_by(project_id,location, asset_namespace, asset_sub_type)
                    
                    pick_col 
                    	_c_valid_from,
                         _c_valid_to,
                    	"Project ID": project_id,
                        "Asset Namespace": asset_namespace,
                        "Location":location,
                        "Asset Type": asset_sub_type,
                        "Count": count_distinct_asset_name
                EOT
      },
      {
        id = "stage-6tpj44f3"
        input = [
          {
            datasetId   = "${local.pubsub_topics}"
            datasetPath = null
            inputName   = "gcp-cost-test/PubSub Service"
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
              "0" = "topic_name"
              "1" = "name"
              "2" = "Valid From"
              "3" = "Valid To"
            }
            columnVisibility = {}
            columnWidths = {
              topic_name        = 179
              topic_primary_key = 468
            }
            containerWidth              = 274
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
          index = 2
          inputList = [
            {
              datasetId   = "${local.pubsub_topics}"
              inputName   = "gcp-cost-test/PubSub Service"
              inputRole   = "Data"
              isUserInput = false
            },
            {
              inputName   = "projects"
              inputRole   = "Data"
              isUserInput = true
              parameterId = "input-parameter-z5n5j9ss"
            },
          ]
          label = "Service"
          managers = [
            {
              id                     = "m1uoqfel"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "2z179429"
              isDisabled = true
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
                    unit    = ""
                    visible = true
                  }
                }
                source = {
                  metric = {
                    aggregate   = "sum"
                    datasetId   = "${local.pubsub_service_quota_metrics}"
                    description = <<-EOT
                                            The limit for the quota. Sampled every 86400s and may take up to  to display.
                                        EOT
                    groupBy = [
                      "service",
                    ]
                    heuristics = {
                      __typename = "MetricHeuristics"
                      tags = [
                        {
                          __typename = "MetricTag"
                          column     = "limit_name"
                          path       = ""
                        },
                        {
                          __typename = "MetricTag"
                          column     = "quota_metric"
                          path       = ""
                        },
                        {
                          __typename = "MetricTag"
                          column     = "service"
                          path       = ""
                        },
                        {
                          __typename = "MetricTag"
                          column     = "location"
                          path       = ""
                        },
                        {
                          __typename = "MetricTag"
                          column     = "label"
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
                          column     = "method"
                          path       = ""
                        },
                        {
                          __typename = "MetricTag"
                          column     = "metric_labels"
                          path       = "limit_name"
                        },
                        {
                          __typename = "MetricTag"
                          column     = "metric_labels"
                          path       = "quota_metric"
                        },
                      ]
                      validLinkLabels = [
                        "quota",
                      ]
                    }
                    interval = "86400000000000"
                    link = {
                      __typename = "ForeignKey"
                      dstFields = [
                        "service",
                      ]
                      label = "quota"
                      srcFields = [
                        "service",
                      ]
                      targetDataset    = "${local.pubsub_topics}"
                      targetStageLabel = null
                      type             = "foreign"
                    }
                    name        = "quota_limit"
                    rollup      = "avg"
                    type        = "gauge"
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
                  location   = "count"
                  name       = "count"
                  project_id = "count"
                  service    = "count"
                }
                datasetQueryId = {
                  ignoreCompress = false
                  queryId        = "q-6e0usjit"
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
              customSummary = "gcp-cost-test/PubSub Service"
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
              id                = "step-hz9ihyuu"
              index             = 0
              isPinned          = false
              opal              = []
              queryPresentation = {}
              type              = "InputStep"
            },
            {
              columnStatsTable = {
                columnFunctions = {
                  location   = "count"
                  name       = "count"
                  project_id = "count"
                  service    = "count"
                }
                datasetQueryId = {
                  ignoreCompress = false
                  queryId        = "q-jkol0x76"
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
              id       = "step-44ood63l"
              index    = 1
              isPinned = false
              opal = [
                "exists project_id = @projects.project_id",
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
        pipeline = "exists project_id = @projects.project_id"
      },
      {
        id = "stage-o52sz7q6"
        input = [
          {
            datasetId   = null
            datasetPath = null
            inputName   = "Service_-6tpj"
            inputRole   = "Data"
            stageId     = "stage-6tpj44f3"
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
              "0" = "topic_name"
              "1" = "name"
              "2" = "Valid From"
              "3" = "Valid To"
            }
            columnVisibility            = {}
            columnWidths                = {}
            containerWidth              = 274
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
              inputName   = "Service_-6tpj"
              inputRole   = "Data"
              isUserInput = false
              stageId     = "stage-6tpj44f3"
            },
            {
              inputName   = "projects"
              inputRole   = "Data"
              isUserInput = true
              parameterId = "input-parameter-z5n5j9ss"
            },
          ]
          label = "Service Dropdown"
          managers = [
            {
              id                     = "ndeambvg"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
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
                  location   = "count"
                  name       = "count"
                  project_id = "count"
                  service    = "count"
                }
                datasetQueryId = {
                  ignoreCompress = false
                  queryId        = "q-fttcybme"
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
              customSummary = "Service_-6tpj"
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
              id                = "step-4ps1amdu"
              index             = 0
              isPinned          = false
              opal              = []
              queryPresentation = {}
              type              = "InputStep"
            },
            {
              columnStatsTable = {
                columnFunctions = {
                  location   = "count"
                  name       = "count"
                  project_id = "count"
                  service    = "count"
                }
                datasetQueryId = {
                  ignoreCompress = false
                  queryId        = "q-sz9q3wtp"
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
              id       = "step-n5dr1528"
              index    = 1
              isPinned = false
              opal = [
                "exists project_id = @projects.project_id",
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
        pipeline = "exists project_id = @projects.project_id"
      },
      {
        id = "stage-xrowv4mm"
        input = [
          {
            datasetId   = "${local.resources_asset_inventory}"
            datasetPath = null
            inputName   = "gcp-cost-test/Resources Asset Inventory"
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
              "2" = "Project ID"
              "3" = "Location"
              "4" = "Asset Type"
            }
            columnVisibility = {
              name = false
              time = false
            }
            columnWidths = {
              "Asset Namespace" = 254
              "Asset Type"      = 173
              Count             = 102
              Location          = 172
              "Project ID"      = 253
              name              = 196
              service           = 395
            }
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
              datasetId   = "${local.resources_asset_inventory}"
              inputName   = "gcp-cost-test/Resources Asset Inventory"
              inputRole   = "Data"
              isUserInput = false
            },
            {
              inputName   = "projects"
              inputRole   = "Data"
              isUserInput = true
              parameterId = "input-parameter-z5n5j9ss"
            },
          ]
          label = "Services Enabled"
          managers = [
            {
              id                     = "jywkqd1x"
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
              customName    = "Input"
              customSummary = "gcp-cost-test/Resources Asset Inventory"
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
              id                = "step-55mr1nz2"
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
                  queryId        = "q-5yby1o0m"
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
              id       = "step-wkbhb7vv"
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
                "\ttime,",
                "\tname,",
                "    service,",
                "    state: string(data.state)",
                "    ",
                "// statsby last(time), group_by(name, service, state)",
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
                    exists project_id = @projects.project_id
                    filter asset_type = "serviceusage.googleapis.com/Service"
                    filter string(data.state) = "ENABLED"
                    
                    make_col service: string(data.name)
                    
                    pick_col 
                    	@."Valid From",
                        @."Valid To",
                    	time,
                    	name,
                        service,
                        state: string(data.state)
                        
                    // statsby last(time), group_by(name, service, state)
                EOT
      },
      {
        id = "stage-i0tj2v1q"
        input = [
          {
            datasetId   = "${local.metrics}"
            datasetPath = null
            inputName   = "gcp-cost-test/Metrics"
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
            columnVisibility = {
              count = false
            }
            columnWidths = {
              count            = 156
              metric_namespace = 313
              metric_type      = 644
            }
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
                metric_type = {
                  "8" = true
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
          index = 5
          inputList = [
            {
              datasetId   = "${local.metrics}"
              inputName   = "gcp-cost-test/Metrics"
              inputRole   = "Data"
              isUserInput = false
            },
            {
              inputName   = "projects"
              inputRole   = "Data"
              isUserInput = true
              parameterId = "input-parameter-z5n5j9ss"
            },
          ]
          label = "Collected Metrics"
          managers = [
            {
              id                     = "9ty4dhel"
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
                  queryId        = "q-e44vdnmb"
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
              customSummary = "gcp-cost-test/Metrics"
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
              id                = "step-6mzzvb9v"
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
                  queryId        = "q-xm3oaxuu"
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
              id       = "step-fxkztkoy"
              index    = 1
              isPinned = false
              opal = [
                "exists project_id = @projects.project_id",
                "",
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
                    exists project_id = @projects.project_id
                    
                    filter $metricNamespace = "" or metric_namespace =  $metricNamespace
                    
                    statsby count(1), group_by(metric_namespace,metric_type)
                EOT
      },
      {
        id = "stage-0ln1husq"
        input = [
          {
            datasetId   = "${local.metrics}"
            datasetPath = null
            inputName   = "gcp-cost-test/Metrics"
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
              count            = 156
              metric_namespace = 276
            }
            containerWidth              = 274
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
              inputName   = "gcp-cost-test/Metrics"
              inputRole   = "Data"
              isUserInput = false
            },
            {
              inputName   = "projects"
              inputRole   = "Data"
              isUserInput = true
              parameterId = "input-parameter-z5n5j9ss"
            },
          ]
          label = "Metric Namespace Dropdown"
          managers = [
            {
              id                     = "9ty4dhel"
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
              customName    = "Input"
              customSummary = "gcp-cost-test/Metrics"
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
              id                = "step-67qdybzf"
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
                  metric_namespace = "count"
                }
                datasetQueryId = {
                  ignoreCompress = false
                  queryId        = "q-i8rd1nma"
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
              id       = "step-x0t2v5et"
              index    = 1
              isPinned = false
              opal = [
                "exists project_id = @projects.project_id",
                "",
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
        pipeline = <<-EOT
                    exists project_id = @projects.project_id
                    
                    statsby count(1), group_by(metric_namespace)
                EOT
      },
      {
        id = "stage-21nn95t9"
        input = [
          {
            datasetId   = "${local.resources_asset_inventory}"
            datasetPath = null
            inputName   = "gcp-cost-test/Resources Asset Inventory"
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
              "0" = "Asset Namespace"
              "1" = "Valid From"
              "2" = "Valid To"
              "3" = "Asset Type"
              "4" = "Project ID"
              "5" = "Location"
            }
            columnVisibility = {}
            columnWidths = {
              "Asset Namespace" = 254
              "Asset Type"      = 173
              Count             = 102
              Location          = 172
              "Project ID"      = 253
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
              datasetId   = "${local.resources_asset_inventory}"
              inputName   = "gcp-cost-test/Resources Asset Inventory"
              inputRole   = "Data"
              isUserInput = false
            },
            {
              inputName   = "projects"
              inputRole   = "Data"
              isUserInput = true
              parameterId = "input-parameter-z5n5j9ss"
            },
          ]
          label = "Compute Inventory"
          managers = [
            {
              id                     = "jywkqd1x"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "t677hnrf"
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
                  singleStatLabel = "Compute Instances"
                  thresholds      = null
                  type            = "singlefield"
                }
                source = {
                  table = {
                    field       = "asset_name"
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
              customSummary = "gcp-cost-test/Resources Asset Inventory"
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
              id                = "step-lziajfm1"
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
              id       = "step-ldae9t1l"
              index    = 1
              isPinned = false
              opal = [
                "filter is_null(deleted)",
                "",
                "exists project_id = @projects.project_id",
                "filter asset_type = \"compute.googleapis.com/Instance\"",
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
        pipeline = <<-EOT
                    filter is_null(deleted)
                    
                    exists project_id = @projects.project_id
                    filter asset_type = "compute.googleapis.com/Instance"
                EOT
      },
      {
        id = "stage-228m0syx"
        input = [
          {
            datasetId   = "${local.compute_instance}"
            datasetPath = null
            inputName   = "gcp-cost-test/Compute Instance"
            inputRole   = "Data"
            stageId     = null
          },
          {
            datasetId   = "${local.compute_metrics}"
            datasetPath = null
            inputName   = "gcp-cost-test/Compute Metrics"
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
              "1" = "instance_name"
              "2" = "instance_key"
              "3" = "Valid To"
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
          index = 8
          inputList = [
            {
              datasetId   = "${local.compute_instance}"
              inputName   = "gcp-cost-test/Compute Instance"
              inputRole   = "Data"
              isUserInput = false
            },
            {
              datasetId   = "${local.compute_metrics}"
              inputName   = "gcp-cost-test/Compute Metrics"
              inputRole   = "Data"
              isUserInput = true
            },
            {
              inputName   = "projects"
              inputRole   = "Data"
              isUserInput = true
              parameterId = "input-parameter-z5n5j9ss"
            },
          ]
          label = "Compute CPU Utilization"
          managers = [
            {
              id                     = "m7rgwh9q"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "vyjq3sdx"
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
                    unit    = "%"
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
                  creationTime       = "count"
                  deleted            = "count"
                  deletionProtection = "count"
                  instance_group     = "count"
                  instance_id        = "count"
                  instance_name      = "count"
                  labels             = "count"
                  machineType        = "count"
                  network            = "count"
                  networkIP          = "count"
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
                  queryId        = "q-e06mj411"
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
              id                = "step-pbw83e57"
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
              id       = "step-vdz4f2cj"
              index    = 1
              isPinned = false
              opal = [
                "exists project_id = @projects.project_id",
                "follow computeInstanceAssetKey = @\"gcp-cost-test/Compute Metrics\".computeInstanceAssetKey",
                "filter metric = \"instance_cpu_utilization\"",
                "make_col value: value*100",
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
            stageTab      = "vis"
          }
        }
        params   = null
        pipeline = <<-EOT
                    exists project_id = @projects.project_id
                    follow computeInstanceAssetKey = @"gcp-cost-test/Compute Metrics".computeInstanceAssetKey
                    filter metric = "instance_cpu_utilization"
                    make_col value: value*100
                EOT
      },
      {
        id = "stage-ip7wr03z"
        input = [
          {
            datasetId   = "${local.compute_instance}"
            datasetPath = null
            inputName   = "gcp-cost-test/Compute Instance"
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
              "0" = "instance_name"
              "1" = "computeInstanceAssetKey"
              "2" = "Valid From"
              "3" = "Valid To"
              "4" = "instance_key"
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
          index = 9
          inputList = [
            {
              datasetId   = "${local.compute_instance}"
              inputName   = "gcp-cost-test/Compute Instance"
              inputRole   = "Data"
              isUserInput = false
            },
            {
              inputName   = "projects"
              inputRole   = "Data"
              isUserInput = true
              parameterId = "input-parameter-z5n5j9ss"
            },
          ]
          label = "Compute Network Bytes Sent"
          managers = [
            {
              id                     = "m7rgwh9q"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "vyjq3sdx"
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
                    datasetId   = "${local.compute_metrics}"
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
                        "Link to Compute Instances",
                      ]
                    }
                    interval = null
                    link = {
                      __typename = "ForeignKey"
                      dstFields = [
                        "computeInstanceAssetKey",
                      ]
                      label = "Link to Compute Instances"
                      srcFields = [
                        "computeInstanceAssetKey",
                      ]
                      targetDataset    = "${local.compute_instance}"
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
          selectedStepId = null
          serializable   = true
          steps = [
            {
              columnStatsTable = {
                columnFunctions = {}
                datasetQueryId = {
                  ignoreCompress = false
                  queryId        = "q-a5fp6zc4"
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
              id                = "step-sqhhwnwd"
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
              id       = "step-imtnww9m"
              index    = 1
              isPinned = false
              opal = [
                "exists project_id = @projects.project_id",
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
        pipeline = "exists project_id = @projects.project_id"
      },
      {
        id = "stage-5mrjhjg1"
        input = [
          {
            datasetId   = "${local.compute_instance}"
            datasetPath = null
            inputName   = "gcp-cost-test/Compute Instance"
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
              "0" = "instance_name"
              "1" = "computeInstanceAssetKey"
              "2" = "Valid From"
              "3" = "Valid To"
              "4" = "instance_key"
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
          index = 10
          inputList = [
            {
              datasetId   = "${local.compute_instance}"
              inputName   = "gcp-cost-test/Compute Instance"
              inputRole   = "Data"
              isUserInput = false
            },
            {
              inputName   = "projects"
              inputRole   = "Data"
              isUserInput = true
              parameterId = "input-parameter-z5n5j9ss"
            },
          ]
          label = "Compute Network Bytes Received"
          managers = [
            {
              id                     = "m7rgwh9q"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "vyjq3sdx"
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
                    datasetId   = "${local.compute_metrics}"
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
                        "Link to Compute Instances",
                      ]
                    }
                    interval = null
                    link = {
                      __typename = "ForeignKey"
                      dstFields = [
                        "computeInstanceAssetKey",
                      ]
                      label = "Link to Compute Instances"
                      srcFields = [
                        "computeInstanceAssetKey",
                      ]
                      targetDataset    = "${local.compute_instance}"
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
              id                = "step-kxod2cdq"
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
                  queryId        = "q-cgj3wkjg"
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
              id       = "step-q4qanf18"
              index    = 1
              isPinned = false
              opal = [
                "exists project_id = @projects.project_id",
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
        pipeline = "exists project_id = @projects.project_id"
      },
      {
        id = "stage-s2m8jiqp"
        input = [
          {
            datasetId   = "${local.compute_instance}"
            datasetPath = null
            inputName   = "gcp-cost-test/Compute Instance"
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
              "0" = "instance_name"
              "1" = "computeInstanceAssetKey"
              "2" = "Valid From"
              "3" = "Valid To"
              "4" = "instance_key"
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
          index = 11
          inputList = [
            {
              datasetId   = "${local.compute_instance}"
              inputName   = "gcp-cost-test/Compute Instance"
              inputRole   = "Data"
              isUserInput = false
            },
            {
              inputName   = "projects"
              inputRole   = "Data"
              isUserInput = true
              parameterId = "input-parameter-z5n5j9ss"
            },
          ]
          label = "Compute Disk Read Ops Count"
          managers = [
            {
              id                     = "m7rgwh9q"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "vyjq3sdx"
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
                    unit    = ""
                    visible = true
                  }
                }
                source = {
                  metric = {
                    aggregate   = "sum"
                    datasetId   = "${local.compute_metrics}"
                    description = "Auto Detected Metric"
                    groupBy = [
                      "computeInstanceAssetKey",
                    ]
                    heuristics = {
                      __typename = "MetricHeuristics"
                      tags = [
                        {
                          __typename = "MetricTag"
                          column     = "computeDiskInstanceAssetKey"
                          path       = ""
                        },
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
                          column     = "metric_labels"
                          path       = "device_name"
                        },
                        {
                          __typename = "MetricTag"
                          column     = "metric_labels"
                          path       = "instance_name"
                        },
                        {
                          __typename = "MetricTag"
                          column     = "metric_labels"
                          path       = "storage_type"
                        },
                        {
                          __typename = "MetricTag"
                          column     = "metric_labels"
                          path       = "device_type"
                        },
                      ]
                      validLinkLabels = [
                        "Link to Compute Disk Instances",
                        "Link to Compute Instances",
                      ]
                    }
                    interval = null
                    link = {
                      __typename = "ForeignKey"
                      dstFields = [
                        "computeInstanceAssetKey",
                      ]
                      label = "Link to Compute Instances"
                      srcFields = [
                        "computeInstanceAssetKey",
                      ]
                      targetDataset    = "${local.compute_instance}"
                      targetStageLabel = null
                      type             = "foreign"
                    }
                    name        = "instance_disk_read_ops_count"
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
              id                = "step-y2crvdt8"
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
              id       = "step-uwa92bul"
              index    = 1
              isPinned = false
              opal = [
                "exists project_id = @projects.project_id",
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
        pipeline = "exists project_id = @projects.project_id"
      },
      {
        id = "stage-unvyak3n"
        input = [
          {
            datasetId   = "${local.compute_instance}"
            datasetPath = null
            inputName   = "gcp-cost-test/Compute Instance"
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
              "0" = "instance_name"
              "1" = "computeInstanceAssetKey"
              "2" = "Valid From"
              "3" = "Valid To"
              "4" = "instance_key"
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
          index = 12
          inputList = [
            {
              datasetId   = "${local.compute_instance}"
              inputName   = "gcp-cost-test/Compute Instance"
              inputRole   = "Data"
              isUserInput = false
            },
            {
              inputName   = "projects"
              inputRole   = "Data"
              isUserInput = true
              parameterId = "input-parameter-z5n5j9ss"
            },
          ]
          label = "Compute Disk Write Ops Count"
          managers = [
            {
              id                     = "m7rgwh9q"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "vyjq3sdx"
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
                    unit    = ""
                    visible = true
                  }
                }
                source = {
                  metric = {
                    aggregate   = "sum"
                    datasetId   = "${local.compute_metrics}"
                    description = "Auto Detected Metric"
                    groupBy = [
                      "computeInstanceAssetKey",
                    ]
                    heuristics = {
                      __typename = "MetricHeuristics"
                      tags = [
                        {
                          __typename = "MetricTag"
                          column     = "computeDiskInstanceAssetKey"
                          path       = ""
                        },
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
                          column     = "metric_labels"
                          path       = "device_name"
                        },
                        {
                          __typename = "MetricTag"
                          column     = "metric_labels"
                          path       = "instance_name"
                        },
                        {
                          __typename = "MetricTag"
                          column     = "metric_labels"
                          path       = "storage_type"
                        },
                        {
                          __typename = "MetricTag"
                          column     = "metric_labels"
                          path       = "device_type"
                        },
                      ]
                      validLinkLabels = [
                        "Link to Compute Disk Instances",
                        "Link to Compute Instances",
                      ]
                    }
                    interval = null
                    link = {
                      __typename = "ForeignKey"
                      dstFields = [
                        "computeInstanceAssetKey",
                      ]
                      label = "Link to Compute Instances"
                      srcFields = [
                        "computeInstanceAssetKey",
                      ]
                      targetDataset    = "${local.compute_instance}"
                      targetStageLabel = null
                      type             = "foreign"
                    }
                    name        = "instance_disk_write_ops_count"
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
              id                = "step-748uq5wh"
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
              id       = "step-gg1lxn2s"
              index    = 1
              isPinned = false
              opal = [
                "exists project_id = @projects.project_id",
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
        pipeline = "exists project_id = @projects.project_id"
      },
      {
        id = "stage-g5xahf72"
        input = [
          {
            datasetId   = "${local.resources_asset_inventory}"
            datasetPath = null
            inputName   = "gcp-cost-test/Resources Asset Inventory"
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
              "0" = "Asset Namespace"
              "1" = "Valid From"
              "2" = "Valid To"
              "3" = "Asset Type"
              "4" = "Project ID"
              "5" = "Location"
            }
            columnVisibility = {}
            columnWidths = {
              "Asset Namespace" = 254
              "Asset Type"      = 173
              Count             = 102
              Location          = 172
              "Project ID"      = 253
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
          index = 13
          inputList = [
            {
              datasetId   = "${local.resources_asset_inventory}"
              inputName   = "gcp-cost-test/Resources Asset Inventory"
              inputRole   = "Data"
              isUserInput = false
            },
            {
              inputName   = "projects"
              inputRole   = "Data"
              isUserInput = true
              parameterId = "input-parameter-z5n5j9ss"
            },
          ]
          label = "Cloud Function Inventory"
          managers = [
            {
              id                     = "jywkqd1x"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "t677hnrf"
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
                  singleStatLabel = "Cloud Functions"
                  thresholds      = null
                  type            = "singlefield"
                }
                source = {
                  table = {
                    field       = "asset_name"
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
              customSummary = "gcp-cost-test/Resources Asset Inventory"
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
              id                = "step-s16c0dxx"
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
                  queryId        = "q-it24a9r3"
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
              id       = "step-uomk7nds"
              index    = 1
              isPinned = false
              opal = [
                "filter is_null(deleted)",
                "",
                "exists project_id = @projects.project_id",
                "",
                "filter asset_type = \"cloudfunctions.googleapis.com/CloudFunction\"",
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
        pipeline = <<-EOT
                    filter is_null(deleted)
                    
                    exists project_id = @projects.project_id
                    
                    filter asset_type = "cloudfunctions.googleapis.com/CloudFunction"
                EOT
      },
      {
        id = "stage-iv0som0b"
        input = [
          {
            datasetId   = "${local.resources_asset_inventory}"
            datasetPath = null
            inputName   = "gcp-cost-test/Resources Asset Inventory"
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
              "0" = "Asset Namespace"
              "1" = "Valid From"
              "2" = "Valid To"
              "3" = "Asset Type"
              "4" = "Project ID"
              "5" = "Location"
            }
            columnVisibility = {}
            columnWidths = {
              "Asset Namespace" = 254
              "Asset Type"      = 173
              Count             = 102
              Location          = 172
              "Project ID"      = 253
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
          index = 14
          inputList = [
            {
              datasetId   = "${local.resources_asset_inventory}"
              inputName   = "gcp-cost-test/Resources Asset Inventory"
              inputRole   = "Data"
              isUserInput = false
            },
            {
              inputName   = "projects"
              inputRole   = "Data"
              isUserInput = true
              parameterId = "input-parameter-z5n5j9ss"
            },
          ]
          label = "Cloud SQL Inventory"
          managers = [
            {
              id                     = "jywkqd1x"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "t677hnrf"
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
                  singleStatLabel = "Cloud Databases"
                  thresholds      = null
                  type            = "singlefield"
                }
                source = {
                  table = {
                    field       = "asset_name"
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
              customSummary = "gcp-cost-test/Resources Asset Inventory"
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
              id                = "step-bc9kqp86"
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
              id       = "step-t8on4umn"
              index    = 1
              isPinned = false
              opal = [
                "filter is_null(deleted)",
                "",
                "exists project_id = @projects.project_id",
                "",
                "filter asset_type = \"sqladmin.googleapis.com/Instance\"",
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
        pipeline = <<-EOT
                    filter is_null(deleted)
                    
                    exists project_id = @projects.project_id
                    
                    filter asset_type = "sqladmin.googleapis.com/Instance"
                EOT
      },
      {
        id = "stage-yvtup4f7"
        input = [
          {
            datasetId   = "${local.resources_asset_inventory}"
            datasetPath = null
            inputName   = "gcp-cost-test/Resources Asset Inventory"
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
              "0" = "Asset Namespace"
              "1" = "Valid From"
              "2" = "Valid To"
              "3" = "Asset Type"
              "4" = "Project ID"
              "5" = "Location"
            }
            columnVisibility = {}
            columnWidths = {
              "Asset Namespace" = 254
              "Asset Type"      = 173
              Count             = 102
              Location          = 172
              "Project ID"      = 253
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
          index = 15
          inputList = [
            {
              datasetId   = "${local.resources_asset_inventory}"
              inputName   = "gcp-cost-test/Resources Asset Inventory"
              inputRole   = "Data"
              isUserInput = false
            },
            {
              inputName   = "projects"
              inputRole   = "Data"
              isUserInput = true
              parameterId = "input-parameter-z5n5j9ss"
            },
          ]
          label = "Cloud Storage Inventory"
          managers = [
            {
              id                     = "jywkqd1x"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "t677hnrf"
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
                  singleStatLabel = "Storage Buckets"
                  thresholds      = null
                  type            = "singlefield"
                }
                source = {
                  table = {
                    field       = "asset_name"
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
              customSummary = "gcp-cost-test/Resources Asset Inventory"
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
              id                = "step-56dtt9jv"
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
              id       = "step-im7zd3f7"
              index    = 1
              isPinned = false
              opal = [
                "filter is_null(deleted)",
                "",
                "exists project_id = @projects.project_id",
                "",
                "filter asset_type = \"storage.googleapis.com/Bucket\"",
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
        pipeline = <<-EOT
                    filter is_null(deleted)
                    
                    exists project_id = @projects.project_id
                    
                    filter asset_type = "storage.googleapis.com/Bucket"
                EOT
      },
      {
        id = "stage-jliidcnd"
        input = [
          {
            datasetId   = "${local.resources_asset_inventory}"
            datasetPath = null
            inputName   = "gcp-cost-test/Resources Asset Inventory"
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
              "0" = "Asset Namespace"
              "1" = "Valid From"
              "2" = "Valid To"
              "3" = "Asset Type"
              "4" = "Project ID"
              "5" = "Location"
            }
            columnVisibility = {}
            columnWidths = {
              "Asset Namespace" = 254
              "Asset Type"      = 173
              Count             = 102
              Location          = 172
              "Project ID"      = 253
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
          index = 16
          inputList = [
            {
              datasetId   = "${local.resources_asset_inventory}"
              inputName   = "gcp-cost-test/Resources Asset Inventory"
              inputRole   = "Data"
              isUserInput = false
            },
            {
              inputName   = "projects"
              inputRole   = "Data"
              isUserInput = true
              parameterId = "input-parameter-z5n5j9ss"
            },
          ]
          label = "GKE Clusters"
          managers = [
            {
              id                     = "jywkqd1x"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "t677hnrf"
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
                  singleStatLabel = "GKE Clusters"
                  thresholds      = null
                  type            = "singlefield"
                }
                source = {
                  table = {
                    field       = "asset_name"
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
              customSummary = "gcp-cost-test/Resources Asset Inventory"
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
              id                = "step-0k7kth24"
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
                  queryId        = "q-3f1r2zhq"
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
              id       = "step-77a72yf8"
              index    = 1
              isPinned = false
              opal = [
                "filter is_null(deleted)",
                "",
                "exists project_id = @projects.project_id",
                "// filter asset_type = \"compute.googleapis.com/Instance\"",
              ]
              queryPresentation = {}
              type              = "unknown"
            },
            {
              action = {
                params = {
                  columnId    = "asset_type"
                  columnType  = "string"
                  filterVerb  = "ever"
                  isExcluding = false
                  values = [
                    "container.googleapis.com/Cluster",
                  ]
                }
                summary = null
                type    = "FilterValues"
              }
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
                  project_id             = "count"
                  ttl                    = "count"
                  version                = "count"
                }
                datasetQueryId = {
                  ignoreCompress = false
                  queryId        = "q-m836tfvq"
                  resultKinds = [
                    "ResultKindSchema",
                    "ResultKindData",
                  ]
                  tableTypes = [
                    "TABULAR",
                  ]
                }
              }
              customSummary = "asset_type"
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
              id       = "step-p50t5wsk"
              index    = 2
              isPinned = true
              opal = [
                "ever asset_type = \"container.googleapis.com/Cluster\"",
              ]
              queryPresentation = {}
              type              = "unknown"
            },
          ]
          type = "table"
          viewModel = {
            consoleValue = <<-EOT
                            filter is_null(deleted)
                                                                                                                                            
                            exists project_id = @projects.project_id
                                                                                                                                            
                            ever asset_type = "container.googleapis.com/Cluster"
                        EOT
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
                    filter is_null(deleted)
                    
                    exists project_id = @projects.project_id
                    // filter asset_type = "compute.googleapis.com/Instance"
                    ever asset_type = "container.googleapis.com/Cluster"
                EOT
      },
      {
        id = "stage-2b1wmvm0"
        input = [
          {
            datasetId   = "${local.resources_asset_inventory}"
            datasetPath = null
            inputName   = "gcp-cost-test/Resources Asset Inventory"
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
              "0" = "Asset Namespace"
              "1" = "Valid From"
              "2" = "Valid To"
              "3" = "Asset Type"
              "4" = "Project ID"
              "5" = "Location"
            }
            columnVisibility = {}
            columnWidths = {
              "Asset Namespace" = 254
              "Asset Type"      = 173
              Count             = 102
              Location          = 172
              "Project ID"      = 253
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
          index = 17
          inputList = [
            {
              datasetId   = "${local.resources_asset_inventory}"
              inputName   = "gcp-cost-test/Resources Asset Inventory"
              inputRole   = "Data"
              isUserInput = false
            },
            {
              inputName   = "projects"
              inputRole   = "Data"
              isUserInput = true
              parameterId = "input-parameter-z5n5j9ss"
            },
          ]
          label = "Big Query Datasets"
          managers = [
            {
              id                     = "jywkqd1x"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "t677hnrf"
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
                  singleStatLabel = "Big Query Datasets"
                  thresholds      = null
                  type            = "singlefield"
                }
                source = {
                  table = {
                    field       = "asset_name"
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
              customSummary = "gcp-cost-test/Resources Asset Inventory"
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
              id                = "step-bxgtpaxz"
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
              id       = "step-py37qm74"
              index    = 1
              isPinned = false
              opal = [
                "filter is_null(deleted)",
                "",
                "exists project_id = @projects.project_id",
                "",
              ]
              queryPresentation = {}
              type              = "unknown"
            },
            {
              action = {
                params = {
                  columnId    = "asset_type"
                  columnType  = "string"
                  filterVerb  = "ever"
                  isExcluding = false
                  values = [
                    "bigquery.googleapis.com/Dataset",
                  ]
                }
                summary = null
                type    = "FilterValues"
              }
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
                  project_id             = "count"
                  ttl                    = "count"
                  version                = "count"
                }
                datasetQueryId = {
                  ignoreCompress = false
                  queryId        = "q-dypcs18g"
                  resultKinds = [
                    "ResultKindSchema",
                    "ResultKindData",
                  ]
                  tableTypes = [
                    "TABULAR",
                  ]
                }
              }
              customSummary = "asset_type"
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
              id       = "step-jshpxia2"
              index    = 2
              isPinned = true
              opal = [
                "ever asset_type = \"bigquery.googleapis.com/Dataset\"",
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
        pipeline = <<-EOT
                    filter is_null(deleted)
                    
                    exists project_id = @projects.project_id
                    
                    ever asset_type = "bigquery.googleapis.com/Dataset"
                EOT
      },
      {
        id = "stage-pe50l3py"
        input = [
          {
            datasetId   = "${local.resources_asset_inventory}"
            datasetPath = null
            inputName   = "gcp-cost-test/Resources Asset Inventory"
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
              "0" = "Asset Namespace"
              "1" = "Valid From"
              "2" = "Valid To"
              "3" = "Asset Type"
              "4" = "Project ID"
              "5" = "Location"
            }
            columnVisibility = {}
            columnWidths = {
              "Asset Namespace" = 254
              "Asset Type"      = 173
              Count             = 102
              Location          = 172
              "Project ID"      = 253
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
          index = 18
          inputList = [
            {
              datasetId   = "${local.resources_asset_inventory}"
              inputName   = "gcp-cost-test/Resources Asset Inventory"
              inputRole   = "Data"
              isUserInput = false
            },
            {
              inputName   = "projects"
              inputRole   = "Data"
              isUserInput = true
              parameterId = "input-parameter-z5n5j9ss"
            },
          ]
          label = "PubSub Topics"
          managers = [
            {
              id                     = "jywkqd1x"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "t677hnrf"
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
                  singleStatLabel = "PubSub Topics"
                  thresholds      = null
                  type            = "singlefield"
                }
                source = {
                  table = {
                    field       = "asset_name"
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
              customSummary = "gcp-cost-test/Resources Asset Inventory"
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
              id                = "step-8utpvrsh"
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
                  queryId        = "q-h4a9vdz6"
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
              id       = "step-ua1k0kdb"
              index    = 1
              isPinned = false
              opal = [
                "filter is_null(deleted)",
                "",
                "exists project_id = @projects.project_id",
                "",
                "",
              ]
              queryPresentation = {}
              type              = "unknown"
            },
            {
              action = {
                params = {
                  columnId    = "asset_type"
                  columnType  = "string"
                  filterVerb  = "ever"
                  isExcluding = false
                  values = [
                    "pubsub.googleapis.com/Topic",
                  ]
                }
                summary = null
                type    = "FilterValues"
              }
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
                  project_id             = "count"
                  ttl                    = "count"
                  version                = "count"
                }
                datasetQueryId = {
                  ignoreCompress = false
                  queryId        = "q-u28t1t5l"
                  resultKinds = [
                    "ResultKindSchema",
                    "ResultKindData",
                  ]
                  tableTypes = [
                    "TABULAR",
                  ]
                }
              }
              customSummary = "asset_type"
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
              id       = "step-1w2wkpjr"
              index    = 2
              isPinned = true
              opal = [
                "ever asset_type = \"pubsub.googleapis.com/Topic\"",
              ]
              queryPresentation = {}
              type              = "unknown"
            },
          ]
          type = "table"
          viewModel = {
            consoleValue = <<-EOT
                            filter is_null(deleted)
                                                                                                                                            
                            exists project_id = @projects.project_id
                                                                                                                                            
                            ever asset_type = "pubsub.googleapis.com/Topic"
                        EOT
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
                    filter is_null(deleted)
                    
                    exists project_id = @projects.project_id
                    
                    
                    ever asset_type = "pubsub.googleapis.com/Topic"
                EOT
      },
      {
        id = "stage-fqygx54m"
        input = [
          {
            datasetId   = "${local.resources_asset_inventory}"
            datasetPath = null
            inputName   = "gcp-cost-test/Resources Asset Inventory"
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
              "0" = "Asset Namespace"
              "1" = "Valid From"
              "2" = "Valid To"
              "3" = "Asset Type"
              "4" = "Project ID"
              "5" = "Location"
            }
            columnVisibility = {}
            columnWidths = {
              "Asset Namespace" = 254
              "Asset Type"      = 173
              Count             = 102
              Location          = 172
              "Project ID"      = 253
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
          index = 19
          inputList = [
            {
              datasetId   = "${local.resources_asset_inventory}"
              inputName   = "gcp-cost-test/Resources Asset Inventory"
              inputRole   = "Data"
              isUserInput = false
            },
            {
              inputName   = "projects"
              inputRole   = "Data"
              isUserInput = true
              parameterId = "input-parameter-z5n5j9ss"
            },
          ]
          label = "Load Balancer URL Map"
          managers = [
            {
              id                     = "jywkqd1x"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "t677hnrf"
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
                  singleStatLabel = "Load Balancer URL Maps"
                  thresholds      = null
                  type            = "singlefield"
                }
                source = {
                  table = {
                    field       = "asset_name"
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
              customSummary = "gcp-cost-test/Resources Asset Inventory"
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
              id                = "step-jlvd66en"
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
                  queryId        = "q-mud7yka4"
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
              id       = "step-k1qrhm91"
              index    = 1
              isPinned = false
              opal = [
                "filter is_null(deleted)",
                "",
                "exists project_id = @projects.project_id",
                "",
              ]
              queryPresentation = {}
              type              = "unknown"
            },
            {
              action = {
                params = {
                  columnId    = "asset_type"
                  columnType  = "string"
                  filterVerb  = "ever"
                  isExcluding = false
                  values = [
                    "compute.googleapis.com/UrlMap",
                  ]
                }
                summary = null
                type    = "FilterValues"
              }
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
                  project_id             = "count"
                  ttl                    = "count"
                  version                = "count"
                }
                datasetQueryId = {
                  ignoreCompress = false
                  queryId        = "q-w13ljts6"
                  resultKinds = [
                    "ResultKindSchema",
                    "ResultKindData",
                  ]
                  tableTypes = [
                    "TABULAR",
                  ]
                }
              }
              customSummary = "asset_type"
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
              id       = "step-c6gbwxo1"
              index    = 2
              isPinned = true
              opal = [
                "ever asset_type = \"compute.googleapis.com/UrlMap\"",
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
        pipeline = <<-EOT
                    filter is_null(deleted)
                    
                    exists project_id = @projects.project_id
                    
                    ever asset_type = "compute.googleapis.com/UrlMap"
                EOT
      },
      {
        id = "stage-zb4jkng5"
        input = [
          {
            datasetId   = "${local.cloud_functions_metrics}"
            datasetPath = null
            inputName   = "gcp-cost-test/Cloud Functions Metrics"
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
              "0" = "function_name"
              "1" = "project_id"
              "2" = "region"
              "3" = "_c_valid_from"
              "4" = "_c_valid_to"
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
          index = 20
          inputList = [
            {
              datasetId   = "${local.cloud_functions_metrics}"
              inputName   = "gcp-cost-test/Cloud Functions Metrics"
              inputRole   = "Data"
              isUserInput = false
            },
            {
              inputName   = "projects"
              inputRole   = "Data"
              isUserInput = true
              parameterId = "input-parameter-z5n5j9ss"
            },
          ]
          label = "Function Execution Times"
          managers = [
            {
              id                     = "e2xoytwe"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "vecy8030"
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
                    y             = "_ob_value"
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
                  metric_kind   = "count"
                  metric_labels = "count"
                  value         = "count"
                  value_type    = "count"
                }
                datasetQueryId = {
                  ignoreCompress = false
                  queryId        = "q-mfrmtti7"
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
              customSummary = "gcp-cost-test/Cloud Functions Metrics"
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
              id                = "step-g2j8ttvx"
              index             = 0
              isPinned          = false
              opal              = []
              queryPresentation = {}
              type              = "InputStep"
            },
            {
              columnStatsTable = {
                columnFunctions = {
                  _ob_value     = "count"
                  metric        = "count"
                  metric_kind   = "count"
                  metric_labels = "count"
                  value         = "count"
                  value_type    = "count"
                }
                datasetQueryId = {
                  ignoreCompress = false
                  queryId        = "q-wp71oglx"
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
              id       = "step-1s2d1832"
              index    = 1
              isPinned = false
              opal = [
                "",
                "exists project_id = @projects.project_id",
                "",
                "filter metric = \"function_execution_times\"",
                "timechart options(empty_bins: true), duration(from_seconds(60)), _ob_value:avg(value), group_by(function_name, project_id, region)",
                "make_col _ob_value:if_null(_ob_value, 0)",
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
        pipeline = <<-EOT
                    
                    exists project_id = @projects.project_id
                    
                    filter metric = "function_execution_times"
                    timechart options(empty_bins: true), duration(from_seconds(60)), _ob_value:avg(value), group_by(function_name, project_id, region)
                    make_col _ob_value:if_null(_ob_value, 0)
                EOT
      },
      {
        id = "stage-se0b58dq"
        input = [
          {
            datasetId   = "${local.cloud_functions_instances}"
            datasetPath = null
            inputName   = "gcp-cost-test/Cloud Functions Instances"
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
              "2" = "Valid From"
              "3" = "Valid To"
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
          index = 21
          inputList = [
            {
              datasetId   = "${local.cloud_functions_instances}"
              inputName   = "gcp-cost-test/Cloud Functions Instances"
              inputRole   = "Data"
              isUserInput = false
            },
            {
              inputName   = "projects"
              inputRole   = "Data"
              isUserInput = true
              parameterId = "input-parameter-z5n5j9ss"
            },
          ]
          label = "Active Function Instances"
          managers = [
            {
              id                     = "920dzd3d"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "4laj1wjk"
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
                      "name",
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
                    y             = "functionName"
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
            rollup = {}
          }
          renderType     = "TABLE"
          selectedStepId = null
          serializable   = true
          steps = [
            {
              columnStatsTable = {
                columnFunctions = {
                  assetInventoryName   = "count"
                  availableMemoryMb    = "count"
                  buildId              = "count"
                  buildName            = "count"
                  description          = "count"
                  dockerRegistry       = "count"
                  entryPoint           = "count"
                  environmentVariables = "count"
                  eventTrigger         = "count"
                  functionName         = "count"
                  httpsTrigger         = "count"
                  ingressSettings      = "count"
                  maxInstances         = "count"
                  name                 = "count"
                  region               = "count"
                  runtime              = "count"
                  serviceAccountEmail  = "count"
                  sourceArchiveUrl     = "count"
                  status               = "count"
                  timeout              = "count"
                  versionId            = "count"
                }
                datasetQueryId = {
                  ignoreCompress = false
                  queryId        = "q-h82bbshz"
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
              customSummary = "gcp-cost-test/Cloud Functions Instances"
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
              id                = "step-7dgbwl2d"
              index             = 0
              isPinned          = false
              opal              = []
              queryPresentation = {}
              type              = "InputStep"
            },
            {
              columnStatsTable = {
                columnFunctions = {
                  assetInventoryName   = "count"
                  availableMemoryMb    = "count"
                  buildId              = "count"
                  buildName            = "count"
                  description          = "count"
                  dockerRegistry       = "count"
                  entryPoint           = "count"
                  environmentVariables = "count"
                  eventTrigger         = "count"
                  functionName         = "count"
                  httpsTrigger         = "count"
                  ingressSettings      = "count"
                  maxInstances         = "count"
                  name                 = "count"
                  region               = "count"
                  runtime              = "count"
                  serviceAccountEmail  = "count"
                  sourceArchiveUrl     = "count"
                  status               = "count"
                  timeout              = "count"
                  versionId            = "count"
                }
                datasetQueryId = {
                  ignoreCompress = false
                  queryId        = "q-vqx1b7cg"
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
              id       = "step-mz2k74dz"
              index    = 1
              isPinned = false
              opal = [
                "exists projectId = @projects.project_id",
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
        pipeline = "exists projectId = @projects.project_id"
      },
      {
        id = "stage-lpdgwarl"
        input = [
          {
            datasetId   = "${local.cloud_functions_metrics}"
            datasetPath = null
            inputName   = "gcp-cost-test/Cloud Functions Metrics"
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
              "0" = "function_name"
              "1" = "project_id"
              "2" = "region"
              "3" = "_c_valid_from"
              "4" = "_c_valid_to"
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
          index = 22
          inputList = [
            {
              datasetId   = "${local.cloud_functions_metrics}"
              inputName   = "gcp-cost-test/Cloud Functions Metrics"
              inputRole   = "Data"
              isUserInput = false
            },
            {
              inputName   = "projects"
              inputRole   = "Data"
              isUserInput = true
              parameterId = "input-parameter-z5n5j9ss"
            },
          ]
          label = "Function Memory Used"
          managers = [
            {
              id                     = "e2xoytwe"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "vecy8030"
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
                    y             = "_ob_value"
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
            rollup = {}
          }
          renderType     = "TABLE"
          selectedStepId = null
          serializable   = true
          steps = [
            {
              customName    = "Input"
              customSummary = "gcp-cost-test/Cloud Functions Metrics"
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
              id                = "step-x19lxogv"
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
              id       = "step-iz9ydq88"
              index    = 1
              isPinned = false
              opal = [
                "",
                "exists project_id = @projects.project_id",
                "",
                "filter metric = \"function_user_memory_bytes\"",
                "",
                "timechart options(empty_bins: true), duration(from_seconds(60)), _ob_value:avg(value), group_by(function_name, project_id, region)",
                "make_col _ob_value:if_null(_ob_value, 0)",
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
        pipeline = <<-EOT
                    
                    exists project_id = @projects.project_id
                    
                    filter metric = "function_user_memory_bytes"
                    
                    timechart options(empty_bins: true), duration(from_seconds(60)), _ob_value:avg(value), group_by(function_name, project_id, region)
                    make_col _ob_value:if_null(_ob_value, 0)
                EOT
      },
      {
        id = "stage-syrkb3qn"
        input = [
          {
            datasetId   = "${local.storage_buckets}"
            datasetPath = null
            inputName   = "gcp-cost-test/Storage Buckets"
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
          index = 23
          inputList = [
            {
              datasetId   = "${local.storage_buckets}"
              inputName   = "gcp-cost-test/Storage Buckets"
              inputRole   = "Data"
              isUserInput = false
            },
            {
              inputName   = "projects"
              inputRole   = "Data"
              isUserInput = true
              parameterId = "input-parameter-z5n5j9ss"
            },
          ]
          label = "Storage Requests"
          managers = [
            {
              id                     = "wcecq0gb"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "jxkk1e52"
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
                    unit    = ""
                    visible = true
                  }
                }
                source = {
                  metric = {
                    aggregate   = "sum"
                    datasetId   = "${local.storage_metrics}"
                    description = <<-EOT
                                            Delta count of API calls, grouped by the API method name and response code. Sampled every 60s and may take up to 120s to display.
                                        EOT
                    groupBy = [
                      "bucket_name",
                    ]
                    heuristics = {
                      __typename = "MetricHeuristics"
                      tags = [
                        {
                          __typename = "MetricTag"
                          column     = "bucket_name"
                          path       = ""
                        },
                        {
                          __typename = "MetricTag"
                          column     = "metric_kind"
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
                          column     = "region"
                          path       = ""
                        },
                        {
                          __typename = "MetricTag"
                          column     = "value_type"
                          path       = ""
                        },
                        {
                          __typename = "MetricTag"
                          column     = "metric_labels"
                          path       = "method"
                        },
                        {
                          __typename = "MetricTag"
                          column     = "metric_labels"
                          path       = "response_code"
                        },
                      ]
                      validLinkLabels = [
                        "Bucket",
                      ]
                    }
                    interval = "60000000000"
                    link = {
                      __typename = "ForeignKey"
                      dstFields = [
                        "bucket_name",
                      ]
                      label = "Bucket"
                      srcFields = [
                        "bucket_name",
                      ]
                      targetDataset    = "${local.storage_buckets}"
                      targetStageLabel = null
                      type             = "foreign"
                    }
                    name        = "api_request_count"
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
                  acl                = "count"
                  assetInventoryName = "count"
                  autoclass          = "count"
                  billing            = "count"
                  bucket_name        = "count"
                  cors               = "count"
                  defaultObjectAcl   = "count"
                  encryption         = "count"
                  iamConfiguration   = "count"
                  labels             = "count"
                  lifecycle          = "count"
                  locationType       = "count"
                  logging            = "count"
                  owner              = "count"
                  project_id         = "count"
                  region             = "count"
                  retentionPolicy    = "count"
                  selfLink           = "count"
                  storageClass       = "count"
                  timeCreated        = "count"
                  updated            = "count"
                  versioning         = "count"
                  website            = "count"
                }
                datasetQueryId = {
                  ignoreCompress = false
                  queryId        = "q-3omtcxgx"
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
              customSummary = "gcp-cost-test/Storage Buckets"
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
              id                = "step-xn4ur058"
              index             = 0
              isPinned          = false
              opal              = []
              queryPresentation = {}
              type              = "InputStep"
            },
          ]
          type = "table"
          viewModel = {
            consoleValue = "exists project_id = @projects.project_id"
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
        id = "stage-j45262wb"
        input = [
          {
            datasetId   = "${local.pubsub_service_quota_metrics}"
            datasetPath = null
            inputName   = "gcp-cost-test/PubSub Service Quota Metrics"
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
              "2" = "Valid From"
              "3" = "Valid To"
              "4" = "location"
            }
            columnVisibility = {
              quota_metric = false
              service      = false
            }
            columnWidths = {
              limit_name = 479
              location   = 153
              project_id = 217
              quota      = 206
              service    = 254
            }
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
                value = {
                  "7" = true
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
          index = 24
          inputList = [
            {
              datasetId   = "${local.pubsub_service_quota_metrics}"
              inputName   = "gcp-cost-test/PubSub Service Quota Metrics"
              inputRole   = "Data"
              isUserInput = false
            },
            {
              inputName   = "projects"
              inputRole   = "Data"
              isUserInput = true
              parameterId = "input-parameter-z5n5j9ss"
            },
          ]
          label = "Service Quotas"
          managers = [
            {
              id                     = "m5r76nui"
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
                  label            = "count"
                  limit_name       = "count"
                  location         = "count"
                  method           = "count"
                  metric           = "count"
                  metric_kind      = "count"
                  metric_kind_text = "count"
                  metric_labels    = "count"
                  metric_type      = "count"
                  project_id       = "count"
                  quota_metric     = "count"
                  value            = "count"
                  value_type       = "count"
                  value_type_text  = "count"
                }
                datasetQueryId = {
                  ignoreCompress = false
                  queryId        = "q-9ddh6hk6"
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
              customSummary = "gcp-cost-test/PubSub Service Quota Metrics"
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
              id                = "step-2wg1qkhv"
              index             = 0
              isPinned          = false
              opal              = []
              queryPresentation = {}
              type              = "InputStep"
            },
            {
              columnStatsTable = {
                columnFunctions = {
                  label            = "count"
                  limit_name       = "count"
                  location         = "count"
                  method           = "count"
                  metric           = "count"
                  metric_kind      = "count"
                  metric_kind_text = "count"
                  metric_labels    = "count"
                  metric_type      = "count"
                  project_id       = "count"
                  quota_metric     = "count"
                  value            = "count"
                  value_type       = "count"
                  value_type_text  = "count"
                }
                datasetQueryId = {
                  ignoreCompress = false
                  queryId        = "q-t18yqjqa"
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
              id       = "step-cdejsun9"
              index    = 1
              isPinned = false
              opal = [
                "exists project_id = @projects.project_id",
                "filter metric_type = \"serviceruntime.googleapis.com/quota/limit\"",
                "",
                "make_resource \t",
                "\tservice,",
                "    limit_name,",
                "    location,",
                "\tvalue,",
                "    primary_key(quota_metric, project_id)",
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
                    exists project_id = @projects.project_id
                    filter metric_type = "serviceruntime.googleapis.com/quota/limit"
                    
                    make_resource 	
                    	service,
                        limit_name,
                        location,
                    	value,
                        primary_key(quota_metric, project_id)
                EOT
      },
      {
        id = "stage-daa0tsou"
        input = [
          {
            datasetId   = "${local.pubsub_service_quota_metrics}"
            datasetPath = null
            inputName   = "gcp-cost-test/PubSub Service Quota Metrics"
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
              "2" = "Valid From"
              "3" = "Valid To"
              "4" = "location"
            }
            columnVisibility = {
              quota_metric = false
              service      = false
            }
            columnWidths = {
              limit_name = 479
              location   = 153
              quota      = 206
              service    = 254
            }
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
              datasetId   = "${local.pubsub_service_quota_metrics}"
              inputName   = "gcp-cost-test/PubSub Service Quota Metrics"
              inputRole   = "Data"
              isUserInput = false
            },
            {
              inputName   = "projects"
              inputRole   = "Data"
              isUserInput = true
              parameterId = "input-parameter-z5n5j9ss"
            },
          ]
          label = "Service Quotas Exceeded"
          managers = [
            {
              id                     = "m5r76nui"
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
              customName    = "Input"
              customSummary = "gcp-cost-test/PubSub Service Quota Metrics"
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
              id                = "step-2y15dztj"
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
                  queryId        = "q-et1laiwr"
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
              id       = "step-krhc1up6"
              index    = 1
              isPinned = false
              opal = [
                "exists project_id = @projects.project_id",
                "filter metric_type = \"serviceruntime.googleapis.com/quota/exceeded\"",
                "",
                "make_resource \t",
                "\tservice,",
                "    limit_name,",
                "    location,",
                "\tvalue,",
                "    primary_key(quota_metric, project_id)",
                "    ",
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
                    exists project_id = @projects.project_id
                    filter metric_type = "serviceruntime.googleapis.com/quota/exceeded"
                    
                    make_resource 	
                    	service,
                        limit_name,
                        location,
                    	value,
                        primary_key(quota_metric, project_id)
                        
                        
                EOT
      },
      {
        id = "stage-fa5121vu"
        input = [
          {
            datasetId   = "${local.pubsub_service_quota_metrics}"
            datasetPath = null
            inputName   = "gcp-cost-test/PubSub Service Quota Metrics"
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
              "2" = "Valid From"
              "3" = "Valid To"
              "4" = "location"
            }
            columnVisibility = {
              quota_metric = false
              service      = false
            }
            columnWidths = {
              limit_name = 479
              location   = 153
              project_id = 217
              quota      = 206
              service    = 254
            }
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
              datasetId   = "${local.pubsub_service_quota_metrics}"
              inputName   = "gcp-cost-test/PubSub Service Quota Metrics"
              inputRole   = "Data"
              isUserInput = false
            },
            {
              inputName   = "projects"
              inputRole   = "Data"
              isUserInput = true
              parameterId = "input-parameter-z5n5j9ss"
            },
          ]
          label = "Service Quota Usage"
          managers = [
            {
              id                     = "m5r76nui"
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
              customName    = "Input"
              customSummary = "gcp-cost-test/PubSub Service Quota Metrics"
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
              id                = "step-kk4m4nn4"
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
                  queryId        = "q-3er8j7oa"
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
              id       = "step-9c9qrzpz"
              index    = 1
              isPinned = false
              opal = [
                "exists project_id = @projects.project_id",
                "filter metric_type = \"serviceruntime.googleapis.com/quota/rate/net_usage\"",
                "filter $service = \"\" or service =  $service",
                "",
                "make_resource \t",
                "\tservice,",
                "    method,",
                "    location,",
                "\tvalue,",
                "    primary_key(quota_metric, project_id)",
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
                    exists project_id = @projects.project_id
                    filter metric_type = "serviceruntime.googleapis.com/quota/rate/net_usage"
                    filter $service = "" or service =  $service
                    
                    make_resource 	
                    	service,
                        method,
                        location,
                    	value,
                        primary_key(quota_metric, project_id)
                EOT
      },
      {
        id = "stage-dd4tnu00"
        input = [
          {
            datasetId   = "${local.cloud_functions_instances}"
            datasetPath = null
            inputName   = "gcp-cost-test/Cloud Functions Instances"
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
            datasetId   = "${local.cloud_functions_logs}"
            datasetPath = null
            inputName   = "CloudFunctionsLogs"
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
              "0" = "Valid From"
              "1" = "name"
              "3" = "Valid To"
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
          index = 27
          inputList = [
            {
              datasetId   = "${local.cloud_functions_instances}"
              inputName   = "gcp-cost-test/Cloud Functions Instances"
              inputRole   = "Data"
              isUserInput = false
            },
            {
              inputName   = "projects"
              inputRole   = "Data"
              isUserInput = true
              parameterId = "input-parameter-z5n5j9ss"
            },
            {
              datasetId   = "${local.cloud_functions_logs}"
              inputName   = "CloudFunctionsLogs"
              inputRole   = "Data"
              isUserInput = true
            },
          ]
          label = "Function Errors"
          managers = [
            {
              id                     = "5bgdjozq"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "0kw4rsqs"
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
                      "functionName",
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
                    y             = "is_error"
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
            rollup = {}
          }
          renderType     = "TABLE"
          selectedStepId = null
          serializable   = true
          steps = [
            {
              columnStatsTable = {
                columnFunctions = {
                  assetInventoryName   = "count"
                  availableMemoryMb    = "count"
                  buildId              = "count"
                  buildName            = "count"
                  description          = "count"
                  dockerRegistry       = "count"
                  entryPoint           = "count"
                  environmentVariables = "count"
                  eventTrigger         = "count"
                  functionName         = "count"
                  httpsTrigger         = "count"
                  ingressSettings      = "count"
                  maxInstances         = "count"
                  name                 = "count"
                  region               = "count"
                  runtime              = "count"
                  serviceAccountEmail  = "count"
                  sourceArchiveUrl     = "count"
                  status               = "count"
                  timeout              = "count"
                  versionId            = "count"
                }
                datasetQueryId = {
                  ignoreCompress = false
                  queryId        = "q-5ejjhkc2"
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
              customSummary = "gcp-cost-test/Cloud Functions Instances"
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
              id                = "step-4wejrm2y"
              index             = 0
              isPinned          = false
              opal              = []
              queryPresentation = {}
              type              = "InputStep"
            },
            {
              columnStatsTable = {
                columnFunctions = {
                  assetInventoryName   = "count"
                  availableMemoryMb    = "count"
                  buildId              = "count"
                  buildName            = "count"
                  description          = "count"
                  dockerRegistry       = "count"
                  entryPoint           = "count"
                  environmentVariables = "count"
                  eventTrigger         = "count"
                  functionName         = "count"
                  httpsTrigger         = "count"
                  ingressSettings      = "count"
                  maxInstances         = "count"
                  name                 = "count"
                  region               = "count"
                  runtime              = "count"
                  serviceAccountEmail  = "count"
                  sourceArchiveUrl     = "count"
                  status               = "count"
                  timeout              = "count"
                  versionId            = "count"
                }
                datasetQueryId = {
                  ignoreCompress = false
                  queryId        = "q-vkja91og"
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
              id       = "step-p9ufpyzj"
              index    = 1
              isPinned = false
              opal = [
                "exists projectId = @projects.project_id",
                "",
                "exists functionName = @CloudFunctionsLogs.functionName, region = @CloudFunctionsLogs.region, projectId = @CloudFunctionsLogs.projectId",
                "",
                "join assetInventoryName = @CloudFunctionsLogs.assetInventoryName, severity: @CloudFunctionsLogs.severity",
                "// Check each message to see if it's an error",
                "make_col ",
                "\tboard_label: \"Functions With Errors\",",
                "    is_error: if(severity = \"ERROR\", 1, 0)",
                "",
                "filter is_error > 0",
                "// aggregate the errors for each function",
                "// statsby has_errors: if(sum(is_error) > 0, 1, 0),",
                "//   group_by(functionName, board_label)",
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
        pipeline = <<-EOT
                    exists projectId = @projects.project_id
                    
                    exists functionName = @CloudFunctionsLogs.functionName, region = @CloudFunctionsLogs.region, projectId = @CloudFunctionsLogs.projectId
                    
                    join assetInventoryName = @CloudFunctionsLogs.assetInventoryName, severity: @CloudFunctionsLogs.severity
                    // Check each message to see if it's an error
                    make_col 
                    	board_label: "Functions With Errors",
                        is_error: if(severity = "ERROR", 1, 0)
                    
                    filter is_error > 0
                    // aggregate the errors for each function
                    // statsby has_errors: if(sum(is_error) > 0, 1, 0),
                    //   group_by(functionName, board_label)
                EOT
      },
      {
        id = "stage-ybs0phel"
        input = [
          {
            datasetId   = "${local.storage_buckets}"
            datasetPath = null
            inputName   = "gcp-cost-test/Storage Buckets"
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
            datasetId   = "${local.storage_metrics}"
            datasetPath = null
            inputName   = "Storage Metrics"
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
              "0" = "Valid From"
              "2" = "Valid To"
            }
            columnVisibility = {}
            columnWidths = {
              assetInventoryName = 532
              bucket_name        = 459
              locationType       = 237
              selfLink           = 332
              timeCreated        = 223
              updated            = 187
            }
            containerWidth              = 2604
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
          index = 28
          inputList = [
            {
              datasetId   = "${local.storage_buckets}"
              inputName   = "gcp-cost-test/Storage Buckets"
              inputRole   = "Data"
              isUserInput = false
            },
            {
              inputName   = "projects"
              inputRole   = "Data"
              isUserInput = true
              parameterId = "input-parameter-z5n5j9ss"
            },
            {
              datasetId   = "${local.storage_metrics}"
              inputName   = "Storage Metrics"
              inputRole   = "Data"
              isUserInput = true
            },
          ]
          label = "Storage Errors"
          managers = [
            {
              id                     = "wcecq0gb"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "jxkk1e52"
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
                      "bucket_name",
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
                    y             = "timeCreated"
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
                  queryId        = "q-aeagtwue"
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
              customSummary = "gcp-cost-test/Storage Buckets"
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
              id                = "step-vm8uszt4"
              index             = 0
              isPinned          = false
              opal              = []
              queryPresentation = {}
              type              = "InputStep"
            },
            {
              columnStatsTable = {
                columnFunctions = {
                  acl                = "count"
                  assetInventoryName = "count"
                  autoclass          = "count"
                  billing            = "count"
                  cors               = "count"
                  defaultObjectAcl   = "count"
                  encryption         = "count"
                  iamConfiguration   = "count"
                  labels             = "count"
                  lifecycle          = "count"
                  locationType       = "count"
                  logging            = "count"
                  metric             = "count"
                  owner              = "count"
                  project_id         = "count"
                  region             = "count"
                  response_code      = "count"
                  retentionPolicy    = "count"
                  selfLink           = "count"
                  storageClass       = "count"
                  timeCreated        = "count"
                  updated            = "count"
                  versioning         = "count"
                  website            = "count"
                }
                datasetQueryId = {
                  ignoreCompress = false
                  queryId        = "q-vwc3c5on"
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
              id       = "step-87sgnazi"
              index    = 1
              isPinned = false
              opal = [
                "exists project_id = @projects.project_id",
                "",
                "join bucket_name = @\"Storage Metrics\".bucket_name, metric: @\"Storage Metrics\".metric, response_code: @\"Storage Metrics\".metric_labels.response_code",
                "",
                "filter metric = \"api_request_count\"",
                "",
                "make_col response_code:string(response_code)",
                "filter is_null(response_code) or (response_code != \"OK\")",
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
        pipeline = <<-EOT
                    exists project_id = @projects.project_id
                    
                    join bucket_name = @"Storage Metrics".bucket_name, metric: @"Storage Metrics".metric, response_code: @"Storage Metrics".metric_labels.response_code
                    
                    filter metric = "api_request_count"
                    
                    make_col response_code:string(response_code)
                    filter is_null(response_code) or (response_code != "OK")
                EOT
      },
      {
        id = "stage-te6t9rwt"
        input = [
          {
            datasetId   = "${local.cloud_sql_instance}"
            datasetPath = null
            inputName   = "gcp-cost-test/Cloud SQL Instance"
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
              "2" = "Valid From"
              "3" = "Valid To"
            }
            columnVisibility            = {}
            columnWidths                = {}
            containerWidth              = 2604
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
          index = 29
          inputList = [
            {
              datasetId   = "${local.cloud_sql_instance}"
              inputName   = "gcp-cost-test/Cloud SQL Instance"
              inputRole   = "Data"
              isUserInput = false
            },
          ]
          label = "Cloud SQL CPU Utilization"
          managers = [
            {
              id                     = "y50r8ctv"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "hlzir19v"
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
                    unit    = ""
                    visible = true
                  }
                }
                source = {
                  metric = {
                    aggregate   = "sum"
                    datasetId   = "${local.cloud_sql_metrics}"
                    description = "Auto Detected Metric"
                    groupBy = [
                      "database_id",
                    ]
                    heuristics = {
                      __typename = "MetricHeuristics"
                      tags = [
                        {
                          __typename = "MetricTag"
                          column     = "database_id"
                          path       = ""
                        },
                        {
                          __typename = "MetricTag"
                          column     = "database_platform"
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
                          column     = "region"
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
                          column     = "instance_state_label"
                          path       = ""
                        },
                      ]
                      validLinkLabels = [
                        "Cloud SQL Metrics",
                      ]
                    }
                    interval = null
                    link = {
                      __typename = "ForeignKey"
                      dstFields = [
                        "database_id",
                      ]
                      label = "Cloud SQL Metrics"
                      srcFields = [
                        "database_id",
                      ]
                      targetDataset    = "${local.cloud_sql_instance}"
                      targetStageLabel = null
                      type             = "foreign"
                    }
                    name        = "database_cpu_utilization"
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
                  assetInventoryName       = "count"
                  availabilityType         = "count"
                  backendType              = "count"
                  backupConfiguration      = "count"
                  dataDiskSizeGb           = "count"
                  dataDiskType             = "count"
                  databaseFlags            = "count"
                  databaseInstalledVersion = "count"
                  databaseVersion          = "count"
                  database_id              = "count"
                  deleted                  = "count"
                  gceZone                  = "count"
                  ipAddressPrimary         = "count"
                  ipAddresses              = "count"
                  ipConfiguration          = "count"
                  name                     = "count"
                  region                   = "count"
                  tier                     = "count"
                  ttl                      = "count"
                }
                datasetQueryId = {
                  ignoreCompress = false
                  queryId        = "q-yirb273d"
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
              customSummary = "gcp-cost-test/Cloud SQL Instance"
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
              id                = "step-or2ymd00"
              index             = 0
              isPinned          = false
              opal              = []
              queryPresentation = {}
              type              = "InputStep"
            },
          ]
          type = "table"
          viewModel = {
            consoleValue = "exists project_id = @projects.project_id"
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
        id = "stage-jytc9moz"
        input = [
          {
            datasetId   = "${local.cloud_sql_instance}"
            datasetPath = null
            inputName   = "gcp-cost-test/Cloud SQL Instance"
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
          index = 30
          inputList = [
            {
              datasetId   = "${local.cloud_sql_instance}"
              inputName   = "gcp-cost-test/Cloud SQL Instance"
              inputRole   = "Data"
              isUserInput = false
            },
          ]
          label = "Cloud SQL Network Connections"
          managers = [
            {
              id                     = "y50r8ctv"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "hlzir19v"
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
                    unit    = ""
                    visible = true
                  }
                }
                source = {
                  metric = {
                    aggregate   = "sum"
                    datasetId   = "${local.cloud_sql_metrics_combo}"
                    description = <<-EOT
                                            Combination of network connection metrics.
                                        EOT
                    groupBy = [
                      "database_id",
                    ]
                    heuristics = {
                      __typename = "MetricHeuristics"
                      tags = [
                        {
                          __typename = "MetricTag"
                          column     = "database_id"
                          path       = ""
                        },
                        {
                          __typename = "MetricTag"
                          column     = "database_platform"
                          path       = ""
                        },
                        {
                          __typename = "MetricTag"
                          column     = "label"
                          path       = ""
                        },
                        {
                          __typename = "MetricTag"
                          column     = "metric"
                          path       = ""
                        },
                        {
                          __typename = "MetricTag"
                          column     = "metric_category"
                          path       = ""
                        },
                        {
                          __typename = "MetricTag"
                          column     = "metric_type"
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
                          column     = "project_id"
                          path       = ""
                        },
                        {
                          __typename = "MetricTag"
                          column     = "region"
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
                          column     = "instance_state_label"
                          path       = ""
                        },
                        {
                          __typename = "MetricTag"
                          column     = "metric_labels"
                          path       = "database"
                        },
                      ]
                      validLinkLabels = [
                        "Cloud SQL Metrics Combo",
                      ]
                    }
                    interval = "60000000000"
                    link = {
                      __typename = "ForeignKey"
                      dstFields = [
                        "database_id",
                      ]
                      label = "Cloud SQL Metrics Combo"
                      srcFields = [
                        "database_id",
                      ]
                      targetDataset    = "${local.cloud_sql_instance}"
                      targetStageLabel = null
                      type             = "foreign"
                    }
                    name        = "all_database_network_connections"
                    rollup      = "avg"
                    type        = "gauge"
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
              customSummary = "gcp-cost-test/Cloud SQL Instance"
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
              id                = "step-ag9z0vhr"
              index             = 0
              isPinned          = false
              opal              = []
              queryPresentation = {}
              type              = "InputStep"
            },
          ]
          type = "table"
          viewModel = {
            consoleValue = "exists project_id = @projects.project_id"
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
        id = "stage-5ln1jd7h"
        input = [
          {
            datasetId   = "${local.cloud_sql_instance}"
            datasetPath = null
            inputName   = "gcp-cost-test/Cloud SQL Instance"
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
          index = 31
          inputList = [
            {
              datasetId   = "${local.cloud_sql_instance}"
              inputName   = "gcp-cost-test/Cloud SQL Instance"
              inputRole   = "Data"
              isUserInput = false
            },
          ]
          label = "Cloud SQL Disk Bytes Used"
          managers = [
            {
              id                     = "y50r8ctv"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "hlzir19v"
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
                    datasetId   = "${local.cloud_sql_metrics}"
                    description = "Auto Detected Metric"
                    groupBy = [
                      "database_id",
                    ]
                    heuristics = {
                      __typename = "MetricHeuristics"
                      tags = [
                        {
                          __typename = "MetricTag"
                          column     = "database_id"
                          path       = ""
                        },
                        {
                          __typename = "MetricTag"
                          column     = "database_platform"
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
                          column     = "region"
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
                          column     = "instance_state_label"
                          path       = ""
                        },
                      ]
                      validLinkLabels = [
                        "Cloud SQL Metrics",
                      ]
                    }
                    interval = null
                    link = {
                      __typename = "ForeignKey"
                      dstFields = [
                        "database_id",
                      ]
                      label = "Cloud SQL Metrics"
                      srcFields = [
                        "database_id",
                      ]
                      targetDataset    = "${local.cloud_sql_instance}"
                      targetStageLabel = null
                      type             = "foreign"
                    }
                    name        = "database_disk_bytes_used"
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
          selectedStepId = null
          serializable   = true
          steps = [
            {
              customName    = "Input"
              customSummary = "gcp-cost-test/Cloud SQL Instance"
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
              id                = "step-m2j2acul"
              index             = 0
              isPinned          = false
              opal              = []
              queryPresentation = {}
              type              = "InputStep"
            },
          ]
          type = "table"
          viewModel = {
            consoleValue = "exists project_id = @projects.project_id"
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
        id = "stage-b1chj5cm"
        input = [
          {
            datasetId   = "${local.cloud_sql_instance}"
            datasetPath = null
            inputName   = "gcp-cost-test/Cloud SQL Instance"
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
          index = 32
          inputList = [
            {
              datasetId   = "${local.cloud_sql_instance}"
              inputName   = "gcp-cost-test/Cloud SQL Instance"
              inputRole   = "Data"
              isUserInput = false
            },
          ]
          label = "Cloud SQL Disk Quota"
          managers = [
            {
              id                     = "y50r8ctv"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "hlzir19v"
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
                    unit    = ""
                    visible = true
                  }
                }
                source = {
                  metric = {
                    aggregate   = "sum"
                    datasetId   = "${local.cloud_sql_metrics}"
                    description = "Auto Detected Metric"
                    groupBy = [
                      "database_id",
                    ]
                    heuristics = {
                      __typename = "MetricHeuristics"
                      tags = [
                        {
                          __typename = "MetricTag"
                          column     = "database_id"
                          path       = ""
                        },
                        {
                          __typename = "MetricTag"
                          column     = "database_platform"
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
                          column     = "region"
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
                          column     = "instance_state_label"
                          path       = ""
                        },
                      ]
                      validLinkLabels = [
                        "Cloud SQL Metrics",
                      ]
                    }
                    interval = null
                    link = {
                      __typename = "ForeignKey"
                      dstFields = [
                        "database_id",
                      ]
                      label = "Cloud SQL Metrics"
                      srcFields = [
                        "database_id",
                      ]
                      targetDataset    = "${local.cloud_sql_instance}"
                      targetStageLabel = null
                      type             = "foreign"
                    }
                    name        = "database_disk_quota"
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
              customName    = "Input"
              customSummary = "gcp-cost-test/Cloud SQL Instance"
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
              id                = "step-1h8bt6y3"
              index             = 0
              isPinned          = false
              opal              = []
              queryPresentation = {}
              type              = "InputStep"
            },
          ]
          type = "table"
          viewModel = {
            consoleValue = "exists project_id = @projects.project_id"
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
        id = "stage-adtkr7tf"
        input = [
          {
            datasetId   = "${local.resources_asset_inventory}"
            datasetPath = null
            inputName   = "gcp-cost-test/Resources Asset Inventory"
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
              "0" = "Asset Namespace"
              "1" = "Valid From"
              "2" = "Valid To"
              "3" = "Asset Type"
              "4" = "Project ID"
              "5" = "Location"
            }
            columnVisibility = {}
            columnWidths = {
              "Asset Namespace" = 254
              "Asset Type"      = 173
              Count             = 102
              Location          = 172
              "Project ID"      = 253
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
          index = 33
          inputList = [
            {
              datasetId   = "${local.resources_asset_inventory}"
              inputName   = "gcp-cost-test/Resources Asset Inventory"
              inputRole   = "Data"
              isUserInput = false
            },
            {
              inputName   = "projects"
              inputRole   = "Data"
              isUserInput = true
              parameterId = "input-parameter-z5n5j9ss"
            },
          ]
          label = "Monitored Projects"
          managers = [
            {
              id                     = "jywkqd1x"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "t677hnrf"
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
                  singleStatLabel = "Monitored Projects"
                  thresholds      = null
                  type            = "singlefield"
                }
                source = {
                  table = {
                    field       = "asset_name"
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
              customSummary = "gcp-cost-test/Resources Asset Inventory"
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
              id                = "step-zbhpzszg"
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
                  queryId        = "q-clqbwynj"
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
              id       = "step-btk8i9jc"
              index    = 1
              isPinned = false
              opal = [
                "filter is_null(deleted)",
                "",
                "exists project_id = @projects.project_id",
                "filter asset_type = \"cloudresourcemanager.googleapis.com/Project\"",
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
        pipeline = <<-EOT
                    filter is_null(deleted)
                    
                    exists project_id = @projects.project_id
                    filter asset_type = "cloudresourcemanager.googleapis.com/Project"
                EOT
      },
      {
        id = "stage-rcjq4hxw"
        input = [
          {
            datasetId   = "${local.cloud_scheduler_jobs}"
            datasetPath = null
            inputName   = "gcp-cost-test/Cloud Scheduler Jobs"
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
          index = 34
          inputList = [
            {
              datasetId   = "${local.cloud_scheduler_jobs}"
              inputName   = "gcp-cost-test/Cloud Scheduler Jobs"
              inputRole   = "Data"
              isUserInput = false
            },
          ]
          label = "Cloud Scheduler Jobs"
          managers = [
            {
              id                     = "d6y6h07b"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "5yczjm5e"
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
                  singleStatLabel = "Cloud Scheduler Jobs"
                  thresholds      = null
                  type            = "singlefield"
                }
                source = {
                  table = {
                    field = [
                      "project_id",
                    ]
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
              columnStatsTable = {
                columnFunctions = {
                  asset_inventory_name = "count"
                  attempt_deadline     = "count"
                  deliveryAttempt      = "count"
                  description          = "count"
                  http_target          = "count"
                  job_name             = "count"
                  last_attempt_time    = "count"
                  region               = "count"
                  schedule             = "count"
                  schedule_time        = "count"
                  state                = "count"
                  status               = "count"
                  status_text          = "count"
                  time_zone            = "count"
                  user_update_time     = "count"
                }
                datasetQueryId = {
                  ignoreCompress = false
                  queryId        = "q-j17hvrkn"
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
              customSummary = "gcp-cost-test/Cloud Scheduler Jobs"
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
              id                = "step-urowzbsm"
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
        id = "stage-fgwg2rh6"
        input = [
          {
            datasetId   = "${local.resources_asset_inventory}"
            datasetPath = null
            inputName   = "gcp-cost-test/Resources Asset Inventory"
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
              "2" = "Project ID"
              "3" = "Location"
              "4" = "Asset Type"
            }
            columnVisibility = {
              name = false
              time = false
            }
            columnWidths = {
              "Asset Namespace" = 254
              "Asset Type"      = 173
              Count             = 102
              Location          = 172
              "Project ID"      = 253
              name              = 196
              service           = 395
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
          index = 35
          inputList = [
            {
              datasetId   = "${local.resources_asset_inventory}"
              inputName   = "gcp-cost-test/Resources Asset Inventory"
              inputRole   = "Data"
              isUserInput = false
            },
            {
              inputName   = "projects"
              inputRole   = "Data"
              isUserInput = true
              parameterId = "input-parameter-z5n5j9ss"
            },
          ]
          label = "Services Enabled Count"
          managers = [
            {
              id                     = "jywkqd1x"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "ed39rucd"
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
                  singleStatLabel = "Services Enabled"
                  thresholds      = null
                  type            = "singlefield"
                }
                source = {
                  table = {
                    field       = "service"
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
              customSummary = "gcp-cost-test/Resources Asset Inventory"
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
              id                = "step-47diy03k"
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
                  queryId        = "q-xy3pe6ul"
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
              id       = "step-l14gey50"
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
                "\ttime,",
                "\tname,",
                "    service,",
                "    state: string(data.state)",
                "    ",
                "// statsby last(time), group_by(name, service, state)",
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
        pipeline = <<-EOT
                    exists project_id = @projects.project_id
                    filter asset_type = "serviceusage.googleapis.com/Service"
                    filter string(data.state) = "ENABLED"
                    
                    make_col service: string(data.name)
                    
                    pick_col 
                    	@."Valid From",
                        @."Valid To",
                    	time,
                    	name,
                        service,
                        state: string(data.state)
                        
                    // statsby last(time), group_by(name, service, state)
                EOT
      },
    ]
  )
  workspace = local.workspace
}

