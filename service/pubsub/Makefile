SHELL=/bin/bash

metrics:
	cd ../; \
	./createMetricsLocal.sh --input_file pubsub/metrics_topic_descriptors.json --output_file pubsub/metricslocal_topic.tf; \
	./createMetricsLocal.sh --input_file pubsub/metrics_service_descriptors.json --local_var_name service_metrics_definitions --output_file pubsub/metricslocal_service.tf; \
	
