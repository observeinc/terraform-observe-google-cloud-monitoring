# Running

## Assumptions

You have a file with environment variables defined

```
export OBSERVE_CLUSTER=custom
export OBSERVE_BASE_DOMAIN=observe-staging.com
export OBSERVE_CUSTOMER_ID=128557934960
export OBSERVE_WORKSPACE_ID=41704042
export OBSERVE_ADMIN_EMAIL="content-reviewer@observeinc.com"
export OBSERVE_ADMIN_PASSWORD="fox.Paris-1812overture&friends"
export OBSERVE_WRITER_EMAIL="content-reviewer@observeinc.com"
export OBSERVE_WRITER_PASSWORD="fox.Paris-1812overture&friends"
export OBSERVE_READER_EMAIL="content-reviewer@observeinc.com"
export OBSERVE_READER_PASSWORD="fox.Paris-1812overture&friends"
```

## Key Concepts

In cypress/e2e/content-team/gcp/01_GetDatasets.spec.ts:

const DATASET_STARTS_WITH="GCP/"

other spec files are driven by data created and written to disk.

sections.ts organizes tests into modules

Copy paste this directory to create tests for other apps.

## Source and run headless

```
 rm -r cypress/screenshots/*; source arthur.env; npx cypress run --config video=false --spec cypress/e2e/content-team/gcp/*.spec.ts
```

After completion look for:

HTML report successfully created!
/Users/arthur/cypressTests/cypress/reports/html/fail_2023-03-24T162300Z-02_EventDatasets-report.html

and open in browser.

## Source and open - use for development

```
source arthur.env; npx cypress open
```
