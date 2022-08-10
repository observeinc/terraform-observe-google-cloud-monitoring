Observe provides a [terraform module](https://github.com/observeinc/terraform-google-collection) which collects resource data from a a given GCP project. The following terraform snippet installs the GCP collection stack for the Project of the Google provider:

```
module "observe" {
  source           = "observeinc/collection/google"
}
```

This terraform module forwards data towards Observe through a PubSub topic and a Lambda function. Data is collected from the following sources:

- Cloud Logging
- Cloud Monitoring
- Cloud Asset Inventory

The Observe GCP app uses this data to reconstruct the state of your GCP inventory over time.