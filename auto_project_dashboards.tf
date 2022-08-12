resource "observe_dashboard" "monitoring" {
  workspace = var.workspace.oid
  name      = format(var.name_format, "Projects Summary")
  stages = templatefile("${path.module}/dashboards/stages_v1.json", {
    RESOURCE_DATASET = observe_dataset.projects.id
  })
  layout = templatefile("${path.module}/dashboards/layout_v1.json", {
    RESOURCE_DATASET = observe_dataset.projects.id
  })
  parameters = templatefile("${path.module}/dashboards/parameters_v1.json", {
    RESOURCE_DATASET = observe_dataset.projects.id
  })

  # parameter_values = templatefile("${path.module}//Users/arthur/content_eng/terraform-observe-google/dashboards/parameterValues_v1.json", {
  #
  #})
}

# resource "observe_default_dashboard" "compute" {
# 	dataset = observe_dataset.projects.oid
# 	dashboard = resource.observe_dashboard.monitoring.oid
# }

