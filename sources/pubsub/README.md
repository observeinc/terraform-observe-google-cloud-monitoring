Before setting up this poller you must follow the set up instructions to collect your GCP project data using Terraform or manual setup.

See the [GCP App installation](https://docs.observeinc.com/en/latest/content/integrations/gcp/gcp.html#installation) instructions under Observe integrations in the Observe Documentation.


The GCP Pub/Sub poller periodically fetches messages from a pull-based Pub/Sub subscription.  

In a standard configuration the Pub/Sub topic will be the destination for log sinks created within GCP.  All logs not excluded by filters on the log sink will be fetched by Observe pollers.  

You will need the name of the created Pub/Sub subscription and a service account private key in Json format to set up this poller.
