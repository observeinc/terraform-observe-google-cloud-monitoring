# GCP App

The GCP app provides the base models for GCP infrastructure such as:

- BigQuery
- Cloud Compute
- Cloud Functions
- Cloud SQL
- Cloud Storage
- Google Kubernetes Engine
- Load Balancing

  
Out of the box Datasets, Monitors, and Dashboards enable you to immediately monitor and troubleshoot your GCP resources.

In addition to listing the assets within a project this app collects the Cloud Monitoring metrics for each service, as well as linking related resources together.

## Highlighted datasets

### Asset Inventory Records
The `Asset Inventory` dataset provides the current state of deployed resources in your monitored projects.  It is used as an input for most of the pre-built resource datasets and can be used to monitor the creation, destruction and modification of GCP assets.

![Asset Inventory Records](https://assets.observeinc.com/icons/apps/terraform-observe-google/Asset-Inventory-Events.png "Asset Inventory Records")
### Audit Logs

The `Audit Logs` dataset provides audit log entries for all services configured to collect them. You can use this dataset to audit changes to your infrastructure and tie these changes back to an IAM role or user.

![Audit Logs](https://assets.observeinc.com/icons/apps/terraform-observe-google/Audit-Log-Events.png "Audit Logs")

### Metrics

The `Metrics` dataset contains all metrics collected from Google Cloud Monitoring.

![Metric Events](https://assets.observeinc.com/icons/apps/terraform-observe-google/Metric-Events.png "Metric Events")

### BigQuery

The `BigQuery` dataset models your BigQuery resource.  The dataset links to dozens of available metrics as well as error job and data access/audit logs.


### Cloud Function

The `Cloud Function` dataset contains a complete inventory of Cloud functions deployed within your GCP project. You can use this dataset as a starting point for debugging Cloud behavior, and jump to the related `Cloud Function Logs` from the related `Activity` tab.

![Cloud Function Resource](https://assets.observeinc.com/icons/apps/terraform-observe-google/Cloud-Function-Resource.png "Cloud Function Resource")

### Compute Instance

The `Compute Instance` dataset models your running Compute Engine VMs. From here, you can pivot to the associated Compute Metrics, Compute Disks and Compute Logs.

![Compute Resource](https://assets.observeinc.com/icons/apps/terraform-observe-google/Cloud-Compute-Resource.png "Compute Resource")

### Cloud SQL

The `Cloud SQL` dataset models deployed Cloud SQL instances.  The dataset links to nearly a hundred available metrics as well as error and data access logs.

![CloudSQL Resource](https://assets.observeinc.com/icons/apps/terraform-observe-google/CloudSQL-Resource.png "CloudSQL Resource")

### Projects

The `Project` dataset models project data.  The Project Monitoring dashboard shows and inventory of project resources and provides Graph Link access to the rest of the GCP resource datasets.

![Project Resource](https://assets.observeinc.com/icons/apps/terraform-observe-google/Project-Resource.png "Project Resource")

### Storage

The `Storage` dataset models Cloud Storage buckets.  The Storage Monitoring Dashboard provides details on bucket configurations and usage and links to Storage Metrics and Storage Logs.

![Storage Resource](https://assets.observeinc.com/icons/apps/terraform-observe-google/Storage-Resource.png "Storage Resource")


