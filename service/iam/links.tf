resource "observe_link" "project" {
  for_each = {
    "service_accounts" = {
      target = var.google.projects.oid
      fields = ["project_id"]
      label  = "Project"
      source = observe_dataset.service_accounts.oid
    }
    "asset_bindings" = {
      target = var.google.projects.oid
      fields = ["project_id"]
      label  = "Project"
      source = observe_dataset.asset_bindings.oid
    }
  }

  workspace = var.workspace.oid
  source    = each.value.source
  target    = each.value.target
  fields    = each.value.fields
  label     = each.value.label
}