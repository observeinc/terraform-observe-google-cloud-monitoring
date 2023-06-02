# Terraform Sample Infrastructure for GCP

This repository contains Terraform configurations to deploy a sample infrastructure on Google Cloud Platform (GCP).

![Sample Infrastructure](./images/GCP_Sample_Infra.jpeg)

## Prerequisites

1. **Google Cloud Project**: You must have a GCP project with the appropriate permissions. You can create a new project on GCP through the [Google Cloud Console](https://console.cloud.google.com/projectcreate).
2. **Billing Account**: Ensure that the project is associated with a billing account.
3. **Terraform**: Install Terraform on your local machine. You can download Terraform from [here](https://www.terraform.io/downloads.html).

### IAM Service Account & Role Setup

Follow these steps to create IAM Service Account & Role using Google Cloud Shell:

1. **Export your project id**:
    ```
    export PROJECT_ID=your_project_id
    ```

2. **Create the service account**:
    ```
    gcloud iam service-accounts create terraform \
    --description="Service account for the terraform sample infrastructure" \
    --display-name="sampleInfrastructureTerraform"
    ```

3. **Create the custom role**:
    Create the following file `role-permissions.json`
    ```
    {
      "title": "sampleInfrastructureTerraformRole",
      "description": "A custom role with permissions from BigQuery and Resource Manager",
      "stage": "ALPHA",
      "includedPermissions": [
        "resourcemanager.projects.get",
        "bigquery.jobs.create",
        "bigquery.jobs.get",
        "bigquery.jobs.update",
        "bigquery.datasets.create",
        "bigquery.datasets.get",
        "bigquery.datasets.update",
        "bigquery.tables.create",
        "bigquery.tables.get",
        "bigquery.tables.update",
        "bigquery.tables.updateData",
        "bigquery.tables.getData",
        "bigquery.tables.list",
        "compute.networks.get",
        "compute.subnetworks.get"
      ]
    }
    ```

    Then creat the role
    ```
    gcloud iam roles create gcpSampleInfrastructureTerraformRole --project=$PROJECT_ID --file=role-permissions.json
    ```

4. **Assign the custom role to the service account**:
    ```
    gcloud projects add-iam-policy-binding $PROJECT_ID --member="serviceAccount:terraform@$PROJECT_ID.iam.gserviceaccount.com" --role="projects/$PROJECT_ID/roles/gcpSampleInfrastructureTerraformRole"
    ```

5. **Create & Download a JSON Key for the Service Account**:

  - Open the Google Cloud Console (https://console.cloud.google.com/).
  - Select your project from the drop-down list in the header bar.
  - In the left-side menu, go to "IAM & Admin" and then "Service accounts".
  - You will see a list of all service accounts for this project. Look for the service account you just created, then go to the rightmost column in its row, labeled "Actions". Click on the three-dot menu icon there.
  - In the drop-down menu that appears, select "Manage keys".
  - A new window will open up. In this window, click on the "Add Key" button at the top of the window, then select "Create new key".
  - A dialog box will appear. Here, select the "JSON" option, then click "Create".
  - A JSON key will be automatically generated and downloaded to your computer. Be sure to save this in a secure location, as it contains sensitive information that could be used to access your resources on GCP.

## How to Deploy Sample Infrastructure

1. **Clone this repository**:
    ```
    git clone git@github.com:observeinc/terraform-observe-google.git
    cd terraform-observe-google/sample_infrastructure
    ```

2. **Configure your GCP Credentials**:
    - Create a new Service Account on GCP through the [Google Cloud Console](https://console.cloud.google.com/iam-admin/serviceaccounts).
    - Download the JSON key file for the Service Account.
    - Set an environment variable named `GOOGLE_APPLICATION_CREDENTIALS` pointing to the path of the JSON key file.
    ```
    export GOOGLE_APPLICATION_CREDENTIALS=/path/to/keyfile.json
    ```

3. **Initialize Terraform**:
    ```
    terraform init
    ```

4. **Configure your variables**:
    Create a `terraform.tfvars` file with the following structure:
    ```
    project_id = "your-gcp-project-id"
    region = "your-gcp-region"
    zone1 = "your-primary-gcp-zone"
    zone2 = "your-secondary-gcp-zone"
    name_format = "name-format-for-infrastructure"
    observe = {
      domain = "your-observe-domain"
      customer_id = "your-observe-customer-id"
      datastream_token = "your-observe-datastream-token"
    }
    ```
    Replace your-gcp-project-id, your-gcp-region, your-primary-gcp-zone, your-secondary-gcp-zone, name-format-for-infrastructure, your-observe-domain, your-observe-customer-id, and your-observe-datastream-token with your actual values.

5. **Apply Terraform**:
    ```
    terraform apply
    ```

# How to deploy sample infrastructure

!!!Code assumes you have a project set up with proper permissions!!!
See "Sample project creation terraform" below for example

KNOWN ISSUE - If you get the error "Error: Provider produced inconsistent final plan" referencing cloud scheduler change the local variable string in main.tf
```
hack = "${module.function_bigquery.bucket_object.md5hash}=1234"
```

main.tf file in this directory contains modules to deploy infrastructure

It is designed to be read from top to bottom and you can comment out everything and deploy modules one at a time working from top to bottom.

Modules and their dependencies should be self explanatory.

If you comment out modules in main.tf look at corresponding values in output.tf

The collection folder contains terraform to deploy collection resources to GCP using either local path or remote registry.


# Deploying sock-shop on GKE instance
Current code is here - https://github.com/observeinc/content-eng-sock-shop-temp/tree/main/sockshop

Sock-shop deployment with OTEL instrumentation is under development and will change but there should be a link to deployable versions here

# Sample project creation terraform
```
locals {
  services_to_enable = [
    "artifactregistry.googleapis.com",
    "bigquery.googleapis.com",
    "bigquerydatatransfer.googleapis.com",
    "cloudapis.googleapis.com",
    "cloudasset.googleapis.com",
    "cloudbuild.googleapis.com",
    "clouddebugger.googleapis.com",
    "cloudfunctions.googleapis.com",
    "cloudresourcemanager.googleapis.com",
    "cloudscheduler.googleapis.com",
    "cloudtrace.googleapis.com",
    "compute.googleapis.com",
    "container.googleapis.com",
    "containerregistry.googleapis.com",
    "iam.googleapis.com",
    "logging.googleapis.com",
    "monitoring.googleapis.com",
    "pubsub.googleapis.com",
    "run.googleapis.com",
    "servicemanagement.googleapis.com",
    "serviceusage.googleapis.com",
    "storage.googleapis.com",
    "redis.googleapis.com"
  ]
}

resource "google_project" "project" {
  name       = var.project_name
  project_id = var.project_id
  # omit folder id if not using
  folder_id     = var.folder_id

  billing_account = var.billing_account
}


resource "google_project_service" "project" {
  for_each = { for value in local.services_to_enable : value => value }
  project  = var.project_id
  service  = each.value

  timeouts {
    create = "30m"
    update = "40m"
  }

  disable_dependent_services = true
}

resource "google_project_iam_binding" "project" {
  project = google_project.project.project_id
  role    = "roles/owner"

  members = setunion([
    ], var.project_owner
  )
}

variable "project_name" {
  type = string
}

variable "project_id" {
  type = string
  description = "GCP project to deploy to"
}

variable "org_id" {
  type = string
}

variable "folder_id" {
  type = string
}

variable "billing_account" {
  type = string
}

variable "project_owner" {
  default = []
}

output "project" {
  value = google_project.project
}

output "project_id" {
  value = var.project_id
}

```

