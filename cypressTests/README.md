source arthur.env; docker-compose run cypress cy:run:record --spec "cypress/e2e/content-team/gcp/*.spec.ts" --browser=electron

source arthur.env; docker-compose -f docker-compose-macm1.yml run cypress cy:run:record --spec "cypress/e2e/content-team/gcp/01_GetDatasets.spec.ts,cypress/e2e/content-team/gcp/02_DatasetsEvents.spec.ts" --browser=electron