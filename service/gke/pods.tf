# resource "observe_dataset" "gke_pods" {
#   workspace   = var.workspace.oid
#   name        = format(var.name_format, "Pods")
#   freshness   = lookup(local.freshness, "gke", var.freshness_duration_default)
#   description = "This dataset is used to create GKE Pods Resources"
#   inputs = {
#     "events" = var.google.asset_inventory_records.oid
#   }

#   stage {
#     input    = "events"
#     pipeline = <<-EOF
#     filter asset_type = "k8s.io/Pod"

#     make_col annotations:resource.data.metadata.annotations,
#         creationTimestamp:string(resource.data.metadata.creationTimestamp),
#         generateName:string(resource.data.metadata.generateName),
#         generation:int64(resource.data.metadata.generation),
#         labels:resource.data.metadata.labels,
#         managedFields:resource.data.metadata.managedFields,
#         pod_name:string(resource.data.metadata.name),
#         namespace:string(resource.data.metadata.namespace),
#         ownerReferences:resource.data.metadata.ownerReferences,
#         resourceVersion:string(resource.data.metadata.resourceVersion),
#         selfLink:string(resource.data.metadata.selfLink),
#         uid:string(resource.data.metadata.uid),
#         affinity:resource.data.spec.affinity,
#         containers:resource.data.spec.containers,
#         dnsPolicy:string(resource.data.spec.dnsPolicy),
#         enableServiceLinks:resource.data.spec.enableServiceLinks,
#         hostIPC:resource.data.spec.hostIPC,
#         hostNetwork:resource.data.spec.hostNetwork,
#         hostPID:resource.data.spec.hostPID,
#         hostname:string(resource.data.spec.hostname),
#         initContainers:resource.data.spec.initContainers

#     extract_regex name, /projects\/(?P<project_id>[^\/]+)/
#     extract_regex name, /locations\/(?P<region>[^\/]+)/
#     extract_regex name, /clusters\/(?P<cluster_name>[^\/]+)/

#     EOF
#   }

#   stage {

#     pipeline = <<-EOF


#     make_resource 
#         project_id,
#         region,
#         cluster_name,
#         pod_name,
#         namespace,
#         asset_inventory_name: name,
#         dnsPolicy,
#         primary_key(uid)

#     add_key cluster_name
#     set_label pod_name
#     EOF
#   }
# }

