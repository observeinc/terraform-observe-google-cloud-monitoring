# Steps to deploy sockshop to K8s


## set up observe collection
```
kubectl apply -k https://github.com/observeinc/manifests/stack && \
	kubectl -n observe create secret generic credentials \
	--from-literal=OBSERVE_CUSTOMER=128557934960 \
	--from-literal=OBSERVE_TOKEN=ds1PaBDBnBkdQjIRmwJg:IOajNw75djxquyhsAumAncGNIg04yHla \
  --from-literal=OBSERVE_COLLECTOR_HOST=collect.observe-staging.com
```

## annotate to link k8s app and gcp app
```
kubectl annotate namespace observe observeinc.com/cluster-name="//container.googleapis.com/projects/content-eng-sample-infra/locations/us-central1/clusters/sample-infra-gke"
```

## otel collector endpoint
```
kubectl -n observe create secret generic otel-credentials \
        --from-literal=OBSERVE_CUSTOMER=YOURS \
        --from-literal=OBSERVE_TOKEN=YOURS \
        --from-literal=OBSERVE_COLLECTOR_HOST=collect.observe-staging.com
        
kubectl apply -k github.com/observeinc/manifests/stack/otel
```

## deploy sock shop
- if redeploying you need to delete and then reapply
```
kubectl apply -k /Users/arthur/content_eng/terraform-observe-google/sample_infrastructure/sockshop/microservices-otel/microservices-demo/deploy/kubernetes/sockshop-k8s-demo

kubectl get pods -n sock-shop
```

## deploy ingress - PATIENCE GRASSHOPPER - these things take minutes 
- first for a external ip to be revealed through describe
- second for gateway to be able to resoleve endppoint
- good rule of thumb is wait 5 minutes for each
```
kubectl apply -f /Users/arthur/content_eng/terraform-observe-google/sample_infrastructure/sockshop/microservices-otel/microservices-demo/deploy/kubernetes/ingress/ingress_gke.yaml

kubectl describe ingress -n sock-shop
```

## delete sock shop
- delete ingress first
- then sockshop
```
kubectl delete -f /Users/arthur/content_eng/terraform-observe-google/sample_infrastructure/sockshop/microservices-otel/microservices-demo/deploy/kubernetes/ingress/ingress_gke.yaml

kubectl delete -k /Users/arthur/content_eng/terraform-observe-google/sample_infrastructure/sockshop/microservices-otel/microservices-demo/deploy/kubernetes/sockshop-k8s-demo
```

# Deployment directory
sample_infrastructure/sockshop/microservices-otel/microservices-demo/deploy/kubernetes/sockshop-k8s-demo

## Deployment file 
complete-demo.yaml

# Docker comands
Build, tag push

## To configure access to artifact registry
```
gcloud auth configure-docker us-central1-docker.pkg.dev
```

## Build and push front end container - location - sample_infrastructure/sockshop/microservices-otel/instrumented-services/front-end
```
docker buildx build --platform linux/amd64 --tag observe/front-end:0.2.4 front-end --no-cache 

docker tag observe/front-end:0.2.4 us-central1-docker.pkg.dev/content-eng-sample-infra/sockshop-registry/front-end:0.2.4.4

docker push us-central1-docker.pkg.dev/content-eng-sample-infra/sockshop-registry/front-end:0.2.4.4
```

## Mongo 
```
docker pull public.ecr.aws/i0l7u7b0/mongo:4.4.14

docker tag public.ecr.aws/i0l7u7b0/mongo:4.4.14 us-central1-docker.pkg.dev/content-eng-sample-infra/sockshop-registry/mongo-joe:4.4.14

docker push us-central1-docker.pkg.dev/content-eng-sample-infra/sockshop-registry/mongo-joe:4.4.14

```

## Carts
```
docker pull weaveworksdemos/carts:0.4.8

docker tag weaveworksdemos/carts:0.4.8 us-central1-docker.pkg.dev/content-eng-sample-infra/sockshop-registry/carts:0.4.8

docker push us-central1-docker.pkg.dev/content-eng-sample-infra/sockshop-registry/carts:0.4.8
```

## Catalogue
```
docker pull weaveworksdemos/catalogue:0.3.5

docker tag weaveworksdemos/catalogue:0.3.5 us-central1-docker.pkg.dev/content-eng-sample-infra/sockshop-registry/catalogue:0.3.5

docker push us-central1-docker.pkg.dev/content-eng-sample-infra/sockshop-registry/catalogue:0.3.5
```

## Catalogue DB
```
docker tag weaveworksdemos/catalogue-db:0.3.0 us-central1-docker.pkg.dev/content-eng-sample-infra/sockshop-registry/catalogue-db:0.3.0

docker push us-central1-docker.pkg.dev/content-eng-sample-infra/sockshop-registry/catalogue-db:0.3.0
```

## Orders
```
docker pull --platform=linux/arm64 weaveworksdemos/orders:0.4.7

docker tag weaveworksdemos/orders:0.4.7 us-central1-docker.pkg.dev/content-eng-sample-infra/sockshop-registry/orders:0.4.7

docker push us-central1-docker.pkg.dev/content-eng-sample-infra/sockshop-registry/orders:0.4.7
```

## Payment
```
docker pull --platform=linux/arm64 weaveworksdemos/payment:0.4.3

docker tag weaveworksdemos/payment:0.4.3 us-central1-docker.pkg.dev/content-eng-sample-infra/sockshop-registry/payment:0.4.3

docker push us-central1-docker.pkg.dev/content-eng-sample-infra/sockshop-registry/payment:0.4.3
```

## Queue-master
```
docker pull weaveworksdemos/queue-master:0.3.1 

docker tag weaveworksdemos/queue-master:0.3.1 us-central1-docker.pkg.dev/content-eng-sample-infra/sockshop-registry/queue-master:0.3.1

docker push us-central1-docker.pkg.dev/content-eng-sample-infra/sockshop-registry/queue-master:0.3.1
```

## Rabbitmq
```
docker pull rabbitmq:3.6.8-management 

docker tag rabbitmq:3.6.8-management us-central1-docker.pkg.dev/content-eng-sample-infra/sockshop-registry/rabbitmq:3.6.8-management

docker push us-central1-docker.pkg.dev/content-eng-sample-infra/sockshop-registry/rabbitmq:3.6.8-management
```

## Rabbitmq-exporter
```
docker pull kbudde/rabbitmq-exporter:latest

docker tag kbudde/rabbitmq-exporter:latest us-central1-docker.pkg.dev/content-eng-sample-infra/sockshop-registry/rabbitmq-exporter:latest

docker push us-central1-docker.pkg.dev/content-eng-sample-infra/sockshop-registry/rabbitmq-exporter:latest
```

## Redis
```
docker pull amd64/redis:latest

docker tag amd64/redis:latest us-central1-docker.pkg.dev/content-eng-sample-infra/sockshop-registry/redis:latest

docker push us-central1-docker.pkg.dev/content-eng-sample-infra/sockshop-registry/redis:latest
```

## Shipping
```
docker pull weaveworksdemos/shipping:0.4.8

docker tag weaveworksdemos/shipping:0.4.8 us-central1-docker.pkg.dev/content-eng-sample-infra/sockshop-registry/shipping:0.4.8

docker push us-central1-docker.pkg.dev/content-eng-sample-infra/sockshop-registry/shipping:0.4.8
```

## User
```
docker pull weaveworksdemos/user:0.4.7

docker tag weaveworksdemos/user:0.4.7 us-central1-docker.pkg.dev/content-eng-sample-infra/sockshop-registry/user:0.4.7

docker push us-central1-docker.pkg.dev/content-eng-sample-infra/sockshop-registry/user:0.4.7
```

## User-db
```
docker pull weaveworksdemos/user-db:0.3.0

docker tag weaveworksdemos/user-db:0.3.0 us-central1-docker.pkg.dev/content-eng-sample-infra/sockshop-registry/user-db:0.3.0

docker push us-central1-docker.pkg.dev/content-eng-sample-infra/sockshop-registry/user-db:0.3.0

```