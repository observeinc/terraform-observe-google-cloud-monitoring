# build and push

version=v1

docker buildx build --platform linux/amd64 \
--tag observe/python-cloudrun:${version} \
--tag us-central1-docker.pkg.dev/content-eng-sample-infra/sockshop-registry/python-cloudrun:${version} \
--tag us-central1-docker.pkg.dev/content-eng-sample-infra/sockshop-registry/python-cloudrun:latest \
sample_infrastructure/docker_files --no-cache 


docker push us-central1-docker.pkg.dev/content-eng-sample-infra/sockshop-registry/python-cloudrun:${version}

docker push us-central1-docker.pkg.dev/content-eng-sample-infra/sockshop-registry/python-cloudrun:latest