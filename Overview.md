# GCP App

The GCP app contains Observe Datasets, Monitors, and other abstractions
built on top of the following data from GCP:

- Cloud Logging Logs
- Cloud Logging Audit Logs
- Cloud Monitoring Metrics
- Cloud Asset Records
  
Our Content Engineering team has tailor-made some Datasets, Monitors, and
Boards to make it easier to configure Observe to hit your GCP-related SLOs.

In addition to reconstructing the state of each resource, this app ties in the Cloud Monitoring metrics for each service, as well as linking related resources together.

## Highlighted datasets

### Audit Logs

The `Audit Logs` dataset provides a history of all GCP API calls. You can use this dataset to audit changes to your infrastructure and tie these changes back to an IAM role or user.

### Metrics

The `Metrics` contains all metrics exported from Google Cloud Monitoring.

### Compute Engine Instance

The `Compute Engine Instance` dataset models your running Compute Engine VMs. From here, you can pivot to the associated Instance Groups, Disks, or VPC network.

### Cloud Function

The `Cloud Function` dataset contains a complete inventory of Cloud functions deployed across your AWS accounts. You can use this dataset as a starting point for debugging Cloud behavior, and jump to the related `Cloud Function Logs` from the related `Activity` tab.
