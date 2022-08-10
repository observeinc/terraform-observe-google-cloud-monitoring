locals {
  enable_metrics = lookup(var.feature_flags, "metrics", true)
  # tflint-ignore: terraform_unused_declarations
  enable_monitors = lookup(var.feature_flags, "monitors", true)
}

resource "observe_dataset" "url_maps" {
  workspace = var.workspace.oid
  name      = format(var.name_format, "Url Maps")
  freshness = lookup(var.freshness_overrides, "url_maps", var.freshness_default)

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

resource "observe_dataset" "backend_services" {
  workspace = var.workspace.oid
  name      = format(var.name_format, "Backend Services")
  freshness = lookup(var.freshness_overrides, "backend_services", var.freshness_default)

  inputs = {
    "events" = var.google.resource_asset_inventory_records.oid
  }

  # https://cloud.google.com/load-balancing/docs
  stage {
    alias    = "fields"
    input    = "events"
    pipeline = <<-EOF
      filter asset_type = "compute.googleapis.com/BackendService"
      make_col
        name:string(data.name),
        backends:array(data.backends),
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
        selfLink:string(data.selfLink),
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
        primary_key(name),
        valid_for(ttl)

      set_label name

      add_key selfLink
    EOF
  }
}

resource "observe_dataset" "forwarding_rules" {
  workspace = var.workspace.oid
  name      = format(var.name_format, "Forwarding Rules")
  freshness = lookup(var.freshness_overrides, "forwarding_rules", var.freshness_default)

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
        networkTier:string(data.networkTier),
        portRange:string(data.portRange),
        selfLink:string(data.selfLink),
        target:string(data.target),
        creationTimestamp:string(data.creationTimestamp),
        project_id:string(split_part(split_part(string(data.selfLink), "projects/", 2), "/", 1))
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
        networkTier,
        portRange,
        target,
        fingerprint,
        creationTimestamp,
        primary_key(frontend_name),
        valid_for(ttl)

      set_label frontend_name

      add_key selfLink
    EOF
  }
}


resource "observe_dataset" "target_proxies" {
  workspace = var.workspace.oid
  name      = format(var.name_format, "Target Proxies")
  freshness = lookup(var.freshness_overrides, "target_proxies", var.freshness_default)

  inputs = {
    "events" = var.google.resource_asset_inventory_records.oid
  }

  # https://cloud.google.com/load-balancing/docs
  stage {
    alias    = "fields"
    input    = "events"
    pipeline = <<-EOF

      filter asset_type = "compute.googleapis.com/TargetHttpProxy" or asset_type = "compute.googleapis.com/TargetHttpsProxy"
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

resource "observe_dataset" "health_checks" {
  workspace = var.workspace.oid
  name      = format(var.name_format, "Health Checks")
  freshness = lookup(var.freshness_overrides, "health_checks", var.freshness_default)

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

resource "observe_dataset" "instance_groups" {
  workspace = var.workspace.oid
  name      = format(var.name_format, "Instance Groups")
  freshness = lookup(var.freshness_overrides, "health_checks", var.freshness_default)
  inputs = {
    "events" = var.google.resource_asset_inventory_records.oid
  }

  # https://cloud.google.com/load-balancing/docs
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
    EOF
  }
}

resource "observe_dataset" "load_balancers" {
  workspace = var.workspace.oid
  name      = format(var.name_format, "Load Balancers")
  freshness = lookup(var.freshness_overrides, "load_balancers", var.freshness_default)

  inputs = {
    "events" = var.google.resource_asset_inventory_records.oid
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
        or asset_type = "compute.googleapis.com/BackendService"
        or asset_type = "compute.googleapis.com/RegionBackendService"
        or asset_type = "compute.googleapis.com/BackendBucket"
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
    alias    = "BackendServices"
    input    = "lb_events"
    pipeline = <<-EOF
      filter asset_type = "compute.googleapis.com/BackendService"
        or asset_type = "compute.googleapis.com/RegionBackendService"
        or asset_type = "compute.googleapis.com/BackendBucket"
      make_col
        name:string(data.name),
        backends:array(data.backends),
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
        selfLink:string(data.selfLink),
        project_id:string(split_part(split_part(string(data.selfLink), "projects/", 2), "/", 1)),
        creationTimestamp:string(data.creationTimestamp)
      filter not protocol = "GRPC" or is_null(protocol)
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
        networkTier:string(data.networkTier),
        portRange:string(data.portRange),
        selfLink:string(data.selfLink),
        target:string(data.target),
        creationTimestamp:string(data.creationTimestamp),
        project_id:string(split_part(split_part(string(data.selfLink), "projects/", 2), "/", 1))
    EOF
  }

  stage {
    alias    = "LoadBalancers"
    input    = "UrlMaps"
    pipeline = <<-EOF
      fulljoin defaultService=@BackendServices.selfLink,
        defaultServiceName:@BackendServices.name,
        defaultServiceHeathchecks:@BackendServices.healthChecks,
        defaultServiceProtocol:@BackendServices.protocol,
        defaultServiceProjectId:@BackendServices.project_id,
        defaultServiceId:@BackendServices.id,
        defaultServiceRegion:@BackendServices.location,
        defaultServiceCreationTS:@BackendServices.creationTimestamp,
        defaultServiceSelfLink:@BackendServices.selfLink
      filter not is_null(name) or not starts_with(defaultServiceProtocol, "HTTP")
      join selfLink=@TargetProxies.urlMap,
        targetProxy:@TargetProxies.selfLink,
        targetProxyName:@TargetProxies.name
      join targetProxy=@ForwardingRules.target,
        frontEnd:@ForwardingRules.frontend_name,
        IPAddress:@ForwardingRules.IPAddress,
        IPProtocol:@ForwardingRules.IPProtocol,
        description:@ForwardingRules.description,
        IPVersion:@ForwardingRules.ipVersion,
        loadBalancingScheme:@ForwardingRules.loadBalancingScheme,
        networkTier:@ForwardingRules.networkTier,
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
        networkTier,
        portRange,
        creationTimestamp,
        primary_key(name),
        valid_for(ttl)

      set_label name

      add_key selfLink
      add_key frontEnd
    EOF
  }
}

/*
resource "observe_link" "url_maps_to_backend_services" {
  workspace = var.workspace.oid
  source    = observe_dataset.url_maps.oid
  target    = observe_dataset.backend_services.oid
  fields    = ["defaultService:selfLink"]
  label     = "Backend Service"
}
*/

resource "observe_link" "load_balancer_to_backend_services" {
  workspace = var.workspace.oid
  source    = observe_dataset.load_balancers.oid
  target    = observe_dataset.backend_services.oid
  fields    = ["defaultServiceName:name"]
  label     = "Backend Service"
}

resource "observe_link" "target_proxy_to_load_balancer" {
  workspace = var.workspace.oid
  source    = observe_dataset.target_proxies.oid
  target    = observe_dataset.load_balancers.oid
  fields    = ["urlMap:selfLink"]
  label     = "Url Map"
}

resource "observe_link" "forwarding_rule_to_target_proxy" {
  workspace = var.workspace.oid
  source    = observe_dataset.forwarding_rules.oid
  target    = observe_dataset.target_proxies.oid
  fields    = ["target:selfLink"]
  label     = "Target Proxy"
}


