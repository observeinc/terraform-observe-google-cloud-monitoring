locals {
  enable_metrics = lookup(var.feature_flags, "metrics", true)
  # tflint-ignore: terraform_unused_declarations
  enable_monitors = lookup(var.feature_flags, "monitors", true)
}

resource "observe_dataset" "url_map" {
  workspace   = var.workspace.oid
  name        = format(var.name_format, "Url Maps")
  freshness   = lookup(var.freshness_overrides, "url_map", var.freshness_default)
  description = "This dataset is used to create the Load Balancing URL Maps Resource"

  inputs = {
    "events" = var.google.resource_asset_inventory_records.oid
  }

  # https://cloud.google.com/load-balancing/docs
  stage {
    alias    = "fields"
    input    = "events"
    pipeline = <<-EOF
      filter asset_type = "compute.googleapis.com/UrlMap" or asset_type = "compute.googleapis.com/regionUrlMap"
      make_col
        name:string(data.name),
        defaultService:string(data.defaultService),
        hostRules:array(data.hostRules),
        pathMatchers:array(data.pathMatchers),
        fingerprint:string(data.fingerprint),
        id:string(data.id),
        selfLink:string(data.selfLink),
        region:string(location),
        project_id:string(split_part(split_part(string(data.selfLink), "projects/", 2), "/", 1)),
        creationTimestamp:string(data.creationTimestamp)
    EOF
  }

  stage {
    alias    = "resource"
    pipeline = <<-EOF
      make_resource options(expiry:${var.max_expiry}), 
        project_id,
        id,
        region,
        selfLink,
        defaultService,
        hostRules,
        pathMatchers,
        fingerprint,
        creationTimestamp,
        primary_key(name),
        valid_for(ttl)

      set_label name

      add_key selfLink
    EOF
  }
}

resource "observe_dataset" "backend" {
  workspace   = var.workspace.oid
  name        = format(var.name_format, "Backend")
  freshness   = lookup(var.freshness_overrides, "backend", var.freshness_default)
  description = "This dataset is used to create the Load Balancing Backend Resource"

  inputs = {
    "events"         = var.google.resource_asset_inventory_records.oid
    "instance_group" = observe_dataset.instance_group.oid
  }

  # https://cloud.google.com/load-balancing/docs
  stage {
    alias    = "fields"
    input    = "events"
    pipeline = <<-EOF
      filter asset_type = "compute.googleapis.com/BackendService"
        or asset_type = "compute.googleapis.com/RegionBackendService"
        or asset_type = "compute.googleapis.com/BackendBucket"
        or asset_type = "compute.googleapis.com/TargetPool"
      make_col
        name:string(data.name),
        backends:array(data.backends),
        instances:array(data.instances),
        connectionDraining:object(data.connectionDraining),
        description:string(data.description),
        enableCDN:bool(data.enableCDN),
        healthChecks:array(data.healthChecks),
        id:string(data.id),
        loadBalancingScheme:string(data.loadBalancingScheme),
        localityLbPolicy:string(data.localityLbPolicy),
        logConfig:object(data.logConfig),
        port:int64(data.port),
        portName:string(data.portName),
        protocol:string(data.protocol),
        sessionAffinity:string(data.sessionAffinity),
        timeoutSec:int64(data.timeoutSec),
        fingerprint:string(data.fingerprint),
        region:string(data.region),
        selfLink:string(data.selfLink),
        project_id:string(split_part(split_part(string(data.selfLink), "projects/", 2), "/", 1)),
        creationTimestamp:string(data.creationTimestamp)
      filter not protocol = "GRPC" or is_null(protocol)

      make_col each_backends:backends
      flatten_single each_backends
      make_col group:string(@."_c_each_backends_value".group)
      lookup group=@instance_group.selfLink, healthState:@instance_group.healthState
      make_col 
        healthyGroups:if(healthState="HEALTHY",1,int64_null()),
        unhealthyGroups:if(healthState="UNHEALTHY",1,int64_null()),
        unknownGroups:if(healthState="UNKNOWN",1,int64_null()),
        nullGroups:if(is_null(healthState),1,int64_null())

      timestats 
        healthyGroups:sum(healthyGroups),
        unhealthyGroups:sum(unhealthyGroups),
        unknownGroups:sum(unknownGroups),
        nullGroups:sum(nullGroups),
        group_by(
          time,
          deleted,
          name,
          backends,
          instances,
          connectionDraining,
          description,
          enableCDN,
          healthChecks,
          id,
          location,
          loadBalancingScheme,
          localityLbPolicy,
          logConfig,
          port,
          portName,
          protocol,
          sessionAffinity,
          timeoutSec,
          fingerprint,
          selfLink,
          project_id,
          ttl,
          creationTimestamp)
    EOF
  }

  stage {
    alias    = "resource"
    pipeline = <<-EOF
      make_resource options(expiry:${var.max_expiry}), 
        project_id,
        id,
        selfLink,
        backends,
        connectionDraining,
        description,
        enableCDN,
        healthChecks,
        loadBalancingScheme,
        localityLbPolicy,
        logConfig,
        port,
        portName,
        protocol,
        sessionAffinity,
        fingerprint,
        timeoutSec,
        creationTimestamp,
        healthyGroups,
        unhealthyGroups,
        unknownGroups,
        nullGroups,
        primary_key(name),
        valid_for(ttl)

      set_label name

      add_key selfLink
    EOF
  }
}

resource "observe_dataset" "forwarding_rule" {
  workspace   = var.workspace.oid
  name        = format(var.name_format, "Forwarding Rules")
  freshness   = lookup(var.freshness_overrides, "forwarding_rule", var.freshness_default)
  description = "This dataset is used to create the Load Balancing Forwarding Rules Resource"

  inputs = {
    "events" = var.google.resource_asset_inventory_records.oid
  }

  # https://cloud.google.com/load-balancing/docs
  stage {
    alias    = "fields"
    input    = "events"
    pipeline = <<-EOF
      filter asset_type = "compute.googleapis.com/ForwardingRule" or asset_type = "compute.googleapis.com/GlobalForwardingRule"
      make_col
        frontend_name:string(data.name), 
        IPAddress:string(data.IPAddress),
        IPProtocol:string(data.IPProtocol),
        description:string(data.description),
        fingerprint:string(data.fingerprint),
        id:string(data.id),
        ipVersion:string(data.ipVersion),
        labelFingerprint:string(data.labelFingerprint),
        loadBalancingScheme:string(data.loadBalancingScheme),
        network:string(data.network),
        networkTier:string(data.networkTier),
        subnetwork:string(data.subnetwork),
        ports:array(data.ports),
        portRange:string(data.portRange),
        selfLink:string(data.selfLink),
        target:string(data.target),
        backendService:string(data.backendService),
        creationTimestamp:string(data.creationTimestamp),
        project_id:string(split_part(split_part(string(data.selfLink), "projects/", 2), "/", 1))

      // targetPools are listed as targets, but they are actually backends
      make_col
        target:if(split_part(target, "/", -2) = "targetPools", string_null(), target),
        backend:if(split_part(target, "/", -2) = "targetPools", target, backendService)

    EOF
  }

  stage {
    alias    = "resource"
    pipeline = <<-EOF
      make_resource options(expiry:${var.max_expiry}), 
        project_id,
        id,
        selfLink,
        IPAddress,
        IPProtocol,
        description,
        ipVersion,
        labelFingerprint,
        loadBalancingScheme,
        network,
        networkTier,
        subnetwork,
        ports,
        portRange,
        target,
        backend,
        fingerprint,
        creationTimestamp,
        primary_key(frontend_name),
        valid_for(ttl)

      set_label frontend_name

      add_key selfLink
    EOF
  }
}


resource "observe_dataset" "target_proxy" {
  workspace   = var.workspace.oid
  name        = format(var.name_format, "Target Proxies")
  freshness   = lookup(var.freshness_overrides, "target_proxy", var.freshness_default)
  description = "This dataset is used to create the Load Balancing Target Proxies Resource"

  inputs = {
    "events" = var.google.resource_asset_inventory_records.oid
  }

  # https://cloud.google.com/load-balancing/docs
  stage {
    alias    = "fields"
    input    = "events"
    pipeline = <<-EOF

      filter asset_type = "compute.googleapis.com/TargetHttpProxy" 
        or asset_type = "compute.googleapis.com/TargetHttpsProxy"
        or asset_type = "compute.googleapis.com/TargetSslProxy"
        or asset_type = "compute.googleapis.com/TargetTcpProxy"
        or asset_type = "compute.googleapis.com/TargetGrpcProxy"
      make_col
        name:string(data.name), 
        fingerprint:string(data.fingerprint),
        id:string(data.id),
        selfLink:string(data.selfLink),
        urlMap:string(data.urlMap),
        creationTimestamp:string(data.creationTimestamp),
        project_id:string(split_part(split_part(string(data.selfLink), "projects/", 2), "/", 1))
    EOF
  }

  stage {
    alias    = "resource"
    pipeline = <<-EOF
      make_resource options(expiry:${var.max_expiry}), 
        project_id,
        urlMap,
        id,
        selfLink,
        fingerprint,
        creationTimestamp,
        primary_key(name),
        valid_for(ttl)

      set_label name

      add_key selfLink
    EOF
  }
}

resource "observe_dataset" "load_balancing_health_check" {
  workspace   = var.workspace.oid
  name        = format(var.name_format, "Health Checks")
  freshness   = lookup(var.freshness_overrides, "health_check", var.freshness_default)
  description = "This dataset is used to create the Load Balancing Health Checks Resource"

  inputs = {
    "events" = var.google.resource_asset_inventory_records.oid
  }

  # https://cloud.google.com/load-balancing/docs
  stage {
    alias    = "fields"
    input    = "events"
    pipeline = <<-EOF

      filter asset_type = "compute.googleapis.com/HealthCheck"
      make_col
        name:string(data.name), 
        description:string(data.description),
        id:string(data.id),
        selfLink:string(data.selfLink),
        checkIntervalSec:int64(data.checkIntervalSec),
        httpHealthCheck:data.httpHealthCheck,
        logConfig:data.logConfig,
        timeoutSec:int64(data.timeoutSec),
        type:string(data.type),
        unhealthyThreshold:int64(data.unhealthyThreshold),
        creationTimestamp:string(data.creationTimestamp),
        project_id:string(split_part(split_part(string(data.selfLink), "projects/", 2), "/", 1))
    EOF
  }

  stage {
    alias    = "resource"
    pipeline = <<-EOF
      make_resource options(expiry:${var.max_expiry}), 
        project_id,
        description,
        id,
        selfLink,
        checkIntervalSec,
        httpHealthCheck,
        logConfig,
        type,
        unhealthyThreshold,
        creationTimestamp,
        primary_key(name),
        valid_for(ttl)

      set_label name

      add_key selfLink
    EOF
  }
}

resource "observe_dataset" "instance_group" {
  workspace   = var.workspace.oid
  name        = format(var.name_format, "Instance Group")
  freshness   = lookup(var.freshness_overrides, "target_proxy", var.freshness_default)
  description = "This dataset is used to create the Load Balancing Instance Groups Resource"

  inputs = {
    "events"            = var.google.resource_asset_inventory_records.oid
    "Health Check Logs" = observe_dataset.health_check_logs.oid
  }

  stage {
    alias    = "Health_Check_Statuses"
    input    = "Health Check Logs"
    pipeline = <<-EOF
      make_resource 
        severity,
        healthState,
        resourceType,
        jsonPayload,
        resourceLabels,
        primary_key(instance_group_name),
        valid_for(${var.max_expiry})
    EOF
  }

  stage {
    alias    = "fields"
    input    = "events"
    pipeline = <<-EOF
      filter asset_type = "compute.googleapis.com/InstanceGroup"
      rename_col
        assetName:name
      make_col
        name:string(data.name), 
        description:string(data.description),
        id:string(data.id),
        selfLink:string(data.selfLink),
        namedPorts:array(data.namedPorts),
        network:string(data.network),
        subnetwork:string(data.subnetwork),
        size:int64(data.size),
        region:string(data.region),
        creationTimestamp:string(data.creationTimestamp),
        project_id:string(split_part(split_part(string(data.selfLink), "projects/", 2), "/", 1))
      lookup name=@Health_Check_Statuses.instance_group_name, healthState:@Health_Check_Statuses.healthState
    EOF
  }

  stage {
    alias    = "resource"
    pipeline = <<-EOF
      make_resource 
        project_id,
        healthState:if_null(healthState, "HEALTHY"),
        data,
        description,
        id,
        selfLink,
        namedPorts,
        network,
        subnetwork,
        size,
        location,
        version,
        primary_key(name),
        valid_for(ttl)
      set_label name
      add_key selfLink
    EOF
  }
}

resource "observe_dataset" "load_balancing_load_balancer" {
  workspace   = var.workspace.oid
  name        = format(var.name_format, "Load Balancers")
  freshness   = lookup(var.freshness_overrides, "load_balancing_load_balancer", var.freshness_default)
  description = "This dataset is used to create the Load Balancing Load Balancers Resource"

  inputs = {
    "events"         = var.google.resource_asset_inventory_records.oid
    "instance_group" = observe_dataset.instance_group.oid
  }

  # https://cloud.google.com/load-balancing/docs
  stage {
    alias    = "lb_events"
    input    = "events"
    pipeline = <<-EOF
      filter asset_type = "compute.googleapis.com/UrlMap" 
        or asset_type = "compute.googleapis.com/regionUrlMap" 
        or asset_type = "compute.googleapis.com/ForwardingRule" 
        or asset_type = "compute.googleapis.com/GlobalForwardingRule" 
        or asset_type = "compute.googleapis.com/TargetHttpProxy" 
        or asset_type = "compute.googleapis.com/TargetHttpsProxy"
        or asset_type = "compute.googleapis.com/TargetSslProxy"
        or asset_type = "compute.googleapis.com/TargetTcpProxy"
        or asset_type = "compute.googleapis.com/TargetGrpcProxy"
        or asset_type = "compute.googleapis.com/TargetPool"
        or asset_type = "compute.googleapis.com/BackendService"
        or asset_type = "compute.googleapis.com/RegionBackendService"
        or asset_type = "compute.googleapis.com/BackendBucket"
      make_col assetExportStartTS:window(first_not_null(time), frame(back:5m))
      set_valid_from assetExportStartTS
      make_col time:assetExportStartTS
      set_valid_from time
    EOF
  }

  stage {
    alias    = "UrlMaps"
    pipeline = <<-EOF
      filter asset_type = "compute.googleapis.com/UrlMap" 
        or asset_type = "compute.googleapis.com/regionUrlMap"
      make_col
        name:string(data.name),
        defaultService:string(data.defaultService),
        hostRules:array(data.hostRules),
        pathMatchers:array(data.pathMatchers),
        fingerprint:string(data.fingerprint),
        id:string(data.id),
        selfLink:string(data.selfLink),
        region:string(location),
        project_id:string(split_part(split_part(string(data.selfLink), "projects/", 2), "/", 1)),
        creationTimestamp:string(data.creationTimestamp)
    EOF
  }

  stage {
    alias    = "Backend"
    input    = "lb_events"
    pipeline = <<-EOF
      filter asset_type = "compute.googleapis.com/BackendService"
        or asset_type = "compute.googleapis.com/RegionBackendService"
        or asset_type = "compute.googleapis.com/BackendBucket"
        or asset_type = "compute.googleapis.com/TargetPool"
      make_col
        name:string(data.name),
        backends:array(data.backends),
        instances:array(data.instances),
        connectionDraining:object(data.connectionDraining),
        description:string(data.description),
        enableCDN:bool(data.enableCDN),
        healthChecks:array(data.healthChecks),
        id:string(data.id),
        loadBalancingScheme:string(data.loadBalancingScheme),
        localityLbPolicy:string(data.localityLbPolicy),
        logConfig:object(data.logConfig),
        port:int64(data.port),
        portName:string(data.portName),
        protocol:case(
          asset_type="compute.googleapis.com/BackendBucket", "bucket", 
          asset_type="compute.googleapis.com/TargetPool", "targetPool", 
          true, string(data.protocol)),
        sessionAffinity:string(data.sessionAffinity),
        timeoutSec:int64(data.timeoutSec),
        fingerprint:string(data.fingerprint),
        region:string(data.region),
        selfLink:string(data.selfLink),
        project_id:string(split_part(split_part(string(data.selfLink), "projects/", 2), "/", 1)),
        creationTimestamp:string(data.creationTimestamp)
      filter not protocol = "GRPC" or is_null(protocol)

      make_col each_backends:backends
      flatten_single each_backends
      make_col group:string(@."_c_each_backends_value".group)
      lookup group=@instance_group.selfLink, healthState:@instance_group.healthState
      make_col 
        healthyGroups:if(healthState="HEALTHY",1,int64_null()),
        unhealthyGroups:if(healthState="UNHEALTHY",1,int64_null()),
        unknownGroups:if(healthState="UNKNOWN",1,int64_null()),
        nullGroups:if(is_null(healthState),1,int64_null())

      timestats 
        healthyGroups:sum(healthyGroups),
        unhealthyGroups:sum(unhealthyGroups),
        unknownGroups:sum(unknownGroups),
        nullGroups:sum(nullGroups),
        group_by(
          time,
          deleted,
          name,
          backends,
          instances,
          connectionDraining,
          description,
          enableCDN,
          healthChecks,
          id,
          location,
          loadBalancingScheme,
          localityLbPolicy,
          logConfig,
          port,
          portName,
          protocol,
          sessionAffinity,
          timeoutSec,
          fingerprint,
          selfLink,
          project_id,
          creationTimestamp)
    EOF
  }

  stage {
    alias    = "TargetProxies"
    input    = "lb_events"
    pipeline = <<-EOF
      filter asset_type = "compute.googleapis.com/TargetHttpProxy" 
        or asset_type = "compute.googleapis.com/TargetHttpsProxy"
        or asset_type = "compute.googleapis.com/TargetSslProxy"
        or asset_type = "compute.googleapis.com/TargetTcpProxy"
        or asset_type = "compute.googleapis.com/TargetGrpcProxy"
      make_col
        name:string(data.name), 
        fingerprint:string(data.fingerprint),
        id:string(data.id),
        selfLink:string(data.selfLink),
        urlMap:string(data.urlMap),
        creationTimestamp:string(data.creationTimestamp),
        project_id:string(split_part(split_part(string(data.selfLink), "projects/", 2), "/", 1))
    EOF
  }

  stage {
    alias    = "ForwardingRules"
    input    = "lb_events"
    pipeline = <<-EOF
      filter asset_type = "compute.googleapis.com/ForwardingRule" 
        or asset_type = "compute.googleapis.com/GlobalForwardingRule"
      make_col
        frontend_name:string(data.name), 
        IPAddress:string(data.IPAddress),
        IPProtocol:string(data.IPProtocol),
        description:string(data.description),
        fingerprint:string(data.fingerprint),
        id:string(data.id),
        ipVersion:string(data.ipVersion),
        labelFingerprint:string(data.labelFingerprint),
        loadBalancingScheme:string(data.loadBalancingScheme),
        network:string(data.network),
        networkTier:string(data.networkTier),
        subnetwork:string(data.subnetwork),
        ports:array(data.ports),
        portRange:string(data.portRange),
        selfLink:string(data.selfLink),
        target:coalesce(string(data.target), string(data.backendService)),
        creationTimestamp:string(data.creationTimestamp),
        project_id:string(split_part(split_part(string(data.selfLink), "projects/", 2), "/", 1))
    EOF
  }

  stage {
    alias    = "LoadBalancers"
    input    = "UrlMaps"
    pipeline = <<-EOF
      fulljoin
        defaultService=@Backend.selfLink,
        defaultServiceName:@Backend.name,
        defaultServiceHeathchecks:@Backend.healthChecks,
        defaultServiceProtocol:@Backend.protocol,
        defaultServiceProjectId:@Backend.project_id,
        defaultServiceId:@Backend.id,
        defaultServiceRegion:@Backend.location,
        defaultServiceCreationTS:@Backend.creationTimestamp,
        defaultServiceLogConfig:@Backend.logConfig,
        defaultServiceSelfLink:@Backend.selfLink,
        defaultServiceHealthyStatusGroups:@Backend.healthyGroups,
        defaultServiceUnhealthyStatusGroups:@Backend.unhealthyGroups,
        defaultServiceUnknownStatusGroups:@Backend.unknownGroups,
        defaultServiceNullStatusGroups:@Backend.nullGroups

      filter not is_null(name) or not starts_with(defaultServiceProtocol, "HTTP")

      // need a selfLink to associate with a targetProxy; null values cause join problems
      make_col selfLink:coalesce(selfLink, defaultServiceSelfLink)
      
      leftjoin
        selfLink=@TargetProxies.urlMap,
        targetProxy:@TargetProxies.selfLink,
        targetProxyName:@TargetProxies.name

      // if there is no targetProxy, the frontend is linked directly to a targetPool or backendService
      make_col target:coalesce(targetProxy, defaultServiceSelfLink)

      leftjoin
        target=@ForwardingRules.target,
        frontEnd:@ForwardingRules.frontend_name,
        IPAddress:@ForwardingRules.IPAddress,
        IPProtocol:@ForwardingRules.IPProtocol,
        description:@ForwardingRules.description,
        IPVersion:@ForwardingRules.ipVersion,
        loadBalancingScheme:@ForwardingRules.loadBalancingScheme,
        network:@ForwardingRules.network,
        subnetwork:@ForwardingRules.subnetwork,
        networkTier:@ForwardingRules.networkTier,
        ports:@ForwardingRules.ports,
        portRange:@ForwardingRules.portRange
      rename_col
        urlMapName:name,
        urlMapLink:selfLink
      make_col
        name:coalesce(urlMapName, defaultServiceName),
        selfLink:coalesce(urlMapLink, defaultServiceSelfLink),
        project_id:if_null(project_id, defaultServiceProjectId),
        id:if_null(id, defaultServiceId),
        region:if_null(region,defaultServiceRegion),
        creationTimestamp:if_null(creationTimestamp, defaultServiceCreationTS)

      // remove GRPC proxies
      filter not is_null(defaultServiceProtocol)

      make_resource 
        project_id,
        id,
        region,
        selfLink,
        urlMapName,
        defaultServiceName,
        hostRules,
        pathMatchers,
        targetProxyName,
        frontEnd,
        IPAddress,
        IPProtocol,
        IPVersion,
        description,
        loadBalancingScheme,
        network,
        subnetwork,
        networkTier,
        ports,
        portRange,
        creationTimestamp,
        defaultServiceLogConfig,
        defaultServiceProtocol,
        defaultServiceHeathchecks,
        defaultServiceHealthyStatusGroups,
        defaultServiceUnhealthyStatusGroups,
        defaultServiceUnknownStatusGroups,
        defaultServiceNullStatusGroups,
        primary_key(name),
        valid_for(ttl)

      set_label name

      add_key selfLink
      add_key frontEnd
    EOF
  }
}

/*
resource "observe_link" "url_map_to_backend" {
  workspace = var.workspace.oid
  source    = observe_dataset.url_map.oid
  target    = observe_dataset.backend.oid
  fields    = ["defaultService:selfLink"]
  label     = "Backend"
}
*/

resource "observe_link" "load_balancer_to_backend" {
  workspace = var.workspace.oid
  source    = observe_dataset.load_balancing_load_balancer.oid
  target    = observe_dataset.backend.oid
  fields    = ["defaultServiceName:name"]
  label     = "Backend"
}

resource "observe_link" "target_proxy_to_load_balancer" {
  workspace = var.workspace.oid
  source    = observe_dataset.target_proxy.oid
  target    = observe_dataset.load_balancing_load_balancer.oid
  fields    = ["urlMap:selfLink"]
  label     = "Url Map"
}

resource "observe_link" "forwarding_rule_to_target_proxy" {
  workspace = var.workspace.oid
  source    = observe_dataset.forwarding_rule.oid
  target    = observe_dataset.target_proxy.oid
  fields    = ["target:selfLink"]
  label     = "Target Proxy"
}

resource "observe_link" "forwarding_rule_to_backend" {
  workspace = var.workspace.oid
  source    = observe_dataset.forwarding_rule.oid
  target    = observe_dataset.backend.oid
  fields    = ["backend:selfLink"]
  label     = "Backend"
}

resource "observe_link" "load_balancer_to_project_id" {
  workspace = var.workspace.oid
  source    = observe_dataset.load_balancing_load_balancer.oid
  target    = var.google.projects.oid
  fields    = ["project_id"]
  label     = "Project"
}
