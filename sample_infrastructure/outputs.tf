output "bigquery" {
  value     = module.bigquery
  sensitive = true
}
# endpoints for bigquery operations
# tf output -json | jq -r '.bigquery.value.bigquery_selflink'
# tf output -json | jq -r '.bigquery.value.bigquery_selflink2'

output "compute_otel_collector" {
  value     = module.compute_otel_collector
  sensitive = true
}
# tf output -json | jq -r '.compute_otel_collector.value.gcp_ubuntu_box.compute_instances'
# sudo journalctl -u otelcol


output "function_bigquery" {
  value     = module.function_bigquery
  sensitive = true
}

output "function_bigquery_write_payload" {
  value = jsonencode({
    "method" : "write",
  "biq_query_table" : module.bigquery.bigquery_selflink2 })
}
# tf output -json | jq -r '.function_bigquery_write_payload.value'

output "collector_endpoint" {
  value     = "http://${module.compute_otel_collector.gcp_ubuntu_box.compute_instances.UBUNTU_20_04_LTS_0.public_ip}:4317"
  sensitive = true
}
# tf output -json | jq -r '.collector_endpoint.value'

output "cloudsql" {
  value     = module.cloudsql
  sensitive = true
}
# tf output -json | jq -r '.cloudsql.value.connection_string'

output "gke" {
  value     = module.gke
  sensitive = true
}
# tf output -json | jq -r '.gke.value'

output "google_artifact_registry_repository" {
  value     = google_artifact_registry_repository.my-repo
  sensitive = true
}
# tf output -json | jq -r '.google_artifact_registry_repository.value'
# DOCKER_BUILDKIT=0 docker build --tag observe/front-end:0.2.2 front-end --no-cache 

# docker tag observe/front-end:0.2.2 gcr.ios/content-eng-sample-infra/observe/front-end:0.2.2

# docker push us.gcr.io/content-eng-sample-infra/observe/front-end:0.2.2

# gcloud auth configure-docker us-central1-docker.pkg.dev

# us-central1--docker.pkg.dev/content-eng-sample-infra/sockshop-registry/front-end:0.2.2

# docker tag observe/front-end:0.2.2 us-central1-docker.pkg.dev/content-eng-sample-infra/sockshop-registry/front-end:0.2.2

# docker push   us-central1-docker.pkg.dev/content-eng-sample-infra/sockshop-registry/front-end:0.2.2

# docker tag mongo:4.4.14 us-central1-docker.pkg.dev/content-eng-sample-infra/sockshop-registry/mongo:4.4.14

# docker push us-central1-docker.pkg.dev/content-eng-sample-infra/sockshop-registry/mongo:4.4.14
# #
#
# docker tag weaveworksdemos/catalogue:0.3.5 us-central1-docker.pkg.dev/content-eng-sample-infra/sockshop-registry/catalogue:0.3.5

# docker push us-central1-docker.pkg.dev/content-eng-sample-infra/sockshop-registry/catalogue:0.3.5
# #
#
# docker tag weaveworksdemos/catalogue-db:0.3.0 us-central1-docker.pkg.dev/content-eng-sample-infra/sockshop-registry/catalogue-db:0.3.0

# docker push us-central1-docker.pkg.dev/content-eng-sample-infra/sockshop-registry/catalogue-db:0.3.0
# #
#
# docker tag weaveworksdemos/orders:0.4.7 us-central1-docker.pkg.dev/content-eng-sample-infra/sockshop-registry/orders:0.4.7

# docker push us-central1-docker.pkg.dev/content-eng-sample-infra/sockshop-registry/orders:0.4.7
#
# docker tag weaveworksdemos/payment:0.4.3 us-central1-docker.pkg.dev/content-eng-sample-infra/sockshop-registry/payment:0.4.3

# docker push us-central1-docker.pkg.dev/content-eng-sample-infra/sockshop-registry/payment:0.4.3

#
# docker tag weaveworksdemos/queue-master:0.3.1 us-central1-docker.pkg.dev/content-eng-sample-infra/sockshop-registry/queue-master:0.3.1

# docker push us-central1-docker.pkg.dev/content-eng-sample-infra/sockshop-registry/queue-master:0.3.1
# #
# docker tag rabbitmq:3.6.8-management us-central1-docker.pkg.dev/content-eng-sample-infra/sockshop-registry/rabbitmq:3.6.8-management

# docker push us-central1-docker.pkg.dev/content-eng-sample-infra/sockshop-registry/rabbitmq:3.6.8-management

#
# docker tag kbudde/rabbitmq-exporter:latest us-central1-docker.pkg.dev/content-eng-sample-infra/sockshop-registry/rabbitmq-exporter:latest

# docker push us-central1-docker.pkg.dev/content-eng-sample-infra/sockshop-registry/rabbitmq-exporter:latest

#
# docker tag amd64/redis:latest us-central1-docker.pkg.dev/content-eng-sample-infra/sockshop-registry/redis:latest

# docker push us-central1-docker.pkg.dev/content-eng-sample-infra/sockshop-registry/redis:latest
# #
# docker tag weaveworksdemos/shipping:0.4.8 us-central1-docker.pkg.dev/content-eng-sample-infra/sockshop-registry/shipping:0.4.8

# docker push us-central1-docker.pkg.dev/content-eng-sample-infra/sockshop-registry/shipping:0.4.8
# #
# docker tag weaveworksdemos/user:0.4.7 us-central1-docker.pkg.dev/content-eng-sample-infra/sockshop-registry/user:0.4.7

# docker push us-central1-docker.pkg.dev/content-eng-sample-infra/sockshop-registry/user:0.4.7
# # #
# docker tag weaveworksdemos/user-db:0.3.0 us-central1-docker.pkg.dev/content-eng-sample-infra/sockshop-registry/user-db:0.3.0

# docker push us-central1-docker.pkg.dev/content-eng-sample-infra/sockshop-registry/user-db:0.3.0

# kubectl apply -k https://github.com/observeinc/manifests/stack && \
# 	kubectl -n observe create secret generic credentials \
# 	--from-literal=OBSERVE_CUSTOMER=128557934960 \
# 	--from-literal=OBSERVE_TOKEN=ds1PaBDBnBkdQjIRmwJg:IOajNw75djxquyhsAumAncGNIg04yHla \
#   --from-literal=OBSERVE_COLLECTOR_HOST=collect.observe-staging.com

#   kubectl annotate namespace observe observeinc.com/cluster-name="//container.googleapis.com/projects/content-eng-sample-infra/locations/us-central1/clusters/sample-infra-gke"

#   kubectl apply -k sockshop-k8s-demo

#   kubectl apply -f ingress/ingress_gke.yaml
