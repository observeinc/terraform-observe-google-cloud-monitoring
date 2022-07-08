# data "observe_dashboard" "db" {
#   workspace = data.observe_workspace.ws.oid
#   id        = "41079440"
# }

# data "observe_workspace" "ws" {
#   name = "Default"
# }

# resource "observe_dashboard" "first" {
#   name      = "Cloud SQL Instance Monitoring TF"
#   workspace = data.observe_workspace.ws.oid
#   #   icon_url         = data.observe_dashboard.db.icon_url
#   stages           = templatefile("${path.module}/dashboards/stage.json", {})
#   layout           = templatefile("${path.module}/dashboards/layout.json", {})
#   parameters       = templatefile("${path.module}/dashboards/parameters.json", {})
#   parameter_values = data.observe_dashboard.db.parameter_values
# }
