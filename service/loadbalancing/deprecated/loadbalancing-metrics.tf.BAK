locals {
  metrics_definitions = {
    "https_backend_latencies" = {
      type             = "delta"
      description      = <<-EOF
          A distribution of the latency calculated from when the request was sent by the proxy to the backend until the proxy received from the backend the last byte of response. Sampled every 60s and may take up to 210s to display.
      EOF
      launchStage      = "GA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "none"
      googleMetricPath = "loadbalancing.googleapis.com/https/backend_latencies"
      active           = true

      interval = "60s"


    },
    "https_backend_request_bytes_count" = {
      type             = "delta"
      description      = <<-EOF
          The number of bytes sent as requests from external HTTPS load balancer to backends.
      EOF
      launchStage      = "GA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "none"
      googleMetricPath = "loadbalancing.googleapis.com/https/backend_request_bytes_count"
      active           = true



    },
    "https_backend_request_count" = {
      type             = "delta"
      description      = <<-EOF
          The number of requests served by backends of external HTTPS load balancer.
      EOF
      launchStage      = "GA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "none"
      googleMetricPath = "loadbalancing.googleapis.com/https/backend_request_count"
      active           = true



    },
    "https_backend_response_bytes_count" = {
      type             = "delta"
      description      = <<-EOF
          The number of bytes sent as responses from backends or cache to external HTTPS load balancer.
      EOF
      launchStage      = "GA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "none"
      googleMetricPath = "loadbalancing.googleapis.com/https/backend_response_bytes_count"
      active           = true



    },
    "https_external/regional/backend_latencies" = {
      type             = "delta"
      description      = <<-EOF
          A distribution of the latency calculated from when the request was sent by the proxy to the backend until the proxy received from the backend the last byte of response. Sampled every 60 seconds. After sampling, data is not visible for up to 210 seconds.
      EOF
      launchStage      = "BETA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "none"
      googleMetricPath = "loadbalancing.googleapis.com/https/external/regional/backend_latencies"
      active           = false



    },
    "https_external/regional/request_bytes_count" = {
      type             = "delta"
      description      = <<-EOF
          The number of bytes sent as requests from clients to HTTP/S load balancer. Sampled every 60 seconds. After sampling, data is not visible for up to 90 seconds.
      EOF
      launchStage      = "BETA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "none"
      googleMetricPath = "loadbalancing.googleapis.com/https/external/regional/request_bytes_count"
      active           = false



    },
    "https_external/regional/request_count" = {
      type             = "delta"
      description      = <<-EOF
          The number of requests served by HTTP/S load balancer. Sampled every 60 seconds. After sampling, data is not visible for up to 90 seconds.
      EOF
      launchStage      = "BETA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "none"
      googleMetricPath = "loadbalancing.googleapis.com/https/external/regional/request_count"
      active           = false



    },
    "https_external/regional/response_bytes_count" = {
      type             = "delta"
      description      = <<-EOF
          The number of bytes sent as responses from HTTP/S load balancer to clients. Sampled every 60 seconds. After sampling, data is not visible for up to 90 seconds.
      EOF
      launchStage      = "BETA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "none"
      googleMetricPath = "loadbalancing.googleapis.com/https/external/regional/response_bytes_count"
      active           = false



    },
    "https_external/regional/total_latencies" = {
      type             = "delta"
      description      = <<-EOF
          A distribution of the latency calculated from when the request was received by the proxy until the proxy got ACK from client on last response byte. Sampled every 60 seconds. After sampling, data is not visible for up to 90 seconds.
      EOF
      launchStage      = "BETA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "none"
      googleMetricPath = "loadbalancing.googleapis.com/https/external/regional/total_latencies"
      active           = false



    },
    "https_frontend_tcp_rtt" = {
      type             = "delta"
      description      = <<-EOF
          A distribution of the RTT measured for each connection between client and proxy. Sampled every 60s and may take up to 210s to display.
      EOF
      launchStage      = "GA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "none"
      googleMetricPath = "loadbalancing.googleapis.com/https/frontend_tcp_rtt"
      active           = true

      interval = "60s"


    },
    "https_internal/backend_latencies" = {
      type             = "delta"
      description      = <<-EOF
          A distribution of the latency calculated from when the request was sent by the internal HTTPS load balancer proxy to the backend until the proxy received from the backend the last byte of response. Sampled every 60 seconds. After sampling, data is not visible for up to 90 seconds.
      EOF
      launchStage      = "GA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "none"
      googleMetricPath = "loadbalancing.googleapis.com/https/internal/backend_latencies"
      active           = true



    },
    "https_internal/request_bytes_count" = {
      type             = "delta"
      description      = <<-EOF
          The number of bytes sent as requests from clients to internal HTTPS load balancer. Sampled every 60 seconds. After sampling, data is not visible for up to 90 seconds.
      EOF
      launchStage      = "GA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "none"
      googleMetricPath = "loadbalancing.googleapis.com/https/internal/request_bytes_count"
      active           = true



    },
    "https_internal/request_count" = {
      type             = "delta"
      description      = <<-EOF
          The number of requests served by internal HTTPS load balancer. Sampled every 60 seconds. After sampling, data is not visible for up to 90 seconds.
      EOF
      launchStage      = "GA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "none"
      googleMetricPath = "loadbalancing.googleapis.com/https/internal/request_count"
      active           = true



    },
    "https_internal/response_bytes_count" = {
      type             = "delta"
      description      = <<-EOF
          The number of bytes sent as responses from internal HTTPS load balancer to clients. Sampled every 60 seconds. After sampling, data is not visible for up to 90 seconds.
      EOF
      launchStage      = "GA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "none"
      googleMetricPath = "loadbalancing.googleapis.com/https/internal/response_bytes_count"
      active           = true



    },
    "https_internal/total_latencies" = {
      type             = "delta"
      description      = <<-EOF
          A distribution of the latency calculated from when the request was received by the internal HTTPS load balancer proxy until the proxy got ACK from client on last response byte. Sampled every 60 seconds. After sampling, data is not visible for up to 90 seconds.
      EOF
      launchStage      = "GA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "none"
      googleMetricPath = "loadbalancing.googleapis.com/https/internal/total_latencies"
      active           = true



    },
    "https_request_bytes_count" = {
      type             = "delta"
      description      = <<-EOF
          The number of bytes sent as requests from clients to external HTTPS load balancer. Sampled every 60s and may take up to 210s to display.
      EOF
      launchStage      = "GA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "none"
      googleMetricPath = "loadbalancing.googleapis.com/https/request_bytes_count"
      active           = true

      interval = "60s"


    },
    "https_request_count" = {
      type             = "delta"
      description      = <<-EOF
          The number of requests served by external HTTPS load balancer. Sampled every 60s and may take up to 210s to display.
      EOF
      launchStage      = "GA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "none"
      googleMetricPath = "loadbalancing.googleapis.com/https/request_count"
      active           = true

      interval = "60s"


    },
    "https_response_bytes_count" = {
      type             = "delta"
      description      = <<-EOF
          The number of bytes sent as responses from external HTTPS load balancer to clients. Sampled every 60s and may take up to 210s to display.
      EOF
      launchStage      = "GA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "none"
      googleMetricPath = "loadbalancing.googleapis.com/https/response_bytes_count"
      active           = true

      interval = "60s"


    },
    "https_total_latencies" = {
      type             = "delta"
      description      = <<-EOF
          A distribution of the latency calculated from when the request was received by the external HTTPS load balancer proxy until the proxy got ACK from client on last response byte. Sampled every 60s and may take up to 210s to display.
      EOF
      launchStage      = "GA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "none"
      googleMetricPath = "loadbalancing.googleapis.com/https/total_latencies"
      active           = true

      interval = "60s"


    },
    "l3_external/egress_bytes_count" = {
      type             = "delta"
      description      = <<-EOF
          The number of bytes sent from the backend of the external network load balancer to the client. For TCP flows, this metric counts the bytes on the application stream only.
      EOF
      launchStage      = "GA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "none"
      googleMetricPath = "loadbalancing.googleapis.com/l3/external/egress_bytes_count"
      active           = true



    },
    "l3_external/egress_packets_count" = {
      type             = "delta"
      description      = <<-EOF
          The number of packets sent from the backend of the external network load balancer to the client.
      EOF
      launchStage      = "GA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "none"
      googleMetricPath = "loadbalancing.googleapis.com/l3/external/egress_packets_count"
      active           = true



    },
    "l3_external/ingress_bytes_count" = {
      type             = "delta"
      description      = <<-EOF
          The number of bytes sent from the client to the backend of the external network load balancer. For TCP flows, this metric counts the bytes on the application stream only.
      EOF
      launchStage      = "GA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "none"
      googleMetricPath = "loadbalancing.googleapis.com/l3/external/ingress_bytes_count"
      active           = true



    },
    "l3_external/ingress_packets_count" = {
      type             = "delta"
      description      = <<-EOF
          The number of packets sent from the client to the backend of the external network load balancer.
      EOF
      launchStage      = "GA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "none"
      googleMetricPath = "loadbalancing.googleapis.com/l3/external/ingress_packets_count"
      active           = true



    },
    "l3_external/rtt_latencies" = {
      type             = "delta"
      description      = <<-EOF
          A distribution of the round trip time latency, measured over TCP connections for the external network load balancer.
      EOF
      launchStage      = "GA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "none"
      googleMetricPath = "loadbalancing.googleapis.com/l3/external/rtt_latencies"
      active           = true



    },
    "l3_internal/egress_bytes_count" = {
      type             = "delta"
      description      = <<-EOF
          The number of bytes sent from internal TCP/UDP load balancer backend to client for TCP flows it's counting bytes on application stream only.
      EOF
      launchStage      = "GA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "none"
      googleMetricPath = "loadbalancing.googleapis.com/l3/internal/egress_bytes_count"
      active           = true



    },
    "l3_internal/egress_packets_count" = {
      type             = "delta"
      description      = <<-EOF
          The number of packets sent from internal TCP/UDP load balancer backend to client of the flow.
      EOF
      launchStage      = "GA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "none"
      googleMetricPath = "loadbalancing.googleapis.com/l3/internal/egress_packets_count"
      active           = true



    },
    "l3_internal/ingress_bytes_count" = {
      type             = "delta"
      description      = <<-EOF
          The number of bytes sent from client to internal TCP/UDP load balancer backend for TCP flows it's counting bytes on application stream only.
      EOF
      launchStage      = "GA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "none"
      googleMetricPath = "loadbalancing.googleapis.com/l3/internal/ingress_bytes_count"
      active           = true



    },
    "l3_internal/ingress_packets_count" = {
      type             = "delta"
      description      = <<-EOF
          The number of packets sent from client to internal TCP/UDP load balancer backend.
      EOF
      launchStage      = "GA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "none"
      googleMetricPath = "loadbalancing.googleapis.com/l3/internal/ingress_packets_count"
      active           = true



    },
    "l3_internal/rtt_latencies" = {
      type             = "delta"
      description      = <<-EOF
          A distribution of RTT measured over TCP connections for internal TCP/UDP load balancer flows.
      EOF
      launchStage      = "GA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "none"
      googleMetricPath = "loadbalancing.googleapis.com/l3/internal/rtt_latencies"
      active           = true



    },
    "l4_proxy_egress_bytes_count" = {
      type             = "delta"
      description      = <<-EOF
          Number of bytes sent from VM to client using proxy. Sampled every 60 seconds. After sampling, data is not visible for up to 210 seconds.
      EOF
      launchStage      = "BETA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "none"
      googleMetricPath = "loadbalancing.googleapis.com/l4_proxy/egress_bytes_count"
      active           = false



    },
    "l4_proxy_ingress_bytes_count" = {
      type             = "delta"
      description      = <<-EOF
          Number of bytes sent from client to VM using proxy. Sampled every 60 seconds. After sampling, data is not visible for up to 210 seconds.
      EOF
      launchStage      = "BETA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "none"
      googleMetricPath = "loadbalancing.googleapis.com/l4_proxy/ingress_bytes_count"
      active           = false



    },
    "l4_proxy_tcp/closed_connections_count" = {
      type             = "delta"
      description      = <<-EOF
          Number of connections that were terminated over TCP proxy or SSL proxy load balancer. Sampled every 60 seconds. After sampling, data is not visible for up to 210 seconds.
      EOF
      launchStage      = "BETA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "none"
      googleMetricPath = "loadbalancing.googleapis.com/l4_proxy/tcp/closed_connections_count"
      active           = false



    },
    "tcp_ssl_proxy_closed_connections" = {
      type             = "delta"
      description      = <<-EOF
          Number of connections that were terminated over TCP proxy or SSL proxy load balancer. Sampled every 60s and may take up to 210s to display.
      EOF
      launchStage      = "GA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "none"
      googleMetricPath = "loadbalancing.googleapis.com/tcp_ssl_proxy/closed_connections"
      active           = true

      interval = "60s"


    },
    "tcp_ssl_proxy_egress_bytes_count" = {
      type             = "delta"
      description      = <<-EOF
          Number of bytes sent from VM to client using proxy. Sampled every 60s and may take up to 210s to display.
      EOF
      launchStage      = "GA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "none"
      googleMetricPath = "loadbalancing.googleapis.com/tcp_ssl_proxy/egress_bytes_count"
      active           = true

      interval = "60s"


    },
    "tcp_ssl_proxy_frontend_tcp_rtt" = {
      type             = "delta"
      description      = <<-EOF
          A distribution of the smoothed RTT in ms measured by the proxy's TCP stack, each minute application layer bytes pass from proxy to client. Sampled every 60s and may take up to 210s to display.
      EOF
      launchStage      = "GA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "none"
      googleMetricPath = "loadbalancing.googleapis.com/tcp_ssl_proxy/frontend_tcp_rtt"
      active           = true

      interval = "60s"


    },
    "tcp_ssl_proxy_ingress_bytes_count" = {
      type             = "delta"
      description      = <<-EOF
          Number of bytes sent from client to VM using proxy. Sampled every 60s and may take up to 210s to display.
      EOF
      launchStage      = "GA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "none"
      googleMetricPath = "loadbalancing.googleapis.com/tcp_ssl_proxy/ingress_bytes_count"
      active           = true

      interval = "60s"


    },
    "tcp_ssl_proxy_new_connections" = {
      type             = "delta"
      description      = <<-EOF
          Number of connections that were created over TCP proxy or SSL proxy load balancer. Sampled every 60s and may take up to 210s to display.
      EOF
      launchStage      = "GA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "none"
      googleMetricPath = "loadbalancing.googleapis.com/tcp_ssl_proxy/new_connections"
      active           = true

      interval = "60s"


    },
    "tcp_ssl_proxy_open_connections" = {
      type             = "gauge"
      description      = <<-EOF
          Current number of outstanding connections through the TCP proxy or SSL proxy load balancer. Sampled every 60s and may take up to 210s to display.
      EOF
      launchStage      = "GA"
      rollup           = "avg"
      aggregate        = "sum"
      metricCategory   = "none"
      googleMetricPath = "loadbalancing.googleapis.com/tcp_ssl_proxy/open_connections"
      active           = true

      interval = "60s"


    },
  }
}
