Before setting up this poller make sure to follow set up instructions to Onboard GCP project using Terraform or manual setup.

The GCP Pub/Sub poller periodically fetches messages from a pull-based Pub/Sub subscription.  

In a standard configuration the Pub/Sub topic will be the destination for log sinks created within GCP.  All logs not excluded by filters on the log sink will be fetched by Observe pollers.  

You will need the name of the created Pub/Sub subscription and a service account private key in Json format to set up this poller.
