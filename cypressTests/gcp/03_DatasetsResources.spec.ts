import {beforeAfterSuppressLogs} from "../../../lib/CypressLogUtils";
import {ICypressDatasetMatchStub} from "../../../lib/CypressDatasetMatchStub"
import {resourceDatasetTest} from "./reusable_tests"

import raw_resources from "./resources.json";

import SECTIONS from "./sections";

// Putting in JIRA tickets to make sample infra populate these datasets
import EXCLUDE_DATASETS from "./datasets_exclude_resource.json";

const resources = raw_resources.filter((dataset) => {
    return !EXCLUDE_DATASETS.includes(dataset.name)
});

// All of the datasets in sections
const inthere_resources: ICypressDatasetMatchStub[] = resources.filter((dataset) => {
    let rtn = false;
    SECTIONS.forEach(obj => {
        if (dataset.name.startsWith(obj.startsWith) === true) {
            rtn = true
        }
    })
    return rtn
}
)


// All of the datsets not in SECTIONS

const baseline_resources = resources.filter((dataset) => 
    !inthere_resources.includes(dataset)
)

// Sort arrays
baseline_resources.sort((a, b) => a.name.localeCompare(b.name));

// Run tests for all datasets not in SECTIONS
describe(`Baseline`, () => {
    beforeAfterSuppressLogs();
    beforeEach(()=> {
        cy.logIn();
    })

    baseline_resources.forEach((dataset) =>  resourceDatasetTest(dataset))
});

// Run tests for all datasets in SECTIONS
SECTIONS.forEach((section) => {
    describe(`${section.startsWith}`, () => {
        beforeAfterSuppressLogs();
        beforeEach(()=> {
            cy.logIn();
        })
    
        inthere_resources.filter((dataset) => dataset.name.startsWith(section.startsWith)).forEach((resourcedataset) =>  resourceDatasetTest(resourcedataset))
    });
})

