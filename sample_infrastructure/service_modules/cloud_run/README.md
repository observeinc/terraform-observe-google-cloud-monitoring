# Cloud Run Sample App Infrastructure
 - `root` - Basic API service using Cloud Run built in Terraform
 - `avocano` (recommended) - Uses the [Google Cloud Sample App](https://github.com/GoogleCloudPlatform/avocano) which uses a CloudSQL database, and additionally spins up loadtests on a scheduled basis.

# Dependencies
 - Terraform
 - Observe GCP App

# Commands
 - Navigate to the `avocano` directory
 - Run `./setup deploy` to deploy resources (takes ~10 minutes), watch for the console to output the website endpoint
 - When they're no longer required, run `./setup destroy` to destroy resources
 - Optionally you may prefer to run the simpler version on the root directly using `terraform deploy` instead

