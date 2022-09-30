# Loadbalancing metrics
<!---
This is an auto generated file.  Run ./serviceUtilities.py -h in terraform-observe-google/service for help.
-->
This page lists the loadbalancing metrics collected by the GCP Integration. You may wish to navigate this page using the Contents located in the right sidebar, or search for a metric of interest.

```{list-table}
:header-rows: 1
:widths: 35 65
:class: force-wrap-table

* - Metric
  - Description

* - `backend_latencies`
  - A distribution of the latency calculated from when the request was sent by the proxy to the backend until the proxy received from the backend the last byte of response.
* - `backend_request_bytes_count`
  - The number of bytes sent as requests from external HTTP(S) load balancer to backends.
* - `backend_request_count`
  - The number of requests served by backends of external HTTP(S) load balancer.
* - `backend_response_bytes_count`
  - The number of bytes sent as responses from backends (or cache) to external HTTP(S) load balancer.
* - `backend_latencies`
  - A distribution of the latency calculated from when the request was sent by the proxy to the backend until the proxy received from the backend the last byte of response. Sampled every 60 seconds. After sampling, data is not visible for up to 210 seconds.
* - `request_bytes_count`
  - The number of bytes sent as requests from clients to HTTP/S load balancer. Sampled every 60 seconds. After sampling, data is not visible for up to 90 seconds.
* - `request_count`
  - The number of requests served by HTTP/S load balancer. Sampled every 60 seconds. After sampling, data is not visible for up to 90 seconds.
* - `response_bytes_count`
  - The number of bytes sent as responses from HTTP/S load balancer to clients. Sampled every 60 seconds. After sampling, data is not visible for up to 90 seconds.
* - `total_latencies`
  - A distribution of the latency calculated from when the request was received by the proxy until the proxy got ACK from client on last response byte. Sampled every 60 seconds. After sampling, data is not visible for up to 90 seconds.
* - `frontend_tcp_rtt`
  - A distribution of the RTT measured for each connection between client and proxy.
* - `backend_latencies`
  - A distribution of the latency calculated from when the request was sent by the internal HTTP(S) load balancer proxy to the backend until the proxy received from the backend the last byte of response. Sampled every 60 seconds. After sampling, data is not visible for up to 90 seconds.
* - `request_bytes_count`
  - The number of bytes sent as requests from clients to internal HTTP(S) load balancer. Sampled every 60 seconds. After sampling, data is not visible for up to 90 seconds.
* - `request_count`
  - The number of requests served by internal HTTP(S) load balancer. Sampled every 60 seconds. After sampling, data is not visible for up to 90 seconds.
* - `response_bytes_count`
  - The number of bytes sent as responses from internal HTTP(S) load balancer to clients. Sampled every 60 seconds. After sampling, data is not visible for up to 90 seconds.
* - `total_latencies`
  - A distribution of the latency calculated from when the request was received by the internal HTTP(S) load balancer proxy until the proxy got ACK from client on last response byte. Sampled every 60 seconds. After sampling, data is not visible for up to 90 seconds.
* - `request_bytes_count`
  - The number of bytes sent as requests from clients to external HTTP(S) load balancer.
* - `request_count`
  - The number of requests served by external HTTP(S) load balancer.
* - `response_bytes_count`
  - The number of bytes sent as responses from external HTTP(S) load balancer to clients.
* - `total_latencies`
  - A distribution of the latency calculated from when the request was received by the external HTTP(S) load balancer proxy until the proxy got ACK from client on last response byte.
* - `egress_bytes_count`
  - The number of bytes sent from the backend of the external network load balancer to the client. For TCP flows, this metric counts the bytes on the application stream only.
* - `egress_packets_count`
  - The number of packets sent from the backend of the external network load balancer to the client.
* - `ingress_bytes_count`
  - The number of bytes sent from the client to the backend of the external network load balancer. For TCP flows, this metric counts the bytes on the application stream only.
* - `ingress_packets_count`
  - The number of packets sent from the client to the backend of the external network load balancer.
* - `rtt_latencies`
  - A distribution of the round trip time latency, measured over TCP connections for the external network load balancer.
* - `egress_bytes_count`
  - The number of bytes sent from internal TCP/UDP load balancer backend to client (for TCP flows it's counting bytes on application stream only).
* - `egress_packets_count`
  - The number of packets sent from internal TCP/UDP load balancer backend to client of the flow.
* - `ingress_bytes_count`
  - The number of bytes sent from client to internal TCP/UDP load balancer backend (for TCP flows it's counting bytes on application stream only).
* - `ingress_packets_count`
  - The number of packets sent from client to internal TCP/UDP load balancer backend.
* - `rtt_latencies`
  - A distribution of RTT measured over TCP connections for internal TCP/UDP load balancer flows.
* - `egress_bytes_count`
  - Number of bytes sent from VM to client using proxy. Sampled every 60 seconds. After sampling, data is not visible for up to 210 seconds.
* - `ingress_bytes_count`
  - Number of bytes sent from client to VM using proxy. Sampled every 60 seconds. After sampling, data is not visible for up to 210 seconds.
* - `closed_connections_count`
  - Number of connections that were terminated over TCP proxy or SSL proxy load balancer. Sampled every 60 seconds. After sampling, data is not visible for up to 210 seconds.
* - `closed_connections`
  - Number of connections that were terminated over TCP proxy or SSL proxy load balancer.
* - `egress_bytes_count`
  - Number of bytes sent from VM to client using proxy.
* - `frontend_tcp_rtt`
  - A distribution of the smoothed RTT (in ms) measured by the proxy's TCP stack, each minute application layer bytes pass from proxy to client.
* - `ingress_bytes_count`
  - Number of bytes sent from client to VM using proxy.
* - `new_connections`
  - Number of connections that were created over TCP proxy or SSL proxy load balancer.
* - `open_connections`
  - Current number of outstanding connections through the TCP proxy or SSL proxy load balancer.

```
