resource "observe_dataset" "gke_events" {
  workspace   = var.workspace.oid
  name        = format(var.name_format, "Cluster Events")
  freshness   = lookup(local.freshness, "gke", var.freshness_default_duration)
  description = "This dataset contains events for GKE Cluster Resources"
  icon_url    = "city/city-buildings/city-buildings"
  inputs = {
    "events" = var.google.asset_inventory_records.oid
  }

  stage {
    input    = "events"
    pipeline = <<-EOF


        filter asset_type = "container.googleapis.com/Cluster"

        extract_regex name, /clusters\/(?P<cluster>[^\/]+)/

        make_col gkeClusterAssetKey:name,
            addonsConfig:resource.data.addonsConfig,
            autopilot:resource.data.autopilot,
            autoscaling:resource.data.autoscaling,
            binaryAuthorization:resource.data.binaryAuthorization,
            clusterIpv4Cidr:string(resource.data.clusterIpv4Cidr),
            createTime:string(resource.data.createTime),
            currentMasterVersion:string(resource.data.currentMasterVersion),
            currentNodeCount:int64(resource.data.currentNodeCount),
            currentNodeVersion:string(resource.data.currentNodeVersion),
            databaseEncryption:resource.data.databaseEncryption,
            defaultMaxPodsConstraint:resource.data.defaultMaxPodsConstraint,
            endpoint:string(resource.data.endpoint),
            gks_cluster_id:string(resource.data.id),
            initialClusterVersion:string(resource.data.initialClusterVersion),
            initialNodeCount:int64(resource.data.initialNodeCount),
            instanceGroupUrls:resource.data.instanceGroupUrls,
            ipAllocationPolicy:resource.data.ipAllocationPolicy,
            labelFingerprint:string(resource.data.labelFingerprint),
            legacyAbac:resource.data.legacyAbac,
            location:string(resource.data.location),
            locations:resource.data.locations,
            loggingConfig:resource.data.loggingConfig,
            loggingService:string(resource.data.loggingService),
            maintenancePolicy:resource.data.maintenancePolicy,
            masterAuth:resource.data.masterAuth,
            masterAuthorizedNetworksConfig:resource.data.masterAuthorizedNetworksConfig,
            monitoringConfig:resource.data.monitoringConfig,
            monitoringService:string(resource.data.monitoringService),
            name_1:string(resource.data.name),
            network:string(resource.data.network),
            networkConfig:resource.data.networkConfig,
            nodeConfig:resource.data.nodeConfig,
            nodePoolAutoConfig:resource.data.nodePoolAutoConfig,
            nodePoolDefaults:resource.data.nodePoolDefaults,
            nodePools:resource.data.nodePools,
            notificationConfig:resource.data.notificationConfig,
            releaseChannel:resource.data.releaseChannel,
            selfLink_1:string(resource.data.selfLink),
            servicesIpv4Cidr:string(resource.data.servicesIpv4Cidr),
            shieldedNodes:resource.data.shieldedNodes,
            status:string(resource.data.status),
            subnetwork:string(resource.data.subnetwork),
            zone:string(resource.data.zone),
            discovery_document_uri:string(resource.discovery_document_uri),
            discovery_name:string(resource.discovery_name),
            location:string(resource.location),
            parent:string(resource.parent),
            version:string(resource.version)
            
        make_col ttl: case(deleted, 1ns, true, 4h)

        extract_regex name, /projects\/(?P<project_id>[^\/]+)/
        extract_regex name, /\/\/([^\/]*\/){4}(?P<region>[^\-]*-[^\-]*).*\//

    EOF
  }
}

resource "observe_dataset" "gke_clusters" {
  workspace   = local.datasets.gke_clusters.workspace
  name        = local.datasets.gke_clusters.name
  freshness   = local.datasets.gke_clusters.freshness
  description = local.datasets.gke_clusters.description

  inputs = {
    "events" = observe_dataset.gke_events.oid
  }

  stage {
    input    = "events"
    pipeline = <<-EOF
    
        make_resource options(expiry:${var.max_expiry}),
            project_id,
            region,
            cluster_name: cluster,
            clusterIpv4Cidr,
            createTime,
            currentMasterVersion,
            initialClusterVersion,
            currentNodeCount,
            initialNodeCount,
            currentNodeVersion,
            databaseEncryption,
            defaultMaxPodsConstraint: defaultMaxPodsConstraint.maxPodsPerNode,
            endpoint,
            primary_key(gkeClusterAssetKey),
            valid_for(ttl)
            
        set_label cluster_name
    EOF
  }
}
