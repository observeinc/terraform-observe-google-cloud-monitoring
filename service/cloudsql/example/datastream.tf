# sample datastream for testing gcp data
resource "observe_datastream" "gcp" {
  name      = "${var.resource_prefix}_${var.observe_data_stream_name}"
  workspace = data.observe_workspace.default.oid
}

# token for testing
resource "observe_datastream_token" "gcp" {
  datastream = observe_datastream.gcp.oid
  name       = "${var.resource_prefix}_${var.observe_data_stream_name}_token"
}


# Always default unitl workspace functionality built out
data "observe_workspace" "default" {
  name = "Default"
}



