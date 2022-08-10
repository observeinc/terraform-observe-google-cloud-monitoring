# Dashboard used to create terraform definition
data "observe_dashboard" "db" {
  workspace = data.observe_workspace.ws.oid
  id        = var.template_dashboard_id
}

data "observe_workspace" "ws" {
  name = "Default"
}

resource "observe_dashboard" "inbetween" {
  workspace        = data.observe_workspace.ws.oid
  name             = "Cloud SQL Instance Monitoring BRIDGE"
  stages           = data.observe_dashboard.db.stages
  layout           = data.observe_dashboard.db.layout
  parameters       = data.observe_dashboard.db.parameters
  parameter_values = data.observe_dashboard.db.parameter_values
}
