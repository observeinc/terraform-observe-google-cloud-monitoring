# Dashboard used to create terraform definition
data "observe_dashboard" "db" {
  workspace = data.observe_workspace.ws.oid
  id        = "41097640"
}

data "observe_workspace" "ws" {
  name = "Default"
}
