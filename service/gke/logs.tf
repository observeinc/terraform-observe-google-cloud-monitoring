resource "observe_dataset" "gke_logs" {
  workspace   = var.workspace.oid
  name        = format(var.name_format, "Logs")
  freshness   = lookup(local.freshness, "logging", var.freshness_duration_default)
  description = "This dataset contains raw logging data for GKE instances"
  inputs = {
    "logs" = var.google.logs.oid
  }

  stage {
    pipeline = <<-EOF
        filter resourceType = "k8s_cluster"

        make_col cluster_name:string(resourceLabels.cluster_name),
            location:string(resourceLabels.location),
            project_id:string(resourceLabels.project_id)
            
        make_col "@type":string(protoPayload['@type']),
            authorizationInfo:protoPayload.authorizationInfo,
            authenticationInfo:protoPayload.authenticationInfo,
            methodName:string(protoPayload.methodName),
            request:protoPayload.request,
            requestMetadata:protoPayload.requestMetadata,
            resourceName:string(protoPayload.resourceName),
            response:protoPayload.response
            
        make_col auth_decision:string(labels['authorization.k8s.io/decision']),
            auth_reason:string(labels['authorization.k8s.io/reason']),
            k8sio_deprecated:string(labels['k8s.io/deprecated']),
            k8sio_removed_release:string(labels['k8s.io/removed-release'])
            

        make_col gkeClusterAssetKey: string_concat("//container.googleapis.com/projects/", project_id, "/locations/", location, "/clusters/",cluster_name)
    EOF
  }

  stage {
    pipeline = <<-EOF
        pick_col 
            timestamp,
            receiveTimestamp,
            logName,
            logType: "@type",
            project_id,
            authorizationInfo,
            authenticationInfo,
            methodName,
            requestMetadata,
            resourceName,
            auth_decision,
            auth_reason,
            k8sio_deprecated,
            k8sio_removed_release,
            cluster_name,
            location,
            resourceType,
            gkeClusterAssetKey

        add_key gkeClusterAssetKey

    EOF
  }
}
