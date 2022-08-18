Observe provides a terraform module which installs infrastructure in your GCP Project.
The infrastructure directs logs and asset inventory feed updates into a Pub/Sub topic.
The outputs of the terraform module (`terraform output`) can be used in both the
Monitoring and Pub/Sub pollers.

The following terraform snippet installs the GCP collection stack for the Project of the [Google provider](https://registry.terraform.io/providers/hashicorp/google/4.32.0):

```
module "observe" {
  source           = "observeinc/collection/google"
}
```

This terraform module forwards data towards Observe through a PubSub topic and a Lambda function. Data is collected from the following sources:

- Cloud Logging
- Cloud Asset Inventory
