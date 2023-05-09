import {DatasetKind} from "../../../lib/CypressEntityList";
import CypressExplore from "../../../lib/CypressExplore";
import CypressUtils from "../../../lib/CypressUtils";
import CypressWorkspace from "../../../lib/CypressWorkspace";
import {beforeAfterSuppressLogs} from "../../../lib/CypressLogUtils";
import { ICypressDatasetMatchStub } from "../../../lib/CypressDatasetMatchStub";


const DATASET_SEARCH_TIMEOUT = 30 * 1000;
const DATASET_STARTS_WITH="GCP/"
const EVENTS_FILE_NAME="cypress/e2e/content-team/gcp/events.json"
const RESOURCES_FILE_NAME="cypress/e2e/content-team/gcp/resources.json"

const MONITORING_FILE_NAME="cypress/e2e/content-team/gcp/monitoring.json"
const INSTANCES_FILE_NAME="cypress/e2e/content-team/gcp/instances.json"

describe("Event Dataset Page", () => {
    beforeAfterSuppressLogs();
    before(()=> {
        cy.logIn();
    })

    it("finds a event dataset and loads its landing page", () => {
        CypressWorkspace.visit(CypressWorkspace.exploreDatasets.path());
        // Wait for the dataset list to load.
        CypressUtils.waitUntilLoaded(CypressExplore.datasets.items, DATASET_SEARCH_TIMEOUT);

        let gcp_datasets_event;
        let gcp_datasets_resource;
        let gcp_dashboards_monitoring
        let gcp_dashboards_instance

        cy.get('@allDatasets').then(raw_datasets => {
            const datasets = (raw_datasets as unknown as ICypressDatasetMatchStub[])

            gcp_datasets_event = datasets.filter((dataset) => dataset.name.startsWith(DATASET_STARTS_WITH) && dataset.kind === DatasetKind.Event)
            gcp_datasets_resource = datasets.filter((dataset) => dataset.name.startsWith(DATASET_STARTS_WITH) && dataset.kind === DatasetKind.Resource)
            cy.writeFile(EVENTS_FILE_NAME, gcp_datasets_event)
            cy.writeFile(RESOURCES_FILE_NAME, gcp_datasets_resource)
        })

        CypressWorkspace.visit(CypressWorkspace.exploreDashboards.path());
        CypressUtils.waitUntilLoaded(CypressExplore.dashboards.items, DATASET_SEARCH_TIMEOUT);

        cy.get('@allDashboards').then(raw_dashboards => {
            const dashboards = (raw_dashboards as unknown as ICypressDatasetMatchStub[])

            gcp_dashboards_monitoring = dashboards.filter((dashboard) => dashboard.name.startsWith(DATASET_STARTS_WITH) && dashboard.name.includes("Monitoring") && dashboard.kind === "Dashboard")
            gcp_dashboards_instance = dashboards.filter((dashboard) => dashboard.name.startsWith(DATASET_STARTS_WITH) && dashboard.name.includes("Instance") && dashboard.kind === DatasetKind.Resource)
            cy.writeFile(MONITORING_FILE_NAME, gcp_dashboards_monitoring)
            cy.writeFile(INSTANCES_FILE_NAME, gcp_dashboards_instance)
        })


    }) 
})


