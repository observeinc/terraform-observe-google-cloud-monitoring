import {beforeAfterSuppressLogs} from "../../../lib/CypressLogUtils";
import {ICypressDatasetMatchStub} from "../../../lib/CypressDatasetMatchStub"
import {eventDatasetTest} from "./reusable_tests"

import raw_events from "./data/events.json";

import SECTIONS from "./sections";

// Putting in JIRA tickets to make sample infra populate these datasets
import EXCLUDE_DATASETS from "./datasets_exclude_event.json";

const events = raw_events.filter((dataset) => {
    return !EXCLUDE_DATASETS.includes(dataset.name)
});

// All of the datasets in SECTIONS
const inthere_events: ICypressDatasetMatchStub[] = events.filter((dataset) => {
    let rtn = false;
    SECTIONS.forEach(obj => {
        if (dataset.name.startsWith(obj.startsWith) === true) {
            rtn = true
        }
    })
    return rtn
}
)

// All of the events datasets not in SECTIONS
const baseline_events = events.filter((dataset) => 
    !inthere_events.includes(dataset)
)


// Sort arrays
baseline_events.sort((a, b) => a.name.localeCompare(b.name));

inthere_events.sort((a, b) => a.name.localeCompare(b.name));

// Run tests for all datasets not in SECTIONS
describe(`Baseline`, () => {
    beforeAfterSuppressLogs();
    beforeEach(()=> {
        cy.logIn();
    })

    baseline_events.forEach((dataset) =>  eventDatasetTest(dataset))
});

// Run tests for all datasets in SECTIONS
SECTIONS.forEach((section) => {
    describe(`${section.startsWith}`, () => {
        beforeAfterSuppressLogs();
        beforeEach(()=> {
            cy.logIn();
        })
    
        inthere_events.filter((dataset) => dataset.name.startsWith(section.startsWith)).forEach((eventdataset) =>  eventDatasetTest(eventdataset))
    });
})

