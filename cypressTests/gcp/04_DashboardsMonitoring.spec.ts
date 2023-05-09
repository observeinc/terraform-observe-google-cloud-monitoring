import {beforeAfterSuppressLogs} from "../../../lib/CypressLogUtils";
import {ICypressDatasetMatchStub} from "../../../lib/CypressDatasetMatchStub"
import {dashboardMonitoringTest} from "./reusable_tests"

import monitoring from "./monitoring.json";

import SECTIONS from "./sections";

// All of the datasets in sections
const inthere_monitoring: ICypressDatasetMatchStub[] = monitoring.filter((dashboard) => {
    let rtn = false;
    SECTIONS.forEach(obj => {
        if (dashboard.name.startsWith(obj.startsWith) === true) {
            rtn = true
        }
    })
    return rtn
}
)


// All of the datsets not in SECTIONS

const baseline_monitoring = monitoring.filter((dashboard) => 
    !inthere_monitoring.includes(dashboard)
)

// Sort arrays
baseline_monitoring.sort((a, b) => a.name.localeCompare(b.name));

// Run tests for all dasahboards not in SECTIONS
// describe(`Baseline`, () => {
//     beforeAfterSuppressLogs();
//     beforeEach(()=> {
//         cy.logIn();
//     })

//     baseline_monitoring.forEach((dashboard) =>  dashboardMonitoringTest(dashboard))
// });

// Run tests for all datasets in SECTIONS
SECTIONS.forEach((section) => {
    describe(`${section.startsWith}`, () => {
        beforeAfterSuppressLogs();
        beforeEach(()=> {
            cy.logIn();
            cy.viewport(2000,4000)
        })
    
        inthere_monitoring.filter((dashboard) => dashboard.name.startsWith(section.startsWith)).forEach((dashboard) =>  dashboardMonitoringTest(dashboard))
    });
})

