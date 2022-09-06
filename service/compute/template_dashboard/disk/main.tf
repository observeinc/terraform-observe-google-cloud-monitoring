# Dashboard used to create terraform definition
data "observe_workspace" "ws" {
  name = "Default"
}

data "observe_dashboard" "disk" {
  # workspace = data.observe_workspace.ws.oid
  id = "41155191"
}


resource "observe_dashboard" "disk_inbetween" {
  workspace        = data.observe_workspace.ws.oid
  name             = "Compute Disk Monitoring BRIDGE"
  stages           = data.observe_dashboard.disk.stages
  layout           = data.observe_dashboard.disk.layout
  parameters       = data.observe_dashboard.disk.parameters
  parameter_values = data.observe_dashboard.disk.parameter_values
}

locals {
  files = {
    stages           = { name = "stages.json" }
    layout           = { name = "layout.json" }
    parameters       = { name = "parameters.json" }
    parameter_values = { name = "parameter_values.json" }

  }
}

resource "local_file" "stages" {
  content  = observe_dashboard.disk_inbetween.stages
  filename = "${path.module}/stages.json"
}
resource "local_file" "layout" {
  content  = observe_dashboard.disk_inbetween.layout
  filename = "${path.module}/layout.json"
}
resource "local_file" "parameters" {
  content  = observe_dashboard.disk_inbetween.parameters
  filename = "${path.module}/parameters.json"
}

resource "local_file" "parameter_values" {
  count    = observe_dashboard.disk_inbetween.parameter_values == null ? 0 : 1
  content  = observe_dashboard.disk_inbetween.parameter_values
  filename = "${path.module}/parameter_values.json"
}


resource "null_resource" "format" {
  depends_on = [
    local_file.parameter_values
  ]
  for_each = local.files
  triggers = {
    everytime = timestamp()
  }
  provisioner "local-exec" {
    command = fileexists("${path.module}/${each.value.name}") ? "python3  pybarf.py ${each.value.name}" : "echo 'file does not exist'"
  }
}

# grep -nr "datasetId" --include \*.json | sed -e $'s/,/\\\n/g' | sed -e 's/^[ \t]*//' | sort | uniq

# grep -rh "datasetId" --include \*.json | sed -e $'s/,/\\\n/g' | sed -e 's/^[ \t]*//' | sort | uniq | sed -e 's/"datasetId"://g'

# sed -i '' "s:41109129:"\$${RESOURCE_DATASET}":g" /$(DASHBOARD_DIR)/*; 

# resource "observe_dashboard" "monitoring" {
#   count     = local.enable_metrics ? 1 : 0
#   workspace = var.workspace.oid
#   name      = format(var.name_format, "Monitoring")
#   stages = templatefile("${path.module}/dashboards/disk/stages.json", {
#     RESOURCE_DATASET = observe_dataset.compute.id

#   })
#   layout = templatefile("${path.module}/dashboards/disk/layout.json", {
#     RESOURCE_DATASET = observe_dataset.compute.id

#   })
#   parameters = templatefile("${path.module}/dashboards/disk/parameters.json", {
#     RESOURCE_DATASET = observe_dataset.compute.id

#   })

