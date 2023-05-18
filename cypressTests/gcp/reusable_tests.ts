import CypressExplore from "../../../lib/CypressExplore";
// import {beforeAfterSuppressLogs} from "../../../lib/CypressLogUtils";
import {ICypressDatasetMatchStub} from "../../../lib/CypressDatasetMatchStub"

import CypressUtils from "../../../lib/CypressUtils";
import CypressWorkspace from "../../../lib/CypressWorkspace";

const DATASET_SEARCH_TIMEOUT = 30 * 1000;
const RESOURCE_SEARCH_TIMEOUT = 30 * 1000;
const EVENT_DATASET_ROW_COUNT_CLASS = ".ob-data-table-query-loading-status"


export function eventDatasetTest(eventdataset: ICypressDatasetMatchStub ) {
    const dataset_name:string = eventdataset.name.split("/")[1]!;
     it(`Event Dataset Test for ${dataset_name}`, () => {
    
        CypressWorkspace.visit(CypressWorkspace.exploreDatasets.path());
        CypressUtils.waitUntilLoaded(CypressExplore.datasets.items, DATASET_SEARCH_TIMEOUT);
        
        CypressExplore.header.filterBar
        .searchAndSelectExact(dataset_name)
        // Specifically select a *resource* dataset.
        CypressExplore.datasets.clickFirstDatasetItemV2(eventdataset);
    
        cy.location("pathname").should("match", CypressWorkspace.eventDataset.pattern);
        cy.title().should("match", /^[\w\s]+ - Observe$/);
    
        // cy.get('.ob-content-type-timestamp').first().should('exist')
        cy.get(EVENT_DATASET_ROW_COUNT_CLASS).contains("rows").should('exist')

        cy.get(EVENT_DATASET_ROW_COUNT_CLASS).contains("rows").should((val) => {
            const first_character:string= val.text().charAt(0)
            const reg = /\S/g;
            const match = val.text().match(reg);
     
            expect(match[0]).not.equal('0');
        })
        
        cy.get(EVENT_DATASET_ROW_COUNT_CLASS).contains("rows").then((val) => {
            const text_arr:string[]= val.text().split(" ")
            let row_num:number;

            cy.wrap(text_arr.forEach((textValue, index) => {
                if (textValue==="rows"){
                  row_num =  parseFloat(text_arr[index-1].replace(/,/g, ''));
                }
            })).then(()=> {
                expect(row_num).greaterThan(0)
            })
        })
        cy.screenshot()
    });
}

export function resourceDatasetTest(resourcedataset: ICypressDatasetMatchStub ) {
    const dataset_name:string = resourcedataset.name.split("/")[1]!;
    it(`Resource Dataset Test For ${dataset_name}`, () => {

        CypressWorkspace.visit(CypressWorkspace.exploreDatasets.path());
        CypressUtils.waitUntilLoaded(CypressExplore.datasets.items, DATASET_SEARCH_TIMEOUT);
        
        CypressExplore.header.filterBar
        .searchAndSelectExact(dataset_name)
        // Specifically select a *resource* dataset.
        CypressExplore.datasets.clickFirstDatasetItemV2(resourcedataset);

        cy.get('.ob-tabs-nav > :nth-child(1) > :nth-child(2) > span').click()
        // We should now be on a resource page.
        cy.location("pathname").should("match", CypressWorkspace.resourceDataset.pattern);

        // cy.get('.ob-content-type-timestamp').first().should('exist')
        cy.get(EVENT_DATASET_ROW_COUNT_CLASS).contains("rows").should('exist')

        cy.get(EVENT_DATASET_ROW_COUNT_CLASS).contains("rows").should((val) => {
            const first_character:string= val.text().charAt(0)
            const reg = /\S/g;
            const match = val.text().match(reg);
     
            expect(match[0]).not.equal('0');
        })
        
        cy.get(EVENT_DATASET_ROW_COUNT_CLASS).contains("rows").then((val) => {
            const text_arr:string[]= val.text().split(" ")
            let row_num:number;

            cy.wrap(text_arr.forEach((textValue, index) => {
                if (textValue==="rows"){
                  row_num =  parseFloat(text_arr[index-1].replace(/,/g, ''));
                }
            })).then(()=> {
                expect(row_num).greaterThan(0)
            })
        })
        cy.screenshot()
    });
};

export function dashboardMonitoringTest(dashboard: ICypressDatasetMatchStub ) {
    const dashboard_name:string = dashboard.name.split("/")[1]!;
    it(`Monitoring Dashboard Test For ${dashboard_name}`, () => {

        CypressWorkspace.visit(CypressWorkspace.exploreDashboards.path());
        CypressUtils.waitUntilLoaded(CypressExplore.dashboards.items, DATASET_SEARCH_TIMEOUT);

        // cy.get('@allDashboards').then(dashboards => {
        //     cy.log(dashboards)
        // })

        CypressExplore.header.filterBar
        .searchAndSelectExact(dashboard.name)

        // Specifically select a *resource* dataset.
        CypressExplore.dashboards.clickFirstDatasetItemV2(dashboard);

        cy.wait(2000)

        cy.get('[aria-label=placeholder]').should(($p) => {
            // should have found 3 elements
            expect($p).to.have.length(0)
    })

        cy.get('.ob-status-icon, .ob-warning-icon').should(($p) => {
            // should have found 3 elements
            expect($p).to.have.length(0)
    })

    
        cy.screenshot()
    });
};