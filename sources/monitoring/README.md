Before setting up this poller make sure to follow set up instructions to Onboard GCP project using Terraform or manual setup.

The GCP Monitoring poller periodically fetches metrics, projects and asset inventory records for a GCP project.

The Observe GCP app uses this data to construct the state of your GCP inventory over time.

You will need a service account private key in Json format to set up this poller.