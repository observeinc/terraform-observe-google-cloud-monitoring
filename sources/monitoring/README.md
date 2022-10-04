Before setting up this poller you must follow the set up instructions to collect your GCP project data using Terraform or manual setup.

See the [GCP App installation](https://docs.observeinc.com/en/latest/content/integrations/gcp/gcp.html#installation) instructions under Observe integrations in the Observe Documentation.


The GCP Monitoring poller periodically fetches metrics, projects and asset inventory records for a GCP project.

The Observe GCP app uses this data to construct the state of your GCP inventory over time.

You will need a service account private key in Json format to set up this poller.