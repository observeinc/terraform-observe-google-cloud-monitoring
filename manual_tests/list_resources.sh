#!/usr/bin/env bash

# Run this script to check counts on app home
# scheduler jobs assumes us-west1
# to set project run - gcloud config set project your-project-id

array=('compute instances list' 'sql instances list' 'container clusters list' 
'functions list' 'services list --enabled' 'storage buckets list' 'alpha bq datasets list --all' 
'pubsub topics list' 'compute url-maps list' 'scheduler jobs list --location=us-west1'
)

for var in "${array[@]}"
do
    gloudstr="gcloud ${var} --format json| jq -r '. | length'";
    echo "####################"
    echo "Count of ${var} = $(eval "$gloudstr")";

    if [[ "${var}" == 'alpha bq datasets list --all' ]]; then
        datasetinstances="gcloud ${var} --format json| jq -r '\"    \" + .[].id'"
        echo " List of instances = ";
        eval "$datasetinstances";
    else
        gcloudinstances="gcloud ${var} --format json| jq -r '\"    \" + .[].name'"
        echo " List of instances = ";
        eval "$gcloudinstances";
    fi
    echo "####################"
    echo ""
done

# gcloud alpha bq tables list --dataset test_eng_dataset


# https://cloud.google.com/sdk/gcloud/reference/compute/url-maps
# https://cloud.google.com/sdk/gcloud/reference/alpha/bq/datasets/list
# https://cloud.google.com/sdk/gcloud/reference/alpha/bq/tables/list
# https://cloud.google.com/sdk/gcloud/reference/container/clusters/list
# https://cloud.google.com/sdk/gcloud/reference/compute/instances/list
# https://cloud.google.com/sdk/gcloud/reference/sql/instances/list
# https://cloud.google.com/sdk/gcloud/reference/config/set
# https://cloud.google.com/sdk/gcloud/reference/scheduler/jobs/list
# https://cloud.google.com/sdk/gcloud/reference/services/list
