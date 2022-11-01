# resource "observe_dataset" "gke_nodes" {
#   workspace   = var.workspace.oid
#   name        = format(var.name_format, "Nodes")
#   freshness   = lookup(local.freshness, "gke", var.freshness_duration_default)
#   description = "This dataset is used to create GKE Node Resources"
#   inputs = {
#     "events" = var.google.asset_inventory_records.oid
#   }

#   stage {
#     input    = "events"
#     pipeline = <<-EOF

#         filter asset_type = "k8s.io/Node"

#         extract_regex name, /clusters\/(?P<cluster>[^\/]+)/
#         extract_regex name, /nodes\/(?P<node>[^\/]+)/

#         make_col clusterName:string(resource.data.metadata.clusterName),
#             annotations:resource.data.metadata.annotations,
#             creationTimestamp:string(resource.data.metadata.creationTimestamp),
#             generateName:string(resource.data.metadata.generateName),
#             generation:int64(resource.data.metadata.generation),
#             labels:resource.data.metadata.labels,
#             managedFields:resource.data.metadata.managedFields,
#             node_name:string(resource.data.metadata.name),
#             namespace:string(resource.data.metadata.namespace),
#             selfLink:string(resource.data.metadata.selfLink),
#             uid:string(resource.data.metadata.uid),
#             spec:resource.data.spec,
#             status:resource.data.status,
#             version:string(resource.version),
#             parent:string(resource.parent),
#             location:string(resource.location),
#             discovery_document_uri:string(resource.discovery_document_uri),
#             discovery_name:string(resource.discovery_name)

#         extract_regex name, /projects\/(?P<project_id>[^\/]+)/
#         extract_regex name, /locations\/(?P<region>[^\/]+)/
#     EOF
#   }
#   stage {

#     pipeline = <<-EOF


#     make_resource 
#         project_id,
#         region,
#         cluster_name: clusterName,
#         node_name,
#         namespace,
#         asset_inventory_name: name,
#         primary_key(uid)

#     add_key cluster_name
#     set_label node_name
#     EOF
#   }
# }


